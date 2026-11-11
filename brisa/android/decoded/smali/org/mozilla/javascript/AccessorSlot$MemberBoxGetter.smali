.class final Lorg/mozilla/javascript/AccessorSlot$MemberBoxGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/AccessorSlot$Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/AccessorSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemberBoxGetter"
.end annotation


# instance fields
.field final member:Lorg/mozilla/javascript/MemberBox;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/MemberBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/AccessorSlot$MemberBoxGetter;->member:Lorg/mozilla/javascript/MemberBox;

    return-void
.end method


# virtual methods
.method public asGetterFunction(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Function;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/AccessorSlot$MemberBoxGetter;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/javascript/MemberBox;->asGetterFunction(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Function;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/AccessorSlot$MemberBoxGetter;->member:Lorg/mozilla/javascript/MemberBox;

    iget-object v1, v0, Lorg/mozilla/javascript/MemberBox;->delegateTo:Ljava/lang/Object;

    if-nez v1, :cond_0

    sget-object v1, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/MemberBox;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isSameGetterFunction(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/AccessorSlot$MemberBoxGetter;->member:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v0, p1}, Lorg/mozilla/javascript/MemberBox;->isSameGetterFunction(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
