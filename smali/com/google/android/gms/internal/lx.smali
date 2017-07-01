.class public Lcom/google/android/gms/internal/lx;
.super Ljava/lang/Object;


# instance fields
.field private final amK:[B

.field private amL:I

.field private amM:I


# direct methods
.method public constructor <init>([B)V
    .registers 9

    #@0
    const/16 v6, 0x100

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    new-array v0, v6, [B

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/lx;->amK:[B

    #@a
    move v0, v1

    #@b
    :goto_b
    if-ge v0, v6, :cond_16

    #@d
    iget-object v2, p0, Lcom/google/android/gms/internal/lx;->amK:[B

    #@f
    int-to-byte v3, v0

    #@10
    int-to-byte v3, v3

    #@11
    aput-byte v3, v2, v0

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_b

    #@16
    :cond_16
    move v0, v1

    #@17
    move v2, v1

    #@18
    :goto_18
    if-ge v2, v6, :cond_3c

    #@1a
    iget-object v3, p0, Lcom/google/android/gms/internal/lx;->amK:[B

    #@1c
    aget-byte v3, v3, v2

    #@1e
    add-int/2addr v0, v3

    #@1f
    array-length v3, p1

    #@20
    rem-int v3, v2, v3

    #@22
    aget-byte v3, p1, v3

    #@24
    add-int/2addr v0, v3

    #@25
    and-int/lit16 v0, v0, 0xff

    #@27
    iget-object v3, p0, Lcom/google/android/gms/internal/lx;->amK:[B

    #@29
    aget-byte v3, v3, v2

    #@2b
    iget-object v4, p0, Lcom/google/android/gms/internal/lx;->amK:[B

    #@2d
    iget-object v5, p0, Lcom/google/android/gms/internal/lx;->amK:[B

    #@2f
    aget-byte v5, v5, v0

    #@31
    int-to-byte v5, v5

    #@32
    aput-byte v5, v4, v2

    #@34
    iget-object v4, p0, Lcom/google/android/gms/internal/lx;->amK:[B

    #@36
    int-to-byte v3, v3

    #@37
    aput-byte v3, v4, v0

    #@39
    add-int/lit8 v2, v2, 0x1

    #@3b
    goto :goto_18

    #@3c
    :cond_3c
    iput v1, p0, Lcom/google/android/gms/internal/lx;->amL:I

    #@3e
    iput v1, p0, Lcom/google/android/gms/internal/lx;->amM:I

    #@40
    return-void
.end method


# virtual methods
.method public o([B)V
    .registers 9

    #@0
    iget v1, p0, Lcom/google/android/gms/internal/lx;->amL:I

    #@2
    iget v0, p0, Lcom/google/android/gms/internal/lx;->amM:I

    #@4
    const/4 v2, 0x0

    #@5
    :goto_5
    array-length v3, p1

    #@6
    if-ge v2, v3, :cond_3e

    #@8
    add-int/lit8 v1, v1, 0x1

    #@a
    and-int/lit16 v1, v1, 0xff

    #@c
    iget-object v3, p0, Lcom/google/android/gms/internal/lx;->amK:[B

    #@e
    aget-byte v3, v3, v1

    #@10
    add-int/2addr v0, v3

    #@11
    and-int/lit16 v0, v0, 0xff

    #@13
    iget-object v3, p0, Lcom/google/android/gms/internal/lx;->amK:[B

    #@15
    aget-byte v3, v3, v1

    #@17
    iget-object v4, p0, Lcom/google/android/gms/internal/lx;->amK:[B

    #@19
    iget-object v5, p0, Lcom/google/android/gms/internal/lx;->amK:[B

    #@1b
    aget-byte v5, v5, v0

    #@1d
    int-to-byte v5, v5

    #@1e
    aput-byte v5, v4, v1

    #@20
    iget-object v4, p0, Lcom/google/android/gms/internal/lx;->amK:[B

    #@22
    int-to-byte v3, v3

    #@23
    aput-byte v3, v4, v0

    #@25
    aget-byte v3, p1, v2

    #@27
    iget-object v4, p0, Lcom/google/android/gms/internal/lx;->amK:[B

    #@29
    iget-object v5, p0, Lcom/google/android/gms/internal/lx;->amK:[B

    #@2b
    aget-byte v5, v5, v1

    #@2d
    iget-object v6, p0, Lcom/google/android/gms/internal/lx;->amK:[B

    #@2f
    aget-byte v6, v6, v0

    #@31
    add-int/2addr v5, v6

    #@32
    and-int/lit16 v5, v5, 0xff

    #@34
    aget-byte v4, v4, v5

    #@36
    xor-int/2addr v3, v4

    #@37
    int-to-byte v3, v3

    #@38
    int-to-byte v3, v3

    #@39
    aput-byte v3, p1, v2

    #@3b
    add-int/lit8 v2, v2, 0x1

    #@3d
    goto :goto_5

    #@3e
    :cond_3e
    iput v1, p0, Lcom/google/android/gms/internal/lx;->amL:I

    #@40
    iput v0, p0, Lcom/google/android/gms/internal/lx;->amM:I

    #@42
    return-void
.end method
