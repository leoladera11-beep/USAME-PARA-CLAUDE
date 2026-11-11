.class public abstract Lv0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lv0/r;->a:[I

    return-void

    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.8909645E8f
        0x4d344120    # 1.8901043E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method public static a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    add-int/lit8 v1, v1, 0x20

    if-eqz p1, :cond_1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const v1, 0x70737368    # 3.013775E29f

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2

    const/high16 v1, 0x1000000

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3

    array-length p0, p1

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length p0, p1

    move v1, v0

    :goto_2
    if-ge v1, p0, :cond_3

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    array-length p0, p2

    if-eqz p0, :cond_4

    array-length p0, p2

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv0/w;

    iget-object v2, v2, Lv0/w;->a:Lv0/t;

    iget-object v2, v2, Lv0/t;->g:LG/x;

    iget-object v2, v2, LG/x;->p:Ljava/lang/String;

    invoke-static {v2}, LG/W;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "video/mp4"

    return-object p0

    :cond_1
    invoke-static {v2}, LG/W;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v2}, LG/W;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "image/heic"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "image/heif"

    goto :goto_0

    :cond_3
    const-string v3, "image/avif"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    const-string p0, "audio/mp4"

    return-object p0

    :cond_5
    if-eqz v1, :cond_6

    return-object v1

    :cond_6
    const-string p0, "application/mp4"

    return-object p0
.end method

.method public static c(ILJ/D;)Lp0/e;
    .locals 3

    invoke-virtual {p1}, LJ/D;->m()I

    move-result v0

    invoke-virtual {p1}, LJ/D;->m()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, LJ/D;->O(I)V

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p1, v0}, LJ/D;->w(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lp0/e;

    const-string v0, "und"

    invoke-direct {p1, v0, p0, p0}, Lp0/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to parse comment attribute: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LK/f;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(LJ/D;)Lp0/a;
    .locals 5

    invoke-virtual {p0}, LJ/D;->m()I

    move-result v0

    invoke-virtual {p0}, LJ/D;->m()I

    move-result v1

    const v2, 0x64617461

    const-string v3, "MetadataUtil"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, LJ/D;->m()I

    move-result v1

    sget-object v2, Lv0/d;->a:[B

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const-string v2, "image/jpeg"

    goto :goto_0

    :cond_0
    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    const-string v2, "image/png"

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    if-nez v2, :cond_2

    const-string p0, "Unrecognized cover art flags: "

    invoke-static {p0, v3, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, LJ/D;->O(I)V

    add-int/lit8 v0, v0, -0x10

    new-array v1, v0, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v0}, LJ/D;->k(I[BI)V

    new-instance p0, Lp0/a;

    const/4 v0, 0x3

    invoke-direct {p0, v2, v4, v0, v1}, Lp0/a;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p0

    :cond_3
    const-string p0, "Failed to parse cover art attribute"

    invoke-static {v3, p0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static e(ILJ/D;Ljava/lang/String;)Lp0/n;
    .locals 4

    invoke-virtual {p1}, LJ/D;->m()I

    move-result v0

    invoke-virtual {p1}, LJ/D;->m()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, LJ/D;->O(I)V

    invoke-virtual {p1}, LJ/D;->H()I

    move-result v0

    if-lez v0, :cond_1

    const-string p0, ""

    invoke-static {v0, p0}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, LJ/D;->H()I

    move-result p1

    if-lez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance p1, Lp0/n;

    invoke-static {p0}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p0

    invoke-direct {p1, p2, v3, p0}, Lp0/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lu1/C0;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to parse index/count attribute: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LK/f;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static f(LJ/D;)I
    .locals 3

    invoke-virtual {p0}, LJ/D;->m()I

    move-result v0

    invoke-virtual {p0}, LJ/D;->m()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_4

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, LJ/D;->O(I)V

    add-int/lit8 v0, v0, -0x10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LJ/D;->j()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    invoke-virtual {p0}, LJ/D;->E()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, LJ/D;->D()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0}, LJ/D;->H()I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, LJ/D;->A()I

    move-result p0

    return p0

    :cond_4
    :goto_0
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse data atom to int"

    invoke-static {p0, v0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static g(ILjava/lang/String;LJ/D;ZZ)Lp0/i;
    .locals 0

    invoke-static {p2}, Lv0/r;->f(LJ/D;)I

    move-result p2

    if-eqz p4, :cond_0

    const/4 p4, 0x1

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_0
    const/4 p4, 0x0

    if-ltz p2, :cond_2

    if-eqz p3, :cond_1

    new-instance p0, Lp0/n;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, Lp0/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lu1/C0;)V

    return-object p0

    :cond_1
    new-instance p0, Lp0/e;

    const-string p3, "und"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lp0/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to parse uint8 attribute: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LK/f;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method

.method public static h([B)LN/Y;
    .locals 13

    new-instance v0, LJ/D;

    invoke-direct {v0, p0}, LJ/D;-><init>([B)V

    iget p0, v0, LJ/D;->c:I

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-ge p0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, LJ/D;->N(I)V

    invoke-virtual {v0}, LJ/D;->a()I

    move-result v1

    invoke-virtual {v0}, LJ/D;->m()I

    move-result v3

    const-string v4, "PsshAtomUtil"

    if-eq v3, v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Advertised atom size ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") does not match buffer size: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-virtual {v0}, LJ/D;->m()I

    move-result v1

    const v3, 0x70737368    # 3.013775E29f

    if-eq v1, v3, :cond_2

    const-string p0, "Atom type is not pssh: "

    invoke-static {p0, v4, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2

    :cond_2
    invoke-virtual {v0}, LJ/D;->m()I

    move-result v1

    invoke-static {v1}, Lv0/d;->e(I)I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    const-string p0, "Unsupported pssh version: "

    invoke-static {p0, v4, v1}, LB1/e;->p(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2

    :cond_3
    new-instance v5, Ljava/util/UUID;

    invoke-virtual {v0}, LJ/D;->u()J

    move-result-wide v6

    invoke-virtual {v0}, LJ/D;->u()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v1, v3, :cond_4

    invoke-virtual {v0}, LJ/D;->E()I

    move-result v3

    new-array v6, v3, [Ljava/util/UUID;

    move v7, p0

    :goto_0
    if-ge v7, v3, :cond_5

    new-instance v8, Ljava/util/UUID;

    invoke-virtual {v0}, LJ/D;->u()J

    move-result-wide v9

    invoke-virtual {v0}, LJ/D;->u()J

    move-result-wide v11

    invoke-direct {v8, v9, v10, v11, v12}, Ljava/util/UUID;-><init>(JJ)V

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move-object v6, v2

    :cond_5
    invoke-virtual {v0}, LJ/D;->E()I

    move-result v3

    invoke-virtual {v0}, LJ/D;->a()I

    move-result v7

    if-eq v3, v7, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Atom data size ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") does not match the bytes left: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_6
    new-array v2, v3, [B

    invoke-virtual {v0, p0, v2, v3}, LJ/D;->k(I[BI)V

    new-instance p0, LN/Y;

    invoke-direct {p0, v5, v1, v2, v6}, LN/Y;-><init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V

    return-object p0
.end method

.method public static i(Ljava/util/UUID;[B)[B
    .locals 3

    invoke-static {p1}, Lv0/r;->h([B)LN/Y;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p1, LN/Y;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    invoke-virtual {p0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "UUID mismatch. Expected: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", got: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PsshAtomUtil"

    invoke-static {p1, p0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object p0, p1, LN/Y;->c:Ljava/lang/Object;

    check-cast p0, [B

    return-object p0
.end method

.method public static j(ILJ/D;Ljava/lang/String;)Lp0/n;
    .locals 4

    invoke-virtual {p1}, LJ/D;->m()I

    move-result v0

    invoke-virtual {p1}, LJ/D;->m()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, LJ/D;->O(I)V

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p1, v0}, LJ/D;->w(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lp0/n;

    invoke-static {p0}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object p0

    invoke-direct {p1, p2, v3, p0}, Lp0/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lu1/C0;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to parse text attribute: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LK/f;->d(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, LJ/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static varargs k(ILG/V;LG/w;LG/V;[LG/V;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, LG/V;

    new-array v1, v0, [LG/U;

    invoke-direct {p3, v1}, LG/V;-><init>([LG/U;)V

    :goto_0
    if-eqz p1, :cond_5

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v1

    iget-object p1, p1, LG/V;->a:[LG/U;

    array-length v2, p1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, LK/b;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v6, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LG/U;

    invoke-virtual {v1, v4}, Lu1/I;->c(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lu1/M;->f()Lu1/C0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lu1/P;->m(I)Lu1/N;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lu1/a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lu1/a;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK/b;

    iget-object v2, v1, LK/b;->a:Ljava/lang/String;

    const-string v3, "com.android.capture.fps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    if-ne p0, v2, :cond_3

    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [LG/U;

    aput-object v1, v2, v0

    invoke-virtual {p3, v2}, LG/V;->a([LG/U;)LG/V;

    move-result-object p3

    goto :goto_2

    :cond_5
    array-length p0, p4

    :goto_3
    if-ge v0, p0, :cond_6

    aget-object p1, p4, v0

    invoke-virtual {p3, p1}, LG/V;->b(LG/V;)LG/V;

    move-result-object p3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object p0, p3, LG/V;->a:[LG/U;

    array-length p0, p0

    if-lez p0, :cond_7

    iput-object p3, p2, LG/w;->l:LG/V;

    :cond_7
    return-void
.end method

.method public static l(Lb0/o;Z)Lb0/D;
    .locals 22

    move-object/from16 v0, p0

    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    const-wide/16 v6, 0x1000

    if-eqz v5, :cond_1

    cmp-long v8, v1, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move-wide v6, v1

    :cond_1
    :goto_0
    long-to-int v6, v6

    new-instance v7, LJ/D;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, LJ/D;-><init>(I)V

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_1
    if-ge v9, v6, :cond_2

    const/16 v12, 0x8

    invoke-virtual {v7, v12}, LJ/D;->K(I)V

    iget-object v13, v7, LJ/D;->a:[B

    const/4 v14, 0x1

    invoke-interface {v0, v13, v8, v12, v14}, Lb0/o;->w([BIIZ)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_2
    const/16 v18, 0x0

    goto/16 :goto_7

    :cond_3
    invoke-virtual {v7}, LJ/D;->C()J

    move-result-wide v15

    invoke-virtual {v7}, LJ/D;->m()I

    move-result v13

    const-wide/16 v17, 0x1

    cmp-long v17, v15, v17

    if-nez v17, :cond_4

    iget-object v15, v7, LJ/D;->a:[B

    invoke-interface {v0, v12, v15, v12}, Lb0/o;->l(I[BI)V

    const/16 v15, 0x10

    invoke-virtual {v7, v15}, LJ/D;->M(I)V

    invoke-virtual {v7}, LJ/D;->u()J

    move-result-wide v16

    move-wide/from16 v3, v16

    move/from16 v17, v9

    goto :goto_2

    :cond_4
    const-wide/16 v17, 0x0

    cmp-long v17, v15, v17

    if-nez v17, :cond_5

    invoke-interface {v0}, Lb0/o;->getLength()J

    move-result-wide v17

    cmp-long v19, v17, v3

    if-eqz v19, :cond_5

    invoke-interface {v0}, Lb0/o;->x()J

    move-result-wide v15

    sub-long v17, v17, v15

    int-to-long v3, v12

    add-long v15, v17, v3

    :cond_5
    move/from16 v17, v9

    move-wide v3, v15

    move v15, v12

    :goto_2
    int-to-long v8, v15

    cmp-long v18, v3, v8

    if-gez v18, :cond_7

    const/16 v18, 0x0

    const v11, 0x66726565

    if-ne v13, v11, :cond_6

    if-ne v15, v12, :cond_6

    move-wide v3, v8

    goto :goto_3

    :cond_6
    new-instance v0, LI0/v;

    invoke-direct {v0, v13, v15, v3, v4}, LI0/v;-><init>(IIJ)V

    return-object v0

    :cond_7
    const/16 v18, 0x0

    :goto_3
    add-int v11, v17, v15

    const v15, 0x6d6f6f76

    if-eq v13, v15, :cond_9

    const v14, 0x75756964

    if-ne v13, v14, :cond_8

    goto :goto_4

    :cond_8
    move v14, v13

    goto :goto_6

    :cond_9
    :goto_4
    long-to-int v14, v3

    add-int/2addr v6, v14

    move v14, v13

    if-eqz v5, :cond_a

    int-to-long v12, v6

    cmp-long v12, v12, v1

    if-lez v12, :cond_a

    long-to-int v6, v1

    :cond_a
    if-ne v14, v15, :cond_b

    move v9, v11

    :goto_5
    const-wide/16 v3, -0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_b
    :goto_6
    const v12, 0x7472616b

    if-eq v14, v12, :cond_c

    const v12, 0x6d646961

    if-eq v14, v12, :cond_c

    const v12, 0x6d696e66

    if-ne v14, v12, :cond_d

    :cond_c
    move-wide/from16 v20, v1

    goto/16 :goto_11

    :cond_d
    const v12, 0x6d6f6f66

    if-eq v14, v12, :cond_1e

    const v12, 0x6d766578

    if-ne v14, v12, :cond_e

    goto/16 :goto_10

    :cond_e
    const v12, 0x6d646174

    if-ne v14, v12, :cond_f

    const/4 v10, 0x1

    :cond_f
    const v12, 0x7374626c

    if-ne v14, v12, :cond_10

    const-wide/32 v12, 0xf4240

    cmp-long v12, v3, v12

    if-lez v12, :cond_10

    :goto_7
    const/4 v8, 0x0

    goto/16 :goto_12

    :cond_10
    int-to-long v12, v11

    add-long/2addr v12, v3

    sub-long/2addr v12, v8

    move-wide/from16 v20, v1

    int-to-long v1, v6

    cmp-long v1, v12, v1

    if-ltz v1, :cond_11

    goto :goto_7

    :cond_11
    sub-long/2addr v3, v8

    long-to-int v1, v3

    add-int v9, v11, v1

    const v2, 0x66747970

    if-ne v14, v2, :cond_1c

    const/16 v2, 0x8

    if-ge v1, v2, :cond_12

    new-instance v0, LI0/v;

    int-to-long v3, v1

    invoke-direct {v0, v14, v2, v3, v4}, LI0/v;-><init>(IIJ)V

    return-object v0

    :cond_12
    invoke-virtual {v7, v1}, LJ/D;->K(I)V

    iget-object v2, v7, LJ/D;->a:[B

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2, v1}, Lb0/o;->l(I[BI)V

    invoke-virtual {v7}, LJ/D;->m()I

    move-result v1

    ushr-int/lit8 v2, v1, 0x8

    const/16 v4, 0x1d

    sget-object v8, Lv0/r;->a:[I

    const v11, 0x336770

    if-ne v2, v11, :cond_13

    goto :goto_9

    :cond_13
    move v2, v3

    :goto_8
    if-ge v2, v4, :cond_15

    aget v12, v8, v2

    if-ne v12, v1, :cond_14

    :goto_9
    const/4 v10, 0x1

    goto :goto_a

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    :goto_a
    const/4 v2, 0x4

    invoke-virtual {v7, v2}, LJ/D;->O(I)V

    invoke-virtual {v7}, LJ/D;->a()I

    move-result v12

    div-int/2addr v12, v2

    if-nez v10, :cond_1a

    if-lez v12, :cond_1a

    new-array v2, v12, [I

    move v13, v3

    :goto_b
    if-ge v13, v12, :cond_19

    invoke-virtual {v7}, LJ/D;->m()I

    move-result v14

    aput v14, v2, v13

    ushr-int/lit8 v15, v14, 0x8

    if-ne v15, v11, :cond_16

    goto :goto_d

    :cond_16
    move v15, v3

    :goto_c
    if-ge v15, v4, :cond_18

    aget v3, v8, v15

    if-ne v3, v14, :cond_17

    :goto_d
    move-object v11, v2

    const/4 v14, 0x1

    goto :goto_e

    :cond_17
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    goto :goto_c

    :cond_18
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_b

    :cond_19
    move-object v11, v2

    move v14, v10

    goto :goto_e

    :cond_1a
    move v14, v10

    move-object/from16 v11, v18

    :goto_e
    if-nez v14, :cond_1b

    new-instance v0, LJ/u;

    invoke-direct {v0, v1, v11}, LJ/u;-><init>(I[I)V

    return-object v0

    :cond_1b
    move v10, v14

    goto :goto_f

    :cond_1c
    if-eqz v1, :cond_1d

    invoke-interface {v0, v1}, Lb0/o;->z(I)V

    :cond_1d
    :goto_f
    move-wide/from16 v1, v20

    goto/16 :goto_5

    :cond_1e
    :goto_10
    const/4 v8, 0x1

    goto :goto_12

    :goto_11
    move v9, v11

    goto :goto_f

    :goto_12
    if-nez v10, :cond_1f

    sget-object v0, Lv0/o;->e:Lv0/o;

    return-object v0

    :cond_1f
    move/from16 v0, p1

    if-eq v0, v8, :cond_21

    if-eqz v8, :cond_20

    sget-object v0, Lv0/k;->f:Lv0/k;

    return-object v0

    :cond_20
    sget-object v0, Lv0/k;->g:Lv0/k;

    return-object v0

    :cond_21
    return-object v18
.end method
