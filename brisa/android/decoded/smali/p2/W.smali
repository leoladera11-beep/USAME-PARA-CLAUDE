.class public final enum Lp2/W;
.super Lp2/l1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "RCDATAEndTagOpen"

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(Lp2/T;Lp2/a;)V
    .locals 2

    sget-object v0, Lp2/l1;->q:Lp2/X;

    sget-object v1, Lp2/l1;->g:Lp2/A0;

    invoke-static {p1, p2, v0, v1}, Lp2/l1;->b(Lp2/T;Lp2/a;Lp2/l1;Lp2/l1;)V

    return-void
.end method
