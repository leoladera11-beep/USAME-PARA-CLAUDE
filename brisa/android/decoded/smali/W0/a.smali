.class public abstract LW0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LW0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb1/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LW0/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, LW0/b;-><init>(I)V

    new-instance v2, LW0/c;

    const-string v3, "Auth.GOOGLE_SIGN_IN_API"

    invoke-direct {v2, v3, v1, v0}, LW0/c;-><init>(Ljava/lang/String;Lcom/brisa/local/a;Lb1/c;)V

    sput-object v2, LW0/a;->a:LW0/c;

    return-void
.end method
