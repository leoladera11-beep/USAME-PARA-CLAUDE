.class public final synthetic LM0/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/h0;


# instance fields
.field public final synthetic e:LM0/l0;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(LM0/l0;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/Y;->e:LM0/l0;

    iput p2, p0, LM0/Y;->f:I

    iput p3, p0, LM0/Y;->g:I

    iput p4, p0, LM0/Y;->h:I

    return-void
.end method


# virtual methods
.method public final a(LM0/q;I)V
    .locals 6

    iget v5, p0, LM0/Y;->h:I

    iget-object v0, p0, LM0/Y;->e:LM0/l0;

    iget-object v1, v0, LM0/l0;->c:LM0/y0;

    iget v3, p0, LM0/Y;->f:I

    iget v4, p0, LM0/Y;->g:I

    move-object v0, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, LM0/q;->G(LM0/o;IIII)V

    return-void
.end method
