.class public final synthetic LM0/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:LM0/t1;

.field public final synthetic f:LN0/P;

.field public final synthetic g:I

.field public final synthetic h:LM0/s1;

.field public final synthetic i:Z


# direct methods
.method public synthetic constructor <init>(LM0/t1;LN0/P;ILM0/s1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/k1;->e:LM0/t1;

    iput-object p2, p0, LM0/k1;->f:LN0/P;

    iput p3, p0, LM0/k1;->g:I

    iput-object p4, p0, LM0/k1;->h:LM0/s1;

    iput-boolean p5, p0, LM0/k1;->i:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, LM0/g1;

    iget-object v1, p0, LM0/k1;->e:LM0/t1;

    iget v2, p0, LM0/k1;->g:I

    iget-object v3, p0, LM0/k1;->h:LM0/s1;

    iget-boolean v4, p0, LM0/k1;->i:Z

    invoke-direct {v0, v1, v2, v3, v4}, LM0/g1;-><init>(LM0/t1;ILM0/s1;Z)V

    iget-object v2, p0, LM0/k1;->f:LN0/P;

    invoke-virtual {v1, v2, v0}, LM0/t1;->J(LN0/P;LM0/s1;)V

    return-void
.end method
