.class public final synthetic LS/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic e:LS/v;


# direct methods
.method public synthetic constructor <init>(LS/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/s;->e:LS/v;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, LS/s;->e:LS/v;

    invoke-interface {v0, p2}, LS/v;->e(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, p1}, LS/v;->e(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
