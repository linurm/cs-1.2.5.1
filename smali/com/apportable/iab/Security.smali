.class public Lcom/apportable/iab/Security;
.super Ljava/lang/Object;


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "IABUtil/Security"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4

    #@0
    :try_start_0
    invoke-static {p0}, Lcom/apportable/iab/Base64;->decode(Ljava/lang/String;)[B

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
    .catch Lcom/apportable/iab/Base64DecoderException; {:try_start_0 .. :try_end_12} :catch_29

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
    const-string v1, "IABUtil/Security"

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
    const-string v1, "IABUtil/Security"

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

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    const-string v1, "SHA1withRSA"

    #@3
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    #@a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    #@11
    invoke-static {p2}, Lcom/apportable/iab/Base64;->decode(Ljava/lang/String;)[B

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_23

    #@1b
    const-string v1, "IABUtil/Security"

    #@1d
    const-string v2, "Signature verification failed."

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_22} :catch_25
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_22} :catch_2e
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_22} :catch_37
    .catch Lcom/apportable/iab/Base64DecoderException; {:try_start_1 .. :try_end_22} :catch_40

    #@22
    :goto_22
    return v0

    #@23
    :cond_23
    const/4 v0, 0x1

    #@24
    goto :goto_22

    #@25
    :catch_25
    move-exception v1

    #@26
    const-string v1, "IABUtil/Security"

    #@28
    const-string v2, "NoSuchAlgorithmException."

    #@2a
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    goto :goto_22

    #@2e
    :catch_2e
    move-exception v1

    #@2f
    const-string v1, "IABUtil/Security"

    #@31
    const-string v2, "Invalid key specification."

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    goto :goto_22

    #@37
    :catch_37
    move-exception v1

    #@38
    const-string v1, "IABUtil/Security"

    #@3a
    const-string v2, "Signature exception."

    #@3c
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    goto :goto_22

    #@40
    :catch_40
    move-exception v1

    #@41
    const-string v1, "IABUtil/Security"

    #@43
    const-string v2, "Base64 decoding failed."

    #@45
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    goto :goto_22
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_b

    #@3
    const-string v1, "IABUtil/Security"

    #@5
    const-string v2, "data is null"

    #@7
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_23

    #@11
    invoke-static {p0}, Lcom/apportable/iab/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    #@14
    move-result-object v1

    #@15
    invoke-static {v1, p1, p2}, Lcom/apportable/iab/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_23

    #@1b
    const-string v1, "IABUtil/Security"

    #@1d
    const-string v2, "signature does not match data."

    #@1f
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    goto :goto_a

    #@23
    :cond_23
    const/4 v0, 0x1

    #@24
    goto :goto_a
.end method
