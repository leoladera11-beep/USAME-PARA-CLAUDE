.class public final Lorg/mozilla/javascript/Hashtable$Entry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x38b66bae0a157bffL


# instance fields
.field deleted:Z

.field final hashCode:I

.field key:Ljava/lang/Object;

.field next:Lorg/mozilla/javascript/Hashtable$Entry;

.field prev:Lorg/mozilla/javascript/Hashtable$Entry;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->hashCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 5
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    goto :goto_1

    .line 8
    :cond_2
    instance-of v0, p1, Lorg/mozilla/javascript/ConsString;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_3
    iput-object p1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    .line 11
    :goto_1
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 12
    iput v1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->hashCode:I

    goto :goto_2

    .line 13
    :cond_4
    sget-object v0, Lorg/mozilla/javascript/ScriptRuntime;->negativeZeroObj:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    iput v1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->hashCode:I

    goto :goto_2

    .line 15
    :cond_5
    iget-object p1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->hashCode:I

    .line 16
    :goto_2
    iput-object p2, p0, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->deleted:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    check-cast p1, Lorg/mozilla/javascript/Hashtable$Entry;

    iget-object p1, p1, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    invoke-static {v1, p1}, Lorg/mozilla/javascript/ScriptRuntime;->sameZero(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->hashCode:I

    return v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method
