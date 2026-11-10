.class public abstract Ld2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ld2/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld2/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld2/h;->a:Ld2/g;

    return-void
.end method


# virtual methods
.method public a(Ld2/o;LJ/u;)V
    .locals 0

    const-string p1, "settings"

    invoke-static {p2, p1}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract b(Ld2/w;)V
.end method
