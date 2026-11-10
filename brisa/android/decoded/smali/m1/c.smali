.class public abstract Lm1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La1/c;

.field public static final b:[La1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v1, La1/c;

    const-string v0, "auth_api_credentials_begin_sign_in"

    const-wide/16 v2, 0x9

    invoke-direct {v1, v2, v3, v0}, La1/c;-><init>(JLjava/lang/String;)V

    new-instance v2, La1/c;

    const-string v0, "auth_api_credentials_sign_out"

    const-wide/16 v3, 0x2

    invoke-direct {v2, v3, v4, v0}, La1/c;-><init>(JLjava/lang/String;)V

    new-instance v3, La1/c;

    const-wide/16 v4, 0x1

    const-string v0, "auth_api_credentials_authorize"

    invoke-direct {v3, v4, v5, v0}, La1/c;-><init>(JLjava/lang/String;)V

    sput-object v3, Lm1/c;->a:La1/c;

    new-instance v0, La1/c;

    const-string v6, "auth_api_credentials_revoke_access"

    invoke-direct {v0, v4, v5, v6}, La1/c;-><init>(JLjava/lang/String;)V

    new-instance v6, La1/c;

    const-string v7, "auth_api_credentials_clear_token"

    invoke-direct {v6, v4, v5, v7}, La1/c;-><init>(JLjava/lang/String;)V

    move-object v7, v6

    new-instance v6, La1/c;

    const-string v8, "auth_api_credentials_save_password"

    const-wide/16 v9, 0x4

    invoke-direct {v6, v9, v10, v8}, La1/c;-><init>(JLjava/lang/String;)V

    move-object v8, v7

    new-instance v7, La1/c;

    const-string v9, "auth_api_credentials_get_sign_in_intent"

    const-wide/16 v10, 0x6

    invoke-direct {v7, v10, v11, v9}, La1/c;-><init>(JLjava/lang/String;)V

    move-object v9, v8

    new-instance v8, La1/c;

    const-wide/16 v10, 0x3

    const-string v12, "auth_api_credentials_save_account_linking_token"

    invoke-direct {v8, v10, v11, v12}, La1/c;-><init>(JLjava/lang/String;)V

    move-object v12, v9

    new-instance v9, La1/c;

    const-string v13, "auth_api_credentials_get_phone_number_hint_intent"

    invoke-direct {v9, v10, v11, v13}, La1/c;-><init>(JLjava/lang/String;)V

    new-instance v10, La1/c;

    const-string v11, "auth_api_credentials_verify_with_google"

    invoke-direct {v10, v4, v5, v11}, La1/c;-><init>(JLjava/lang/String;)V

    new-instance v11, La1/c;

    const-string v13, "auth_api_credentials_credential_provider"

    invoke-direct {v11, v4, v5, v13}, La1/c;-><init>(JLjava/lang/String;)V

    move-object v13, v12

    new-instance v12, La1/c;

    const-string v14, "auth_api_credentials_save_webauthn_credential_specifics"

    invoke-direct {v12, v4, v5, v14}, La1/c;-><init>(JLjava/lang/String;)V

    move-object v14, v13

    new-instance v13, La1/c;

    const-string v15, "auth_api_credentials_list_webauthn_credential_specifics"

    invoke-direct {v13, v4, v5, v15}, La1/c;-><init>(JLjava/lang/String;)V

    move-object v15, v14

    new-instance v14, La1/c;

    move-object/from16 v16, v0

    const-string v0, "auth_api_credentials_get_google_passkey_for_export"

    invoke-direct {v14, v4, v5, v0}, La1/c;-><init>(JLjava/lang/String;)V

    move-object v0, v15

    new-instance v15, La1/c;

    move-object/from16 v17, v0

    const-string v0, "auth_api_credentials_get_authentication_intent"

    invoke-direct {v15, v4, v5, v0}, La1/c;-><init>(JLjava/lang/String;)V

    new-instance v0, La1/c;

    move-object/from16 v18, v1

    const-string v1, "auth_api_credentials_get_registration_intent"

    invoke-direct {v0, v4, v5, v1}, La1/c;-><init>(JLjava/lang/String;)V

    new-instance v1, La1/c;

    move-object/from16 v19, v0

    const-string v0, "auth_api_credentials_check_key_availability"

    invoke-direct {v1, v4, v5, v0}, La1/c;-><init>(JLjava/lang/String;)V

    new-instance v0, La1/c;

    move-object/from16 v20, v1

    const-string v1, "auth_api_credentials_has_discoverable_key"

    invoke-direct {v0, v4, v5, v1}, La1/c;-><init>(JLjava/lang/String;)V

    new-instance v1, La1/c;

    move-object/from16 v21, v0

    const-string v0, "auth_api_credentials_validate_calling_browser"

    invoke-direct {v1, v4, v5, v0}, La1/c;-><init>(JLjava/lang/String;)V

    new-instance v0, La1/c;

    move-object/from16 v22, v1

    const-string v1, "auth_api_credentials_validate_rp_id_and_calling_package"

    invoke-direct {v0, v4, v5, v1}, La1/c;-><init>(JLjava/lang/String;)V

    new-instance v1, La1/c;

    move-object/from16 v23, v0

    const-string v0, "auth_api_credentials_get_credential_list_for_browser"

    invoke-direct {v1, v4, v5, v0}, La1/c;-><init>(JLjava/lang/String;)V

    move-object/from16 v4, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v19, v22

    move-object/from16 v20, v23

    filled-new-array/range {v1 .. v21}, [La1/c;

    move-result-object v0

    sput-object v0, Lm1/c;->b:[La1/c;

    return-void
.end method
