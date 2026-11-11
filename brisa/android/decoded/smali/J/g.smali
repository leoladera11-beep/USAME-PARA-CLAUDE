.class public final LJ/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LJ/g;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LJ/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, LJ/g;-><init>(IIZ)V

    sput-object v0, LJ/g;->d:LJ/g;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, LJ/g;->c:Z

    iput p1, p0, LJ/g;->a:I

    iput p2, p0, LJ/g;->b:I

    return-void
.end method
