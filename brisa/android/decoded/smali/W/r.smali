.class public final LW/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[LU/l0;

.field public final d:[I

.field public final e:[[[I

.field public final f:LU/l0;


# direct methods
.method public constructor <init>([I[LU/l0;[I[[[ILU/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW/r;->b:[I

    iput-object p2, p0, LW/r;->c:[LU/l0;

    iput-object p4, p0, LW/r;->e:[[[I

    iput-object p3, p0, LW/r;->d:[I

    iput-object p5, p0, LW/r;->f:LU/l0;

    array-length p1, p1

    iput p1, p0, LW/r;->a:I

    return-void
.end method
