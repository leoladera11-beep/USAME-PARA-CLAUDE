.class final Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/CodeGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompleteOptionalCallJump"
.end annotation


# instance fields
.field private final afterLabel:I

.field private final putArgsAndDoCallLabel:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->putArgsAndDoCallLabel:I

    iput p2, p0, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->afterLabel:I

    return-void
.end method

.method public static bridge synthetic a(Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->afterLabel:I

    return p0
.end method

.method public static bridge synthetic b(Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/javascript/CodeGenerator$CompleteOptionalCallJump;->putArgsAndDoCallLabel:I

    return p0
.end method
