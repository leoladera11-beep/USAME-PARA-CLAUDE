.class public final LG2/m;
.super LG2/f;
.source "SourceFile"


# instance fields
.field public final i:Ljava/util/Locale;

.field public final j:Z

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLr2/d;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, LG2/f;-><init>(Ljava/lang/String;ZLr2/d;I)V

    invoke-static {p4}, LJ2/a;->c(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, LD2/i;

    const/4 p3, 0x1

    invoke-direct {p2, p4, p3}, LD2/i;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Locale;

    iput-object p1, p0, LG2/m;->i:Ljava/util/Locale;

    iput-object p4, p0, LG2/m;->k:Ljava/lang/String;

    iput-object p5, p0, LG2/m;->l:Ljava/lang/String;

    iput-boolean p6, p0, LG2/m;->j:Z

    return-void
.end method


# virtual methods
.method public final a(LG2/f;)Z
    .locals 2

    invoke-super {p0, p1}, LG2/f;->a(LG2/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, LG2/m;

    if-eqz v0, :cond_0

    check-cast p1, LG2/m;

    iget-object v0, p1, LG2/m;->k:Ljava/lang/String;

    iget-object v1, p0, LG2/m;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LG2/m;->j:Z

    iget-boolean p1, p1, LG2/m;->j:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
