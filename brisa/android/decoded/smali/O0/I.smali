.class public final LO0/I;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:LH0/d;

.field public static final f:LH0/d;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LH0/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LH0/d;-><init>(I)V

    sput-object v0, LO0/I;->e:LH0/d;

    new-instance v0, LH0/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LH0/d;-><init>(I)V

    sput-object v0, LO0/I;->f:LH0/d;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LO0/I;->a:I

    iput p2, p0, LO0/I;->b:I

    iput-object p3, p0, LO0/I;->c:Ljava/lang/String;

    iput-object p4, p0, LO0/I;->d:Ljava/lang/String;

    return-void
.end method
