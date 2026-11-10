.class public final Lf1/b;
.super Lb1/h;
.source "SourceFile"


# static fields
.field public static final k:LW0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb1/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LW0/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LW0/b;-><init>(I)V

    new-instance v2, LW0/c;

    const-string v3, "ClientTelemetry.API"

    invoke-direct {v2, v3, v1, v0}, LW0/c;-><init>(Ljava/lang/String;Lcom/brisa/local/a;Lb1/c;)V

    sput-object v2, Lf1/b;->k:LW0/c;

    return-void
.end method
