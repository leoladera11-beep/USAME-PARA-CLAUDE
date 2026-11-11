import sys, zipfile, struct
# Reescribe la versión de clase: 49 para clases (verificador por inferencia, sin stackmaps) y 52 para interfaces.
def interface(data):
    # recorre el pool de constantes hasta access_flags
    n = struct.unpack_from('>H', data, 8)[0]; pos = 10; i = 1
    while i < n:
        tag = data[pos]
        if tag == 1: pos += 3 + struct.unpack_from('>H', data, pos + 1)[0]
        elif tag in (3, 4, 9, 10, 11, 12, 17, 18): pos += 5
        elif tag in (5, 6): pos += 9; i += 1
        elif tag in (7, 8, 16, 19, 20): pos += 3
        elif tag == 15: pos += 4
        else: raise ValueError(tag)
        i += 1
    return struct.unpack_from('>H', data, pos)[0] & 0x0200
src, dst = sys.argv[1:3]
with zipfile.ZipFile(src) as zin, zipfile.ZipFile(dst, 'w', zipfile.ZIP_STORED) as zout:
    for info in zin.infolist():
        data = zin.read(info)
        if info.filename.endswith('.class') and data[:4] == b'\xca\xfe\xba\xbe':
            data = data[:6] + struct.pack('>H', 52 if interface(data) else 49) + data[8:]
        zout.writestr(info.filename, data)
