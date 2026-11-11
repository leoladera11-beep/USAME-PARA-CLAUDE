.class public final LC2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final t:[LC2/c;


# instance fields
.field public final e:Lr2/d;

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/util/Locale;

.field public q:Ljava/lang/String;

.field public final r:I

.field public s:I


# direct methods
.method static constructor <clinit>()V
    .locals 61

    new-instance v1, LC2/c;

    const/16 v0, 0x11

    const/4 v2, 0x2

    sget-object v3, Lr2/d;->g:Lr2/d;

    const-string v4, "144p"

    invoke-direct {v1, v0, v2, v3, v4}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v0, LC2/c;

    const/16 v5, 0x24

    const-string v6, "240p"

    invoke-direct {v0, v5, v2, v3, v6}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v3, LC2/c;

    const/16 v5, 0x12

    sget-object v7, Lr2/d;->f:Lr2/d;

    const-string v8, "360p"

    invoke-direct {v3, v5, v2, v7, v8}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v5, LC2/c;

    const/16 v9, 0x22

    invoke-direct {v5, v9, v2, v7, v8}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    move-object v9, v5

    new-instance v5, LC2/c;

    const/16 v10, 0x23

    const-string v11, "480p"

    invoke-direct {v5, v10, v2, v7, v11}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v12, LC2/c;

    const/16 v13, 0x3b

    invoke-direct {v12, v13, v2, v7, v11}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v13, LC2/c;

    const/16 v14, 0x4e

    invoke-direct {v13, v14, v2, v7, v11}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v14, LC2/c;

    const/16 v15, 0x16

    const-string v10, "720p"

    invoke-direct {v14, v15, v2, v7, v10}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    move-object v15, v9

    new-instance v9, LC2/c;

    move-object/from16 v17, v0

    const/16 v0, 0x25

    move-object/from16 v18, v1

    const-string v1, "1080p"

    invoke-direct {v9, v0, v2, v7, v1}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v0, LC2/c;

    move-object/from16 v19, v3

    const/16 v3, 0x26

    invoke-direct {v0, v3, v2, v7, v1}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v3, LC2/c;

    move-object/from16 v20, v0

    const/16 v0, 0x2b

    move-object/from16 v21, v5

    sget-object v5, Lr2/d;->h:Lr2/d;

    invoke-direct {v3, v0, v2, v5, v8}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    move-object v0, v12

    new-instance v12, LC2/c;

    move-object/from16 v22, v0

    const/16 v0, 0x2c

    invoke-direct {v12, v0, v2, v5, v11}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    move-object v0, v13

    new-instance v13, LC2/c;

    move-object/from16 v23, v0

    const/16 v0, 0x2d

    invoke-direct {v13, v0, v2, v5, v10}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    move-object v0, v14

    new-instance v14, LC2/c;

    move-object/from16 v24, v0

    const/16 v0, 0x2e

    invoke-direct {v14, v0, v2, v5, v1}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    move-object v0, v15

    new-instance v15, LC2/c;

    const/16 v2, 0xab

    move-object/from16 v25, v0

    sget-object v0, Lr2/d;->j:Lr2/d;

    move-object/from16 v26, v3

    const/16 v3, 0x80

    invoke-direct {v15, v2, v0, v3}, LC2/c;-><init>(ILr2/d;I)V

    new-instance v2, LC2/c;

    const/16 v3, 0xac

    move-object/from16 v28, v9

    const/16 v9, 0x100

    invoke-direct {v2, v3, v0, v9}, LC2/c;-><init>(ILr2/d;I)V

    new-instance v0, LC2/c;

    const/16 v3, 0x20

    const/16 v9, 0x257

    move-object/from16 v30, v2

    sget-object v2, Lr2/d;->i:Lr2/d;

    invoke-direct {v0, v9, v2, v3}, LC2/c;-><init>(ILr2/d;I)V

    new-instance v3, LC2/c;

    const/16 v9, 0x8b

    move-object/from16 v31, v0

    const/16 v0, 0x30

    invoke-direct {v3, v9, v2, v0}, LC2/c;-><init>(ILr2/d;I)V

    new-instance v0, LC2/c;

    const/16 v9, 0x8c

    move-object/from16 v32, v3

    const/16 v3, 0x80

    invoke-direct {v0, v9, v2, v3}, LC2/c;-><init>(ILr2/d;I)V

    new-instance v3, LC2/c;

    const/16 v9, 0x8d

    move-object/from16 v27, v0

    const/16 v0, 0x100

    invoke-direct {v3, v9, v2, v0}, LC2/c;-><init>(ILr2/d;I)V

    new-instance v0, LC2/c;

    const/16 v2, 0x258

    sget-object v9, Lr2/d;->k:Lr2/d;

    move-object/from16 v29, v3

    const/16 v3, 0x23

    invoke-direct {v0, v2, v9, v3}, LC2/c;-><init>(ILr2/d;I)V

    new-instance v2, LC2/c;

    const/16 v3, 0xf9

    move-object/from16 v16, v0

    const/16 v0, 0x32

    invoke-direct {v2, v3, v9, v0}, LC2/c;-><init>(ILr2/d;I)V

    new-instance v0, LC2/c;

    const/16 v3, 0xfa

    move-object/from16 v33, v2

    const/16 v2, 0x46

    invoke-direct {v0, v3, v9, v2}, LC2/c;-><init>(ILr2/d;I)V

    new-instance v2, LC2/c;

    const/16 v3, 0xfb

    move-object/from16 v34, v0

    const/16 v0, 0xa0

    invoke-direct {v2, v3, v9, v0}, LC2/c;-><init>(ILr2/d;I)V

    new-instance v3, LC2/c;

    const/4 v9, 0x3

    invoke-direct {v3, v0, v9, v7, v4}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v0, LC2/c;

    move-object/from16 v35, v2

    const/16 v2, 0x18a

    invoke-direct {v0, v2, v9, v7, v4}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v2, LC2/c;

    move-object/from16 v36, v0

    const/16 v0, 0x85

    invoke-direct {v2, v0, v9, v7, v6}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v0, LC2/c;

    move-object/from16 v37, v2

    const/16 v2, 0x18b

    invoke-direct {v0, v2, v9, v7, v6}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v2, LC2/c;

    move-object/from16 v38, v0

    const/16 v0, 0x86

    invoke-direct {v2, v0, v9, v7, v8}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v0, LC2/c;

    move-object/from16 v39, v2

    const/16 v2, 0x18c

    invoke-direct {v0, v2, v9, v7, v8}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v2, LC2/c;

    move-object/from16 v40, v0

    const/16 v0, 0x87

    invoke-direct {v2, v0, v9, v7, v11}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v0, LC2/c;

    move-object/from16 v41, v2

    const/16 v2, 0xd4

    invoke-direct {v0, v2, v9, v7, v11}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v2, LC2/c;

    move-object/from16 v42, v0

    const/16 v0, 0x18d

    invoke-direct {v2, v0, v9, v7, v11}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v0, LC2/c;

    move-object/from16 v43, v2

    const/16 v2, 0x88

    invoke-direct {v0, v2, v9, v7, v10}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v2, LC2/c;

    move-object/from16 v44, v0

    const/16 v0, 0x18e

    invoke-direct {v2, v0, v9, v7, v10}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v0, LC2/c;

    const/16 v9, 0x12a

    move-object/from16 v46, v2

    const-string v2, "720p60"

    invoke-direct {v0, v9, v7, v2}, LC2/c;-><init>(ILr2/d;Ljava/lang/String;)V

    new-instance v9, LC2/c;

    move-object/from16 v47, v0

    const/16 v0, 0x89

    move-object/from16 v48, v3

    const/4 v3, 0x3

    invoke-direct {v9, v0, v3, v7, v1}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v0, LC2/c;

    move-object/from16 v49, v9

    const/16 v9, 0x18f

    invoke-direct {v0, v9, v3, v7, v1}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v9, LC2/c;

    const/16 v3, 0x12b

    move-object/from16 v50, v0

    const-string v0, "1080p60"

    invoke-direct {v9, v3, v7, v0}, LC2/c;-><init>(ILr2/d;Ljava/lang/String;)V

    new-instance v3, LC2/c;

    move-object/from16 v51, v9

    const/16 v9, 0x190

    move-object/from16 v52, v12

    const-string v12, "1440p"

    move-object/from16 v53, v13

    const/4 v13, 0x3

    invoke-direct {v3, v9, v13, v7, v12}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v9, LC2/c;

    move-object/from16 v54, v3

    const/16 v3, 0x10a

    move-object/from16 v55, v14

    const-string v14, "2160p"

    invoke-direct {v9, v3, v13, v7, v14}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v3, LC2/c;

    move-object/from16 v56, v9

    const/16 v9, 0x191

    invoke-direct {v3, v9, v13, v7, v14}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v7, LC2/c;

    const/16 v9, 0x116

    invoke-direct {v7, v9, v13, v5, v4}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v4, LC2/c;

    const/16 v9, 0xf2

    invoke-direct {v4, v9, v13, v5, v6}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v6, LC2/c;

    const/16 v9, 0xf3

    invoke-direct {v6, v9, v13, v5, v8}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v8, LC2/c;

    const/16 v9, 0xf4

    invoke-direct {v8, v9, v13, v5, v11}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v9, LC2/c;

    move-object/from16 v57, v3

    const/16 v3, 0xf5

    invoke-direct {v9, v3, v13, v5, v11}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v3, LC2/c;

    move-object/from16 v58, v4

    const/16 v4, 0xf6

    invoke-direct {v3, v4, v13, v5, v11}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v4, LC2/c;

    const/16 v11, 0xf7

    invoke-direct {v4, v11, v13, v5, v10}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v10, LC2/c;

    const/16 v11, 0xf8

    invoke-direct {v10, v11, v13, v5, v1}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v1, LC2/c;

    const/16 v11, 0x10f

    invoke-direct {v1, v11, v13, v5, v12}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v11, LC2/c;

    const/16 v12, 0x110

    invoke-direct {v11, v12, v13, v5, v14}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v12, LC2/c;

    const/16 v13, 0x12e

    invoke-direct {v12, v13, v5, v2}, LC2/c;-><init>(ILr2/d;Ljava/lang/String;)V

    new-instance v2, LC2/c;

    const/16 v13, 0x12f

    invoke-direct {v2, v13, v5, v0}, LC2/c;-><init>(ILr2/d;Ljava/lang/String;)V

    new-instance v0, LC2/c;

    const/16 v13, 0x134

    move-object/from16 v59, v1

    const-string v1, "1440p60"

    invoke-direct {v0, v13, v5, v1}, LC2/c;-><init>(ILr2/d;Ljava/lang/String;)V

    new-instance v1, LC2/c;

    const/16 v13, 0x139

    move-object/from16 v60, v0

    const/4 v0, 0x3

    invoke-direct {v1, v13, v0, v5, v14}, LC2/c;-><init>(IILr2/d;Ljava/lang/String;)V

    new-instance v0, LC2/c;

    const/16 v13, 0x13b

    const-string v14, "2160p60"

    invoke-direct {v0, v13, v5, v14}, LC2/c;-><init>(ILr2/d;Ljava/lang/String;)V

    move-object/from16 v5, v48

    move-object/from16 v48, v3

    move-object/from16 v3, v19

    move-object/from16 v19, v27

    move-object/from16 v27, v37

    move-object/from16 v37, v49

    move-object/from16 v49, v4

    move-object/from16 v4, v25

    move-object/from16 v25, v5

    move-object/from16 v5, v46

    move-object/from16 v46, v8

    move-object/from16 v8, v24

    move-object/from16 v24, v35

    move-object/from16 v35, v5

    move-object/from16 v45, v6

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v22, v33

    move-object/from16 v33, v43

    move-object/from16 v13, v53

    move-object/from16 v14, v55

    move-object/from16 v55, v60

    move-object/from16 v43, v7

    move-object/from16 v53, v12

    move-object/from16 v21, v16

    move-object/from16 v7, v23

    move-object/from16 v16, v30

    move-object/from16 v23, v34

    move-object/from16 v30, v40

    move-object/from16 v34, v44

    move-object/from16 v12, v52

    move-object/from16 v40, v54

    move-object/from16 v44, v58

    move-object/from16 v54, v2

    move-object/from16 v52, v11

    move-object/from16 v2, v17

    move-object/from16 v11, v26

    move-object/from16 v17, v31

    move-object/from16 v26, v36

    move-object/from16 v31, v41

    move-object/from16 v36, v47

    move-object/from16 v41, v56

    move-object/from16 v56, v1

    move-object/from16 v47, v9

    move-object/from16 v1, v18

    move-object/from16 v9, v28

    move-object/from16 v18, v32

    move-object/from16 v28, v38

    move-object/from16 v32, v42

    move-object/from16 v38, v50

    move-object/from16 v42, v57

    move-object/from16 v57, v0

    move-object/from16 v50, v10

    move-object/from16 v10, v20

    move-object/from16 v20, v29

    move-object/from16 v29, v39

    move-object/from16 v39, v51

    move-object/from16 v51, v59

    filled-new-array/range {v1 .. v57}, [LC2/c;

    move-result-object v0

    sput-object v0, LC2/c;->t:[LC2/c;

    return-void
.end method

.method public constructor <init>(IILr2/d;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, LC2/c;->g:I

    .line 3
    iput p1, p0, LC2/c;->f:I

    .line 4
    iput p2, p0, LC2/c;->r:I

    .line 5
    iput-object p3, p0, LC2/c;->e:Lr2/d;

    .line 6
    iput-object p4, p0, LC2/c;->h:Ljava/lang/String;

    const/16 p1, 0x1e

    .line 7
    iput p1, p0, LC2/c;->i:I

    return-void
.end method

.method public constructor <init>(ILr2/d;I)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, LC2/c;->i:I

    .line 17
    iput p1, p0, LC2/c;->f:I

    const/4 p1, 0x1

    .line 18
    iput p1, p0, LC2/c;->r:I

    .line 19
    iput-object p2, p0, LC2/c;->e:Lr2/d;

    .line 20
    iput p3, p0, LC2/c;->g:I

    return-void
.end method

.method public constructor <init>(ILr2/d;Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, LC2/c;->g:I

    .line 10
    iput p1, p0, LC2/c;->f:I

    const/4 p1, 0x3

    .line 11
    iput p1, p0, LC2/c;->r:I

    .line 12
    iput-object p2, p0, LC2/c;->e:Lr2/d;

    .line 13
    iput-object p3, p0, LC2/c;->h:Ljava/lang/String;

    const/16 p1, 0x3c

    .line 14
    iput p1, p0, LC2/c;->i:I

    return-void
.end method

.method public constructor <init>(LC2/c;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, LC2/c;->g:I

    .line 23
    iput v0, p0, LC2/c;->i:I

    .line 24
    iget-object v0, p1, LC2/c;->e:Lr2/d;

    iput-object v0, p0, LC2/c;->e:Lr2/d;

    .line 25
    iget v0, p1, LC2/c;->f:I

    iput v0, p0, LC2/c;->f:I

    .line 26
    iget v0, p1, LC2/c;->r:I

    iput v0, p0, LC2/c;->r:I

    .line 27
    iget v0, p1, LC2/c;->g:I

    iput v0, p0, LC2/c;->g:I

    .line 28
    iget-object v0, p1, LC2/c;->h:Ljava/lang/String;

    iput-object v0, p0, LC2/c;->h:Ljava/lang/String;

    .line 29
    iget v0, p1, LC2/c;->i:I

    iput v0, p0, LC2/c;->i:I

    .line 30
    iget v0, p1, LC2/c;->j:I

    iput v0, p0, LC2/c;->j:I

    .line 31
    iget v0, p1, LC2/c;->k:I

    iput v0, p0, LC2/c;->k:I

    .line 32
    iget v0, p1, LC2/c;->l:I

    iput v0, p0, LC2/c;->l:I

    .line 33
    iget-object v0, p1, LC2/c;->m:Ljava/lang/String;

    iput-object v0, p0, LC2/c;->m:Ljava/lang/String;

    .line 34
    iget-object v0, p1, LC2/c;->n:Ljava/lang/String;

    iput-object v0, p0, LC2/c;->n:Ljava/lang/String;

    .line 35
    iget-object v0, p1, LC2/c;->o:Ljava/lang/String;

    iput-object v0, p0, LC2/c;->o:Ljava/lang/String;

    .line 36
    iget v0, p1, LC2/c;->s:I

    iput v0, p0, LC2/c;->s:I

    .line 37
    iget-object v0, p1, LC2/c;->p:Ljava/util/Locale;

    iput-object v0, p0, LC2/c;->p:Ljava/util/Locale;

    .line 38
    iget-object p1, p1, LC2/c;->q:Ljava/lang/String;

    iput-object p1, p0, LC2/c;->q:Ljava/lang/String;

    return-void
.end method
