.class public final synthetic LU/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU/B;


# instance fields
.field public final synthetic a:LU/j;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LU/j;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/g;->a:LU/j;

    iput-object p2, p0, LU/g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(LU/a;LG/q0;)V
    .locals 2

    iget-object v0, p0, LU/g;->a:LU/j;

    iget-object v1, p0, LU/g;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, LU/j;->w(Ljava/lang/Object;LU/a;LG/q0;)V

    return-void
.end method
