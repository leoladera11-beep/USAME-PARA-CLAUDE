.class public final Lv0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:LG/x;

.field public final h:I

.field public final i:Ly1/b;

.field public final j:Ly1/b;

.field public final k:I

.field public final l:I

.field public final m:Z

.field public final n:[Lv0/u;


# direct methods
.method public constructor <init>(Lv0/s;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lv0/s;->a:I

    iput v0, p0, Lv0/t;->a:I

    iget v0, p1, Lv0/s;->b:I

    iput v0, p0, Lv0/t;->b:I

    iget-wide v0, p1, Lv0/s;->c:J

    iput-wide v0, p0, Lv0/t;->c:J

    iget-wide v0, p1, Lv0/s;->d:J

    iput-wide v0, p0, Lv0/t;->d:J

    iget-wide v0, p1, Lv0/s;->e:J

    iput-wide v0, p0, Lv0/t;->e:J

    iget-wide v0, p1, Lv0/s;->f:J

    iput-wide v0, p0, Lv0/t;->f:J

    iget-object v0, p1, Lv0/s;->g:LG/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lv0/t;->g:LG/x;

    iget v0, p1, Lv0/s;->h:I

    iput v0, p0, Lv0/t;->h:I

    iget-object v0, p1, Lv0/s;->i:[Lv0/u;

    iput-object v0, p0, Lv0/t;->n:[Lv0/u;

    iget v0, p1, Lv0/s;->j:I

    iput v0, p0, Lv0/t;->k:I

    iget-object v0, p1, Lv0/s;->k:Ly1/b;

    iput-object v0, p0, Lv0/t;->i:Ly1/b;

    iget-object v0, p1, Lv0/s;->l:Ly1/b;

    iput-object v0, p0, Lv0/t;->j:Ly1/b;

    iget-boolean v0, p1, Lv0/s;->m:Z

    iput-boolean v0, p0, Lv0/t;->m:Z

    iget p1, p1, Lv0/s;->n:I

    iput p1, p0, Lv0/t;->l:I

    return-void
.end method


# virtual methods
.method public final a()Lv0/s;
    .locals 3

    new-instance v0, Lv0/s;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget v1, p0, Lv0/t;->a:I

    iput v1, v0, Lv0/s;->a:I

    iget v1, p0, Lv0/t;->b:I

    iput v1, v0, Lv0/s;->b:I

    iget-wide v1, p0, Lv0/t;->c:J

    iput-wide v1, v0, Lv0/s;->c:J

    iget-wide v1, p0, Lv0/t;->d:J

    iput-wide v1, v0, Lv0/s;->d:J

    iget-wide v1, p0, Lv0/t;->e:J

    iput-wide v1, v0, Lv0/s;->e:J

    iget-wide v1, p0, Lv0/t;->f:J

    iput-wide v1, v0, Lv0/s;->f:J

    iget-object v1, p0, Lv0/t;->g:LG/x;

    iput-object v1, v0, Lv0/s;->g:LG/x;

    iget v1, p0, Lv0/t;->h:I

    iput v1, v0, Lv0/s;->h:I

    iget-object v1, p0, Lv0/t;->n:[Lv0/u;

    iput-object v1, v0, Lv0/s;->i:[Lv0/u;

    iget v1, p0, Lv0/t;->k:I

    iput v1, v0, Lv0/s;->j:I

    iget-object v1, p0, Lv0/t;->i:Ly1/b;

    iput-object v1, v0, Lv0/s;->k:Ly1/b;

    iget-object v1, p0, Lv0/t;->j:Ly1/b;

    iput-object v1, v0, Lv0/s;->l:Ly1/b;

    iget-boolean v1, p0, Lv0/t;->m:Z

    iput-boolean v1, v0, Lv0/s;->m:Z

    iget v1, p0, Lv0/t;->l:I

    iput v1, v0, Lv0/s;->n:I

    return-object v0
.end method
