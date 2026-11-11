.class public final LB1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LB1/p;


# instance fields
.field public final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LB1/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LB1/p;-><init>(I)V

    sput-object v0, LB1/p;->b:LB1/p;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LB1/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
