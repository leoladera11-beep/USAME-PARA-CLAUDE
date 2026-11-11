.class final Lorg/mozilla/javascript/AccessorSlot$MemberBoxSetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/AccessorSlot$Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/AccessorSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemberBoxSetter"
.end annotation


# instance fields
.field final member:Lorg/mozilla/javascript/MemberBox;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/MemberBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/AccessorSlot$MemberBoxSetter;->member:Lorg/mozilla/javascript/MemberBox;

    return-void
.end method


# virtual methods
.method public asSetterFunction(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Function;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/AccessorSlot$MemberBoxSetter;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/MemberBox;->asSetterFunction(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Function;

    move-result-object p1

    return-object p1
.end method

.method public isSameSetterFunction(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/AccessorSlot$MemberBoxSetter;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/MemberBox;->isSameSetterFunction(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 3

    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object p2

    iget-object v0, p0, Lorg/mozilla/javascript/AccessorSlot$MemberBoxSetter;->member:Lorg/mozilla/javascript/MemberBox;

    iget-object v0, v0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/mozilla/javascript/FunctionObject;->getTypeTag(Ljava/lang/Class;)I

    move-result v0

    invoke-static {p2, p3, p1, v0}, Lorg/mozilla/javascript/FunctionObject;->convertArg(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/javascript/AccessorSlot$MemberBoxSetter;->member:Lorg/mozilla/javascript/MemberBox;

    iget-object v0, p2, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    if-nez v0, :cond_0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v2
.end method
