.class public Landroid/support/v4/util/SimpleArrayMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mHashes:[I

.field mSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    #@5
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@7
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@9
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@b
    const/4 v0, 0x0

    #@c
    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@e
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p1, :cond_11

    #@5
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    #@7
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@9
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@b
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@d
    :goto_d
    const/4 v0, 0x0

    #@e
    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@10
    return-void

    #@11
    :cond_11
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    #@14
    goto :goto_d
.end method

.method public constructor <init>(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    #@3
    if-eqz p1, :cond_8

    #@5
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    #@8
    :cond_8
    return-void
.end method

.method private allocArrays(I)V
    .registers 7

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/16 v0, 0x8

    #@5
    if-ne p1, v0, :cond_41

    #@7
    const-class v0, Landroid/support/v4/util/ArrayMap;

    #@9
    monitor-enter v0

    #@a
    :try_start_a
    sget-object v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@c
    if-eqz v0, :cond_2e

    #@e
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@10
    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@12
    const/4 v0, 0x0

    #@13
    aget-object v0, v1, v0

    #@15
    check-cast v0, [Ljava/lang/Object;

    #@17
    sput-object v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@19
    const/4 v0, 0x1

    #@1a
    aget-object v0, v1, v0

    #@1c
    check-cast v0, [I

    #@1e
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_3c

    #@20
    aput-object v4, v1, v3

    #@22
    aput-object v4, v1, v2

    #@24
    :try_start_24
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    #@26
    add-int/lit8 v0, v0, -0x1

    #@28
    sput v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    #@2a
    const-class v0, Landroid/support/v4/util/ArrayMap;

    #@2c
    monitor-exit v0

    #@2d
    :goto_2d
    return-void

    #@2e
    :cond_2e
    const-class v0, Landroid/support/v4/util/ArrayMap;

    #@30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_3c

    #@31
    :cond_31
    :goto_31
    new-array v0, p1, [I

    #@33
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@35
    shl-int/lit8 v0, p1, 0x1

    #@37
    new-array v0, v0, [Ljava/lang/Object;

    #@39
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@3b
    goto :goto_2d

    #@3c
    :catchall_3c
    move-exception v0

    #@3d
    :try_start_3d
    const-class v1, Landroid/support/v4/util/ArrayMap;

    #@3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_3c

    #@40
    throw v0

    #@41
    :cond_41
    const/4 v0, 0x4

    #@42
    if-ne p1, v0, :cond_31

    #@44
    const-class v0, Landroid/support/v4/util/ArrayMap;

    #@46
    monitor-enter v0

    #@47
    :try_start_47
    sget-object v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@49
    if-eqz v0, :cond_70

    #@4b
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@4d
    iput-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@4f
    const/4 v0, 0x0

    #@50
    aget-object v0, v1, v0

    #@52
    check-cast v0, [Ljava/lang/Object;

    #@54
    sput-object v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@56
    const/4 v0, 0x1

    #@57
    aget-object v0, v1, v0

    #@59
    check-cast v0, [I

    #@5b
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_6b

    #@5d
    aput-object v4, v1, v3

    #@5f
    aput-object v4, v1, v2

    #@61
    :try_start_61
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    #@63
    add-int/lit8 v0, v0, -0x1

    #@65
    sput v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    #@67
    const-class v0, Landroid/support/v4/util/ArrayMap;

    #@69
    monitor-exit v0

    #@6a
    goto :goto_2d

    #@6b
    :catchall_6b
    move-exception v0

    #@6c
    const-class v1, Landroid/support/v4/util/ArrayMap;

    #@6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_61 .. :try_end_6f} :catchall_6b

    #@6f
    throw v0

    #@70
    :cond_70
    :try_start_70
    const-class v0, Landroid/support/v4/util/ArrayMap;

    #@72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_6b

    #@73
    goto :goto_31
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 9

    #@0
    const/4 v5, 0x0

    #@1
    const/16 v4, 0xa

    #@3
    const/4 v3, 0x2

    #@4
    const/4 v2, 0x1

    #@5
    array-length v0, p0

    #@6
    const/16 v1, 0x8

    #@8
    if-ne v0, v1, :cond_34

    #@a
    const-class v0, Landroid/support/v4/util/ArrayMap;

    #@c
    monitor-enter v0

    #@d
    :try_start_d
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    #@f
    if-ge v0, v4, :cond_2b

    #@11
    const/4 v0, 0x0

    #@12
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@14
    aput-object v1, p1, v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_2f

    #@16
    aput-object p0, p1, v2

    #@18
    shl-int/lit8 v0, p2, 0x1

    #@1a
    add-int/lit8 v0, v0, -0x1

    #@1c
    :goto_1c
    if-lt v0, v3, :cond_23

    #@1e
    aput-object v5, p1, v0

    #@20
    add-int/lit8 v0, v0, -0x1

    #@22
    goto :goto_1c

    #@23
    :cond_23
    :try_start_23
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    #@25
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    #@27
    add-int/lit8 v0, v0, 0x1

    #@29
    sput v0, Landroid/support/v4/util/SimpleArrayMap;->mTwiceBaseCacheSize:I

    #@2b
    :cond_2b
    const-class v0, Landroid/support/v4/util/ArrayMap;

    #@2d
    monitor-exit v0

    #@2e
    :cond_2e
    :goto_2e
    return-void

    #@2f
    :catchall_2f
    move-exception v0

    #@30
    const-class v1, Landroid/support/v4/util/ArrayMap;

    #@32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_2f

    #@33
    throw v0

    #@34
    :cond_34
    array-length v0, p0

    #@35
    const/4 v1, 0x4

    #@36
    if-ne v0, v1, :cond_2e

    #@38
    const-class v0, Landroid/support/v4/util/ArrayMap;

    #@3a
    monitor-enter v0

    #@3b
    :try_start_3b
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    #@3d
    if-ge v0, v4, :cond_59

    #@3f
    const/4 v0, 0x0

    #@40
    sget-object v1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@42
    aput-object v1, p1, v0
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_5d

    #@44
    aput-object p0, p1, v2

    #@46
    shl-int/lit8 v0, p2, 0x1

    #@48
    add-int/lit8 v0, v0, -0x1

    #@4a
    :goto_4a
    if-lt v0, v3, :cond_51

    #@4c
    aput-object v5, p1, v0

    #@4e
    add-int/lit8 v0, v0, -0x1

    #@50
    goto :goto_4a

    #@51
    :cond_51
    :try_start_51
    sput-object p1, Landroid/support/v4/util/SimpleArrayMap;->mBaseCache:[Ljava/lang/Object;

    #@53
    sget v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    #@55
    add-int/lit8 v0, v0, 0x1

    #@57
    sput v0, Landroid/support/v4/util/SimpleArrayMap;->mBaseCacheSize:I

    #@59
    :cond_59
    const-class v0, Landroid/support/v4/util/ArrayMap;

    #@5b
    monitor-exit v0

    #@5c
    goto :goto_2e

    #@5d
    :catchall_5d
    move-exception v0

    #@5e
    const-class v1, Landroid/support/v4/util/ArrayMap;

    #@60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_5d

    #@61
    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 4

    #@0
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@2
    if-eqz v0, :cond_18

    #@4
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@6
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@8
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@a
    invoke-static {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@d
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    #@f
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@11
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@13
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@15
    const/4 v0, 0x0

    #@16
    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@18
    :cond_18
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-nez p1, :cond_c

    #@4
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    #@7
    move-result v2

    #@8
    if-ltz v2, :cond_b

    #@a
    :cond_a
    move v0, v1

    #@b
    :cond_b
    :goto_b
    return v0

    #@c
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@f
    move-result v2

    #@10
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    #@13
    move-result v2

    #@14
    if-gez v2, :cond_a

    #@16
    goto :goto_b
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->indexOfValue(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    if-ltz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public ensureCapacity(I)V
    .registers 7

    #@0
    const/4 v4, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@3
    array-length v0, v0

    #@4
    if-ge v0, p1, :cond_26

    #@6
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@8
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@a
    invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    #@d
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@f
    if-lez v2, :cond_21

    #@11
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@13
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@15
    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@18
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@1a
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@1c
    shl-int/lit8 v3, v3, 0x1

    #@1e
    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@21
    :cond_21
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@23
    invoke-static {v0, v1, v2}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@26
    :cond_26
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    if-ne p0, p1, :cond_5

    #@4
    :cond_4
    :goto_4
    return v0

    #@5
    :cond_5
    instance-of v2, p1, Ljava/util/Map;

    #@7
    if-eqz v2, :cond_45

    #@9
    check-cast p1, Ljava/util/Map;

    #@b
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    #@e
    move-result v2

    #@f
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@12
    move-result v3

    #@13
    if-eq v2, v3, :cond_17

    #@15
    move v0, v1

    #@16
    goto :goto_4

    #@17
    :cond_17
    move v2, v1

    #@18
    :goto_18
    :try_start_18
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@1a
    if-ge v2, v3, :cond_4

    #@1c
    invoke-virtual {p0, v2}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {p0, v2}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v5

    #@28
    if-nez v4, :cond_34

    #@2a
    if-nez v5, :cond_32

    #@2c
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@2f
    move-result v3

    #@30
    if-nez v3, :cond_3c

    #@32
    :cond_32
    move v0, v1

    #@33
    goto :goto_4

    #@34
    :cond_34
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_37} :catch_3f
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_37} :catch_42

    #@37
    move-result v3

    #@38
    if-nez v3, :cond_3c

    #@3a
    move v0, v1

    #@3b
    goto :goto_4

    #@3c
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    #@3e
    goto :goto_18

    #@3f
    :catch_3f
    move-exception v0

    #@40
    move v0, v1

    #@41
    goto :goto_4

    #@42
    :catch_42
    move-exception v0

    #@43
    move v0, v1

    #@44
    goto :goto_4

    #@45
    :cond_45
    move v0, v1

    #@46
    goto :goto_4
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_11

    #@2
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    #@5
    move-result v0

    #@6
    :goto_6
    if-ltz v0, :cond_1a

    #@8
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@a
    shl-int/lit8 v0, v0, 0x1

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    aget-object v0, v1, v0

    #@10
    :goto_10
    return-object v0

    #@11
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@14
    move-result v0

    #@15
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    #@18
    move-result v0

    #@19
    goto :goto_6

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    goto :goto_10
.end method

.method public hashCode()I
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@3
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@5
    const/4 v0, 0x1

    #@6
    iget v7, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@8
    move v2, v1

    #@9
    move v3, v1

    #@a
    move v4, v0

    #@b
    :goto_b
    if-ge v3, v7, :cond_23

    #@d
    aget-object v0, v6, v4

    #@f
    aget v8, v5, v3

    #@11
    if-nez v0, :cond_1e

    #@13
    move v0, v1

    #@14
    :goto_14
    xor-int/2addr v0, v8

    #@15
    add-int/2addr v0, v2

    #@16
    add-int/lit8 v2, v3, 0x1

    #@18
    add-int/lit8 v3, v4, 0x2

    #@1a
    move v4, v3

    #@1b
    move v3, v2

    #@1c
    move v2, v0

    #@1d
    goto :goto_b

    #@1e
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@21
    move-result v0

    #@22
    goto :goto_14

    #@23
    :cond_23
    return v2
.end method

.method indexOf(Ljava/lang/Object;I)I
    .registers 8

    #@0
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@2
    if-nez v2, :cond_6

    #@4
    const/4 v0, -0x1

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@8
    invoke-static {v0, v2, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    #@b
    move-result v1

    #@c
    if-ltz v1, :cond_51

    #@e
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@10
    shl-int/lit8 v3, v1, 0x1

    #@12
    aget-object v0, v0, v3

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_51

    #@1a
    add-int/lit8 v0, v1, 0x1

    #@1c
    :goto_1c
    if-ge v0, v2, :cond_33

    #@1e
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@20
    aget v3, v3, v0

    #@22
    if-ne v3, p2, :cond_33

    #@24
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@26
    shl-int/lit8 v4, v0, 0x1

    #@28
    aget-object v3, v3, v4

    #@2a
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_5

    #@30
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_1c

    #@33
    :cond_33
    add-int/lit8 v1, v1, -0x1

    #@35
    :goto_35
    if-ltz v1, :cond_4e

    #@37
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@39
    aget v2, v2, v1

    #@3b
    if-ne v2, p2, :cond_4e

    #@3d
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@3f
    shl-int/lit8 v3, v1, 0x1

    #@41
    aget-object v2, v2, v3

    #@43
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_4b

    #@49
    move v0, v1

    #@4a
    goto :goto_5

    #@4b
    :cond_4b
    add-int/lit8 v1, v1, -0x1

    #@4d
    goto :goto_35

    #@4e
    :cond_4e
    xor-int/lit8 v0, v0, -0x1

    #@50
    goto :goto_5

    #@51
    :cond_51
    move v0, v1

    #@52
    goto :goto_5
.end method

.method indexOfNull()I
    .registers 6

    #@0
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@2
    if-nez v2, :cond_6

    #@4
    const/4 v0, -0x1

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@8
    const/4 v1, 0x0

    #@9
    invoke-static {v0, v2, v1}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    #@c
    move-result v1

    #@d
    if-ltz v1, :cond_46

    #@f
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@11
    shl-int/lit8 v3, v1, 0x1

    #@13
    aget-object v0, v0, v3

    #@15
    if-eqz v0, :cond_46

    #@17
    add-int/lit8 v0, v1, 0x1

    #@19
    :goto_19
    if-ge v0, v2, :cond_2c

    #@1b
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@1d
    aget v3, v3, v0

    #@1f
    if-nez v3, :cond_2c

    #@21
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@23
    shl-int/lit8 v4, v0, 0x1

    #@25
    aget-object v3, v3, v4

    #@27
    if-eqz v3, :cond_5

    #@29
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_19

    #@2c
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    #@2e
    :goto_2e
    if-ltz v1, :cond_43

    #@30
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@32
    aget v2, v2, v1

    #@34
    if-nez v2, :cond_43

    #@36
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@38
    shl-int/lit8 v3, v1, 0x1

    #@3a
    aget-object v2, v2, v3

    #@3c
    if-nez v2, :cond_40

    #@3e
    move v0, v1

    #@3f
    goto :goto_5

    #@40
    :cond_40
    add-int/lit8 v1, v1, -0x1

    #@42
    goto :goto_2e

    #@43
    :cond_43
    xor-int/lit8 v0, v0, -0x1

    #@45
    goto :goto_5

    #@46
    :cond_46
    move v0, v1

    #@47
    goto :goto_5
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@3
    mul-int/lit8 v1, v1, 0x2

    #@5
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@7
    if-nez p1, :cond_17

    #@9
    :goto_9
    if-ge v0, v1, :cond_24

    #@b
    aget-object v3, v2, v0

    #@d
    if-nez v3, :cond_12

    #@f
    shr-int/lit8 v0, v0, 0x1

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    add-int/lit8 v0, v0, 0x2

    #@14
    goto :goto_9

    #@15
    :cond_15
    add-int/lit8 v0, v0, 0x2

    #@17
    :cond_17
    if-ge v0, v1, :cond_24

    #@19
    aget-object v3, v2, v0

    #@1b
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_15

    #@21
    shr-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_11

    #@24
    :cond_24
    const/4 v0, -0x1

    #@25
    goto :goto_11
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@2
    if-gtz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public keyAt(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@2
    shl-int/lit8 v1, p1, 0x1

    #@4
    aget-object v0, v0, v1

    #@6
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    const/16 v1, 0x8

    #@2
    const/4 v0, 0x4

    #@3
    const/4 v3, 0x0

    #@4
    if-nez p1, :cond_1b

    #@6
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    #@9
    move-result v2

    #@a
    move v4, v2

    #@b
    move v2, v3

    #@c
    :goto_c
    if-ltz v4, :cond_24

    #@e
    shl-int/lit8 v0, v4, 0x1

    #@10
    add-int/lit8 v1, v0, 0x1

    #@12
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@14
    aget-object v0, v0, v1

    #@16
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@18
    aput-object p2, v2, v1

    #@1a
    :goto_1a
    return-object v0

    #@1b
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    #@22
    move-result v4

    #@23
    goto :goto_c

    #@24
    :cond_24
    xor-int/lit8 v4, v4, -0x1

    #@26
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@28
    iget-object v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@2a
    array-length v6, v6

    #@2b
    if-lt v5, v6, :cond_55

    #@2d
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@2f
    if-lt v5, v1, :cond_91

    #@31
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@33
    iget v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@35
    shr-int/lit8 v1, v1, 0x1

    #@37
    add-int/2addr v0, v1

    #@38
    :cond_38
    :goto_38
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@3a
    iget-object v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@3c
    invoke-direct {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    #@3f
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@41
    array-length v0, v0

    #@42
    if-lez v0, :cond_50

    #@44
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@46
    array-length v6, v1

    #@47
    invoke-static {v1, v3, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4a
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@4c
    array-length v6, v5

    #@4d
    invoke-static {v5, v3, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@50
    :cond_50
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@52
    invoke-static {v1, v5, v0}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@55
    :cond_55
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@57
    if-ge v4, v0, :cond_77

    #@59
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@5b
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@5d
    add-int/lit8 v3, v4, 0x1

    #@5f
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@61
    sub-int/2addr v5, v4

    #@62
    invoke-static {v0, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@65
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@67
    shl-int/lit8 v1, v4, 0x1

    #@69
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@6b
    add-int/lit8 v5, v4, 0x1

    #@6d
    shl-int/lit8 v5, v5, 0x1

    #@6f
    iget v6, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@71
    sub-int/2addr v6, v4

    #@72
    shl-int/lit8 v6, v6, 0x1

    #@74
    invoke-static {v0, v1, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@77
    :cond_77
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@79
    aput v2, v0, v4

    #@7b
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@7d
    shl-int/lit8 v1, v4, 0x1

    #@7f
    aput-object p1, v0, v1

    #@81
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@83
    shl-int/lit8 v1, v4, 0x1

    #@85
    add-int/lit8 v1, v1, 0x1

    #@87
    aput-object p2, v0, v1

    #@89
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@8b
    add-int/lit8 v0, v0, 0x1

    #@8d
    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@8f
    const/4 v0, 0x0

    #@90
    goto :goto_1a

    #@91
    :cond_91
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@93
    if-lt v5, v0, :cond_38

    #@95
    move v0, v1

    #@96
    goto :goto_38
.end method

.method public putAll(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    iget v1, p1, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@3
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@5
    add-int/2addr v2, v1

    #@6
    invoke-virtual {p0, v2}, Landroid/support/v4/util/SimpleArrayMap;->ensureCapacity(I)V

    #@9
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@b
    if-nez v2, :cond_22

    #@d
    if-lez v1, :cond_21

    #@f
    iget-object v2, p1, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@11
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@13
    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@16
    iget-object v2, p1, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@18
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@1a
    shl-int/lit8 v4, v1, 0x1

    #@1c
    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1f
    iput v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@21
    :cond_21
    return-void

    #@22
    :cond_22
    :goto_22
    if-ge v0, v1, :cond_21

    #@24
    invoke-virtual {p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_22
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_d

    #@2
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->indexOfNull()I

    #@5
    move-result v0

    #@6
    :goto_6
    if-ltz v0, :cond_16

    #@8
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@10
    move-result v0

    #@11
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->indexOf(Ljava/lang/Object;I)I

    #@14
    move-result v0

    #@15
    goto :goto_6

    #@16
    :cond_16
    const/4 v0, 0x0

    #@17
    goto :goto_c
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    #@0
    const/4 v6, 0x0

    #@1
    const/16 v0, 0x8

    #@3
    const/4 v5, 0x0

    #@4
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@6
    shl-int/lit8 v2, p1, 0x1

    #@8
    add-int/lit8 v2, v2, 0x1

    #@a
    aget-object v1, v1, v2

    #@c
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@e
    const/4 v3, 0x1

    #@f
    if-gt v2, v3, :cond_25

    #@11
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@13
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@15
    iget v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@17
    invoke-static {v0, v2, v3}, Landroid/support/v4/util/SimpleArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    #@1a
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_INTS:[I

    #@1c
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@1e
    sget-object v0, Landroid/support/v4/util/ContainerHelpers;->EMPTY_OBJECTS:[Ljava/lang/Object;

    #@20
    iput-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@22
    iput v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@24
    :cond_24
    :goto_24
    return-object v1

    #@25
    :cond_25
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@27
    array-length v2, v2

    #@28
    if-le v2, v0, :cond_78

    #@2a
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@2c
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@2e
    array-length v3, v3

    #@2f
    div-int/lit8 v3, v3, 0x3

    #@31
    if-ge v2, v3, :cond_78

    #@33
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@35
    if-le v2, v0, :cond_3e

    #@37
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@39
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@3b
    shr-int/lit8 v2, v2, 0x1

    #@3d
    add-int/2addr v0, v2

    #@3e
    :cond_3e
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@40
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@42
    invoke-direct {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->allocArrays(I)V

    #@45
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@47
    add-int/lit8 v0, v0, -0x1

    #@49
    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@4b
    if-lez p1, :cond_59

    #@4d
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@4f
    invoke-static {v2, v5, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@52
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@54
    shl-int/lit8 v4, p1, 0x1

    #@56
    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@59
    :cond_59
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@5b
    if-ge p1, v0, :cond_24

    #@5d
    add-int/lit8 v0, p1, 0x1

    #@5f
    iget-object v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@61
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@63
    sub-int/2addr v5, p1

    #@64
    invoke-static {v2, v0, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@67
    add-int/lit8 v0, p1, 0x1

    #@69
    shl-int/lit8 v0, v0, 0x1

    #@6b
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@6d
    shl-int/lit8 v4, p1, 0x1

    #@6f
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@71
    sub-int/2addr v5, p1

    #@72
    shl-int/lit8 v5, v5, 0x1

    #@74
    invoke-static {v3, v0, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@77
    goto :goto_24

    #@78
    :cond_78
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@7a
    add-int/lit8 v0, v0, -0x1

    #@7c
    iput v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@7e
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@80
    if-ge p1, v0, :cond_a0

    #@82
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@84
    add-int/lit8 v2, p1, 0x1

    #@86
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mHashes:[I

    #@88
    iget v4, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@8a
    sub-int/2addr v4, p1

    #@8b
    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@8e
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@90
    add-int/lit8 v2, p1, 0x1

    #@92
    shl-int/lit8 v2, v2, 0x1

    #@94
    iget-object v3, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@96
    shl-int/lit8 v4, p1, 0x1

    #@98
    iget v5, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@9a
    sub-int/2addr v5, p1

    #@9b
    shl-int/lit8 v5, v5, 0x1

    #@9d
    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a0
    :cond_a0
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@a2
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@a4
    shl-int/lit8 v2, v2, 0x1

    #@a6
    aput-object v6, v0, v2

    #@a8
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@aa
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@ac
    shl-int/lit8 v2, v2, 0x1

    #@ae
    add-int/lit8 v2, v2, 0x1

    #@b0
    aput-object v6, v0, v2

    #@b2
    goto/16 :goto_24
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    #@0
    shl-int/lit8 v0, p1, 0x1

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iget-object v1, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@6
    aget-object v1, v1, v0

    #@8
    iget-object v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@a
    aput-object p2, v2, v0

    #@c
    return-object v1
.end method

.method public size()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-virtual {p0}, Landroid/support/v4/util/SimpleArrayMap;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    const-string v0, "{}"

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    iget v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@d
    mul-int/lit8 v0, v0, 0x1c

    #@f
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@12
    const/16 v0, 0x7b

    #@14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    const/4 v0, 0x0

    #@18
    :goto_18
    iget v2, p0, Landroid/support/v4/util/SimpleArrayMap;->mSize:I

    #@1a
    if-ge v0, v2, :cond_49

    #@1c
    if-lez v0, :cond_23

    #@1e
    const-string v2, ", "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    :cond_23
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    if-eq v2, p0, :cond_3d

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    :goto_2c
    const/16 v2, 0x3d

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    invoke-virtual {p0, v0}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    if-eq v2, p0, :cond_43

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_18

    #@3d
    :cond_3d
    const-string v2, "(this Map)"

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    goto :goto_2c

    #@43
    :cond_43
    const-string v2, "(this Map)"

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    goto :goto_3a

    #@49
    :cond_49
    const/16 v0, 0x7d

    #@4b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    goto :goto_8
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/util/SimpleArrayMap;->mArray:[Ljava/lang/Object;

    #@2
    shl-int/lit8 v1, p1, 0x1

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    aget-object v0, v0, v1

    #@8
    return-object v0
.end method
