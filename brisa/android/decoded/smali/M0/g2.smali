.class public final LM0/g2;
.super Lz1/p;
.source "SourceFile"


# instance fields
.field public final l:I

.field public final m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LM0/g2;->l:I

    iput-object p2, p0, LM0/g2;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final n()V
    .locals 1

    iget-object v0, p0, LM0/g2;->m:Ljava/lang/Object;

    invoke-super {p0, v0}, Lz1/p;->k(Ljava/lang/Object;)Z

    return-void
.end method
