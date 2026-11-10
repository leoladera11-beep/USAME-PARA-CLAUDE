.class public final LN0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:LN0/P;

.field public final e:LN0/i;

.field public final f:Ljava/util/HashMap;

.field public final synthetic g:LM0/y1;


# direct methods
.method public constructor <init>(LM0/y1;Ljava/lang/String;IILN0/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN0/m;->g:LM0/y1;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LN0/m;->f:Ljava/util/HashMap;

    iput-object p2, p0, LN0/m;->a:Ljava/lang/String;

    iput p3, p0, LN0/m;->b:I

    iput p4, p0, LN0/m;->c:I

    new-instance p1, LN0/P;

    invoke-direct {p1, p2, p3, p4}, LN0/P;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, LN0/m;->d:LN0/P;

    iput-object p5, p0, LN0/m;->e:LN0/i;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, LN0/m;->g:LM0/y1;

    iget-object v0, v0, LM0/y1;->g:LM0/p1;

    new-instance v1, LN0/l;

    invoke-direct {v1, p0}, LN0/l;-><init>(LN0/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
