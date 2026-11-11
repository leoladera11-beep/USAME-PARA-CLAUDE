.class public abstract LW/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:LG/r0;

.field public final g:I

.field public final h:LG/x;


# direct methods
.method public constructor <init>(ILG/r0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LW/m;->e:I

    iput-object p2, p0, LW/m;->f:LG/r0;

    iput p3, p0, LW/m;->g:I

    iget-object p1, p2, LG/r0;->d:[LG/x;

    aget-object p1, p1, p3

    iput-object p1, p0, LW/m;->h:LG/x;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(LW/m;)Z
.end method
