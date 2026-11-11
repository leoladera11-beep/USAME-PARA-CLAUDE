.class public abstract LC2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:[Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[&?]n=([^&]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LC2/p;->a:Ljava/util/regex/Pattern;

    const-string v0, "(\\w*)=function\\(.*\\)\\{.*set\\(\\\"alr\\\",\\\"yes\\\"\\);\\w&&"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    filled-new-array {v0}, [Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LC2/p;->b:[Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    sget-object v0, LC2/p;->b:[Ljava/util/regex/Pattern;

    invoke-static {v0, p0}, LJ2/a;->h([Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0
    :try_end_0
    .catch LJ2/e; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "var "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\s*=\\s*\\[(.+?)][;,]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-static {v2, p0, v1}, LJ2/a;->g(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=function"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/brisa/local/u;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=\\s*function([\\S\\s]*?\\}\\s*return [\\w$]+?\\.join\\(\"\"\\)\\s*\\};)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x20

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0, p0, v1}, LJ2/a;->g(Ljava/util/regex/Pattern;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "function "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LJ2/a;->a(Ljava/lang/String;)V

    :goto_1
    invoke-static {v0}, LJ2/a;->a(Ljava/lang/String;)V

    const-string v1, "var _yt_player={};(function(g){var window=this;"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "})(_yt_player);"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "function deobfuscate_n_param(n){\n  const url = "

    const-string v2, "(\"https://www.youtube.com/\", \"s\", undefined);\n  url.set(\"n\", n);\n  const proto = Object.getPrototypeOf(url);\n  const keys = Object.keys(proto).concat(Object.getOwnPropertyNames(proto));\n  for (let i = 0; i < keys.length; i++) {\n    const key = keys[i];\n    if (![\"constructor\", \"set\", \"get\", \"clone\"].includes(key)) {\n      url[key]();\n      break;\n    }\n  }\n  return url.get(\"n\");\n}"

    invoke-static {v1, v0, v2}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "var g = {};\nif (typeof globalThis.XMLHttpRequest === \"undefined\") {\n    globalThis.XMLHttpRequest = { prototype: {} };\n}\nif (typeof URL === \"undefined\") {\n    globalThis.location = {\n        hash: \"\",\n        host: \"www.youtube.com\",\n        hostname: \"www.youtube.com\",\n        href: \"https://www.youtube.com/\",\n        origin: \"https://www.youtube.com\",\n        password: \"\",\n        pathname: \"/\",\n        port: \"\",\n        protocol: \"https:\",\n        search: \"\",\n        username: \"\",\n    };\n} else {\n    globalThis.location = new URL(\"https://www.youtube.com\");\n}\nif (typeof globalThis.document === \"undefined\") {\n    globalThis.document = Object.create(null);\n}\nif (typeof globalThis.navigator === \"undefined\") {\n    globalThis.navigator = Object.create(null);\n}\nif (typeof globalThis.self === \"undefined\") {\n    globalThis.self = globalThis;\n}\nif (typeof globalThis.window === \"undefined\") {\n    globalThis.window = globalThis;\n}\n"

    invoke-static {v1, p0, v0}, LB1/e;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    new-instance v0, Lu2/f;

    const-string v1, "Could not find deobfuscation function with any of the known patterns in the base JavaScript player code"

    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
