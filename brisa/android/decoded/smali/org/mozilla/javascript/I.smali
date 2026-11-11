.class public final synthetic Lorg/mozilla/javascript/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/SlotMap$SlotComputer;


# instance fields
.field public final synthetic a:Lorg/mozilla/javascript/ScriptableObject;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lorg/mozilla/javascript/ScriptableObject;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Z

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/ScriptableObject;ZLjava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/I;->a:Lorg/mozilla/javascript/ScriptableObject;

    iput-boolean p2, p0, Lorg/mozilla/javascript/I;->b:Z

    iput-object p3, p0, Lorg/mozilla/javascript/I;->c:Ljava/lang/Object;

    iput-object p4, p0, Lorg/mozilla/javascript/I;->d:Lorg/mozilla/javascript/ScriptableObject;

    iput-object p5, p0, Lorg/mozilla/javascript/I;->e:Ljava/lang/Object;

    iput-object p6, p0, Lorg/mozilla/javascript/I;->f:Ljava/lang/Object;

    iput-object p7, p0, Lorg/mozilla/javascript/I;->g:Ljava/lang/Object;

    iput-boolean p8, p0, Lorg/mozilla/javascript/I;->h:Z

    iput-object p9, p0, Lorg/mozilla/javascript/I;->i:Ljava/lang/Object;

    iput-object p10, p0, Lorg/mozilla/javascript/I;->j:Ljava/lang/Object;

    iput-object p11, p0, Lorg/mozilla/javascript/I;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compute(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;
    .locals 14

    iget-object v9, p0, Lorg/mozilla/javascript/I;->j:Ljava/lang/Object;

    iget-object v10, p0, Lorg/mozilla/javascript/I;->k:Ljava/lang/Object;

    iget-object v0, p0, Lorg/mozilla/javascript/I;->a:Lorg/mozilla/javascript/ScriptableObject;

    iget-boolean v1, p0, Lorg/mozilla/javascript/I;->b:Z

    iget-object v2, p0, Lorg/mozilla/javascript/I;->c:Ljava/lang/Object;

    iget-object v3, p0, Lorg/mozilla/javascript/I;->d:Lorg/mozilla/javascript/ScriptableObject;

    iget-object v4, p0, Lorg/mozilla/javascript/I;->e:Ljava/lang/Object;

    iget-object v5, p0, Lorg/mozilla/javascript/I;->f:Ljava/lang/Object;

    iget-object v6, p0, Lorg/mozilla/javascript/I;->g:Ljava/lang/Object;

    iget-boolean v7, p0, Lorg/mozilla/javascript/I;->h:Z

    iget-object v8, p0, Lorg/mozilla/javascript/I;->i:Ljava/lang/Object;

    move-object v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    invoke-static/range {v0 .. v13}, Lorg/mozilla/javascript/ScriptableObject;->b(Lorg/mozilla/javascript/ScriptableObject;ZLjava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    return-object p1
.end method
