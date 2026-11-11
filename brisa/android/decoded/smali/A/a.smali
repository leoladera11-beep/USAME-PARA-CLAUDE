.class public final LA/a;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final e:Lz/m;


# direct methods
.method public constructor <init>(Lz/m;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LA/a;->e:Lz/m;

    return-void
.end method
