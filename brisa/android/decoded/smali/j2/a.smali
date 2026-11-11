.class public abstract Lj2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lj2/j;->h:Lj2/j;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v0}, Ld1/m;->l(Ljava/lang/String;)Lj2/j;

    move-result-object v0

    iget-object v0, v0, Lj2/j;->e:[B

    sput-object v0, Lj2/a;->a:[B

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v0}, Ld1/m;->l(Ljava/lang/String;)Lj2/j;

    return-void
.end method
