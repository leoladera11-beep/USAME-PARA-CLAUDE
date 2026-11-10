.class public final LR/a;
.super LM/g;
.source "SourceFile"


# instance fields
.field public i:Landroid/graphics/Bitmap;

.field public final synthetic j:LR/b;


# direct methods
.method public constructor <init>(LR/b;)V
    .locals 0

    invoke-direct {p0}, LK/f;-><init>()V

    iput-object p1, p0, LR/a;->j:LR/b;

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, LR/a;->i:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, LK/f;->f:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LM/g;->g:J

    iput-boolean v0, p0, LM/g;->h:Z

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, LR/a;->j:LR/b;

    invoke-virtual {v0, p0}, LM/i;->n(LM/g;)V

    return-void
.end method
