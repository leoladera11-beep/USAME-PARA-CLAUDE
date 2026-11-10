.class public final LU/N;
.super Lb0/u;
.source "SourceFile"


# instance fields
.field public final synthetic b:LU/T;


# direct methods
.method public constructor <init>(LU/T;Lb0/z;)V
    .locals 0

    iput-object p1, p0, LU/N;->b:LU/T;

    invoke-direct {p0, p2}, Lb0/u;-><init>(Lb0/z;)V

    return-void
.end method


# virtual methods
.method public final g()J
    .locals 2

    iget-object v0, p0, LU/N;->b:LU/T;

    iget-wide v0, v0, LU/T;->H:J

    return-wide v0
.end method
