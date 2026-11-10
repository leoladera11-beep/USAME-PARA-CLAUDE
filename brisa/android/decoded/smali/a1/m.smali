.class public abstract La1/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[La1/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [La1/k;

    sget-object v1, La1/n;->a:La1/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, La1/n;->b:La1/j;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, La1/m;->a:[La1/k;

    return-void
.end method
