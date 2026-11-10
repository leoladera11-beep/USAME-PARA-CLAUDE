.class public final synthetic LM0/Z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/s1;


# instance fields
.field public final synthetic a:LM0/t1;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(LM0/t1;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/Z0;->a:LM0/t1;

    iput p2, p0, LM0/Z0;->b:F

    return-void
.end method


# virtual methods
.method public final a(LM0/N0;)V
    .locals 1

    iget-object p1, p0, LM0/Z0;->a:LM0/t1;

    iget-object p1, p1, LM0/t1;->i:LM0/X0;

    invoke-virtual {p1}, LM0/X0;->x()V

    iget-object p1, p1, LM0/X0;->t:LM0/d2;

    iget v0, p0, LM0/Z0;->b:F

    invoke-virtual {p1, v0}, LM0/d2;->h(F)V

    return-void
.end method
