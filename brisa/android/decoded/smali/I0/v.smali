.class public final LI0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/D;


# instance fields
.field public final synthetic e:I

.field public f:I

.field public g:J

.field public h:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LI0/v;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LI0/v;->e:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, LI0/v;->f:I

    .line 4
    iput-wide p3, p0, LI0/v;->g:J

    .line 5
    iput p2, p0, LI0/v;->h:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, LI0/v;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AtomSizeTooSmall{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, LI0/v;->f:I

    sget-object v2, LJ/W;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    shr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    shr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    shr-int/lit8 v5, v1, 0x8

    int-to-byte v5, v5

    int-to-byte v1, v1

    const/4 v6, 0x4

    new-array v6, v6, [B

    const/4 v7, 0x0

    aput-byte v3, v6, v7

    const/4 v3, 0x1

    aput-byte v4, v6, v3

    const/4 v3, 0x2

    aput-byte v5, v6, v3

    const/4 v3, 0x3

    aput-byte v1, v6, v3

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v6, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LI0/v;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", minHeaderSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LI0/v;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
