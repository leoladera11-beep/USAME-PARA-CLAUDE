.class public final LA/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LA/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LA/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, LA/c;->a:LA/c;

    return-void
.end method
