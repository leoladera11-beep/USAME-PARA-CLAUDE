.class public final LM0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:LM0/h2;

.field public final c:Ljava/util/ArrayDeque;

.field public d:LM0/j2;

.field public e:LG/c0;

.field public f:Z

.field public g:LG/c0;

.field public h:LG/q0;

.field public i:LG/y0;


# direct methods
.method public constructor <init>(Ljava/lang/Object;LM0/h2;LM0/j2;LG/c0;LG/q0;LG/y0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM0/g;->a:Ljava/lang/Object;

    iput-object p2, p0, LM0/g;->b:LM0/h2;

    iput-object p3, p0, LM0/g;->d:LM0/j2;

    iput-object p4, p0, LM0/g;->e:LG/c0;

    iput-object p5, p0, LM0/g;->h:LG/q0;

    iput-object p6, p0, LM0/g;->i:LG/y0;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, LM0/g;->c:Ljava/util/ArrayDeque;

    sget-object p1, LG/c0;->b:LG/c0;

    iput-object p1, p0, LM0/g;->g:LG/c0;

    return-void
.end method
