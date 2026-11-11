.class public final Lm2/c;
.super Lm2/f;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/regex/Pattern;


# instance fields
.field public final c:Lcom/google/re2j/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lm2/c;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/re2j/Pattern;)V
    .locals 1

    sget-object v0, Lm2/c;->d:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lm2/f;-><init>(Ljava/util/regex/Pattern;)V

    iput-object p1, p0, Lm2/c;->c:Lcom/google/re2j/Pattern;

    return-void
.end method

.method public static c(Ljava/lang/String;)Lm2/c;
    .locals 3

    :try_start_0
    new-instance v0, Lm2/c;

    invoke-static {p0}, Lcom/google/re2j/Pattern;->compile(Ljava/lang/String;)Lcom/google/re2j/Pattern;

    move-result-object p0

    invoke-direct {v0, p0}, Lm2/c;-><init>(Lcom/google/re2j/Pattern;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Lm2/g;

    const-string v0, "Pattern complexity error"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance v0, Lm2/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pattern syntax error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lm2/e;
    .locals 2

    new-instance v0, Lm2/b;

    iget-object v1, p0, Lm2/c;->c:Lcom/google/re2j/Pattern;

    invoke-virtual {v1, p1}, Lcom/google/re2j/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/google/re2j/Matcher;

    move-result-object p1

    invoke-direct {v0, p1}, Lm2/b;-><init>(Lcom/google/re2j/Matcher;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm2/c;->c:Lcom/google/re2j/Pattern;

    invoke-virtual {v0}, Lcom/google/re2j/Pattern;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
