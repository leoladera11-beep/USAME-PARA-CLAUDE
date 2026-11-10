.class public final Ld1/t;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final e:La1/a;


# direct methods
.method public constructor <init>(La1/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iget v0, p1, La1/a;->f:I

    if-eqz v0, :cond_0

    iget-object v0, p1, La1/a;->g:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ResolvableConnectionException can only be created with a connection result containing a resolution."

    invoke-static {v1, v0}, Ld1/s;->a(Ljava/lang/String;Z)V

    iput-object p1, p0, Ld1/t;->e:La1/a;

    return-void
.end method
