.class public final LI0/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LI0/h;

.field public final b:LJ/S;

.field public final c:LJ/B;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:J


# direct methods
.method public constructor <init>(LI0/h;LJ/S;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI0/A;->a:LI0/h;

    iput-object p2, p0, LI0/A;->b:LJ/S;

    new-instance p1, LJ/B;

    const/16 p2, 0x40

    new-array v0, p2, [B

    invoke-direct {p1, v0, p2}, LJ/B;-><init>([BI)V

    iput-object p1, p0, LI0/A;->c:LJ/B;

    return-void
.end method
