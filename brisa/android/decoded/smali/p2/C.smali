.class public final Lp2/C;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lp2/C;

.field public static final d:Lp2/C;


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp2/C;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lp2/C;-><init>(ZZ)V

    sput-object v0, Lp2/C;->c:Lp2/C;

    new-instance v0, Lp2/C;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lp2/C;-><init>(ZZ)V

    sput-object v0, Lp2/C;->d:Lp2/C;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lp2/C;->a:Z

    iput-boolean p2, p0, Lp2/C;->b:Z

    return-void
.end method
