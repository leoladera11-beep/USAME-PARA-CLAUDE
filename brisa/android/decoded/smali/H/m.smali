.class public final LH/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LH/m;


# instance fields
.field public final a:J

.field public final b:LG/q0;

.field public final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LH/l;

    invoke-direct {v0}, LH/l;-><init>()V

    invoke-virtual {v0}, LH/l;->a()LH/m;

    move-result-object v0

    sput-object v0, LH/m;->d:LH/m;

    return-void
.end method

.method public constructor <init>(LH/l;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, LH/l;->a:J

    iput-wide v0, p0, LH/m;->a:J

    iget-object v0, p1, LH/l;->b:LG/q0;

    iput-object v0, p0, LH/m;->b:LG/q0;

    iget-object p1, p1, LH/l;->c:Ljava/lang/Object;

    iput-object p1, p0, LH/m;->c:Ljava/lang/Object;

    return-void
.end method
