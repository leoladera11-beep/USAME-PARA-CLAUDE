.class public final Ld1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld1/b;


# static fields
.field public static b:Ld1/g;

.field public static final c:Ld1/h;


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ld1/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ld1/h;-><init>(IIIZZ)V

    sput-object v0, Ld1/g;->c:Ld1/h;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ld1/g;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Ld1/g;
    .locals 2

    const-class v0, Ld1/g;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld1/g;->b:Ld1/g;

    if-nez v1, :cond_0

    new-instance v1, Ld1/g;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Ld1/g;->b:Ld1/g;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Ld1/g;->b:Ld1/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(La1/a;)V
    .locals 2

    iget-object v0, p0, Ld1/g;->a:Ljava/lang/Object;

    check-cast v0, Lr1/a;

    iget v1, p1, La1/a;->f:I

    if-nez v1, :cond_0

    const/4 p1, 0x0

    iget-object v1, v0, Lcom/google/android/gms/common/internal/a;->w:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/internal/a;->i(Ld1/e;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/common/internal/a;->o:Ld1/g;

    if-eqz v0, :cond_1

    iget-object v0, v0, Ld1/g;->a:Ljava/lang/Object;

    check-cast v0, Lb1/j;

    invoke-interface {v0, p1}, Lb1/j;->d0(La1/a;)V

    :cond_1
    return-void
.end method
