.class public interface abstract LQ/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LP/B;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LP/B;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LP/B;-><init>(I)V

    sput-object v0, LQ/n;->a:LP/B;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method
