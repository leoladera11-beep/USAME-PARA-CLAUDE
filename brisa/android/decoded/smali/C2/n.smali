.class public final LC2/n;
.super Lr2/i;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/List;

.field public static final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 112

    const-string v0, "en-GB"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, LJ2/a;->c(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LJ2/c;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, LJ2/c;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LD2/i;

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, LD2/i;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/c;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LC2/n;->c:Ljava/util/List;

    const-string v110, "YE"

    const-string v111, "ZW"

    const-string v3, "DZ"

    const-string v4, "AR"

    const-string v5, "AU"

    const-string v6, "AT"

    const-string v7, "AZ"

    const-string v8, "BH"

    const-string v9, "BD"

    const-string v10, "BY"

    const-string v11, "BE"

    const-string v12, "BO"

    const-string v13, "BA"

    const-string v14, "BR"

    const-string v15, "BG"

    const-string v16, "KH"

    const-string v17, "CA"

    const-string v18, "CL"

    const-string v19, "CO"

    const-string v20, "CR"

    const-string v21, "HR"

    const-string v22, "CY"

    const-string v23, "CZ"

    const-string v24, "DK"

    const-string v25, "DO"

    const-string v26, "EC"

    const-string v27, "EG"

    const-string v28, "SV"

    const-string v29, "EE"

    const-string v30, "FI"

    const-string v31, "FR"

    const-string v32, "GE"

    const-string v33, "DE"

    const-string v34, "GH"

    const-string v35, "GR"

    const-string v36, "GT"

    const-string v37, "HN"

    const-string v38, "HK"

    const-string v39, "HU"

    const-string v40, "IS"

    const-string v41, "IN"

    const-string v42, "ID"

    const-string v43, "IQ"

    const-string v44, "IE"

    const-string v45, "IL"

    const-string v46, "IT"

    const-string v47, "JM"

    const-string v48, "JP"

    const-string v49, "JO"

    const-string v50, "KZ"

    const-string v51, "KE"

    const-string v52, "KW"

    const-string v53, "LA"

    const-string v54, "LV"

    const-string v55, "LB"

    const-string v56, "LY"

    const-string v57, "LI"

    const-string v58, "LT"

    const-string v59, "LU"

    const-string v60, "MY"

    const-string v61, "MT"

    const-string v62, "MX"

    const-string v63, "ME"

    const-string v64, "MA"

    const-string v65, "NP"

    const-string v66, "NL"

    const-string v67, "NZ"

    const-string v68, "NI"

    const-string v69, "NG"

    const-string v70, "MK"

    const-string v71, "NO"

    const-string v72, "OM"

    const-string v73, "PK"

    const-string v74, "PA"

    const-string v75, "PG"

    const-string v76, "PY"

    const-string v77, "PE"

    const-string v78, "PH"

    const-string v79, "PL"

    const-string v80, "PT"

    const-string v81, "PR"

    const-string v82, "QA"

    const-string v83, "RO"

    const-string v84, "RU"

    const-string v85, "SA"

    const-string v86, "SN"

    const-string v87, "RS"

    const-string v88, "SG"

    const-string v89, "SK"

    const-string v90, "SI"

    const-string v91, "ZA"

    const-string v92, "KR"

    const-string v93, "ES"

    const-string v94, "LK"

    const-string v95, "SE"

    const-string v96, "CH"

    const-string v97, "TW"

    const-string v98, "TZ"

    const-string v99, "TH"

    const-string v100, "TN"

    const-string v101, "TR"

    const-string v102, "UG"

    const-string v103, "UA"

    const-string v104, "AE"

    const-string v105, "GB"

    const-string v106, "US"

    const-string v107, "UY"

    const-string v108, "VE"

    const-string v109, "VN"

    filled-new-array/range {v3 .. v111}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/16 v3, 0x6d

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lw2/a;

    invoke-direct {v4, v3}, Lw2/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LC2/n;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 1

    sget-object v0, LC2/n;->d:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    sget-object v0, LC2/n;->c:Ljava/util/List;

    return-object v0
.end method
