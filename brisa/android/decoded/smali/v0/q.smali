.class public final Lv0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LC1/e;

.field public static final e:LC1/e;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3a

    invoke-static {v0}, LC1/e;->j(C)LC1/e;

    move-result-object v0

    sput-object v0, Lv0/q;->d:LC1/e;

    const/16 v0, 0x2a

    invoke-static {v0}, LC1/e;->j(C)LC1/e;

    move-result-object v0

    sput-object v0, Lv0/q;->e:LC1/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv0/q;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lv0/q;->b:I

    return-void
.end method
