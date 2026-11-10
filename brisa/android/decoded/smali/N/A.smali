.class public final LN/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:LN/F;


# direct methods
.method public constructor <init>(LN/F;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN/A;->a:LN/F;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, LN/A;->a:LN/F;

    iget-boolean v1, v0, LN/F;->z:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, LN/F;->H:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, LN/F;->G:LN/g0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, LN/F;->X:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, v0, LN/F;->k:LJ/O;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, LJ/O;->g(I)Z

    return-void
.end method
