.class public final LP/e;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Landroid/net/Uri;

.field public final synthetic c:LP/f;


# direct methods
.method public constructor <init>(LP/f;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, LP/e;->c:LP/f;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, LP/e;->a:Landroid/content/ContentResolver;

    iput-object p4, p0, LP/e;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    iget-object p1, p0, LP/e;->c:LP/f;

    invoke-virtual {p1}, LP/f;->c()V

    return-void
.end method
