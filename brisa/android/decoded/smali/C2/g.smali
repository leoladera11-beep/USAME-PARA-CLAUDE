.class public final LC2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/util/function/Function;

.field public e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LC2/g;->e:I

    iput-object p2, p0, LC2/g;->a:Ljava/lang/String;

    iput-object p3, p0, LC2/g;->b:Ljava/lang/String;

    iput p1, p0, LC2/g;->c:I

    iput-object p4, p0, LC2/g;->d:Ljava/util/function/Function;

    return-void
.end method
