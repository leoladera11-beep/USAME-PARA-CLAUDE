.class public Lorg/mozilla/javascript/NativeJavaConstructor;
.super Lorg/mozilla/javascript/BaseFunction;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x7117f69fecc379afL


# instance fields
.field ctor:Lorg/mozilla/javascript/MemberBox;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/MemberBox;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/javascript/BaseFunction;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeJavaConstructor;->ctor:Lorg/mozilla/javascript/MemberBox;

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p3, p0, Lorg/mozilla/javascript/NativeJavaConstructor;->ctor:Lorg/mozilla/javascript/MemberBox;

    invoke-static {p1, p2, p4, p3}, Lorg/mozilla/javascript/NativeJavaClass;->constructSpecific(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/MemberBox;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    return-object p1
.end method

.method public getFunctionName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaConstructor;->ctor:Lorg/mozilla/javascript/MemberBox;

    iget-object v0, v0, Lorg/mozilla/javascript/MemberBox;->argTypes:[Ljava/lang/Class;

    invoke-static {v0}, Lorg/mozilla/javascript/JavaMembers;->liveConnectSignature([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/javascript/NativeJavaConstructor;->ctor:Lorg/mozilla/javascript/MemberBox;

    invoke-virtual {v0}, Lorg/mozilla/javascript/MemberBox;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[JavaConstructor "

    const-string v2, "]"

    invoke-static {v1, v0, v2}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
