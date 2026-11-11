.class public abstract LO0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LC1/e;

.field public static final b:LC1/e;

.field public static final c:LK/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\n"

    invoke-static {v0}, LC1/e;->l(Ljava/lang/String;)LC1/e;

    move-result-object v1

    sput-object v1, LO0/c;->a:LC1/e;

    const-string v1, "\r\n"

    invoke-static {v1}, LC1/e;->l(Ljava/lang/String;)LC1/e;

    move-result-object v1

    sput-object v1, LO0/c;->b:LC1/e;

    new-instance v1, LK/a;

    invoke-direct {v1, v0}, LK/a;-><init>(Ljava/lang/String;)V

    sput-object v1, LO0/c;->c:LK/a;

    return-void
.end method
