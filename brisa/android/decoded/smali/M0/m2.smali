.class public final LM0/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;


# instance fields
.field public final a:I

.field public final b:Landroid/os/Bundle;

.field public final c:J

.field public final d:LM0/k2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LJ/W;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/m2;->e:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/m2;->f:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/m2;->g:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LM0/m2;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .line 1
    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 3
    invoke-direct/range {v0 .. v5}, LM0/m2;-><init>(ILandroid/os/Bundle;JLM0/k2;)V

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;JLM0/k2;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    if-ltz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :cond_1
    :goto_0
    invoke-static {v0}, LF1/i;->g(Z)V

    .line 6
    iput p1, p0, LM0/m2;->a:I

    .line 7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, LM0/m2;->b:Landroid/os/Bundle;

    .line 8
    iput-wide p3, p0, LM0/m2;->c:J

    if-nez p5, :cond_2

    if-gez p1, :cond_2

    .line 9
    new-instance p5, LM0/k2;

    invoke-direct {p5, p1}, LM0/k2;-><init>(I)V

    .line 10
    :cond_2
    iput-object p5, p0, LM0/m2;->d:LM0/k2;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)LM0/m2;
    .locals 8

    sget-object v0, LM0/m2;->e:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v0, LM0/m2;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, LJ/W;->j(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, LM0/m2;->g:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p0, v1, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sget-object v1, LM0/m2;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, LM0/k2;->a(Landroid/os/Bundle;)LM0/k2;

    move-result-object p0

    :goto_0
    move-object v7, p0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    new-instance p0, LM0/k2;

    invoke-direct {p0, v3}, LM0/k2;-><init>(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    new-instance v2, LM0/m2;

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_2
    move-object v4, v0

    invoke-direct/range {v2 .. v7}, LM0/m2;-><init>(ILandroid/os/Bundle;JLM0/k2;)V

    return-object v2
.end method


# virtual methods
.method public final b()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, LM0/m2;->e:Ljava/lang/String;

    iget v2, p0, LM0/m2;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, LM0/m2;->f:Ljava/lang/String;

    iget-object v2, p0, LM0/m2;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, LM0/m2;->g:Ljava/lang/String;

    iget-wide v2, p0, LM0/m2;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, LM0/m2;->d:LM0/k2;

    if-eqz v1, :cond_0

    sget-object v2, LM0/m2;->h:Ljava/lang/String;

    invoke-virtual {v1}, LM0/k2;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-object v0
.end method
