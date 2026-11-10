.class public final LW1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LW1/b;

.field public static final c:LW1/e;

.field public static final d:Ljava/util/LinkedHashMap;

.field public static final e:LW1/f;

.field public static final f:LW1/f;

.field public static final g:LW1/f;

.field public static final h:LW1/f;

.field public static final i:LW1/f;

.field public static final j:LW1/f;

.field public static final k:LW1/f;

.field public static final l:LW1/f;

.field public static final m:LW1/f;

.field public static final n:LW1/f;

.field public static final o:LW1/f;

.field public static final p:LW1/f;

.field public static final q:LW1/f;

.field public static final r:LW1/f;

.field public static final s:LW1/f;

.field public static final t:LW1/f;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LW1/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LW1/f;->b:LW1/b;

    new-instance v1, LW1/e;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, LW1/f;->c:LW1/e;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, LW1/f;->d:Ljava/util/LinkedHashMap;

    const-string v1, "SSL_RSA_WITH_NULL_MD5"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_RSA_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->e:LW1/f;

    const-string v1, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_DH_anon_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_DH_anon_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_KRB5_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_MD5"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_KRB5_WITH_RC4_128_MD5"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->f:LW1/f;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->g:LW1/f;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_RSA_WITH_NULL_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_PSK_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_RSA_WITH_SEED_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->h:LW1/f;

    const-string v1, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->i:LW1/f;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_FALLBACK_SCSV"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->j:LW1/f;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->k:LW1/f;

    const-string v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->l:LW1/f;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->m:LW1/f;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->n:LW1/f;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->o:LW1/f;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->p:LW1/f;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->q:LW1/f;

    const-string v1, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_AES_128_GCM_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->r:LW1/f;

    const-string v1, "TLS_AES_256_GCM_SHA384"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->s:LW1/f;

    const-string v1, "TLS_CHACHA20_POLY1305_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    move-result-object v1

    sput-object v1, LW1/f;->t:LW1/f;

    const-string v1, "TLS_AES_128_CCM_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    const-string v1, "TLS_AES_128_CCM_8_SHA256"

    invoke-static {v0, v1}, LW1/b;->a(LW1/b;Ljava/lang/String;)LW1/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW1/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LW1/f;->a:Ljava/lang/String;

    return-object v0
.end method
