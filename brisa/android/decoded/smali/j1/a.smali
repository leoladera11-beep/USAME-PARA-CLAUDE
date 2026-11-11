.class public abstract Lj1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Ljava/lang/Boolean;


# direct methods
.method public static a(I)V
    .locals 5

    const/4 v0, 0x2

    if-gt v0, p0, :cond_0

    const/16 v1, 0x25

    if-ge p0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "radix "

    const-string v3, " was not in valid range "

    invoke-static {v2, v3, p0}, LB1/e;->j(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v2, LP1/c;

    const/16 v3, 0x24

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, LP1/a;-><init>(III)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final c(CCZ)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-eq p0, p1, :cond_3

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method public static final d(LQ1/a;)Ljava/lang/Class;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, LO1/d;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LO1/a;

    check-cast p0, LO1/b;

    iget-object p0, p0, LO1/b;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-class p0, Ljava/lang/Short;

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-class p0, Ljava/lang/Float;

    goto :goto_0

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-class p0, Ljava/lang/Void;

    goto :goto_0

    :sswitch_4
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const-class p0, Ljava/lang/Long;

    goto :goto_0

    :sswitch_5
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const-class p0, Ljava/lang/Character;

    goto :goto_0

    :sswitch_6
    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    :sswitch_7
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const-class p0, Ljava/lang/Double;

    :goto_0
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 9

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.google.common.base.Strings"

    invoke-static {v4}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception during lenientFormat for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " threw "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v0

    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_3

    const-string v3, "%s"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x2

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    array-length p0, p1

    if-ge v0, p0, :cond_5

    const-string p0, " ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, v0, 0x1

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_4
    array-length v0, p1

    if-ge p0, v0, :cond_4

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, p0, 0x1

    aget-object p0, p1, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move p0, v0

    goto :goto_4

    :cond_4
    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ly0/d;ILJ/k;)V
    .locals 6

    invoke-interface {p0, p1}, Ly0/d;->c(I)J

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Ly0/d;->e(J)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ly0/d;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ly0/d;->c(I)J

    move-result-wide v3

    invoke-interface {p0, p1}, Ly0/d;->c(I)J

    move-result-wide p0

    sub-long/2addr v3, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v3, p0

    if-lez p0, :cond_1

    new-instance v0, Ly0/a;

    invoke-direct/range {v0 .. v5}, Ly0/a;-><init>(JJLjava/util/List;)V

    invoke-interface {p2, v0}, LJ/k;->accept(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static g(Lo2/j;Ljava/lang/Class;)Ljava/util/stream/Stream;
    .locals 1

    new-instance v0, Lo2/q;

    invoke-direct {v0, p0, p1}, Lo2/q;-><init>(Lo2/p;Ljava/lang/Class;)V

    const/16 p0, 0x111

    invoke-static {v0, p0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ly0/d;Ly0/l;LJ/k;)V
    .locals 12

    iget-wide v0, p1, Ly0/l;->a:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0, v1}, Ly0/d;->a(J)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    invoke-interface {p0}, Ly0/d;->g()I

    move-result v4

    :cond_1
    if-lez v4, :cond_2

    add-int/lit8 v6, v4, -0x1

    invoke-interface {p0, v6}, Ly0/d;->c(I)J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-nez v6, :cond_2

    add-int/lit8 v4, v4, -0x1

    :cond_2
    :goto_0
    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ly0/d;->g()I

    move-result v2

    if-ge v4, v2, :cond_3

    invoke-interface {p0, v0, v1}, Ly0/d;->e(J)Ljava/util/List;

    move-result-object v11

    invoke-interface {p0, v4}, Ly0/d;->c(I)J

    move-result-wide v2

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    iget-wide v7, p1, Ly0/l;->a:J

    cmp-long v6, v7, v2

    if-gez v6, :cond_3

    new-instance v6, Ly0/a;

    sub-long v9, v2, v7

    invoke-direct/range {v6 .. v11}, Ly0/a;-><init>(JJLjava/util/List;)V

    invoke-interface {p2, v6}, LJ/k;->accept(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    move v3, v4

    :goto_2
    invoke-interface {p0}, Ly0/d;->g()I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-static {p0, v3, p2}, Lj1/a;->f(Ly0/d;ILJ/k;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-boolean p1, p1, Ly0/l;->b:Z

    if-eqz p1, :cond_7

    if-eqz v2, :cond_5

    add-int/lit8 v4, v4, -0x1

    :cond_5
    :goto_3
    if-ge v5, v4, :cond_6

    invoke-static {p0, v5, p2}, Lj1/a;->f(Ly0/d;ILJ/k;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    new-instance v6, Ly0/a;

    invoke-interface {p0, v0, v1}, Ly0/d;->e(J)Ljava/util/List;

    move-result-object v11

    invoke-interface {p0, v4}, Ly0/d;->c(I)J

    move-result-wide v7

    invoke-interface {p0, v4}, Ly0/d;->c(I)J

    move-result-wide p0

    sub-long v9, v0, p0

    invoke-direct/range {v6 .. v11}, Ly0/a;-><init>(JJLjava/util/List;)V

    invoke-interface {p2, v6}, LJ/k;->accept(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public static i(Ljava/lang/String;Lcom/brisa/local/b;Lcom/brisa/local/b;)Lcom/brisa/local/L;
    .locals 10

    new-instance v0, Lcom/brisa/local/L;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_b

    iget-object p0, p2, Lcom/brisa/local/b;->b:Lcom/brisa/local/e;

    iget-boolean p0, p0, Lcom/brisa/local/e;->g:Z

    if-nez p0, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    const/16 v4, 0x1388

    const/4 v5, 0x1

    if-le v3, v4, :cond_1

    iput-boolean v5, v0, Lcom/brisa/local/L;->c:Z

    goto/16 :goto_6

    :cond_1
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/brisa/local/b;->a(Ljava/lang/String;)Lcom/brisa/local/d;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    :try_start_1
    iget-object v3, p2, Lcom/brisa/local/b;->b:Lcom/brisa/local/e;

    iget-boolean v3, v3, Lcom/brisa/local/e;->g:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/brisa/local/d;->e:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, LH/c;

    const/4 v8, 0x0

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "vnd.android.document/directory"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-direct {v7, v8, v3, v6, v9}, LH/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v3, v7

    :goto_2
    if-eqz v3, :cond_a

    iget v6, v0, Lcom/brisa/local/L;->d:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/brisa/local/L;->d:I

    const v7, 0x186a0

    if-le v6, v7, :cond_4

    iput-boolean v5, v0, Lcom/brisa/local/L;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    invoke-virtual {p0}, Lcom/brisa/local/d;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    :catchall_0
    move-exception v3

    goto :goto_4

    :cond_4
    :try_start_3
    iget-boolean v6, v3, LH/c;->e:Z

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v6

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v7

    add-int/2addr v6, v7

    if-lt v6, v4, :cond_5

    iput-boolean v5, v0, Lcom/brisa/local/L;->c:Z

    goto :goto_1

    :cond_5
    iget-object v6, v3, LH/c;->f:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v3, v3, LH/c;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    iget-object v6, v3, LH/c;->h:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v3, LH/c;->g:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_7

    const-string v8, "audio/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    if-eqz v6, :cond_2

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".*\\.(mp3|m4a|aac|wav|wave|ogg|oga|opus|flac|webm|amr|3gp|aif|aiff)$"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_8
    iget v6, v0, Lcom/brisa/local/L;->a:I

    if-lt v6, v4, :cond_9

    iput-boolean v5, v0, Lcom/brisa/local/L;->c:Z

    goto :goto_3

    :cond_9
    iget-object v6, p2, Lcom/brisa/local/b;->b:Lcom/brisa/local/e;

    iget-object v7, p2, Lcom/brisa/local/b;->a:Landroid/net/Uri;

    iget-object v3, v3, LH/c;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v7, v3}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/brisa/local/e;->a(Landroid/net/Uri;)V

    iget v3, v0, Lcom/brisa/local/L;->a:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/brisa/local/L;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_a
    :try_start_4
    invoke-virtual {p0}, Lcom/brisa/local/d;->close()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lcom/brisa/local/d;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v3
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    iget p0, v0, Lcom/brisa/local/L;->b:I

    add-int/2addr p0, v5

    iput p0, v0, Lcom/brisa/local/L;->b:I

    goto/16 :goto_0

    :catch_1
    move-exception p0

    throw p0

    :cond_b
    :goto_6
    return-object v0
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.end method
