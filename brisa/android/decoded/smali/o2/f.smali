.class public final Lo2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public e:Lo2/k;

.field public f:Ljava/nio/charset/Charset;

.field public final g:Z

.field public final h:I

.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lo2/k;->j:Lo2/k;

    iput-object v0, p0, Lo2/f;->e:Lo2/k;

    sget-object v0, Lm2/a;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lo2/f;->f:Ljava/nio/charset/Charset;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo2/f;->g:Z

    iput v0, p0, Lo2/f;->h:I

    const/16 v1, 0x1e

    iput v1, p0, Lo2/f;->i:I

    iput v0, p0, Lo2/f;->j:I

    return-void
.end method


# virtual methods
.method public final a()Lo2/f;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/f;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lo2/f;->f:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, v0, Lo2/f;->f:Ljava/nio/charset/Charset;

    iget-object v1, p0, Lo2/f;->e:Lo2/k;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo2/k;->valueOf(Ljava/lang/String;)Lo2/k;

    move-result-object v1

    iput-object v1, v0, Lo2/f;->e:Lo2/k;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo2/f;->a()Lo2/f;

    move-result-object v0

    return-object v0
.end method
