.class public final Lb/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB/f;
.implements Lb/a;


# instance fields
.field public final a:LB/i;

.field public final b:Lz/t;

.field public c:Lb/k;

.field public final synthetic d:LW0/c;


# direct methods
.method public constructor <init>(LW0/c;LB/i;Lz/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/j;->d:LW0/c;

    iput-object p2, p0, Lb/j;->a:LB/i;

    iput-object p3, p0, Lb/j;->b:Lz/t;

    invoke-virtual {p2, p0}, LB/i;->a(LB/f;)V

    return-void
.end method


# virtual methods
.method public final a(LB/g;LB/d;)V
    .locals 1

    sget-object p1, LB/d;->ON_START:LB/d;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lb/j;->d:LW0/c;

    iget-object p2, p1, LW0/c;->g:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayDeque;

    iget-object v0, p0, Lb/j;->b:Lz/t;

    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    new-instance p2, Lb/k;

    invoke-direct {p2, p1, v0}, Lb/k;-><init>(LW0/c;Lz/t;)V

    iget-object p1, v0, Lz/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iput-object p2, p0, Lb/j;->c:Lb/k;

    return-void

    :cond_0
    sget-object p1, LB/d;->ON_STOP:LB/d;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lb/j;->c:Lb/k;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lb/k;->cancel()V

    return-void

    :cond_1
    sget-object p1, LB/d;->ON_DESTROY:LB/d;

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Lb/j;->cancel()V

    :cond_2
    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lb/j;->a:LB/i;

    invoke-virtual {v0, p0}, LB/i;->f(LB/f;)V

    iget-object v0, p0, Lb/j;->b:Lz/t;

    iget-object v0, v0, Lz/t;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lb/j;->c:Lb/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/k;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/j;->c:Lb/k;

    :cond_0
    return-void
.end method
