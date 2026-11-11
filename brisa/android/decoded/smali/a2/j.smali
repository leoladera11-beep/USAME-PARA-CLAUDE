.class public final La2/j;
.super LO1/e;
.source "SourceFile"

# interfaces
.implements LN1/a;


# instance fields
.field public final synthetic e:LW1/d;

.field public final synthetic f:LW1/j;

.field public final synthetic g:LW1/a;


# direct methods
.method public constructor <init>(LW1/d;LW1/j;LW1/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/j;->e:LW1/d;

    iput-object p2, p0, La2/j;->f:LW1/j;

    iput-object p3, p0, La2/j;->g:LW1/a;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, La2/j;->e:LW1/d;

    iget-object v0, v0, LW1/d;->b:Lj1/a;

    invoke-static {v0}, LO1/d;->b(Ljava/lang/Object;)V

    iget-object v1, p0, La2/j;->f:LW1/j;

    invoke-virtual {v1}, LW1/j;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, La2/j;->g:LW1/a;

    iget-object v2, v2, LW1/a;->h:LW1/m;

    iget-object v2, v2, LW1/m;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lj1/a;->b(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
