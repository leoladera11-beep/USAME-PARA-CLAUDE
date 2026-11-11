.class public final Lh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public e:I

.field public f:I

.field public g:Z

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lh/a;->e:I

    return-void
.end method

.method public constructor <init>(Lh/e;I)V
    .locals 0

    iput p2, p0, Lh/a;->h:I

    packed-switch p2, :pswitch_data_0

    .line 3
    iput-object p1, p0, Lh/a;->i:Ljava/lang/Object;

    .line 4
    iget p1, p1, Lh/j;->g:I

    invoke-direct {p0, p1}, Lh/a;-><init>(I)V

    return-void

    .line 5
    :pswitch_0
    iput-object p1, p0, Lh/a;->i:Ljava/lang/Object;

    .line 6
    iget p1, p1, Lh/j;->g:I

    invoke-direct {p0, p1}, Lh/a;-><init>(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Lh/f;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lh/a;->h:I

    .line 7
    iput-object p1, p0, Lh/a;->i:Ljava/lang/Object;

    .line 8
    iget p1, p1, Lh/f;->g:I

    invoke-direct {p0, p1}, Lh/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lh/a;->f:I

    iget v1, p0, Lh/a;->e:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lh/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lh/a;->f:I

    iget v1, p0, Lh/a;->h:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lh/a;->i:Ljava/lang/Object;

    check-cast v1, Lh/f;

    iget-object v1, v1, Lh/f;->f:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lh/a;->i:Ljava/lang/Object;

    check-cast v1, Lh/e;

    invoke-virtual {v1, v0}, Lh/j;->i(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lh/a;->i:Ljava/lang/Object;

    check-cast v1, Lh/e;

    invoke-virtual {v1, v0}, Lh/j;->g(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget v1, p0, Lh/a;->f:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lh/a;->f:I

    iput-boolean v2, p0, Lh/a;->g:Z

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 2

    iget-boolean v0, p0, Lh/a;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lh/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lh/a;->f:I

    iget v1, p0, Lh/a;->h:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lh/a;->i:Ljava/lang/Object;

    check-cast v1, Lh/f;

    invoke-virtual {v1, v0}, Lh/f;->f(I)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lh/a;->i:Ljava/lang/Object;

    check-cast v1, Lh/e;

    invoke-virtual {v1, v0}, Lh/j;->h(I)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lh/a;->i:Ljava/lang/Object;

    check-cast v1, Lh/e;

    invoke-virtual {v1, v0}, Lh/j;->h(I)Ljava/lang/Object;

    :goto_0
    iget v0, p0, Lh/a;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lh/a;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/a;->g:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
