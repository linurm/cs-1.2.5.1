.class public Lcom/apportable/iap/Security;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/iap/Security$VerifiedPurchase;
    }
.end annotation


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "Security"

.field private static base64EncodedPublicKey:Ljava/lang/String;

.field private static sKnownNonces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/security/SecureRandom;

    #@2
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@5
    sput-object v0, Lcom/apportable/iap/Security;->RANDOM:Ljava/security/SecureRandom;

    #@7
    const/4 v0, 0x0

    #@8
    sput-object v0, Lcom/apportable/iap/Security;->base64EncodedPublicKey:Ljava/lang/String;

    #@a
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    sput-object v0, Lcom/apportable/iap/Security;->sKnownNonces:Ljava/util/HashSet;

    #@11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static generateNonce()J
    .registers 4

    #@0
    sget-object v0, Lcom/apportable/iap/Security;->RANDOM:Ljava/security/SecureRandom;

    #@2
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    #@5
    move-result-wide v0

    #@6
    sget-object v2, Lcom/apportable/iap/Security;->sKnownNonces:Ljava/util/HashSet;

    #@8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@f
    return-wide v0
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4

    #@0
    :try_start_0
    invoke-static {p0}, Lcom/apportable/iap/util/Base64;->decode(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    const-string v1, "RSA"

    #@6
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@9
    move-result-object v1

    #@a
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    #@c
    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@f
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_14
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_12} :catch_1b
    .catch Lcom/apportable/iap/util/Base64DecoderException; {:try_start_0 .. :try_end_12} :catch_29

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Ljava/lang/RuntimeException;

    #@17
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v1

    #@1b
    :catch_1b
    move-exception v0

    #@1c
    const-string v1, "Security"

    #@1e
    const-string v2, "Invalid key specification."

    #@20
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@25
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@28
    throw v1

    #@29
    :catch_29
    move-exception v0

    #@2a
    const-string v1, "Security"

    #@2c
    const-string v2, "Base64 decoding failed."

    #@2e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@33
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@36
    throw v1
.end method

.method public static isNonceKnown(J)Z
    .registers 4

    #@0
    sget-object v0, Lcom/apportable/iap/Security;->sKnownNonces:Ljava/util/HashSet;

    #@2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method static loadKeyFromMetaData()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_2b

    #@e
    const-string v1, "android.android_market_pubkey"

    #@10
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_21

    #@16
    const-string v1, "android.android_market_pubkey"

    #@18
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    goto :goto_7

    #@21
    :cond_21
    const-string v0, "Security"

    #@23
    const-string v1, "android.android_market_pubkey not found"

    #@25
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    const-string v0, ""

    #@2a
    goto :goto_7

    #@2b
    :cond_2b
    const-string v0, "Security"

    #@2d
    const-string v1, "App metadata not found"

    #@2f
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@32
    const-string v0, ""

    #@34
    goto :goto_7
.end method

.method public static removeNonce(J)V
    .registers 4

    #@0
    sget-object v0, Lcom/apportable/iap/Security;->sKnownNonces:Ljava/util/HashSet;

    #@2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@9
    return-void
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "Security"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string v3, "signature: "

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@19
    :try_start_19
    const-string v1, "SHA1withRSA"

    #@1b
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@22
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    #@29
    invoke-static {p2}, Lcom/apportable/iap/util/Base64;->decode(Ljava/lang/String;)[B

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_3b

    #@33
    const-string v1, "Security"

    #@35
    const-string v2, "Signature verification failed."

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_3a} :catch_3d
    .catch Ljava/security/InvalidKeyException; {:try_start_19 .. :try_end_3a} :catch_46
    .catch Ljava/security/SignatureException; {:try_start_19 .. :try_end_3a} :catch_4f
    .catch Lcom/apportable/iap/util/Base64DecoderException; {:try_start_19 .. :try_end_3a} :catch_58

    #@3a
    :goto_3a
    return v0

    #@3b
    :cond_3b
    const/4 v0, 0x1

    #@3c
    goto :goto_3a

    #@3d
    :catch_3d
    move-exception v1

    #@3e
    const-string v1, "Security"

    #@40
    const-string v2, "NoSuchAlgorithmException."

    #@42
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    goto :goto_3a

    #@46
    :catch_46
    move-exception v1

    #@47
    const-string v1, "Security"

    #@49
    const-string v2, "Invalid key specification."

    #@4b
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    goto :goto_3a

    #@4f
    :catch_4f
    move-exception v1

    #@50
    const-string v1, "Security"

    #@52
    const-string v2, "Signature exception."

    #@54
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    goto :goto_3a

    #@58
    :catch_58
    move-exception v1

    #@59
    const-string v1, "Security"

    #@5b
    const-string v2, "Base64 decoding failed."

    #@5d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    goto :goto_3a
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apportable/iap/Security$VerifiedPurchase;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_b

    #@2
    const-string v2, "Security"

    #@4
    const-string v3, "data is null"

    #@6
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    const/4 v2, 0x0

    #@a
    :goto_a
    return-object v2

    #@b
    :cond_b
    const-string v2, "Security"

    #@d
    new-instance v3, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string v4, "signedData: "

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    move-object/from16 v0, p0

    #@1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    const-string v2, "Security"

    #@27
    new-instance v3, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string v4, "signature: "

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    move-object/from16 v0, p1

    #@34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    const/4 v3, 0x0

    #@40
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@43
    move-result v2

    #@44
    if-nez v2, :cond_76

    #@46
    sget-object v2, Lcom/apportable/iap/Security;->base64EncodedPublicKey:Ljava/lang/String;

    #@48
    if-nez v2, :cond_50

    #@4a
    invoke-static {}, Lcom/apportable/iap/Security;->loadKeyFromMetaData()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    sput-object v2, Lcom/apportable/iap/Security;->base64EncodedPublicKey:Ljava/lang/String;

    #@50
    :cond_50
    sget-object v2, Lcom/apportable/iap/Security;->base64EncodedPublicKey:Ljava/lang/String;

    #@52
    if-nez v2, :cond_5d

    #@54
    const-string v2, "Security"

    #@56
    const-string v3, "could not load public key (app likely not launched yet) and cannot verify purchase"

    #@58
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    const/4 v2, 0x0

    #@5c
    goto :goto_a

    #@5d
    :cond_5d
    sget-object v2, Lcom/apportable/iap/Security;->base64EncodedPublicKey:Ljava/lang/String;

    #@5f
    invoke-static {v2}, Lcom/apportable/iap/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    #@62
    move-result-object v2

    #@63
    move-object/from16 v0, p0

    #@65
    move-object/from16 v1, p1

    #@67
    invoke-static {v2, v0, v1}, Lcom/apportable/iap/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    #@6a
    move-result v3

    #@6b
    if-nez v3, :cond_76

    #@6d
    const-string v2, "Security"

    #@6f
    const-string v3, "signature does not match data."

    #@71
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    const/4 v2, 0x0

    #@75
    goto :goto_a

    #@76
    :cond_76
    :try_start_76
    new-instance v2, Lorg/json/JSONObject;

    #@78
    move-object/from16 v0, p0

    #@7a
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@7d
    const-string v4, "nonce"

    #@7f
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    #@82
    move-result-wide v16

    #@83
    const-string v4, "orders"

    #@85
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@88
    move-result-object v18

    #@89
    if-eqz v18, :cond_13e

    #@8b
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I
    :try_end_8e
    .catch Lorg/json/JSONException; {:try_start_76 .. :try_end_8e} :catch_b2

    #@8e
    move-result v2

    #@8f
    :goto_8f
    invoke-static/range {v16 .. v17}, Lcom/apportable/iap/Security;->isNonceKnown(J)Z

    #@92
    move-result v4

    #@93
    if-nez v4, :cond_b6

    #@95
    const-string v2, "Security"

    #@97
    new-instance v3, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string v4, "Nonce not found: "

    #@9e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v3

    #@a2
    move-wide/from16 v0, v16

    #@a4
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v3

    #@a8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ab
    move-result-object v3

    #@ac
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    const/4 v2, 0x0

    #@b0
    goto/16 :goto_a

    #@b2
    :catch_b2
    move-exception v2

    #@b3
    const/4 v2, 0x0

    #@b4
    goto/16 :goto_a

    #@b6
    :cond_b6
    new-instance v13, Ljava/util/ArrayList;

    #@b8
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    #@bb
    const/4 v4, 0x0

    #@bc
    move v15, v4

    #@bd
    :goto_bd
    if-ge v15, v2, :cond_136

    #@bf
    :try_start_bf
    move-object/from16 v0, v18

    #@c1
    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    #@c4
    move-result-object v10

    #@c5
    const-string v4, "purchaseState"

    #@c7
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    #@ca
    move-result v4

    #@cb
    invoke-static {v4}, Lcom/apportable/iap/Consts$PurchaseState;->valueOf(I)Lcom/apportable/iap/Consts$PurchaseState;

    #@ce
    move-result-object v4

    #@cf
    const-string v5, "productId"

    #@d1
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@d4
    move-result-object v6

    #@d5
    const-string v5, "packageName"

    #@d7
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@da
    const-string v5, "purchaseTime"

    #@dc
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    #@df
    move-result-wide v8

    #@e0
    const-string v5, "orderId"

    #@e2
    const-string v7, ""

    #@e4
    invoke-virtual {v10, v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e7
    move-result-object v7

    #@e8
    const-string v5, "purchaseToken"

    #@ea
    const-string v11, ""

    #@ec
    invoke-virtual {v10, v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ef
    move-result-object v12

    #@f0
    const/4 v5, 0x0

    #@f1
    const-string v11, "notificationId"

    #@f3
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@f6
    move-result v11

    #@f7
    if-eqz v11, :cond_ff

    #@f9
    const-string v5, "notificationId"

    #@fb
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@fe
    move-result-object v5

    #@ff
    :cond_ff
    const-string v11, "developerPayload"

    #@101
    const/4 v14, 0x0

    #@102
    invoke-virtual {v10, v11, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@105
    move-result-object v10

    #@106
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@109
    move-result v11

    #@10a
    if-eqz v11, :cond_13c

    #@10c
    const-string v11, "android.test"

    #@10e
    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@111
    move-result v11

    #@112
    if-eqz v11, :cond_13c

    #@114
    const/4 v14, 0x1

    #@115
    :goto_115
    sget-object v3, Lcom/apportable/iap/Consts$PurchaseState;->PURCHASED:Lcom/apportable/iap/Consts$PurchaseState;

    #@117
    if-ne v4, v3, :cond_120

    #@119
    if-nez v14, :cond_120

    #@11b
    :goto_11b
    add-int/lit8 v3, v15, 0x1

    #@11d
    move v15, v3

    #@11e
    move v3, v14

    #@11f
    goto :goto_bd

    #@120
    :cond_120
    new-instance v3, Lcom/apportable/iap/Security$VerifiedPurchase;

    #@122
    move-object/from16 v11, p0

    #@124
    invoke-direct/range {v3 .. v12}, Lcom/apportable/iap/Security$VerifiedPurchase;-><init>(Lcom/apportable/iap/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@127
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12a
    .catch Lorg/json/JSONException; {:try_start_bf .. :try_end_12a} :catch_12b

    #@12a
    goto :goto_11b

    #@12b
    :catch_12b
    move-exception v2

    #@12c
    const-string v3, "Security"

    #@12e
    const-string v4, "JSON exception: "

    #@130
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@133
    const/4 v2, 0x0

    #@134
    goto/16 :goto_a

    #@136
    :cond_136
    invoke-static/range {v16 .. v17}, Lcom/apportable/iap/Security;->removeNonce(J)V

    #@139
    move-object v2, v13

    #@13a
    goto/16 :goto_a

    #@13c
    :cond_13c
    move v14, v3

    #@13d
    goto :goto_115

    #@13e
    :cond_13e
    const/4 v2, 0x0

    #@13f
    goto/16 :goto_8f
.end method
