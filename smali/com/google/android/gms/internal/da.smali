.class public Lcom/google/android/gms/internal/da;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
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
    const/4 v2, 0x0

    #@12
    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_22

    #@1c
    const-string v1, "Signature verification failed."

    #@1e
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->A(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_21} :catch_24
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_21} :catch_2b
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_21} :catch_32

    #@21
    :goto_21
    return v0

    #@22
    :cond_22
    const/4 v0, 0x1

    #@23
    goto :goto_21

    #@24
    :catch_24
    move-exception v1

    #@25
    const-string v1, "NoSuchAlgorithmException."

    #@27
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->A(Ljava/lang/String;)V

    #@2a
    goto :goto_21

    #@2b
    :catch_2b
    move-exception v1

    #@2c
    const-string v1, "Invalid key specification."

    #@2e
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->A(Ljava/lang/String;)V

    #@31
    goto :goto_21

    #@32
    :catch_32
    move-exception v1

    #@33
    const-string v1, "Signature exception."

    #@35
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->A(Ljava/lang/String;)V

    #@38
    goto :goto_21
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    #@0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_12

    #@6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_12

    #@c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_19

    #@12
    :cond_12
    const-string v0, "Purchase verification failed: missing data."

    #@14
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->A(Ljava/lang/String;)V

    #@17
    const/4 v0, 0x0

    #@18
    :goto_18
    return v0

    #@19
    :cond_19
    invoke-static {p0}, Lcom/google/android/gms/internal/da;->r(Ljava/lang/String;)Ljava/security/PublicKey;

    #@1c
    move-result-object v0

    #@1d
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/da;->a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    #@20
    move-result v0

    #@21
    goto :goto_18
.end method

.method public static r(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@4
    move-result-object v0

    #@5
    const-string v1, "RSA"

    #@7
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@a
    move-result-object v1

    #@b
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    #@d
    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@10
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_13} :catch_15
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_13} :catch_1c

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    :catch_15
    move-exception v0

    #@16
    new-instance v1, Ljava/lang/RuntimeException;

    #@18
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1b
    throw v1

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    const-string v1, "Invalid key specification."

    #@1f
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->A(Ljava/lang/String;)V

    #@22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@24
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v1
.end method
