.class public final synthetic LD2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:LD2/k;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(LD2/k;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD2/g;->a:LD2/k;

    iput-boolean p2, p0, LD2/g;->b:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, LD2/a;

    iget-object v7, p1, LD2/a;->f:LC2/c;

    iget v0, v7, LC2/c;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, LD2/a;->e:Ljava/lang/String;

    iget-boolean v2, p1, LD2/a;->g:Z

    iget-object v3, v7, LC2/c;->e:Lr2/d;

    iget-object p1, v7, LC2/c;->h:Ljava/lang/String;

    if-eqz p1, :cond_0

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    const-string p1, ""

    goto :goto_0

    :goto_1
    iget-object p1, p0, LD2/g;->a:LD2/k;

    iget-object p1, p1, LD2/k;->m:LG2/l;

    sget-object v4, LG2/l;->f:LG2/l;

    if-ne p1, v4, :cond_2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    const/4 p1, 0x1

    :goto_2
    move v4, p1

    goto :goto_4

    :cond_2
    :goto_3
    const/4 p1, 0x2

    goto :goto_2

    :goto_4
    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    new-instance v0, LG2/n;

    iget-boolean v6, p0, LD2/g;->b:Z

    invoke-direct/range {v0 .. v7}, LG2/n;-><init>(Ljava/lang/String;ZLr2/d;ILjava/lang/String;ZLC2/c;)V

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The content of the video stream has been not set or is null. Please specify a non-null one with setContent."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The identifier of the video stream has been not set or is null. If you are not able to get an identifier, use the static constant ID_UNKNOWN of the Stream class."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
