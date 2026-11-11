.class public final synthetic LM0/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:LM0/l0;


# direct methods
.method public synthetic constructor <init>(LM0/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/G;->a:LM0/l0;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget-object v0, p0, LM0/G;->a:LM0/l0;

    iget-object v0, v0, LM0/l0;->a:LM0/z;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LH/a;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, LH/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, LM0/z;->X0(Ljava/lang/Runnable;)V

    return-void
.end method
