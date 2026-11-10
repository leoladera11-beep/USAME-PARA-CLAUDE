.class public final LJ/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LN/x;

.field public final b:LJ/F;

.field public final c:LN/s;

.field public final d:LJ/M;

.field public final e:LG/n0;

.field public final f:LJ/O;

.field public final g:LJ/G;

.field public final h:LJ/H;

.field public final i:LJ/I;

.field public final j:LJ/J;


# direct methods
.method public constructor <init>(LN/x;LN/s;LJ/M;IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ/K;->a:LN/x;

    iput-object p2, p0, LJ/K;->c:LN/s;

    iput-object p3, p0, LJ/K;->d:LJ/M;

    new-instance p2, LG/n0;

    invoke-direct {p2}, LG/n0;-><init>()V

    iput-object p2, p0, LJ/K;->e:LG/n0;

    iget-object p2, p1, LN/x;->t:Landroid/os/Looper;

    new-instance v0, LJ/o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LJ/o;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p3, p2, v0}, LJ/M;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)LJ/O;

    move-result-object p2

    iput-object p2, p0, LJ/K;->f:LJ/O;

    new-instance p2, LJ/G;

    invoke-direct {p2, p0, p4}, LJ/G;-><init>(LJ/K;I)V

    iput-object p2, p0, LJ/K;->g:LJ/G;

    new-instance p2, LJ/H;

    invoke-direct {p2, p0, p5}, LJ/H;-><init>(LJ/K;I)V

    iput-object p2, p0, LJ/K;->h:LJ/H;

    new-instance p2, LJ/I;

    invoke-direct {p2, p0, p6}, LJ/I;-><init>(LJ/K;I)V

    iput-object p2, p0, LJ/K;->i:LJ/I;

    new-instance p2, LJ/J;

    invoke-direct {p2, p0, p7}, LJ/J;-><init>(LJ/K;I)V

    iput-object p2, p0, LJ/K;->j:LJ/J;

    new-instance p2, LJ/F;

    invoke-direct {p2, p0}, LJ/F;-><init>(LJ/K;)V

    iput-object p2, p0, LJ/K;->b:LJ/F;

    iget-object p1, p1, LN/x;->m:LJ/t;

    invoke-virtual {p1, p2}, LJ/t;->a(Ljava/lang/Object;)V

    return-void
.end method
