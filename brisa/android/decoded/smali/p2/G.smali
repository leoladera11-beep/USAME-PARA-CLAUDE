.class public final Lp2/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lp2/G;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lp2/G;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 73

    const-string v63, "listing"

    const-string v64, "#root"

    const-string v1, "html"

    const-string v2, "head"

    const-string v3, "body"

    const-string v4, "frameset"

    const-string v5, "script"

    const-string v6, "noscript"

    const-string v7, "style"

    const-string v8, "meta"

    const-string v9, "link"

    const-string v10, "title"

    const-string v11, "frame"

    const-string v12, "noframes"

    const-string v13, "section"

    const-string v14, "nav"

    const-string v15, "aside"

    const-string v16, "hgroup"

    const-string v17, "header"

    const-string v18, "footer"

    const-string v19, "p"

    const-string v20, "h1"

    const-string v21, "h2"

    const-string v22, "h3"

    const-string v23, "h4"

    const-string v24, "h5"

    const-string v25, "h6"

    const-string v26, "dialog"

    const-string v27, "search"

    const-string v28, "ul"

    const-string v29, "ol"

    const-string v30, "pre"

    const-string v31, "div"

    const-string v32, "blockquote"

    const-string v33, "hr"

    const-string v34, "address"

    const-string v35, "figure"

    const-string v36, "figcaption"

    const-string v37, "form"

    const-string v38, "fieldset"

    const-string v39, "dl"

    const-string v40, "dt"

    const-string v41, "dd"

    const-string v42, "li"

    const-string v43, "table"

    const-string v44, "caption"

    const-string v45, "thead"

    const-string v46, "tfoot"

    const-string v47, "tbody"

    const-string v48, "colgroup"

    const-string v49, "col"

    const-string v50, "tr"

    const-string v51, "th"

    const-string v52, "td"

    const-string v53, "details"

    const-string v54, "menu"

    const-string v55, "plaintext"

    const-string v56, "template"

    const-string v57, "article"

    const-string v58, "main"

    const-string v59, "center"

    const-string v60, "dir"

    const-string v61, "applet"

    const-string v62, "marquee"

    filled-new-array/range {v1 .. v64}, [Ljava/lang/String;

    move-result-object v0

    const-string v71, "slot"

    const-string v72, "rb"

    const-string v1, "object"

    const-string v2, "base"

    const-string v3, "font"

    const-string v4, "tt"

    const-string v5, "i"

    const-string v6, "b"

    const-string v7, "u"

    const-string v8, "big"

    const-string v9, "small"

    const-string v10, "em"

    const-string v11, "strong"

    const-string v12, "dfn"

    const-string v13, "code"

    const-string v14, "samp"

    const-string v15, "kbd"

    const-string v16, "var"

    const-string v17, "cite"

    const-string v18, "abbr"

    const-string v19, "time"

    const-string v20, "acronym"

    const-string v21, "mark"

    const-string v22, "ruby"

    const-string v23, "rt"

    const-string v24, "rp"

    const-string v25, "rtc"

    const-string v26, "a"

    const-string v27, "img"

    const-string v28, "wbr"

    const-string v29, "map"

    const-string v30, "q"

    const-string v31, "sub"

    const-string v32, "sup"

    const-string v33, "bdo"

    const-string v34, "iframe"

    const-string v35, "embed"

    const-string v36, "span"

    const-string v37, "input"

    const-string v38, "select"

    const-string v39, "textarea"

    const-string v40, "label"

    const-string v41, "audio"

    const-string v42, "video"

    const-string v43, "canvas"

    const-string v44, "optgroup"

    const-string v45, "option"

    const-string v46, "legend"

    const-string v47, "datalist"

    const-string v48, "keygen"

    const-string v49, "output"

    const-string v50, "progress"

    const-string v51, "meter"

    const-string v52, "area"

    const-string v53, "param"

    const-string v54, "source"

    const-string v55, "track"

    const-string v56, "summary"

    const-string v57, "command"

    const-string v58, "device"

    const-string v59, "basefont"

    const-string v60, "bgsound"

    const-string v61, "menuitem"

    const-string v62, "data"

    const-string v63, "bdi"

    const-string v64, "s"

    const-string v65, "strike"

    const-string v66, "nobr"

    const-string v67, "ins"

    const-string v68, "del"

    const-string v69, "button"

    const-string v70, "picture"

    filled-new-array/range {v1 .. v72}, [Ljava/lang/String;

    move-result-object v1

    const-string v15, "script"

    const-string v16, "style"

    const-string v2, "title"

    const-string v3, "p"

    const-string v4, "h1"

    const-string v5, "h2"

    const-string v6, "h3"

    const-string v7, "h4"

    const-string v8, "h5"

    const-string v9, "h6"

    const-string v10, "pre"

    const-string v11, "address"

    const-string v12, "li"

    const-string v13, "th"

    const-string v14, "td"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v2

    const-string v22, "source"

    const-string v23, "track"

    const-string v3, "meta"

    const-string v4, "link"

    const-string v5, "base"

    const-string v6, "frame"

    const-string v7, "img"

    const-string v8, "br"

    const-string v9, "wbr"

    const-string v10, "embed"

    const-string v11, "hr"

    const-string v12, "input"

    const-string v13, "keygen"

    const-string v14, "col"

    const-string v15, "command"

    const-string v16, "device"

    const-string v17, "area"

    const-string v18, "basefont"

    const-string v19, "bgsound"

    const-string v20, "menuitem"

    const-string v21, "param"

    filled-new-array/range {v3 .. v23}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "pre"

    const-string v5, "plaintext"

    const-string v6, "title"

    const-string v7, "textarea"

    const-string v8, "script"

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v5

    const-string v13, "style"

    const-string v14, "xmp"

    const-string v9, "iframe"

    const-string v10, "noembed"

    const-string v11, "noframes"

    const-string v12, "script"

    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v6

    const-string v23, "embed"

    const-string v24, "iframe"

    const-string v9, "button"

    const-string v10, "input"

    const-string v11, "select"

    const-string v12, "textarea"

    const-string v13, "option"

    const-string v14, "output"

    const-string v15, "progress"

    const-string v16, "meter"

    const-string v17, "img"

    const-string v18, "picture"

    const-string v19, "audio"

    const-string v20, "video"

    const-string v21, "canvas"

    const-string v22, "object"

    filled-new-array/range {v9 .. v24}, [Ljava/lang/String;

    move-result-object v7

    const-string v9, "math"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "mn"

    const-string v11, "mtext"

    const-string v12, "mi"

    const-string v13, "mo"

    const-string v14, "msup"

    filled-new-array {v12, v13, v14, v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "femerge"

    const-string v12, "femergenode"

    const-string v13, "svg"

    filled-new-array {v13, v11, v12}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "text"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    new-instance v13, Lp2/G;

    const/4 v14, 0x0

    invoke-direct {v13, v14, v14}, Lp2/G;-><init>(Lp2/G;Ljava/util/ArrayList;)V

    new-instance v14, Lp2/F;

    const/4 v15, 0x5

    invoke-direct {v14, v15}, Lp2/F;-><init>(I)V

    const-string v15, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v13, v15, v0, v14}, Lp2/G;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lp2/F;

    const/16 v14, 0xa

    invoke-direct {v0, v14}, Lp2/F;-><init>(I)V

    invoke-virtual {v13, v15, v1, v0}, Lp2/G;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lp2/F;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lp2/F;-><init>(I)V

    invoke-virtual {v13, v15, v2, v0}, Lp2/G;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lp2/F;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lp2/F;-><init>(I)V

    invoke-virtual {v13, v15, v3, v0}, Lp2/G;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lp2/F;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lp2/F;-><init>(I)V

    invoke-virtual {v13, v15, v4, v0}, Lp2/G;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lp2/F;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp2/F;-><init>(I)V

    invoke-virtual {v13, v15, v5, v0}, Lp2/G;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lp2/F;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lp2/F;-><init>(I)V

    invoke-virtual {v13, v15, v6, v0}, Lp2/G;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lp2/F;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lp2/F;-><init>(I)V

    sget-object v1, Ln2/b;->c:[Ljava/lang/String;

    invoke-virtual {v13, v15, v1, v0}, Lp2/G;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lp2/F;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lp2/F;-><init>(I)V

    invoke-virtual {v13, v15, v7, v0}, Lp2/G;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lp2/F;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lp2/F;-><init>(I)V

    const-string v1, "http://www.w3.org/1998/Math/MathML"

    invoke-virtual {v13, v1, v9, v0}, Lp2/G;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lp2/F;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Lp2/F;-><init>(I)V

    invoke-virtual {v13, v1, v10, v0}, Lp2/G;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lp2/F;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lp2/F;-><init>(I)V

    const-string v1, "http://www.w3.org/2000/svg"

    invoke-virtual {v13, v1, v11, v0}, Lp2/G;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lp2/F;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lp2/F;-><init>(I)V

    invoke-virtual {v13, v1, v12, v0}, Lp2/G;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    new-instance v0, Lp2/F;

    const/16 v2, 0x9

    invoke-direct {v0, v2}, Lp2/F;-><init>(I)V

    invoke-virtual {v13, v1, v8, v0}, Lp2/G;->c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V

    sput-object v13, Lp2/G;->d:Lp2/G;

    return-void
.end method

.method public constructor <init>(Lp2/G;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lp2/G;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lp2/G;->b:Lp2/G;

    iput-object p2, p0, Lp2/G;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lp2/E;)V
    .locals 3

    iget-object v0, p0, Lp2/G;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lp2/E;->g()V

    iget-object v0, p1, Lp2/E;->e:Ljava/lang/String;

    new-instance v1, LJ2/c;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, LJ2/c;-><init>(I)V

    iget-object v2, p0, Lp2/G;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p1, Lp2/E;->f:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lp2/E;
    .locals 1

    invoke-static {p1}, LS1/e;->r(Ljava/lang/Object;)V

    invoke-static {p2}, LS1/e;->r(Ljava/lang/Object;)V

    iget-object v0, p0, Lp2/G;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/E;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lp2/G;->b:Lp2/G;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lp2/G;->b(Ljava/lang/String;Ljava/lang/String;)Lp2/E;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lp2/E;->a()Lp2/E;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp2/G;->a(Lp2/E;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 5

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    invoke-virtual {p0, v3, p1}, Lp2/G;->b(Ljava/lang/String;Ljava/lang/String;)Lp2/E;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Lp2/E;

    invoke-direct {v4, v3, v3, p1}, Lp2/E;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v1, v4, Lp2/E;->h:I

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lp2/E;->f(I)V

    invoke-virtual {p0, v4}, Lp2/G;->a(Lp2/E;)V

    :cond_0
    invoke-interface {p3, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lp2/E;
    .locals 1

    invoke-static {p1}, LS1/e;->r(Ljava/lang/Object;)V

    invoke-static {p3}, LS1/e;->r(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, LS1/e;->p(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lp2/G;->b(Ljava/lang/String;Ljava/lang/String;)Lp2/E;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    if-nez p2, :cond_2

    invoke-static {p1}, Ln2/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p2, p3}, Lp2/G;->b(Ljava/lang/String;Ljava/lang/String;)Lp2/E;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p4, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {v0}, Lp2/E;->a()Lp2/E;

    move-result-object p2

    iput-object p1, p2, Lp2/E;->f:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lp2/G;->a(Lp2/E;)V

    return-object p2

    :cond_4
    return-object v0

    :cond_5
    new-instance p4, Lp2/E;

    invoke-direct {p4, p1, p2, p3}, Lp2/E;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lp2/G;->a(Lp2/E;)V

    return-object p4
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lp2/G;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lp2/G;

    iget-object v0, p0, Lp2/G;->a:Ljava/util/HashMap;

    iget-object p1, p1, Lp2/G;->a:Ljava/util/HashMap;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lp2/G;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
