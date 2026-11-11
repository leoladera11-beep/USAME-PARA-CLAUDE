.class public final synthetic LU/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/k;


# instance fields
.field public final synthetic e:LC1/e;

.field public final synthetic f:LU/r;

.field public final synthetic g:LU/w;

.field public final synthetic h:Ljava/io/IOException;

.field public final synthetic i:Z


# direct methods
.method public synthetic constructor <init>(LC1/e;LU/r;LU/w;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU/E;->e:LC1/e;

    iput-object p2, p0, LU/E;->f:LU/r;

    iput-object p3, p0, LU/E;->g:LU/w;

    iput-object p4, p0, LU/E;->h:Ljava/io/IOException;

    iput-boolean p5, p0, LU/E;->i:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    move-object v0, p1

    check-cast v0, LU/G;

    iget-object p1, p0, LU/E;->e:LC1/e;

    iget v1, p1, LC1/e;->f:I

    iget-object p1, p1, LC1/e;->g:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, LU/A;

    iget-object v3, p0, LU/E;->f:LU/r;

    iget-object v4, p0, LU/E;->g:LU/w;

    iget-object v5, p0, LU/E;->h:Ljava/io/IOException;

    iget-boolean v6, p0, LU/E;->i:Z

    invoke-interface/range {v0 .. v6}, LU/G;->B(ILU/A;LU/r;LU/w;Ljava/io/IOException;Z)V

    return-void
.end method
