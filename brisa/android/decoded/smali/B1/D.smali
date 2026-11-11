.class public final LB1/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LB1/a;

.field public final b:[Ljava/lang/Object;

.field public final c:I


# direct methods
.method public constructor <init>(LB1/a;[Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB1/D;->a:LB1/a;

    iput-object p2, p0, LB1/D;->b:[Ljava/lang/Object;

    const-string p1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const v0, 0xd800

    if-ge p2, v0, :cond_0

    iput p2, p0, LB1/D;->c:I

    return-void

    :cond_0
    and-int/lit16 p2, p2, 0x1fff

    const/16 v1, 0xd

    const/4 v2, 0x1

    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v0, :cond_1

    and-int/lit16 v2, v2, 0x1fff

    shl-int/2addr v2, v1

    or-int/2addr p2, v2

    add-int/lit8 v1, v1, 0xd

    move v2, v3

    goto :goto_0

    :cond_1
    shl-int p1, v2, v1

    or-int/2addr p1, p2

    iput p1, p0, LB1/D;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, LB1/D;->c:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method
