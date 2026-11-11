.class public final Lg/b;
.super Lg/e;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public e:Lg/c;

.field public f:Lg/c;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Lg/c;Lg/c;I)V
    .locals 0

    iput p3, p0, Lg/b;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/b;->e:Lg/c;

    iput-object p1, p0, Lg/b;->f:Lg/c;

    return-void
.end method


# virtual methods
.method public final a(Lg/c;)V
    .locals 3

    iget-object v0, p0, Lg/b;->e:Lg/c;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lg/b;->f:Lg/c;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lg/b;->f:Lg/c;

    iput-object v1, p0, Lg/b;->e:Lg/c;

    :cond_0
    iget-object v0, p0, Lg/b;->e:Lg/c;

    if-ne v0, p1, :cond_1

    iget v2, p0, Lg/b;->g:I

    packed-switch v2, :pswitch_data_0

    iget-object v0, v0, Lg/c;->g:Lg/c;

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lg/c;->h:Lg/c;

    :goto_0
    iput-object v0, p0, Lg/b;->e:Lg/c;

    :cond_1
    iget-object v0, p0, Lg/b;->f:Lg/c;

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lg/b;->e:Lg/c;

    if-eq v0, p1, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lg/b;->b(Lg/c;)Lg/c;

    move-result-object v1

    :cond_3
    :goto_1
    iput-object v1, p0, Lg/b;->f:Lg/c;

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lg/c;)Lg/c;
    .locals 1

    iget v0, p0, Lg/b;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lg/c;->h:Lg/c;

    return-object p1

    :pswitch_0
    iget-object p1, p1, Lg/c;->g:Lg/c;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lg/b;->f:Lg/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg/b;->f:Lg/c;

    iget-object v1, p0, Lg/b;->e:Lg/c;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lg/b;->b(Lg/c;)Lg/c;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lg/b;->f:Lg/c;

    return-object v0
.end method
