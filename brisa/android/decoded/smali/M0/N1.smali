.class public final synthetic LM0/N1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM0/f;


# instance fields
.field public final synthetic a:LM0/T1;

.field public final synthetic b:LM0/X0;

.field public final synthetic c:LM0/N0;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(LM0/T1;LM0/X0;LM0/N0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/N1;->a:LM0/T1;

    iput-object p2, p0, LM0/N1;->b:LM0/X0;

    iput-object p3, p0, LM0/N1;->c:LM0/N0;

    iput p4, p0, LM0/N1;->d:I

    return-void
.end method


# virtual methods
.method public final run()Lz1/B;
    .locals 4

    iget-object v0, p0, LM0/N1;->c:LM0/N0;

    iget v1, p0, LM0/N1;->d:I

    iget-object v2, p0, LM0/N1;->a:LM0/T1;

    iget-object v3, p0, LM0/N1;->b:LM0/X0;

    invoke-interface {v2, v3, v0, v1}, LM0/T1;->i(LM0/X0;LM0/N0;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/B;

    return-object v0
.end method
