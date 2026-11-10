.class public Lorg/mozilla/javascript/EmbeddedSlotMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/SlotMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;
    }
.end annotation


# static fields
.field private static final INITIAL_SLOT_SIZE:I = 0x4


# instance fields
.field private count:I

.field private firstAdded:Lorg/mozilla/javascript/Slot;

.field private lastAdded:Lorg/mozilla/javascript/Slot;

.field private slots:[Lorg/mozilla/javascript/Slot;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addKnownAbsentSlot([Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/Slot;)V
    .locals 2

    array-length v0, p0

    iget v1, p1, Lorg/mozilla/javascript/Slot;->indexOrHash:I

    invoke-static {v0, v1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    move-result v0

    aget-object v1, p0, v0

    iput-object v1, p1, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    aput-object p1, p0, v0

    return-void
.end method

.method private static copyTable([Lorg/mozilla/javascript/Slot;[Lorg/mozilla/javascript/Slot;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, v2, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    invoke-static {p1, v2}, Lorg/mozilla/javascript/EmbeddedSlotMap;->addKnownAbsentSlot([Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/Slot;)V

    move-object v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createNewSlot(Lorg/mozilla/javascript/Slot;)V
    .locals 3

    iget v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    const/4 v1, 0x4

    if-nez v0, :cond_0

    new-array v2, v1, [Lorg/mozilla/javascript/Slot;

    iput-object v2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x3

    if-le v0, v2, :cond_1

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lorg/mozilla/javascript/Slot;

    invoke-static {v1, v0}, Lorg/mozilla/javascript/EmbeddedSlotMap;->copyTable([Lorg/mozilla/javascript/Slot;[Lorg/mozilla/javascript/Slot;)V

    iput-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    :cond_1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->insertNewSlot(Lorg/mozilla/javascript/Slot;)V

    return-void
.end method

.method private static getSlotIndex(II)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    and-int/2addr p0, p1

    return p0
.end method

.method private insertNewSlot(Lorg/mozilla/javascript/Slot;)V
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/Slot;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/Slot;

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/Slot;

    :cond_1
    iput-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/Slot;

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->addKnownAbsentSlot([Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/Slot;)V

    return-void
.end method

.method private removeSlot(Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/Slot;ILjava/lang/Object;)V
    .locals 0

    iget p4, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    add-int/lit8 p4, p4, -0x1

    iput p4, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    if-ne p2, p1, :cond_0

    iget-object p2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    iget-object p4, p1, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    aput-object p4, p2, p3

    goto :goto_0

    :cond_0
    iget-object p3, p1, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    iput-object p3, p2, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    :goto_0
    iget-object p2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/Slot;

    if-ne p1, p2, :cond_1

    iget-object p2, p1, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    iput-object p2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/Slot;

    const/4 p2, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p3, p2, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    if-eq p3, p1, :cond_2

    move-object p2, p3

    goto :goto_1

    :cond_2
    iget-object p3, p1, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    iput-object p3, p2, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    :goto_2
    iget-object p3, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/Slot;

    if-ne p1, p3, :cond_3

    iput-object p2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/Slot;

    :cond_3
    return-void
.end method


# virtual methods
.method public add(Lorg/mozilla/javascript/Slot;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/mozilla/javascript/Slot;

    iput-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->insertNewSlot(Lorg/mozilla/javascript/Slot;)V

    return-void
.end method

.method public compute(Ljava/lang/Object;ILorg/mozilla/javascript/SlotMap$SlotComputer;)Lorg/mozilla/javascript/Slot;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/mozilla/javascript/Slot;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lorg/mozilla/javascript/SlotMap$SlotComputer<",
            "TS;>;)TS;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    if-eqz v1, :cond_9

    array-length v1, v1

    invoke-static {v1, v0}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    aget-object v2, v2, v1

    move-object v3, v2

    :goto_1
    if-eqz v2, :cond_2

    iget v4, v2, Lorg/mozilla/javascript/Slot;->indexOrHash:I

    if-ne v0, v4, :cond_1

    iget-object v4, v2, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v2, :cond_9

    invoke-interface {p3, p1, p2, v2}, Lorg/mozilla/javascript/SlotMap$SlotComputer;->compute(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-direct {p0, v2, v3, v1, p1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->removeSlot(Lorg/mozilla/javascript/Slot;Lorg/mozilla/javascript/Slot;ILjava/lang/Object;)V

    return-object p2

    :cond_3
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    if-ne v3, v2, :cond_4

    iget-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    aput-object p2, p1, v1

    goto :goto_3

    :cond_4
    iput-object p2, v3, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    :goto_3
    iget-object p1, v2, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    iput-object p1, p2, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    iget-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/Slot;

    if-ne v2, p1, :cond_5

    iput-object p2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/Slot;

    goto :goto_5

    :cond_5
    :goto_4
    if-eqz p1, :cond_6

    iget-object p3, p1, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    if-eq p3, v2, :cond_6

    move-object p1, p3

    goto :goto_4

    :cond_6
    if-eqz p1, :cond_7

    iput-object p2, p1, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    :cond_7
    :goto_5
    iget-object p1, v2, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    iput-object p1, p2, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    iget-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/Slot;

    if-ne v2, p1, :cond_8

    iput-object p2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->lastAdded:Lorg/mozilla/javascript/Slot;

    :cond_8
    return-object p2

    :cond_9
    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lorg/mozilla/javascript/SlotMap$SlotComputer;->compute(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/EmbeddedSlotMap;->createNewSlot(Lorg/mozilla/javascript/Slot;)V

    :cond_a
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/mozilla/javascript/Slot;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;

    iget-object v1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->firstAdded:Lorg/mozilla/javascript/Slot;

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/EmbeddedSlotMap$Iter;-><init>(Lorg/mozilla/javascript/Slot;)V

    return-object v0
.end method

.method public modify(Ljava/lang/Object;II)Lorg/mozilla/javascript/Slot;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iget-object v1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    if-eqz v1, :cond_3

    array-length v1, v1

    invoke-static {v1, v0}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    aget-object v1, v2, v1

    :goto_1
    if-eqz v1, :cond_2

    iget v2, v1, Lorg/mozilla/javascript/Slot;->indexOrHash:I

    if-ne v0, v2, :cond_1

    iget-object v2, v1, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, v1, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    new-instance v0, Lorg/mozilla/javascript/Slot;

    invoke-direct {v0, p1, p2, p3}, Lorg/mozilla/javascript/Slot;-><init>(Ljava/lang/Object;II)V

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/EmbeddedSlotMap;->createNewSlot(Lorg/mozilla/javascript/Slot;)V

    return-object v0
.end method

.method public query(Ljava/lang/Object;I)Lorg/mozilla/javascript/Slot;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    array-length v0, v0

    invoke-static {v0, p2}, Lorg/mozilla/javascript/EmbeddedSlotMap;->getSlotIndex(II)I

    move-result v0

    iget-object v2, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->slots:[Lorg/mozilla/javascript/Slot;

    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_3

    iget v2, v0, Lorg/mozilla/javascript/Slot;->indexOrHash:I

    if-ne p2, v2, :cond_2

    iget-object v2, v0, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    iget-object v0, v0, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap;->count:I

    return v0
.end method
