.class public Lcom/android/vending/licensing/AESObfuscator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/licensing/Obfuscator;


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final IV:[B

.field private static final KEYGEN_ALGORITHM:Ljava/lang/String; = "PBEWITHSHAAND256BITAES-CBC-BC"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static final header:Ljava/lang/String; = "com.android.vending.licensing.AESObfuscator-1|"


# instance fields
.field private mDecryptor:Ljavax/crypto/Cipher;

.field private mEncryptor:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/16 v0, 0x10

    #@2
    new-array v0, v0, [B

    #@4
    fill-array-data v0, :array_a

    #@7
    sput-object v0, Lcom/android/vending/licensing/AESObfuscator;->IV:[B

    #@9
    return-void

    #@a
    :array_a
    .array-data 1
        0x10t
        0x4at
        0x47t
        -0x50t
        0x20t
        0x65t
        -0x2ft
        0x48t
        0x75t
        -0xet
        0x0t
        -0x1dt
        0x46t
        0x41t
        -0xct
        0x4at
    .end array-data
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    :try_start_3
    const-string v0, "PBEWITHSHAAND256BITAES-CBC-BC"

    #@5
    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    #@8
    move-result-object v0

    #@9
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    #@1f
    move-result-object v2

    #@20
    const/16 v3, 0x400

    #@22
    const/16 v4, 0x100

    #@24
    invoke-direct {v1, v2, p1, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    #@27
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    #@2a
    move-result-object v0

    #@2b
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    #@2d
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    #@30
    move-result-object v0

    #@31
    const-string v2, "AES"

    #@33
    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@36
    const-string v0, "AES/CBC/PKCS5Padding"

    #@38
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/android/vending/licensing/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    #@3e
    iget-object v0, p0, Lcom/android/vending/licensing/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    #@40
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    #@42
    sget-object v3, Lcom/android/vending/licensing/AESObfuscator;->IV:[B

    #@44
    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    #@47
    const/4 v3, 0x1

    #@48
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@4b
    const-string v0, "AES/CBC/PKCS5Padding"

    #@4d
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@50
    move-result-object v0

    #@51
    iput-object v0, p0, Lcom/android/vending/licensing/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    #@53
    iget-object v0, p0, Lcom/android/vending/licensing/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    #@55
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    #@57
    sget-object v3, Lcom/android/vending/licensing/AESObfuscator;->IV:[B

    #@59
    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    #@5c
    const/4 v3, 0x2

    #@5d
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_60
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_60} :catch_61

    #@60
    return-void

    #@61
    :catch_61
    move-exception v0

    #@62
    new-instance v1, Ljava/lang/RuntimeException;

    #@64
    const-string v2, "Invalid environment"

    #@66
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@69
    throw v1
.end method


# virtual methods
.method public obfuscate(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/android/vending/licensing/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v2, "com.android.vending.licensing.AESObfuscator-1|"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    const-string v2, "UTF-8"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@22
    move-result-object v0

    #@23
    invoke-static {v0}, Lcom/android/vending/licensing/util/Base64;->encode([B)Ljava/lang/String;
    :try_end_26
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_26} :catch_28
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_26} :catch_31

    #@26
    move-result-object v0

    #@27
    goto :goto_3

    #@28
    :catch_28
    move-exception v0

    #@29
    new-instance v1, Ljava/lang/RuntimeException;

    #@2b
    const-string v2, "Invalid environment"

    #@2d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@30
    throw v1

    #@31
    :catch_31
    move-exception v0

    #@32
    new-instance v1, Ljava/lang/RuntimeException;

    #@34
    const-string v2, "Invalid environment"

    #@36
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@39
    throw v1
.end method

.method public unobfuscate(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/licensing/ValidationException;
        }
    .end annotation

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    :try_start_4
    new-instance v0, Ljava/lang/String;

    #@6
    iget-object v1, p0, Lcom/android/vending/licensing/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    #@8
    invoke-static {p1}, Lcom/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@f
    move-result-object v1

    #@10
    const-string v2, "UTF-8"

    #@12
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    #@15
    const-string v1, "com.android.vending.licensing.AESObfuscator-1|"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_58

    #@1d
    new-instance v0, Lcom/android/vending/licensing/ValidationException;

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string v2, "Header not found (invalid data or key):"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Lcom/android/vending/licensing/ValidationException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0
    :try_end_36
    .catch Lcom/android/vending/licensing/util/Base64DecoderException; {:try_start_4 .. :try_end_36} :catch_36
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_36} :catch_67
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_36} :catch_89
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_36} :catch_ab

    #@36
    :catch_36
    move-exception v0

    #@37
    new-instance v1, Lcom/android/vending/licensing/ValidationException;

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    invoke-virtual {v0}, Lcom/android/vending/licensing/util/Base64DecoderException;->getMessage()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    const-string v2, ":"

    #@48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-direct {v1, v0}, Lcom/android/vending/licensing/ValidationException;-><init>(Ljava/lang/String;)V

    #@57
    throw v1

    #@58
    :cond_58
    :try_start_58
    const-string v1, "com.android.vending.licensing.AESObfuscator-1|"

    #@5a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@5d
    move-result v1

    #@5e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@61
    move-result v2

    #@62
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_65
    .catch Lcom/android/vending/licensing/util/Base64DecoderException; {:try_start_58 .. :try_end_65} :catch_36
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_58 .. :try_end_65} :catch_67
    .catch Ljavax/crypto/BadPaddingException; {:try_start_58 .. :try_end_65} :catch_89
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_58 .. :try_end_65} :catch_ab

    #@65
    move-result-object v0

    #@66
    goto :goto_3

    #@67
    :catch_67
    move-exception v0

    #@68
    new-instance v1, Lcom/android/vending/licensing/ValidationException;

    #@6a
    new-instance v2, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    #@72
    move-result-object v0

    #@73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v0

    #@77
    const-string v2, ":"

    #@79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    invoke-direct {v1, v0}, Lcom/android/vending/licensing/ValidationException;-><init>(Ljava/lang/String;)V

    #@88
    throw v1

    #@89
    :catch_89
    move-exception v0

    #@8a
    new-instance v1, Lcom/android/vending/licensing/ValidationException;

    #@8c
    new-instance v2, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    #@94
    move-result-object v0

    #@95
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v0

    #@99
    const-string v2, ":"

    #@9b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v0

    #@9f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    invoke-direct {v1, v0}, Lcom/android/vending/licensing/ValidationException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v1

    #@ab
    :catch_ab
    move-exception v0

    #@ac
    new-instance v1, Ljava/lang/RuntimeException;

    #@ae
    const-string v2, "Invalid environment"

    #@b0
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b3
    throw v1
.end method
