.class public final synthetic LM0/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;


# instance fields
.field public final synthetic e:LM0/l0;

.field public final synthetic f:Z

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(LM0/l0;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/W;->e:LM0/l0;

    iput-boolean p2, p0, LM0/W;->f:Z

    iput p3, p0, LM0/W;->g:I

    return-void
.end method


# virtual methods
.method public final a(LM0/q;I)V
    .locals 3

    iget v0, p0, LM0/W;->g:I

    iget-object v1, p0, LM0/W;->e:LM0/l0;

    iget-object v1, v1, LM0/l0;->c:LM0/y0;

    iget-boolean v2, p0, LM0/W;->f:Z

    invoke-interface {p1, v1, p2, v2, v0}, LM0/q;->v0(LM0/o;IZI)V

    return-void
.end method
