.class public final LR0/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LJ/u;


# instance fields
.field public a:I

.field public b:LE0/e;

.field public c:LE0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LJ/u;

    const/16 v1, 0x14

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, LJ/u;-><init>(II)V

    sput-object v0, LR0/c0;->d:LJ/u;

    return-void
.end method

.method public static a()LR0/c0;
    .locals 1

    sget-object v0, LR0/c0;->d:LJ/u;

    invoke-virtual {v0}, LJ/u;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR0/c0;

    if-nez v0, :cond_0

    new-instance v0, LR0/c0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_0
    return-object v0
.end method
