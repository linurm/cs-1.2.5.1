.class Lcom/google/android/vending/licensing/LicenseValidator;
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
.field private final mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field private final mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

.field private final mNonce:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPolicy:Lcom/google/android/vending/licensing/Policy;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/vending/licensing/Policy;Lcom/google/android/vending/licensing/DeviceLimiter;Lcom/google/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    #@5
    iput-object p2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

    #@7
    iput-object p3, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    #@9
    iput p4, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    #@b
    iput-object p5, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    #@f
    return-void
.end method

.method private handleApplicationError(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->applicationError(I)V

    #@5
    return-void
.end method

.method private handleInvalidResponse()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    #@2
    const/16 v1, 0x231

    #@4
    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    #@7
    return-void
.end method

.method private handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/google/android/vending/licensing/Policy;->processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    #@5
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    #@7
    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_13

    #@d
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    #@f
    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V

    #@12
    :goto_12
    return-void

    #@13
    :cond_13
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    #@15
    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    #@18
    goto :goto_12
.end method


# virtual methods
.method public getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    #@2
    return-object v0
.end method

.method public getNonce()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    #@2
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/16 v3, 0x123

    #@5
    if-eqz p2, :cond_b

    #@7
    if-eq p2, v4, :cond_b

    #@9
    if-ne p2, v5, :cond_be

    #@b
    :cond_b
    :try_start_b
    const-string v0, "SHA1withRSA"

    #@d
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@14
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    #@1b
    invoke-static {p4}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_50

    #@25
    const-string v0, "LicenseValidator"

    #@27
    const-string v1, "Signature verification failed."

    #@29
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V
    :try_end_2f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_2f} :catch_30
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_2f} :catch_37
    .catch Ljava/security/SignatureException; {:try_start_b .. :try_end_2f} :catch_3d
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_b .. :try_end_2f} :catch_44

    #@2f
    :goto_2f
    return-void

    #@30
    :catch_30
    move-exception v0

    #@31
    new-instance v1, Ljava/lang/RuntimeException;

    #@33
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@36
    throw v1

    #@37
    :catch_37
    move-exception v0

    #@38
    const/4 v0, 0x5

    #@39
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    #@3c
    goto :goto_2f

    #@3d
    :catch_3d
    move-exception v0

    #@3e
    new-instance v1, Ljava/lang/RuntimeException;

    #@40
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@43
    throw v1

    #@44
    :catch_44
    move-exception v0

    #@45
    const-string v0, "LicenseValidator"

    #@47
    const-string v1, "Could not Base64-decode signature."

    #@49
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@4f
    goto :goto_2f

    #@50
    :cond_50
    :try_start_50
    invoke-static {p3}, Lcom/google/android/vending/licensing/ResponseData;->parse(Ljava/lang/String;)Lcom/google/android/vending/licensing/ResponseData;
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_53} :catch_63

    #@53
    move-result-object v0

    #@54
    iget v1, v0, Lcom/google/android/vending/licensing/ResponseData;->responseCode:I

    #@56
    if-eq v1, p2, :cond_6f

    #@58
    const-string v0, "LicenseValidator"

    #@5a
    const-string v1, "Response codes don\'t match."

    #@5c
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@62
    goto :goto_2f

    #@63
    :catch_63
    move-exception v0

    #@64
    const-string v0, "LicenseValidator"

    #@66
    const-string v1, "Could not parse response."

    #@68
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@6e
    goto :goto_2f

    #@6f
    :cond_6f
    iget v1, v0, Lcom/google/android/vending/licensing/ResponseData;->nonce:I

    #@71
    iget v2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    #@73
    if-eq v1, v2, :cond_80

    #@75
    const-string v0, "LicenseValidator"

    #@77
    const-string v1, "Nonce doesn\'t match."

    #@79
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7c
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@7f
    goto :goto_2f

    #@80
    :cond_80
    iget-object v1, v0, Lcom/google/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    #@82
    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    #@84
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@87
    move-result v1

    #@88
    if-nez v1, :cond_95

    #@8a
    const-string v0, "LicenseValidator"

    #@8c
    const-string v1, "Package name doesn\'t match."

    #@8e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@94
    goto :goto_2f

    #@95
    :cond_95
    iget-object v1, v0, Lcom/google/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    #@97
    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    #@99
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v1

    #@9d
    if-nez v1, :cond_aa

    #@9f
    const-string v0, "LicenseValidator"

    #@a1
    const-string v1, "Version codes don\'t match."

    #@a3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a6
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@a9
    goto :goto_2f

    #@aa
    :cond_aa
    iget-object v1, v0, Lcom/google/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    #@ac
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@af
    move-result v2

    #@b0
    if-eqz v2, :cond_bf

    #@b2
    const-string v0, "LicenseValidator"

    #@b4
    const-string v1, "User identifier is empty."

    #@b6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b9
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@bc
    goto/16 :goto_2f

    #@be
    :cond_be
    move-object v1, v0

    #@bf
    :cond_bf
    sparse-switch p2, :sswitch_data_114

    #@c2
    const-string v0, "LicenseValidator"

    #@c4
    const-string v1, "Unknown response code for license check."

    #@c6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c9
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    #@cc
    goto/16 :goto_2f

    #@ce
    :sswitch_ce
    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

    #@d0
    invoke-interface {v2, v1}, Lcom/google/android/vending/licensing/DeviceLimiter;->isDeviceAllowed(Ljava/lang/String;)I

    #@d3
    move-result v1

    #@d4
    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    #@d7
    goto/16 :goto_2f

    #@d9
    :sswitch_d9
    const/16 v1, 0x231

    #@db
    invoke-direct {p0, v1, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    #@de
    goto/16 :goto_2f

    #@e0
    :sswitch_e0
    const-string v1, "LicenseValidator"

    #@e2
    const-string v2, "Error contacting licensing server."

    #@e4
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e7
    invoke-direct {p0, v3, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    #@ea
    goto/16 :goto_2f

    #@ec
    :sswitch_ec
    const-string v1, "LicenseValidator"

    #@ee
    const-string v2, "An error has occurred on the licensing server."

    #@f0
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f3
    invoke-direct {p0, v3, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    #@f6
    goto/16 :goto_2f

    #@f8
    :sswitch_f8
    const-string v1, "LicenseValidator"

    #@fa
    const-string v2, "Licensing server is refusing to talk to this device, over quota."

    #@fc
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ff
    invoke-direct {p0, v3, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    #@102
    goto/16 :goto_2f

    #@104
    :sswitch_104
    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    #@107
    goto/16 :goto_2f

    #@109
    :sswitch_109
    invoke-direct {p0, v5}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    #@10c
    goto/16 :goto_2f

    #@10e
    :sswitch_10e
    const/4 v0, 0x3

    #@10f
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    #@112
    goto/16 :goto_2f

    #@114
    :sswitch_data_114
    .sparse-switch
        0x0 -> :sswitch_ce
        0x1 -> :sswitch_d9
        0x2 -> :sswitch_ce
        0x3 -> :sswitch_10e
        0x4 -> :sswitch_ec
        0x5 -> :sswitch_f8
        0x101 -> :sswitch_e0
        0x102 -> :sswitch_104
        0x103 -> :sswitch_109
    .end sparse-switch
.end method
