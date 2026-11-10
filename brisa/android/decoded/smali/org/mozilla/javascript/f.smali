.class public final synthetic Lorg/mozilla/javascript/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/f;->a:Ljava/lang/Object;

    iput p2, p0, Lorg/mozilla/javascript/f;->b:I

    iput p3, p0, Lorg/mozilla/javascript/f;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/f;->b:I

    iget v1, p0, Lorg/mozilla/javascript/f;->c:I

    iget-object v2, p0, Lorg/mozilla/javascript/f;->a:Ljava/lang/Object;

    invoke-static {v0, v2, p1, v1}, Lorg/mozilla/javascript/HashSlotMap;->a(ILjava/lang/Object;Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    return-object p1
.end method
