.class public final LC/a;
.super LC/b;
.source "SourceFile"


# static fields
.field public static final b:LC/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LC/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LC/b;-><init>(I)V

    sput-object v0, LC/a;->b:LC/a;

    return-void
.end method
