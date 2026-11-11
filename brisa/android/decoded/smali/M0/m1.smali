.class public final LM0/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/u;


# instance fields
.field public e:Z

.field public f:Z

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lg/f;

    invoke-direct {p1}, Lg/f;-><init>()V

    iput-object p1, p0, LM0/m1;->g:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, LM0/m1;->e:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()LW1/g;
    .locals 5

    new-instance v0, LW1/g;

    iget-boolean v1, p0, LM0/m1;->e:Z

    iget-boolean v2, p0, LM0/m1;->f:Z

    iget-object v3, p0, LM0/m1;->g:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    iget-object v4, p0, LM0/m1;->h:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, LW1/g;-><init>(ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs b([LW1/f;)V
    .locals 5

    const-string v0, "cipherSuites"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LM0/m1;->e:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    iget-object v4, v4, LW1/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LM0/m1;->c([Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs c([Ljava/lang/String;)V
    .locals 1

    const-string v0, "cipherSuites"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LM0/m1;->e:Z

    if-eqz v0, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, LM0/m1;->g:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 6

    move-object v2, p1

    check-cast v2, LM0/O0;

    iget-object p1, p0, LM0/m1;->h:Ljava/lang/Object;

    check-cast p1, LM0/t1;

    iget-object p1, p1, LM0/t1;->i:LM0/X0;

    iget-object v0, p0, LM0/m1;->g:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LM0/N0;

    iget-boolean v3, p0, LM0/m1;->e:Z

    iget-boolean v4, p0, LM0/m1;->f:Z

    new-instance v0, LM0/l1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, LM0/l1;-><init>(LM0/m1;LM0/O0;ZZLM0/N0;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, LM0/l1;->run()V

    return-void
.end method

.method public e(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    iget-boolean v0, p0, LM0/m1;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, LM0/m1;->h:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, LM0/m1;->h:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, LM0/m1;->h:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iput-object v1, p0, LM0/m1;->h:Ljava/lang/Object;

    return-object v0

    :cond_2
    return-object v1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You can consumeRestoredStateForKey only after super.onCreate of corresponding component"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/lang/String;LS0/d;)V
    .locals 2

    iget-object v0, p0, LM0/m1;->g:Ljava/lang/Object;

    check-cast v0, Lg/f;

    invoke-virtual {v0, p1}, Lg/f;->a(Ljava/lang/Object;)Lg/c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lg/c;->f:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v1, Lg/c;

    invoke-direct {v1, p1, p2}, Lg/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, v0, Lg/f;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lg/f;->h:I

    iget-object p1, v0, Lg/f;->f:Lg/c;

    if-nez p1, :cond_1

    iput-object v1, v0, Lg/f;->e:Lg/c;

    iput-object v1, v0, Lg/f;->f:Lg/c;

    goto :goto_0

    :cond_1
    iput-object v1, p1, Lg/c;->g:Lg/c;

    iput-object p1, v1, Lg/c;->h:Lg/c;

    iput-object v1, v0, Lg/f;->f:Lg/c;

    :goto_0
    const/4 p1, 0x0

    :goto_1
    check-cast p1, LS0/d;

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SavedStateProvider with the given key is already registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs g([LW1/z;)V
    .locals 5

    iget-boolean v0, p0, LM0/m1;->e:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    iget-object v4, v4, LW1/z;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LM0/m1;->h([Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs h([Ljava/lang/String;)V
    .locals 1

    const-string v0, "tlsVersions"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, LM0/m1;->e:Z

    if-eqz v0, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, LM0/m1;->h:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
