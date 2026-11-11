.class public abstract Ln1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La1/c;

.field public static final b:[La1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, La1/c;

    const-string v1, "CLIENT_TELEMETRY"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3, v1}, La1/c;-><init>(JLjava/lang/String;)V

    sput-object v0, Ln1/b;->a:La1/c;

    filled-new-array {v0}, [La1/c;

    move-result-object v0

    sput-object v0, Ln1/b;->b:[La1/c;

    return-void
.end method
