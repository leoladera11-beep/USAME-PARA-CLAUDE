.class public final synthetic Lv0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/j;
.implements LK/z;


# instance fields
.field public final synthetic e:Lv0/j;


# direct methods
.method public synthetic constructor <init>(Lv0/j;)V
    .locals 0

    iput-object p1, p0, Lv0/f;->e:Lv0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lv0/t;

    iget-object v0, p0, Lv0/f;->e:Lv0/j;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1

    :cond_0
    iget v0, v0, Lv0/j;->b:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    iget-object v0, p1, Lv0/t;->g:LG/x;

    invoke-static {v0}, LJ/h;->f(LG/x;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method

.method public r(JLJ/D;)V
    .locals 1

    iget-object v0, p0, Lv0/f;->e:Lv0/j;

    iget-object v0, v0, Lv0/j;->I:[Lb0/G;

    invoke-static {p1, p2, p3, v0}, Lb0/a;->c(JLJ/D;[Lb0/G;)V

    return-void
.end method
