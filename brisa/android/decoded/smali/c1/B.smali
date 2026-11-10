.class public final Lc1/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:La1/a;


# direct methods
.method public constructor <init>(La1/a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ld1/s;->d(Ljava/lang/Object;)V

    iput-object p1, p0, Lc1/B;->b:La1/a;

    iput p2, p0, Lc1/B;->a:I

    return-void
.end method
