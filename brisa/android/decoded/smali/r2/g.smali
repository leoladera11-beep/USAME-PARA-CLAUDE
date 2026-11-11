.class public abstract Lr2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LC2/n;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, LC2/n;

    sget-object v1, Lr2/h;->e:Lr2/h;

    sget-object v2, Lr2/h;->f:Lr2/h;

    sget-object v3, Lr2/h;->g:Lr2/h;

    sget-object v4, Lr2/h;->h:Lr2/h;

    invoke-static {v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    const/4 v3, 0x0

    const-string v5, "YouTube"

    invoke-direct {v0, v3, v5}, Lr2/i;-><init>(ILjava/lang/String;)V

    sput-object v0, Lr2/g;->a:LC2/n;

    new-instance v5, LA2/b;

    invoke-static {v1, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v8, "SoundCloud"

    invoke-direct {v5, v7, v6, v8}, LA2/b;-><init>(IILjava/lang/String;)V

    new-instance v6, LA2/b;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    const/4 v7, 0x3

    const/4 v8, 0x2

    const-string v9, "media.ccc.de"

    invoke-direct {v6, v8, v7, v9}, LA2/b;-><init>(IILjava/lang/String;)V

    new-instance v7, LA2/b;

    invoke-static {v2, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    const/4 v2, 0x0

    const/4 v8, 0x3

    const-string v9, "PeerTube"

    invoke-direct {v7, v8, v2, v9}, LA2/b;-><init>(IILjava/lang/String;)V

    new-instance v2, LA2/b;

    invoke-static {v1, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    const/4 v1, 0x2

    const/4 v4, 0x4

    const-string v8, "Bandcamp"

    invoke-direct {v2, v4, v1, v8}, LA2/b;-><init>(IILjava/lang/String;)V

    filled-new-array {v0, v5, v6, v7, v2}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    return-void
.end method
