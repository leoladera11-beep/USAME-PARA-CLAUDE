.class public final synthetic Lorg/mozilla/javascript/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic e:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic g:Lorg/mozilla/javascript/Function;

.field public final synthetic h:[Ljava/lang/Object;

.field public final synthetic i:J


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/m;->e:Lorg/mozilla/javascript/Scriptable;

    iput-object p2, p0, Lorg/mozilla/javascript/m;->f:Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p0, Lorg/mozilla/javascript/m;->g:Lorg/mozilla/javascript/Function;

    iput-object p4, p0, Lorg/mozilla/javascript/m;->h:[Ljava/lang/Object;

    iput-wide p5, p0, Lorg/mozilla/javascript/m;->i:J

    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 7

    iget-object v3, p0, Lorg/mozilla/javascript/m;->h:[Ljava/lang/Object;

    iget-wide v4, p0, Lorg/mozilla/javascript/m;->i:J

    iget-object v0, p0, Lorg/mozilla/javascript/m;->e:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Lorg/mozilla/javascript/m;->f:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Lorg/mozilla/javascript/m;->g:Lorg/mozilla/javascript/Function;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/JavaAdapter;->b(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;JLorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
