.class public final LL/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/d;


# static fields
.field public static final h:Lt1/t;


# instance fields
.field public final e:Lz1/C;

.field public final f:LN0/O;

.field public final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LL/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LL/i;-><init>(I)V

    invoke-static {v0}, LS1/e;->o(Lt1/t;)Lt1/t;

    move-result-object v0

    sput-object v0, LL/k;->h:Lt1/t;

    return-void
.end method

.method public constructor <init>(LJ/u;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LN0/O;

    iget-object v1, p1, LJ/u;->g:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, LN0/O;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, LL/k;->f:LN0/O;

    sget-object v0, LL/k;->h:Lt1/t;

    invoke-interface {v0}, Lt1/t;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/C;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, LL/k;->e:Lz1/C;

    iget p1, p1, LJ/u;->f:I

    iput p1, p0, LL/k;->g:I

    return-void
.end method


# virtual methods
.method public final B(Landroid/net/Uri;)Lz1/B;
    .locals 2

    new-instance v0, LL/j;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, LL/j;-><init>(LL/k;Ljava/lang/Object;I)V

    iget-object p1, p0, LL/k;->e:Lz1/C;

    check-cast p1, Lz1/D;

    invoke-virtual {p1, v0}, Lz1/D;->c(Ljava/util/concurrent/Callable;)Lz1/B;

    move-result-object p1

    return-object p1
.end method

.method public final s([B)Lz1/B;
    .locals 2

    new-instance v0, LL/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LL/j;-><init>(LL/k;Ljava/lang/Object;I)V

    iget-object p1, p0, LL/k;->e:Lz1/C;

    check-cast p1, Lz1/D;

    invoke-virtual {p1, v0}, Lz1/D;->c(Ljava/util/concurrent/Callable;)Lz1/B;

    move-result-object p1

    return-object p1
.end method
