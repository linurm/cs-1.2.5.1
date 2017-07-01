.class Lcom/android/vending/licensing/LicenseValidator;
.super Ljava/lang/Object;


# static fields
.field private static final ERROR_CONTACTING_SERVER:I = 0x101

.field private static final ERROR_INVALID_PACKAGE_NAME:I = 0x102

.field private static final ERROR_NON_MATCHING_UID:I = 0x103

.field private static final ERROR_NOT_MARKET_MANAGED:I = 0x3

.field private static final ERROR_OVER_QUOTA:I = 0x5

.field private static final ERROR_SERVER_FAILURE:I = 0x4

.field private static final LICENSED:I = 0x0

.field private static final LICENSED_OLD_KEY:I = 0x2

.field private static final NOT_LICENSED:I = 0x1

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "LicenseValidator"


# instance fields
.field private final mCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

.field private final mDeviceLimiter:Lcom/android/vending/licensing/DeviceLimiter;

.field private final mNonce:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPolicy:Lcom/android/vending/licensing/Policy;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/vending/licensing/Policy;Lcom/android/vending/licensing/DeviceLimiter;Lcom/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/android/vending/licensing/Policy;

    #@5
    iput-object p2, p0, Lcom/android/vending/licensing/LicenseValidator;->mDeviceLimiter:Lcom/android/vending/licensing/DeviceLimiter;

    #@7
    iput-object p3, p0, Lcom/android/vending/licensing/LicenseValidator;->mCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    #@9
    iput p4, p0, Lcom/android/vending/licensing/LicenseValidator;->mNonce:I

    #@b
    iput-object p5, p0, Lcom/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    #@f
    return-void
.end method

.method private handleApplicationError(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseValidator;->mCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    #@2
    invoke-interface {v0, p1}, Lcom/android/vending/licensing/LicenseCheckerCallback;->applicationError(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V

    #@5
    return-void
.end method

.method private handleInvalidResponse()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseValidator;->mCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    #@2
    invoke-interface {v0}, Lcom/android/vending/licensing/LicenseCheckerCallback;->dontAllow()V

    #@5
    return-void
.end method

.method private handleResponse(Lcom/android/vending/licensing/Policy$LicenseResponse;Lcom/android/vending/licensing/ResponseData;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/android/vending/licensing/Policy;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/android/vending/licensing/Policy;->processServerResponse(Lcom/android/vending/licensing/Policy$LicenseResponse;Lcom/android/vending/licensing/ResponseData;)V

    #@5
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/android/vending/licensing/Policy;

    #@7
    invoke-interface {v0}, Lcom/android/vending/licensing/Policy;->allowAccess()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_13

    #@d
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseValidator;->mCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    #@f
    invoke-interface {v0}, Lcom/android/vending/licensing/LicenseCheckerCallback;->allow()V

    #@12
    :goto_12
    return-void

    #@13
    :cond_13
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseValidator;->mCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    #@15
    invoke-interface {v0}, Lcom/android/vending/licensing/LicenseCheckerCallback;->dontAllow()V

    #@18
    goto :goto_12
.end method


# virtual methods
.method public getCallback()Lcom/android/vending/licensing/LicenseCheckerCallback;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseValidator;->mCallback:Lcom/android/vending/licensing/LicenseCheckerCallback;

    #@2
    return-object v0
.end method

.method public getNonce()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/vending/licensing/LicenseValidator;->mNonce:I

    #@2
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p2, :cond_9

    #@3
    const/4 v1, 0x1

    #@4
    if-eq p2, v1, :cond_9

    #@6
    const/4 v1, 0x2

    #@7
    if-ne p2, v1, :cond_bd

    #@9
    :cond_9
    :try_start_9
    const-string v0, "SHA1withRSA"

    #@b
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@12
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    #@19
    invoke-static {p4}, Lcom/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_4f

    #@23
    const-string v0, "LicenseValidator"

    #@25
    const-string v1, "Signature verification failed."

    #@27
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    invoke-direct {p0}, Lcom/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_2d} :catch_2e
    .catch Ljava/security/InvalidKeyException; {:try_start_9 .. :try_end_2d} :catch_35
    .catch Ljava/security/SignatureException; {:try_start_9 .. :try_end_2d} :catch_3c
    .catch Lcom/android/vending/licensing/util/Base64DecoderException; {:try_start_9 .. :try_end_2d} :catch_43

    #@2d
    :goto_2d
    return-void

    #@2e
    :catch_2e
    move-exception v0

    #@2f
    new-instance v1, Ljava/lang/RuntimeException;

    #@31
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@34
    throw v1

    #@35
    :catch_35
    move-exception v0

    #@36
    sget-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->INVALID_PUBLIC_KEY:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@38
    invoke-direct {p0, v0}, Lcom/android/vending/licensing/LicenseValidator;->handleApplicationError(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V

    #@3b
    goto :goto_2d

    #@3c
    :catch_3c
    move-exception v0

    #@3d
    new-instance v1, Ljava/lang/RuntimeException;

    #@3f
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@42
    throw v1

    #@43
    :catch_43
    move-exception v0

    #@44
    const-string v0, "LicenseValidator"

    #@46
    const-string v1, "Could not Base64-decode signature."

    #@48
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    invoke-direct {p0}, Lcom/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@4e
    goto :goto_2d

    #@4f
    :cond_4f
    :try_start_4f
    invoke-static {p3}, Lcom/android/vending/licensing/ResponseData;->parse(Ljava/lang/String;)Lcom/android/vending/licensing/ResponseData;
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_52} :catch_62

    #@52
    move-result-object v0

    #@53
    iget v1, v0, Lcom/android/vending/licensing/ResponseData;->responseCode:I

    #@55
    if-eq v1, p2, :cond_6e

    #@57
    const-string v0, "LicenseValidator"

    #@59
    const-string v1, "Response codes don\'t match."

    #@5b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    invoke-direct {p0}, Lcom/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@61
    goto :goto_2d

    #@62
    :catch_62
    move-exception v0

    #@63
    const-string v0, "LicenseValidator"

    #@65
    const-string v1, "Could not parse response."

    #@67
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6a
    invoke-direct {p0}, Lcom/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@6d
    goto :goto_2d

    #@6e
    :cond_6e
    iget v1, v0, Lcom/android/vending/licensing/ResponseData;->nonce:I

    #@70
    iget v2, p0, Lcom/android/vending/licensing/LicenseValidator;->mNonce:I

    #@72
    if-eq v1, v2, :cond_7f

    #@74
    const-string v0, "LicenseValidator"

    #@76
    const-string v1, "Nonce doesn\'t match."

    #@78
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    invoke-direct {p0}, Lcom/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@7e
    goto :goto_2d

    #@7f
    :cond_7f
    iget-object v1, v0, Lcom/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    #@81
    iget-object v2, p0, Lcom/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v1

    #@87
    if-nez v1, :cond_94

    #@89
    const-string v0, "LicenseValidator"

    #@8b
    const-string v1, "Package name doesn\'t match."

    #@8d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@90
    invoke-direct {p0}, Lcom/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@93
    goto :goto_2d

    #@94
    :cond_94
    iget-object v1, v0, Lcom/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    #@96
    iget-object v2, p0, Lcom/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v1

    #@9c
    if-nez v1, :cond_a9

    #@9e
    const-string v0, "LicenseValidator"

    #@a0
    const-string v1, "Version codes don\'t match."

    #@a2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a5
    invoke-direct {p0}, Lcom/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@a8
    goto :goto_2d

    #@a9
    :cond_a9
    iget-object v1, v0, Lcom/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    #@ab
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@ae
    move-result v2

    #@af
    if-eqz v2, :cond_be

    #@b1
    const-string v0, "LicenseValidator"

    #@b3
    const-string v1, "User identifier is empty."

    #@b5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    invoke-direct {p0}, Lcom/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@bb
    goto/16 :goto_2d

    #@bd
    :cond_bd
    move-object v1, v0

    #@be
    :cond_be
    sparse-switch p2, :sswitch_data_11e

    #@c1
    const-string v0, "LicenseValidator"

    #@c3
    const-string v1, "Unknown response code for license check."

    #@c5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c8
    invoke-direct {p0}, Lcom/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@cb
    goto/16 :goto_2d

    #@cd
    :sswitch_cd
    iget-object v2, p0, Lcom/android/vending/licensing/LicenseValidator;->mDeviceLimiter:Lcom/android/vending/licensing/DeviceLimiter;

    #@cf
    invoke-interface {v2, v1}, Lcom/android/vending/licensing/DeviceLimiter;->isDeviceAllowed(Ljava/lang/String;)Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@d2
    move-result-object v1

    #@d3
    invoke-direct {p0, v1, v0}, Lcom/android/vending/licensing/LicenseValidator;->handleResponse(Lcom/android/vending/licensing/Policy$LicenseResponse;Lcom/android/vending/licensing/ResponseData;)V

    #@d6
    goto/16 :goto_2d

    #@d8
    :sswitch_d8
    sget-object v1, Lcom/android/vending/licensing/Policy$LicenseResponse;->NOT_LICENSED:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@da
    invoke-direct {p0, v1, v0}, Lcom/android/vending/licensing/LicenseValidator;->handleResponse(Lcom/android/vending/licensing/Policy$LicenseResponse;Lcom/android/vending/licensing/ResponseData;)V

    #@dd
    goto/16 :goto_2d

    #@df
    :sswitch_df
    const-string v1, "LicenseValidator"

    #@e1
    const-string v2, "Error contacting licensing server."

    #@e3
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e6
    sget-object v1, Lcom/android/vending/licensing/Policy$LicenseResponse;->RETRY:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@e8
    invoke-direct {p0, v1, v0}, Lcom/android/vending/licensing/LicenseValidator;->handleResponse(Lcom/android/vending/licensing/Policy$LicenseResponse;Lcom/android/vending/licensing/ResponseData;)V

    #@eb
    goto/16 :goto_2d

    #@ed
    :sswitch_ed
    const-string v1, "LicenseValidator"

    #@ef
    const-string v2, "An error has occurred on the licensing server."

    #@f1
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f4
    sget-object v1, Lcom/android/vending/licensing/Policy$LicenseResponse;->RETRY:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@f6
    invoke-direct {p0, v1, v0}, Lcom/android/vending/licensing/LicenseValidator;->handleResponse(Lcom/android/vending/licensing/Policy$LicenseResponse;Lcom/android/vending/licensing/ResponseData;)V

    #@f9
    goto/16 :goto_2d

    #@fb
    :sswitch_fb
    const-string v1, "LicenseValidator"

    #@fd
    const-string v2, "Licensing server is refusing to talk to this device, over quota."

    #@ff
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@102
    sget-object v1, Lcom/android/vending/licensing/Policy$LicenseResponse;->RETRY:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@104
    invoke-direct {p0, v1, v0}, Lcom/android/vending/licensing/LicenseValidator;->handleResponse(Lcom/android/vending/licensing/Policy$LicenseResponse;Lcom/android/vending/licensing/ResponseData;)V

    #@107
    goto/16 :goto_2d

    #@109
    :sswitch_109
    sget-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->INVALID_PACKAGE_NAME:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@10b
    invoke-direct {p0, v0}, Lcom/android/vending/licensing/LicenseValidator;->handleApplicationError(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V

    #@10e
    goto/16 :goto_2d

    #@110
    :sswitch_110
    sget-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->NON_MATCHING_UID:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@112
    invoke-direct {p0, v0}, Lcom/android/vending/licensing/LicenseValidator;->handleApplicationError(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V

    #@115
    goto/16 :goto_2d

    #@117
    :sswitch_117
    sget-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->NOT_MARKET_MANAGED:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@119
    invoke-direct {p0, v0}, Lcom/android/vending/licensing/LicenseValidator;->handleApplicationError(Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;)V

    #@11c
    goto/16 :goto_2d

    #@11e
    :sswitch_data_11e
    .sparse-switch
        0x0 -> :sswitch_cd
        0x1 -> :sswitch_d8
        0x2 -> :sswitch_cd
        0x3 -> :sswitch_117
        0x4 -> :sswitch_ed
        0x5 -> :sswitch_fb
        0x101 -> :sswitch_df
        0x102 -> :sswitch_109
        0x103 -> :sswitch_110
    .end sparse-switch
.end method
