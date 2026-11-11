.class public final synthetic Lorg/mozilla/javascript/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic a:Lorg/mozilla/javascript/SlotMap$SlotComputer;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILorg/mozilla/javascript/SlotMap$SlotComputer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/mozilla/javascript/e;->a:Lorg/mozilla/javascript/SlotMap$SlotComputer;

    iput-object p1, p0, Lorg/mozilla/javascript/e;->b:Ljava/lang/Object;

    iput p2, p0, Lorg/mozilla/javascript/e;->c:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/e;->c:I

    check-cast p2, Lorg/mozilla/javascript/Slot;

    iget-object v1, p0, Lorg/mozilla/javascript/e;->a:Lorg/mozilla/javascript/SlotMap$SlotComputer;

    iget-object v2, p0, Lorg/mozilla/javascript/e;->b:Ljava/lang/Object;

    invoke-static {v1, v2, v0, p1, p2}, Lorg/mozilla/javascript/HashSlotMap;->b(Lorg/mozilla/javascript/SlotMap$SlotComputer;Ljava/lang/Object;ILjava/lang/Object;Lorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    return-object p1
.end method
