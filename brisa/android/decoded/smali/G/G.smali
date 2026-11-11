.class public final LG/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Landroid/net/Uri;

.field public c:Lu1/T;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Lu1/P;

.field public h:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lu1/H0;->k:Lu1/H0;

    iput-object v0, p0, LG/G;->c:Lu1/T;

    const/4 v0, 0x1

    iput-boolean v0, p0, LG/G;->e:Z

    sget-object v0, Lu1/P;->f:Lu1/N;

    sget-object v0, Lu1/C0;->i:Lu1/C0;

    iput-object v0, p0, LG/G;->g:Lu1/P;

    return-void
.end method
