.class public final LG/F;
.super LG/E;
.source "SourceFile"


# static fields
.field public static final r:LG/F;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LG/D;

    invoke-direct {v0}, LG/D;-><init>()V

    new-instance v1, LG/F;

    invoke-direct {v1, v0}, LG/E;-><init>(LG/D;)V

    sput-object v1, LG/F;->r:LG/F;

    return-void
.end method
