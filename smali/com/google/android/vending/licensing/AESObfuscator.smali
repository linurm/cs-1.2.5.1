.class public Lcom/google/android/vending/licensing/AESObfuscator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/vending/licensing/Obfuscator;


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
    sput-object v0, Lcom/google/android/vending/licensing/AESObfuscator;->IV:[B

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
    iput-object v0, p0, Lcom/google/android/vending/licensing/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    #@3e
    iget-object v0, p0, Lcom/google/android/vending/licensing/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    #@40
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    #@42
    sget-object v3, Lcom/google/android/vending/licensing/AESObfuscator;->IV:[B

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
    iput-object v0, p0, Lcom/google/android/vending/licensing/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    #@53
    iget-object v0, p0, Lcom/google/android/vending/licensing/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    #@55
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    #@57
    sget-object v3, Lcom/google/android/vending/licensing/AESObfuscator;->IV:[B

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
.method public obfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

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
    iget-object v0, p0, Lcom/google/android/vending/licensing/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

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
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    const-string v2, "UTF-8"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    #@26
    move-result-object v0

    #@27
    invoke-static {v0}, Lcom/google/android/vending/licensing/util/Base64;->encode([B)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_2a} :catch_2c
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_2a} :catch_35

    #@2a
    move-result-object v0

    #@2b
    goto :goto_3

    #@2c
    :catch_2c
    move-exception v0

    #@2d
    new-instance v1, Ljava/lang/RuntimeException;

    #@2f
    const-string v2, "Invalid environment"

    #@31
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@34
    throw v1

    #@35
    :catch_35
    move-exception v0

    #@36
    new-instance v1, Ljava/lang/RuntimeException;

    #@38
    const-string v2, "Invalid environment"

    #@3a
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3d
    throw v1
.end method

.method public unobfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/licensing/ValidationException;
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
    iget-object v1, p0, Lcom/google/android/vending/licensing/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    #@8
    invoke-static {p1}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

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
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v2, "com.android.vending.licensing.AESObfuscator-1|"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_69

    #@2e
    new-instance v0, Lcom/google/android/vending/licensing/ValidationException;

    #@30
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string v2, "Header not found (invalid data or key):"

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-direct {v0, v1}, Lcom/google/android/vending/licensing/ValidationException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0
    :try_end_47
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_4 .. :try_end_47} :catch_47
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_47} :catch_7d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_47} :catch_9f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_47} :catch_c1

    #@47
    :catch_47
    move-exception v0

    #@48
    new-instance v1, Lcom/google/android/vending/licensing/ValidationException;

    #@4a
    new-instance v2, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    invoke-virtual {v0}, Lcom/google/android/vending/licensing/util/Base64DecoderException;->getMessage()Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    const-string v2, ":"

    #@59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v0

    #@65
    invoke-direct {v1, v0}, Lcom/google/android/vending/licensing/ValidationException;-><init>(Ljava/lang/String;)V

    #@68
    throw v1

    #@69
    :cond_69
    :try_start_69
    const-string v1, "com.android.vending.licensing.AESObfuscator-1|"

    #@6b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@6e
    move-result v1

    #@6f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@72
    move-result v2

    #@73
    add-int/2addr v1, v2

    #@74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@77
    move-result v2

    #@78
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_7b
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_69 .. :try_end_7b} :catch_47
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_69 .. :try_end_7b} :catch_7d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_69 .. :try_end_7b} :catch_9f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_69 .. :try_end_7b} :catch_c1

    #@7b
    move-result-object v0

    #@7c
    goto :goto_3

    #@7d
    :catch_7d
    move-exception v0

    #@7e
    new-instance v1, Lcom/google/android/vending/licensing/ValidationException;

    #@80
    new-instance v2, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    #@88
    move-result-object v0

    #@89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v0

    #@8d
    const-string v2, ":"

    #@8f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v0

    #@93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v0

    #@97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v0

    #@9b
    invoke-direct {v1, v0}, Lcom/google/android/vending/licensing/ValidationException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v1

    #@9f
    :catch_9f
    move-exception v0

    #@a0
    new-instance v1, Lcom/google/android/vending/licensing/ValidationException;

    #@a2
    new-instance v2, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    #@aa
    move-result-object v0

    #@ab
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v0

    #@af
    const-string v2, ":"

    #@b1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v0

    #@b5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v0

    #@b9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v0

    #@bd
    invoke-direct {v1, v0}, Lcom/google/android/vending/licensing/ValidationException;-><init>(Ljava/lang/String;)V

    #@c0
    throw v1

    #@c1
    :catch_c1
    move-exception v0

    #@c2
    new-instance v1, Ljava/lang/RuntimeException;

    #@c4
    const-string v2, "Invalid environment"

    #@c6
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@c9
    throw v1
.end method
