.class public final synthetic LM0/G1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/k;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LM0/G1;->e:I

    iput p2, p0, LM0/G1;->f:I

    iput p3, p0, LM0/G1;->g:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, LM0/G1;->g:I

    check-cast p1, LM0/d2;

    iget v1, p0, LM0/G1;->e:I

    iget v2, p0, LM0/G1;->f:I

    invoke-virtual {p1, v1, v2, v0}, LM0/d2;->k0(III)V

    return-void
.end method
