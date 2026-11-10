.class public final Lv0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/D;


# static fields
.field public static final f:Lv0/k;

.field public static final g:Lv0/k;


# instance fields
.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv0/k;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lv0/k;-><init>(Z)V

    sput-object v0, Lv0/k;->f:Lv0/k;

    new-instance v0, Lv0/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv0/k;-><init>(Z)V

    sput-object v0, Lv0/k;->g:Lv0/k;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lv0/k;->e:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IncorrectFragmentation{expected="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lv0/k;->e:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
