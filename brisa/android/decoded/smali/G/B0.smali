.class public interface abstract LG/B0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu1/C0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LG/z0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lu1/P;->o(Ljava/lang/Object;)Lu1/C0;

    move-result-object v0

    sput-object v0, LG/B0;->a:Lu1/C0;

    return-void
.end method
