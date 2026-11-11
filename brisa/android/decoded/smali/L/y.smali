.class public final LL/y;
.super LL/w;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILL/l;Ljava/util/Map;)V
    .locals 2

    const-string v0, "Response code: "

    invoke-static {p1, v0}, LB1/e;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d4

    invoke-direct {p0, v0, p2, v1}, LL/w;-><init>(Ljava/lang/String;Ljava/io/IOException;I)V

    iput p1, p0, LL/y;->g:I

    iput-object p3, p0, LL/y;->h:Ljava/util/Map;

    return-void
.end method
