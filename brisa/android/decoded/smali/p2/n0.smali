.class public final enum Lp2/n0;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ScriptDataDoubleEscapeStart"

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 2

    sget-object v0, Lp2/l1;->G:Lp2/o0;

    sget-object v1, Lp2/l1;->z:Lp2/h0;

    invoke-static {p1, p2, v0, v1}, Lp2/l1;->d(Lp2/T;Lp2/a;Lp2/l1;Lp2/l1;)V

    return-void
.end method
