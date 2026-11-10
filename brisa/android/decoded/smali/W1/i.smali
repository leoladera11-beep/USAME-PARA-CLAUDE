.class public interface abstract LW1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LW1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LW1/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LW1/i;->c:LW1/b;

    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;)Ljava/util/List;
.end method
