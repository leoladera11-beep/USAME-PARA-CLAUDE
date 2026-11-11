.class public abstract Ls1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc1/l;

.field public static final b:Ls1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc1/l;

    invoke-direct {v0}, Lc1/l;-><init>()V

    sput-object v0, Ls1/e;->a:Lc1/l;

    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ls1/e;->b:Ls1/i;

    return-void
.end method
