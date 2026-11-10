.class public final synthetic LM0/H1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/k;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, LM0/H1;->e:Z

    iput p1, p0, LM0/H1;->f:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LM0/H1;->f:I

    check-cast p1, LM0/d2;

    iget-boolean v1, p0, LM0/H1;->e:Z

    invoke-virtual {p1, v0, v1}, LM0/d2;->W(IZ)V

    return-void
.end method
