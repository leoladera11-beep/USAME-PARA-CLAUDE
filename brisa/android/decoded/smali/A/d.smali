.class public abstract LA/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LA/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LA/c;->a:LA/c;

    sput-object v0, LA/d;->a:LA/c;

    return-void
.end method

.method public static a(Lz/m;)LA/c;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    iget-object v0, p0, Lz/m;->s:Lz/o;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lz/m;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lz/m;->m()Lz/A;

    :cond_0
    iget-object p0, p0, Lz/m;->u:Lz/m;

    goto :goto_0

    :cond_1
    sget-object p0, LA/d;->a:LA/c;

    return-object p0
.end method

.method public static b(LA/a;)V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Lz/A;->G(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LA/a;->e:Lz/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StrictMode violation in "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static final c(Lz/m;Ljava/lang/String;)V
    .locals 3

    const-string v0, "previousFragmentId"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LA/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to reuse fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with previous ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, LA/a;-><init>(Lz/m;Ljava/lang/String;)V

    invoke-static {v0}, LA/d;->b(LA/a;)V

    invoke-static {p0}, LA/d;->a(Lz/m;)LA/c;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
