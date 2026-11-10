#!/usr/bin/env python3
"""Alinea una APK antes de firmarla, sin depender del SDK de Android.

Android exige que los archivos guardados sin comprimir empiecen en un múltiplo de 4 bytes y,
para cargar las bibliotecas nativas directamente desde la APK en teléfonos con páginas de
16 KiB, que los .so empiecen en un múltiplo de 16384. Equivale a «zipalign -P 16 4».

Los datos de cada entrada se copian tal cual (no se recomprime nada). El relleno se guarda en
el campo extra estándar 0xD935, que apksigner reconoce y conserva al firmar.

Uso:  python3 tools/zipalign.py entrada.apk salida.apk
      python3 tools/zipalign.py --comprobar archivo.apk
"""
import struct
import sys
import zipfile

LOCAL = struct.Struct('<4s5H3L2H')
CENTRAL = struct.Struct('<4s6H3L5H2L')
END = struct.Struct('<4s4H2LH')
ALIGN_ID = 0xD935
PAGE = 16384


def alignment(name, compress_type):
    if compress_type != zipfile.ZIP_STORED:
        return 1
    return PAGE if name.endswith('.so') else 4


def strip_padding(extra):
    """Quita rellenos anteriores y conserva el resto de campos extra válidos."""
    out, pos = b'', 0
    while pos + 4 <= len(extra):
        ident, size = struct.unpack_from('<2H', extra, pos)
        if pos + 4 + size > len(extra):
            break
        if ident != ALIGN_ID:
            out += extra[pos:pos + 4 + size]
        pos += 4 + size
    return out


def data_offset(raw, info):
    sig, _, _, _, _, _, _, _, _, name_len, extra_len = LOCAL.unpack_from(raw, info.header_offset)
    if sig != b'PK\x03\x04':
        raise ValueError('Cabecera local no válida: ' + info.filename)
    return info.header_offset + LOCAL.size + name_len + extra_len


def align(source, target):
    raw = open(source, 'rb').read()
    with zipfile.ZipFile(source) as archive:
        infos = archive.infolist()
        comment = archive.comment
    out, central = bytearray(), bytearray()
    for info in infos:
        start = data_offset(raw, info)
        data = raw[start:start + info.compress_size]
        name = info.filename.encode('utf-8' if info.flag_bits & 0x800 else 'cp437')
        flags = info.flag_bits & ~0x08  # los tamaños van en la cabecera; sin descriptor posterior
        extra = strip_padding(info.extra)
        multiple = alignment(info.filename, info.compress_type)
        if multiple > 1:
            base = len(out) + LOCAL.size + len(name) + len(extra) + 6
            padding = (-base) % multiple
            extra += struct.pack('<3H', ALIGN_ID, 2 + padding, multiple) + b'\0' * padding
        if len(extra) > 0xFFFF:
            raise ValueError('Campo extra demasiado grande: ' + info.filename)
        time = (info.date_time[3] << 11) | (info.date_time[4] << 5) | (info.date_time[5] // 2)
        date = ((info.date_time[0] - 1980) << 9) | (info.date_time[1] << 5) | info.date_time[2]
        offset = len(out)
        out += LOCAL.pack(b'PK\x03\x04', info.extract_version, flags, info.compress_type, time, date,
                          info.CRC, info.compress_size, info.file_size, len(name), len(extra))
        out += name + extra + data
        note = info.comment or b''
        central += CENTRAL.pack(b'PK\x01\x02', info.create_version | (info.create_system << 8), info.extract_version, flags,
                                info.compress_type, time, date, info.CRC, info.compress_size, info.file_size,
                                len(name), 0, len(note), 0, info.internal_attr, info.external_attr, offset)
        central += name + note
    directory = len(out)
    out += central
    out += END.pack(b'PK\x05\x06', 0, 0, len(infos), len(infos), len(central), directory, len(comment)) + comment
    with open(target, 'wb') as handle:
        handle.write(out)


def check(path):
    raw = open(path, 'rb').read()
    bad = []
    with zipfile.ZipFile(path) as archive:
        if archive.testzip() is not None:
            raise SystemExit('El archivo ZIP está dañado.')
        for info in archive.infolist():
            multiple = alignment(info.filename, info.compress_type)
            if multiple > 1 and data_offset(raw, info) % multiple:
                bad.append(f'{info.filename} (múltiplo de {multiple})')
            if info.filename.endswith('.so') and info.compress_type != zipfile.ZIP_STORED:
                bad.append(f'{info.filename} (debe ir sin comprimir)')
    if bad:
        raise SystemExit('Entradas mal alineadas:\n  ' + '\n  '.join(bad))
    print(f'Alineación correcta: {path}')


if __name__ == '__main__':
    if len(sys.argv) == 3 and sys.argv[1] == '--comprobar':
        check(sys.argv[2])
    elif len(sys.argv) == 3:
        align(sys.argv[1], sys.argv[2])
        check(sys.argv[2])
    else:
        raise SystemExit(__doc__)
