.class public final synthetic LD2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LD2/e;->a:I

    iput-object p1, p0, LD2/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, LD2/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    check-cast p1, Lo2/p;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, LD2/k;

    check-cast p1, LD2/a;

    iget-object v1, p1, LD2/a;->f:LC2/c;

    new-instance v2, LG2/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x1

    iput v3, v2, LG2/a;->a:I

    const/4 v3, -0x1

    iput v3, v2, LG2/a;->b:I

    iget v3, v1, LC2/c;->f:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, LG2/a;->e:Ljava/lang/Object;

    iget-object v3, p1, LD2/a;->e:Ljava/lang/String;

    iget-boolean p1, p1, LD2/a;->g:Z

    iput-object v3, v2, LG2/a;->f:Ljava/lang/Comparable;

    iput-boolean p1, v2, LG2/a;->d:Z

    iget-object v3, v1, LC2/c;->e:Lr2/d;

    iput-object v3, v2, LG2/a;->h:Ljava/lang/Object;

    iget v3, v1, LC2/c;->g:I

    iput v3, v2, LG2/a;->b:I

    iget-object v3, v1, LC2/c;->n:Ljava/lang/String;

    iput-object v3, v2, LG2/a;->g:Ljava/lang/CharSequence;

    iget-object v3, v1, LC2/c;->p:Ljava/util/Locale;

    iput-object v3, v2, LG2/a;->i:Ljava/io/Serializable;

    iget v3, v1, LC2/c;->s:I

    iput v3, v2, LG2/a;->c:I

    iput-object v1, v2, LG2/a;->j:Ljava/lang/Object;

    iget-object v0, v0, LD2/k;->m:LG2/l;

    sget-object v1, LG2/l;->g:LG2/l;

    if-eq v0, v1, :cond_0

    sget-object v1, LG2/l;->h:LG2/l;

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x2

    iput p1, v2, LG2/a;->a:I

    :cond_1
    iget-object p1, v2, LG2/a;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p1, v2, LG2/a;->f:Ljava/lang/Comparable;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    iget p1, v2, LG2/a;->a:I

    if-eqz p1, :cond_2

    new-instance p1, LG2/b;

    invoke-direct {p1, v2}, LG2/b;-><init>(LG2/a;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The delivery method of the audio stream has been set as null, which is not allowed. Pass a valid one instead with setDeliveryMethod."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The content of the audio stream has been not set or is null. Please specify a non-null one with setContent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The identifier of the audio stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v0, p0, LD2/e;->b:Ljava/lang/Object;

    check-cast v0, LW0/c;

    check-cast p1, LC1/d;

    const-string v1, "compactVideoRenderer"

    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, LD2/l;

    invoke-virtual {p1, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    invoke-direct {v2, p1, v0}, LD2/l;-><init>(LC1/d;LW0/c;)V

    goto :goto_1

    :cond_5
    const-string v1, "compactRadioRenderer"

    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, LD2/b;

    invoke-virtual {p1, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    invoke-direct {v2, p1}, LD2/b;-><init>(LC1/d;)V

    goto :goto_1

    :cond_6
    const-string v1, "compactPlaylistRenderer"

    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, LD2/b;

    invoke-virtual {p1, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    invoke-direct {v2, p1}, LD2/b;-><init>(LC1/d;)V

    goto :goto_1

    :cond_7
    const-string v1, "lockupViewModel"

    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    invoke-virtual {p1, v1}, LC1/d;->d(Ljava/lang/String;)LC1/d;

    move-result-object p1

    const-string v1, "contentType"

    invoke-virtual {p1, v1, v3}, LC1/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LOCKUP_CONTENT_TYPE_PLAYLIST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "LOCKUP_CONTENT_TYPE_PODCAST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_0

    :cond_8
    const-string v2, "LOCKUP_CONTENT_TYPE_VIDEO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v2, LD2/o;

    invoke-direct {v2, p1, v0}, LD2/o;-><init>(LC1/d;LW0/c;)V

    goto :goto_1

    :cond_9
    :goto_0
    new-instance v2, LD2/d;

    invoke-direct {v2, p1}, LD2/d;-><init>(LC1/d;)V

    goto :goto_1

    :cond_a
    move-object v2, v3

    :goto_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
