.class public Lcom/google/android/gms/internal/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/o$a;
    }
.end annotation


# instance fields
.field private final jQ:Lcom/google/android/gms/internal/m;

.field private final kl:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/m;Ljava/security/SecureRandom;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/o;->jQ:Lcom/google/android/gms/internal/m;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/o;->kl:Ljava/security/SecureRandom;

    #@7
    return-void
.end method

.method static c([B)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    array-length v1, p0

    #@2
    if-ge v0, v1, :cond_f

    #@4
    aget-byte v1, p0, v0

    #@6
    xor-int/lit8 v1, v1, 0x44

    #@8
    int-to-byte v1, v1

    #@9
    int-to-byte v1, v1

    #@a
    aput-byte v1, p0, v0

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_1

    #@f
    :cond_f
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/o$a;
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/o;->jQ:Lcom/google/android/gms/internal/m;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/m;->a(Ljava/lang/String;Z)[B

    #@6
    move-result-object v0

    #@7
    array-length v1, v0

    #@8
    const/16 v2, 0x20

    #@a
    if-eq v1, v2, :cond_19

    #@c
    new-instance v0, Lcom/google/android/gms/internal/o$a;

    #@e
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/o$a;-><init>(Lcom/google/android/gms/internal/o;)V

    #@11
    throw v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_12

    #@12
    :catch_12
    move-exception v0

    #@13
    new-instance v1, Lcom/google/android/gms/internal/o$a;

    #@15
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/o$a;-><init>(Lcom/google/android/gms/internal/o;Ljava/lang/Throwable;)V

    #@18
    throw v1

    #@19
    :cond_19
    const/4 v1, 0x4

    #@1a
    const/16 v2, 0x10

    #@1c
    :try_start_1c
    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@1f
    move-result-object v0

    #@20
    const/16 v1, 0x10

    #@22
    new-array v1, v1, [B

    #@24
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@27
    invoke-static {v1}, Lcom/google/android/gms/internal/o;->c([B)V
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2a} :catch_12

    #@2a
    return-object v1
.end method

.method public c([BLjava/lang/String;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/o$a;
        }
    .end annotation

    #@0
    const/16 v2, 0x10

    #@2
    array-length v0, p1

    #@3
    if-eq v0, v2, :cond_b

    #@5
    new-instance v0, Lcom/google/android/gms/internal/o$a;

    #@7
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/o$a;-><init>(Lcom/google/android/gms/internal/o;)V

    #@a
    throw v0

    #@b
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/o;->jQ:Lcom/google/android/gms/internal/m;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-interface {v0, p2, v1}, Lcom/google/android/gms/internal/m;->a(Ljava/lang/String;Z)[B

    #@11
    move-result-object v0

    #@12
    array-length v1, v0

    #@13
    if-gt v1, v2, :cond_22

    #@15
    new-instance v0, Lcom/google/android/gms/internal/o$a;

    #@17
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/o$a;-><init>(Lcom/google/android/gms/internal/o;)V

    #@1a
    throw v0
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_1b} :catch_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_1b} :catch_57
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b .. :try_end_1b} :catch_5e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b .. :try_end_1b} :catch_65
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b .. :try_end_1b} :catch_6c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_b .. :try_end_1b} :catch_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_1b} :catch_7a

    #@1b
    :catch_1b
    move-exception v0

    #@1c
    new-instance v1, Lcom/google/android/gms/internal/o$a;

    #@1e
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/o$a;-><init>(Lcom/google/android/gms/internal/o;Ljava/lang/Throwable;)V

    #@21
    throw v1

    #@22
    :cond_22
    :try_start_22
    array-length v1, v0

    #@23
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@2a
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@2d
    const/16 v2, 0x10

    #@2f
    new-array v2, v2, [B

    #@31
    array-length v0, v0

    #@32
    add-int/lit8 v0, v0, -0x10

    #@34
    new-array v0, v0, [B

    #@36
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@39
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@3c
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    #@3e
    const-string v3, "AES"

    #@40
    invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@43
    const-string v3, "AES/CBC/PKCS5Padding"

    #@45
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    #@48
    move-result-object v3

    #@49
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    #@4b
    invoke-direct {v4, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    #@4e
    const/4 v2, 0x2

    #@4f
    invoke-virtual {v3, v2, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@52
    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_55
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_55} :catch_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_22 .. :try_end_55} :catch_57
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_22 .. :try_end_55} :catch_5e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_22 .. :try_end_55} :catch_65
    .catch Ljavax/crypto/BadPaddingException; {:try_start_22 .. :try_end_55} :catch_6c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_22 .. :try_end_55} :catch_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_55} :catch_7a

    #@55
    move-result-object v0

    #@56
    return-object v0

    #@57
    :catch_57
    move-exception v0

    #@58
    new-instance v1, Lcom/google/android/gms/internal/o$a;

    #@5a
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/o$a;-><init>(Lcom/google/android/gms/internal/o;Ljava/lang/Throwable;)V

    #@5d
    throw v1

    #@5e
    :catch_5e
    move-exception v0

    #@5f
    new-instance v1, Lcom/google/android/gms/internal/o$a;

    #@61
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/o$a;-><init>(Lcom/google/android/gms/internal/o;Ljava/lang/Throwable;)V

    #@64
    throw v1

    #@65
    :catch_65
    move-exception v0

    #@66
    new-instance v1, Lcom/google/android/gms/internal/o$a;

    #@68
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/o$a;-><init>(Lcom/google/android/gms/internal/o;Ljava/lang/Throwable;)V

    #@6b
    throw v1

    #@6c
    :catch_6c
    move-exception v0

    #@6d
    new-instance v1, Lcom/google/android/gms/internal/o$a;

    #@6f
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/o$a;-><init>(Lcom/google/android/gms/internal/o;Ljava/lang/Throwable;)V

    #@72
    throw v1

    #@73
    :catch_73
    move-exception v0

    #@74
    new-instance v1, Lcom/google/android/gms/internal/o$a;

    #@76
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/o$a;-><init>(Lcom/google/android/gms/internal/o;Ljava/lang/Throwable;)V

    #@79
    throw v1

    #@7a
    :catch_7a
    move-exception v0

    #@7b
    new-instance v1, Lcom/google/android/gms/internal/o$a;

    #@7d
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/o$a;-><init>(Lcom/google/android/gms/internal/o;Ljava/lang/Throwable;)V

    #@80
    throw v1
.end method
