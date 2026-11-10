.class public final Lv0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv0/t;

.field public final b:Lv0/w;

.field public final c:Lb0/G;

.field public final d:Lb0/H;

.field public final e:Z

.field public final f:Z

.field public g:I

.field public h:LG/x;


# direct methods
.method public constructor <init>(Lv0/t;Lv0/w;Lb0/G;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv0/m;->a:Lv0/t;

    iput-object p2, p0, Lv0/m;->b:Lv0/w;

    iput-object p3, p0, Lv0/m;->c:Lb0/G;

    iget p2, p1, Lv0/t;->b:I

    iget-object p1, p1, Lv0/t;->g:LG/x;

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lv0/m;->e:Z

    iget-object p2, p1, LG/x;->p:Ljava/lang/String;

    const-string p3, "application/x-itut-t35"

    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lv0/m;->f:Z

    const-string p2, "audio/true-hd"

    iget-object p1, p1, LG/x;->p:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lb0/H;

    invoke-direct {p1}, Lb0/H;-><init>()V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lv0/m;->d:Lb0/H;

    return-void
.end method
