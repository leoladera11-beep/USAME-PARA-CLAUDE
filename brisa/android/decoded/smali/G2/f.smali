.class public abstract LG2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final e:Lr2/d;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLr2/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG2/f;->f:Ljava/lang/String;

    iput-boolean p2, p0, LG2/f;->g:Z

    iput-object p3, p0, LG2/f;->e:Lr2/d;

    iput p4, p0, LG2/f;->h:I

    return-void
.end method


# virtual methods
.method public a(LG2/f;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, LG2/f;->e:Lr2/d;

    if-eqz v0, :cond_0

    iget-object v1, p1, LG2/f;->e:Lr2/d;

    if-eqz v1, :cond_0

    iget v0, v0, Lr2/d;->e:I

    iget v1, v1, Lr2/d;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, LG2/f;->h:I

    iget v1, p1, LG2/f;->h:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, LG2/f;->g:Z

    iget-boolean p1, p1, LG2/f;->g:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
