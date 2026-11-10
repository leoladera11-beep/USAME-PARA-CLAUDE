.class public final enum Lr2/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum f:Lr2/d;

.field public static final enum g:Lr2/d;

.field public static final enum h:Lr2/d;

.field public static final enum i:Lr2/d;

.field public static final enum j:Lr2/d;

.field public static final enum k:Lr2/d;

.field public static final enum l:Lr2/d;

.field public static final synthetic m:[Lr2/d;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    new-instance v1, Lr2/d;

    const/4 v0, 0x0

    const-string v2, "mp4"

    const-string v3, "MPEG_4"

    invoke-direct {v1, v0, v0, v3, v2}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lr2/d;->f:Lr2/d;

    new-instance v2, Lr2/d;

    const-string v0, "3gp"

    const/4 v3, 0x1

    const/16 v4, 0x10

    const-string v5, "v3GPP"

    invoke-direct {v2, v3, v4, v5, v0}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lr2/d;->g:Lr2/d;

    new-instance v3, Lr2/d;

    const/4 v0, 0x2

    const/16 v5, 0x20

    const-string v6, "WEBM"

    const-string v7, "webm"

    invoke-direct {v3, v0, v5, v6, v7}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lr2/d;->h:Lr2/d;

    new-instance v0, Lr2/d;

    const/16 v5, 0x100

    const-string v6, "m4a"

    const/4 v8, 0x3

    const-string v9, "M4A"

    invoke-direct {v0, v8, v5, v9, v6}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lr2/d;->i:Lr2/d;

    new-instance v5, Lr2/d;

    const/4 v6, 0x4

    const/16 v8, 0x200

    const-string v9, "WEBMA"

    invoke-direct {v5, v6, v8, v9, v7}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lr2/d;->j:Lr2/d;

    new-instance v6, Lr2/d;

    const/16 v9, 0x300

    const-string v10, "mp3"

    const/4 v11, 0x5

    const-string v12, "MP3"

    invoke-direct {v6, v11, v9, v12, v10}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lr2/d;

    const/16 v10, 0x310

    const-string v11, "mp2"

    const/4 v12, 0x6

    const-string v13, "MP2"

    invoke-direct {v9, v12, v10, v13, v11}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lr2/d;

    const/16 v11, 0x400

    const-string v12, "opus"

    const/4 v13, 0x7

    const-string v14, "OPUS"

    invoke-direct {v10, v13, v11, v14, v12}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v11, v9

    new-instance v9, Lr2/d;

    const/16 v12, 0x500

    const-string v13, "ogg"

    const/16 v14, 0x8

    const-string v15, "OGG"

    invoke-direct {v9, v14, v12, v15, v13}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v12, v10

    new-instance v10, Lr2/d;

    const-string v13, "WEBMA_OPUS"

    const/16 v14, 0x9

    invoke-direct {v10, v14, v8, v13, v7}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lr2/d;->k:Lr2/d;

    move-object v7, v11

    new-instance v11, Lr2/d;

    const-string v8, "aiff"

    const/16 v13, 0xa

    const/16 v14, 0x600

    const-string v15, "AIFF"

    invoke-direct {v11, v13, v14, v15, v8}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object v8, v12

    new-instance v12, Lr2/d;

    const/16 v13, 0xb

    const-string v15, "aif"

    const-string v4, "AIF"

    invoke-direct {v12, v13, v14, v4, v15}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lr2/d;

    const/16 v4, 0x700

    const-string v14, "wav"

    const/16 v15, 0xc

    move-object/from16 v17, v0

    const-string v0, "WAV"

    invoke-direct {v13, v15, v4, v0, v14}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lr2/d;

    const/16 v0, 0x800

    const-string v4, "flac"

    const/16 v15, 0xd

    move-object/from16 v18, v1

    const-string v1, "FLAC"

    invoke-direct {v14, v15, v0, v1, v4}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lr2/d;

    const/16 v0, 0x900

    const-string v1, "alac"

    const/16 v4, 0xe

    move-object/from16 v19, v2

    const-string v2, "ALAC"

    invoke-direct {v15, v4, v0, v2, v1}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lr2/d;

    const/16 v1, 0x1000

    const-string v2, "vtt"

    const/16 v4, 0xf

    move-object/from16 v20, v3

    const-string v3, "VTT"

    invoke-direct {v0, v4, v1, v3, v2}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lr2/d;

    const/16 v2, 0x2000

    const-string v3, "ttml"

    const-string v4, "TTML"

    move-object/from16 v21, v0

    const/16 v0, 0x10

    invoke-direct {v1, v0, v2, v4, v3}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lr2/d;->l:Lr2/d;

    new-instance v0, Lr2/d;

    const/16 v2, 0x3000

    const-string v3, "srv1"

    const/16 v4, 0x11

    move-object/from16 v16, v1

    const-string v1, "TRANSCRIPT1"

    invoke-direct {v0, v4, v2, v1, v3}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lr2/d;

    const/16 v2, 0x4000

    const-string v3, "srv2"

    const/16 v4, 0x12

    move-object/from16 v22, v0

    const-string v0, "TRANSCRIPT2"

    invoke-direct {v1, v4, v2, v0, v3}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lr2/d;

    const/16 v2, 0x5000

    const-string v3, "srv3"

    const/16 v4, 0x13

    move-object/from16 v23, v1

    const-string v1, "TRANSCRIPT3"

    invoke-direct {v0, v4, v2, v1, v3}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lr2/d;

    const/16 v2, 0x6000

    const-string v3, "srt"

    const/16 v4, 0x14

    move-object/from16 v24, v0

    const-string v0, "SRT"

    invoke-direct {v1, v4, v2, v0, v3}, Lr2/d;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    move-object/from16 v17, v16

    move-object/from16 v16, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v22

    filled-new-array/range {v1 .. v21}, [Lr2/d;

    move-result-object v0

    sput-object v0, Lr2/d;->m:[Lr2/d;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lr2/d;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr2/d;
    .locals 1

    const-class v0, Lr2/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr2/d;

    return-object p0
.end method

.method public static values()[Lr2/d;
    .locals 1

    sget-object v0, Lr2/d;->m:[Lr2/d;

    invoke-virtual {v0}, [Lr2/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr2/d;

    return-object v0
.end method
