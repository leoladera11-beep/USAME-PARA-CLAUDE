.class public final synthetic LM0/Q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/W0;


# instance fields
.field public final synthetic e:LM0/l2;

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:LM0/N0;


# direct methods
.method public synthetic constructor <init>(LM0/l2;ZZLM0/N0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/Q0;->e:LM0/l2;

    iput-boolean p2, p0, LM0/Q0;->f:Z

    iput-boolean p3, p0, LM0/Q0;->g:Z

    iput-object p4, p0, LM0/Q0;->h:LM0/N0;

    return-void
.end method


# virtual methods
.method public final e(LM0/M0;I)V
    .locals 7

    iget-object v0, p0, LM0/Q0;->h:LM0/N0;

    iget v6, v0, LM0/N0;->c:I

    iget-object v3, p0, LM0/Q0;->e:LM0/l2;

    iget-boolean v4, p0, LM0/Q0;->f:Z

    iget-boolean v5, p0, LM0/Q0;->g:Z

    move-object v1, p1

    move v2, p2

    invoke-interface/range {v1 .. v6}, LM0/M0;->c(ILM0/l2;ZZI)V

    return-void
.end method
