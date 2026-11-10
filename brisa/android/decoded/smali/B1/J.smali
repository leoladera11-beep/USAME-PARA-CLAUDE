.class public final LB1/J;
.super LB1/L;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lsun/misc/Unsafe;I)V
    .locals 0

    iput p2, p0, LB1/J;->b:I

    invoke-direct {p0, p1}, LB1/L;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final c(JLjava/lang/Object;)Z
    .locals 1

    iget v0, p0, LB1/J;->b:I

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, LB1/M;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, LB1/M;->b(JLjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, LB1/M;->c(JLjava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1

    :pswitch_0
    sget-boolean v0, LB1/M;->e:Z

    if-eqz v0, :cond_1

    invoke-static {p1, p2, p3}, LB1/M;->b(JLjava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, p3}, LB1/M;->c(JLjava/lang/Object;)Z

    move-result p1

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(JLjava/lang/Object;)D
    .locals 1

    iget v0, p0, LB1/J;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, LB1/L;->g(JLjava/lang/Object;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(JLjava/lang/Object;)F
    .locals 1

    iget v0, p0, LB1/J;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, LB1/L;->f(JLjava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, LB1/L;->f(JLjava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/Object;JZ)V
    .locals 1

    iget v0, p0, LB1/J;->b:I

    packed-switch v0, :pswitch_data_0

    sget-boolean v0, LB1/M;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, LB1/M;->d(Ljava/lang/Object;JZ)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, LB1/M;->e(Ljava/lang/Object;JZ)V

    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, LB1/M;->e:Z

    if-eqz v0, :cond_1

    invoke-static {p1, p2, p3, p4}, LB1/M;->d(Ljava/lang/Object;JZ)V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, p3, p4}, LB1/M;->e(Ljava/lang/Object;JZ)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;JD)V
    .locals 6

    iget v1, p0, LB1/J;->b:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, LB1/L;->n(Ljava/lang/Object;JJ)V

    return-void

    :pswitch_0
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, LB1/L;->n(Ljava/lang/Object;JJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Ljava/lang/Object;JF)V
    .locals 1

    iget v0, p0, LB1/J;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p4, p2, p3, p1}, LB1/L;->m(IJLjava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p4, p2, p3, p1}, LB1/L;->m(IJLjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final q()Z
    .locals 1

    iget v0, p0, LB1/J;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
