.class public final LB/w;
.super LO1/e;
.source "SourceFile"

# interfaces
.implements LN1/a;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LN1/a;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LB/w;->e:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    check-cast p1, LO1/e;

    iput-object p1, p0, LB/w;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, LB/w;->e:I

    iput-object p1, p0, LB/w;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LB/w;->e:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, LB/w;->f:Ljava/lang/Object;

    check-cast v0, LO1/e;

    invoke-interface {v0}, LN1/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, LF1/q;->e:LF1/q;

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, LB/w;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0

    :pswitch_1
    iget-object v0, p0, LB/w;->f:Ljava/lang/Object;

    check-cast v0, LB/E;

    new-instance v1, LB/u;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0}, LB/E;->e()LB/D;

    move-result-object v2

    instance-of v3, v0, LB/a;

    if-eqz v3, :cond_0

    check-cast v0, LB/a;

    invoke-interface {v0}, LB/a;->b()LC/c;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget-object v0, LC/a;->b:LC/a;

    :goto_1
    const-string v3, "store"

    invoke-static {v2, v3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultCreationExtras"

    invoke-static {v0, v3}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, LB/A;

    invoke-direct {v3, v2, v1, v0}, LB/A;-><init>(LB/D;LB/C;LC/b;)V

    sget-object v0, LO1/g;->a:LO1/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LO1/b;

    const-class v1, LB/y;

    invoke-direct {v0, v1}, LO1/b;-><init>(Ljava/lang/Class;)V

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v3, v0, v1}, LB/A;->G(LO1/b;Ljava/lang/String;)LB/B;

    move-result-object v0

    check-cast v0, LB/y;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
