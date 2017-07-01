.class public abstract Lcom/google/android/gms/internal/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/g;


# instance fields
.field protected jO:Landroid/view/MotionEvent;

.field protected jP:Landroid/util/DisplayMetrics;

.field protected jQ:Lcom/google/android/gms/internal/m;

.field private jR:Lcom/google/android/gms/internal/n;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/n;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p2, p0, Lcom/google/android/gms/internal/h;->jQ:Lcom/google/android/gms/internal/m;

    #@5
    iput-object p3, p0, Lcom/google/android/gms/internal/h;->jR:Lcom/google/android/gms/internal/n;

    #@7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/google/android/gms/internal/h;->jP:Landroid/util/DisplayMetrics;
    :try_end_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_11} :catch_12

    #@11
    :goto_11
    return-void

    #@12
    :catch_12
    move-exception v0

    #@13
    new-instance v0, Landroid/util/DisplayMetrics;

    #@15
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    #@18
    iput-object v0, p0, Lcom/google/android/gms/internal/h;->jP:Landroid/util/DisplayMetrics;

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->jP:Landroid/util/DisplayMetrics;

    #@1c
    const/high16 v1, 0x3f800000    # 1.0f

    #@1e
    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    #@20
    goto :goto_11
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 8

    #@0
    const/4 v2, 0x7

    #@1
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_2} :catch_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_2} :catch_30
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2} :catch_36

    #@2
    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/h;->t()V

    #@5
    if-eqz p3, :cond_18

    #@7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/h;->e(Landroid/content/Context;)V

    #@a
    :goto_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/h;->u()[B

    #@d
    move-result-object v0

    #@e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_1e

    #@f
    :try_start_f
    array-length v1, v0

    #@10
    if-nez v1, :cond_2b

    #@12
    const/4 v0, 0x5

    #@13
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_16} :catch_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_16} :catch_30
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_36

    #@16
    move-result-object v0

    #@17
    :goto_17
    return-object v0

    #@18
    :cond_18
    if-eqz p4, :cond_27

    #@1a
    :try_start_1a
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/h;->d(Landroid/content/Context;)V

    #@1d
    goto :goto_a

    #@1e
    :catchall_1e
    move-exception v0

    #@1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    #@20
    :try_start_20
    throw v0
    :try_end_21
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_20 .. :try_end_21} :catch_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_21} :catch_30
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_21} :catch_36

    #@21
    :catch_21
    move-exception v0

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    goto :goto_17

    #@27
    :cond_27
    :try_start_27
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/h;->c(Landroid/content/Context;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_1e

    #@2a
    goto :goto_a

    #@2b
    :cond_2b
    :try_start_2b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/h;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2b .. :try_end_2e} :catch_21
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_2e} :catch_30
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_36

    #@2e
    move-result-object v0

    #@2f
    goto :goto_17

    #@30
    :catch_30
    move-exception v0

    #@31
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    goto :goto_17

    #@36
    :catch_36
    move-exception v0

    #@37
    const/4 v0, 0x3

    #@38
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    goto :goto_17
.end method

.method private t()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->jR:Lcom/google/android/gms/internal/n;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/n;->reset()V

    #@5
    return-void
.end method

.method private u()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->jR:Lcom/google/android/gms/internal/n;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/n;->A()[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/google/android/gms/internal/h;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/h;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method a([BLjava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/16 v5, 0x100

    #@2
    const/16 v4, 0xf0

    #@4
    const/16 v1, 0xef

    #@6
    array-length v0, p1

    #@7
    if-le v0, v1, :cond_17

    #@9
    invoke-direct {p0}, Lcom/google/android/gms/internal/h;->t()V

    #@c
    const/16 v0, 0x14

    #@e
    const-wide/16 v2, 0x1

    #@10
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/h;->a(IJ)V

    #@13
    invoke-direct {p0}, Lcom/google/android/gms/internal/h;->u()[B

    #@16
    move-result-object p1

    #@17
    :cond_17
    array-length v0, p1

    #@18
    if-ge v0, v1, :cond_77

    #@1a
    array-length v0, p1

    #@1b
    rsub-int v0, v0, 0xef

    #@1d
    new-array v0, v0, [B

    #@1f
    new-instance v1, Ljava/security/SecureRandom;

    #@21
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    #@24
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@27
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@2a
    move-result-object v1

    #@2b
    array-length v2, p1

    #@2c
    int-to-byte v2, v2

    #@2d
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@3c
    move-result-object v0

    #@3d
    :goto_3d
    const-string v1, "MD5"

    #@3f
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    #@46
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    #@49
    move-result-object v1

    #@4a
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@59
    move-result-object v0

    #@5a
    new-array v1, v5, [B

    #@5c
    new-instance v2, Lcom/google/android/gms/internal/f;

    #@5e
    invoke-direct {v2}, Lcom/google/android/gms/internal/f;-><init>()V

    #@61
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/f;->a([B[B)V

    #@64
    if-eqz p2, :cond_6f

    #@66
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@69
    move-result v0

    #@6a
    if-lez v0, :cond_6f

    #@6c
    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/internal/h;->a(Ljava/lang/String;[B)V

    #@6f
    :cond_6f
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->jQ:Lcom/google/android/gms/internal/m;

    #@71
    const/4 v2, 0x1

    #@72
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/m;->a([BZ)Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    return-object v0

    #@77
    :cond_77
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@7a
    move-result-object v0

    #@7b
    array-length v1, p1

    #@7c
    int-to-byte v1, v1

    #@7d
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@80
    move-result-object v0

    #@81
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@88
    move-result-object v0

    #@89
    goto :goto_3d
.end method

.method public a(III)V
    .registers 20

    #@0
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/google/android/gms/internal/h;->jO:Landroid/view/MotionEvent;

    #@4
    if-eqz v2, :cond_d

    #@6
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Lcom/google/android/gms/internal/h;->jO:Landroid/view/MotionEvent;

    #@a
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    #@d
    :cond_d
    const-wide/16 v2, 0x0

    #@f
    move/from16 v0, p3

    #@11
    int-to-long v4, v0

    #@12
    const/4 v6, 0x1

    #@13
    move/from16 v0, p1

    #@15
    int-to-float v7, v0

    #@16
    move-object/from16 v0, p0

    #@18
    iget-object v8, v0, Lcom/google/android/gms/internal/h;->jP:Landroid/util/DisplayMetrics;

    #@1a
    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    #@1c
    mul-float/2addr v7, v8

    #@1d
    move/from16 v0, p2

    #@1f
    int-to-float v8, v0

    #@20
    move-object/from16 v0, p0

    #@22
    iget-object v9, v0, Lcom/google/android/gms/internal/h;->jP:Landroid/util/DisplayMetrics;

    #@24
    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    #@26
    mul-float/2addr v8, v9

    #@27
    const/4 v9, 0x0

    #@28
    const/4 v10, 0x0

    #@29
    const/4 v11, 0x0

    #@2a
    const/4 v12, 0x0

    #@2b
    const/4 v13, 0x0

    #@2c
    const/4 v14, 0x0

    #@2d
    const/4 v15, 0x0

    #@2e
    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    #@31
    move-result-object v2

    #@32
    move-object/from16 v0, p0

    #@34
    iput-object v2, v0, Lcom/google/android/gms/internal/h;->jO:Landroid/view/MotionEvent;

    #@36
    return-void
.end method

.method protected a(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->jR:Lcom/google/android/gms/internal/n;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/n;->b(IJ)V

    #@5
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->jR:Lcom/google/android/gms/internal/n;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/n;->b(ILjava/lang/String;)V

    #@5
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .registers 4

    #@0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_16

    #@7
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->jO:Landroid/view/MotionEvent;

    #@9
    if-eqz v0, :cond_10

    #@b
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->jO:Landroid/view/MotionEvent;

    #@d
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    #@10
    :cond_10
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/google/android/gms/internal/h;->jO:Landroid/view/MotionEvent;

    #@16
    :cond_16
    return-void
.end method

.method a(Ljava/lang/String;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    const/16 v1, 0x20

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-le v0, v1, :cond_d

    #@8
    const/4 v0, 0x0

    #@9
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c
    move-result-object p1

    #@d
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/lx;

    #@f
    const-string v1, "UTF-8"

    #@11
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/lx;-><init>([B)V

    #@18
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/lx;->o([B)V

    #@1b
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/h;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method protected abstract c(Landroid/content/Context;)V
.end method

.method protected abstract d(Landroid/content/Context;)V
.end method

.method protected abstract e(Landroid/content/Context;)V
.end method
