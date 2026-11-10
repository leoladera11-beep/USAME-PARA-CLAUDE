.class public final LH1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final e:LH1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH1/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LH1/b;->e:LH1/b;

    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptyCoroutineContext"

    return-object v0
.end method
