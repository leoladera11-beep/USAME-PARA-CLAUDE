.class public final Lb2/h;
.super LW1/x;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:J

.field public final g:Lj2/r;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLj2/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb2/h;->e:Ljava/lang/String;

    iput-wide p2, p0, Lb2/h;->f:J

    iput-object p4, p0, Lb2/h;->g:Lj2/r;

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    iget-wide v0, p0, Lb2/h;->f:J

    return-wide v0
.end method

.method public final e()LW1/o;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lb2/h;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, LW1/o;->c:Ljava/util/regex/Pattern;

    :try_start_0
    invoke-static {v1}, LW1/t;->i(Ljava/lang/String;)LW1/o;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public final q()Lj2/i;
    .locals 1

    iget-object v0, p0, Lb2/h;->g:Lj2/r;

    return-object v0
.end method
