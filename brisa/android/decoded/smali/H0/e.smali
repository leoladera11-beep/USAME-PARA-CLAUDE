.class public final LH0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LH0/d;


# instance fields
.field public final a:LH0/f;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LH0/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LH0/d;-><init>(I)V

    sput-object v0, LH0/e;->c:LH0/d;

    return-void
.end method

.method public constructor <init>(LH0/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH0/e;->a:LH0/f;

    iput p2, p0, LH0/e;->b:I

    return-void
.end method
