.class public abstract Lq1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LW0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LW0/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LW0/b;-><init>(I)V

    sput-object v0, Lq1/b;->a:LW0/b;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const/4 v1, 0x1

    const-string v2, "profile"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v2, "email"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    return-void
.end method
