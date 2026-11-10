.class public final synthetic LW/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW/l;


# instance fields
.field public final synthetic e:LW/o;

.field public final synthetic f:LW/j;

.field public final synthetic g:Z

.field public final synthetic h:[I


# direct methods
.method public synthetic constructor <init>(LW/o;LW/j;Z[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW/e;->e:LW/o;

    iput-object p2, p0, LW/e;->f:LW/j;

    iput-boolean p3, p0, LW/e;->g:Z

    iput-object p4, p0, LW/e;->h:[I

    return-void
.end method


# virtual methods
.method public final g(ILG/r0;[I)Lu1/C0;
    .locals 10

    iget-object v0, p0, LW/e;->e:LW/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, LW/c;

    iget-object v5, p0, LW/e;->f:LW/j;

    invoke-direct {v8, v0, v5}, LW/c;-><init>(LW/o;LW/j;)V

    iget-object v0, p0, LW/e;->h:[I

    aget v9, v0, p1

    invoke-static {}, Lu1/P;->j()Lu1/M;

    move-result-object v0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    iget v1, p2, LG/r0;->a:I

    if-ge v4, v1, :cond_0

    new-instance v1, LW/f;

    aget v6, p3, v4

    iget-boolean v7, p0, LW/e;->g:Z

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, LW/f;-><init>(ILG/r0;ILW/j;IZLW/c;I)V

    invoke-virtual {v0, v1}, Lu1/I;->c(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lu1/M;->f()Lu1/C0;

    move-result-object p1

    return-object p1
.end method
