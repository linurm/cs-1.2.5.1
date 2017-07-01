.class public Landroid/support/v4/util/LruCache;
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


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-gtz p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "maxSize <= 0"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iput p1, p0, Landroid/support/v4/util/LruCache;->maxSize:I

    #@f
    new-instance v0, Ljava/util/LinkedHashMap;

    #@11
    const/4 v1, 0x0

    #@12
    const/high16 v2, 0x3f400000    # 0.75f

    #@14
    const/4 v3, 0x1

    #@15
    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    #@18
    iput-object v0, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@1a
    return-void
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    if-gez v0, :cond_29

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "Negative size: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string v2, "="

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    :cond_29
    return v0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final createCount()I
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget v0, p0, Landroid/support/v4/util/LruCache;->createCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public final evictAll()V
    .registers 2

    #@0
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    #@4
    return-void
.end method

.method public final evictionCount()I
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget v0, p0, Landroid/support/v4/util/LruCache;->evictionCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "key == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    monitor-enter p0

    #@b
    :try_start_b
    iget-object v0, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_1b

    #@13
    iget v1, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    iput v1, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    #@19
    monitor-exit p0

    #@1a
    :goto_1a
    return-object v0

    #@1b
    :cond_1b
    iget v0, p0, Landroid/support/v4/util/LruCache;->missCount:I

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    iput v0, p0, Landroid/support/v4/util/LruCache;->missCount:I

    #@21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_2a

    #@22
    invoke-virtual {p0, p1}, Landroid/support/v4/util/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    if-nez v1, :cond_2d

    #@28
    const/4 v0, 0x0

    #@29
    goto :goto_1a

    #@2a
    :catchall_2a
    move-exception v0

    #@2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    #@2c
    throw v0

    #@2d
    :cond_2d
    monitor-enter p0

    #@2e
    :try_start_2e
    iget v0, p0, Landroid/support/v4/util/LruCache;->createCount:I

    #@30
    add-int/lit8 v0, v0, 0x1

    #@32
    iput v0, p0, Landroid/support/v4/util/LruCache;->createCount:I

    #@34
    iget-object v0, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@36
    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    if-eqz v0, :cond_49

    #@3c
    iget-object v2, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@3e
    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_2e .. :try_end_42} :catchall_53

    #@42
    if-eqz v0, :cond_56

    #@44
    const/4 v2, 0x0

    #@45
    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/support/v4/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@48
    goto :goto_1a

    #@49
    :cond_49
    :try_start_49
    iget v2, p0, Landroid/support/v4/util/LruCache;->size:I

    #@4b
    invoke-direct {p0, p1, v1}, Landroid/support/v4/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@4e
    move-result v3

    #@4f
    add-int/2addr v2, v3

    #@50
    iput v2, p0, Landroid/support/v4/util/LruCache;->size:I

    #@52
    goto :goto_41

    #@53
    :catchall_53
    move-exception v0

    #@54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_53

    #@55
    throw v0

    #@56
    :cond_56
    iget v0, p0, Landroid/support/v4/util/LruCache;->maxSize:I

    #@58
    invoke-virtual {p0, v0}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    #@5b
    move-object v0, v1

    #@5c
    goto :goto_1a
.end method

.method public final hitCount()I
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget v0, p0, Landroid/support/v4/util/LruCache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final maxSize()I
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget v0, p0, Landroid/support/v4/util/LruCache;->maxSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final missCount()I
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget v0, p0, Landroid/support/v4/util/LruCache;->missCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_4

    #@2
    if-nez p2, :cond_c

    #@4
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    const-string v1, "key == null || value == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    monitor-enter p0

    #@d
    :try_start_d
    iget v0, p0, Landroid/support/v4/util/LruCache;->putCount:I

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    iput v0, p0, Landroid/support/v4/util/LruCache;->putCount:I

    #@13
    iget v0, p0, Landroid/support/v4/util/LruCache;->size:I

    #@15
    invoke-direct {p0, p1, p2}, Landroid/support/v4/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@18
    move-result v1

    #@19
    add-int/2addr v0, v1

    #@1a
    iput v0, p0, Landroid/support/v4/util/LruCache;->size:I

    #@1c
    iget-object v0, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@1e
    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    if-eqz v0, :cond_2d

    #@24
    iget v1, p0, Landroid/support/v4/util/LruCache;->size:I

    #@26
    invoke-direct {p0, p1, v0}, Landroid/support/v4/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@29
    move-result v2

    #@2a
    sub-int/2addr v1, v2

    #@2b
    iput v1, p0, Landroid/support/v4/util/LruCache;->size:I

    #@2d
    :cond_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_3a

    #@2e
    if-eqz v0, :cond_34

    #@30
    const/4 v1, 0x0

    #@31
    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/support/v4/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@34
    :cond_34
    iget v1, p0, Landroid/support/v4/util/LruCache;->maxSize:I

    #@36
    invoke-virtual {p0, v1}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    #@39
    return-object v0

    #@3a
    :catchall_3a
    move-exception v0

    #@3b
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    #@3c
    throw v0
.end method

.method public final putCount()I
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget v0, p0, Landroid/support/v4/util/LruCache;->putCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "key == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    monitor-enter p0

    #@b
    :try_start_b
    iget-object v0, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_1c

    #@13
    iget v1, p0, Landroid/support/v4/util/LruCache;->size:I

    #@15
    invoke-direct {p0, p1, v0}, Landroid/support/v4/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@18
    move-result v2

    #@19
    sub-int/2addr v1, v2

    #@1a
    iput v1, p0, Landroid/support/v4/util/LruCache;->size:I

    #@1c
    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_25

    #@1d
    if-eqz v0, :cond_24

    #@1f
    const/4 v1, 0x0

    #@20
    const/4 v2, 0x0

    #@21
    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@24
    :cond_24
    return-object v0

    #@25
    :catchall_25
    move-exception v0

    #@26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    #@27
    throw v0
.end method

.method public final size()I
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget v0, p0, Landroid/support/v4/util/LruCache;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public final snapshot()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    #@3
    iget-object v1, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    #@8
    monitor-exit p0

    #@9
    return-object v0

    #@a
    :catchall_a
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    monitor-enter p0

    #@2
    :try_start_2
    iget v1, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    #@4
    iget v2, p0, Landroid/support/v4/util/LruCache;->missCount:I

    #@6
    add-int/2addr v1, v2

    #@7
    if-eqz v1, :cond_e

    #@9
    iget v0, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    #@b
    mul-int/lit8 v0, v0, 0x64

    #@d
    div-int/2addr v0, v1

    #@e
    :cond_e
    const-string v1, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    #@10
    const/4 v2, 0x4

    #@11
    new-array v2, v2, [Ljava/lang/Object;

    #@13
    const/4 v3, 0x0

    #@14
    iget v4, p0, Landroid/support/v4/util/LruCache;->maxSize:I

    #@16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v4

    #@1a
    aput-object v4, v2, v3

    #@1c
    const/4 v3, 0x1

    #@1d
    iget v4, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    #@1f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v4

    #@23
    aput-object v4, v2, v3

    #@25
    const/4 v3, 0x2

    #@26
    iget v4, p0, Landroid/support/v4/util/LruCache;->missCount:I

    #@28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v4

    #@2c
    aput-object v4, v2, v3

    #@2e
    const/4 v3, 0x3

    #@2f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v0

    #@33
    aput-object v0, v2, v3

    #@35
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_3b

    #@38
    move-result-object v0

    #@39
    monitor-exit p0

    #@3a
    return-object v0

    #@3b
    :catchall_3b
    move-exception v0

    #@3c
    monitor-exit p0

    #@3d
    throw v0
.end method

.method public trimToSize(I)V
    .registers 6

    #@0
    :goto_0
    monitor-enter p0

    #@1
    :try_start_1
    iget v0, p0, Landroid/support/v4/util/LruCache;->size:I

    #@3
    if-ltz v0, :cond_11

    #@5
    iget-object v0, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@7
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_35

    #@d
    iget v0, p0, Landroid/support/v4/util/LruCache;->size:I

    #@f
    if-eqz v0, :cond_35

    #@11
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string v2, ".sizeOf() is reporting inconsistent results!"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    :catchall_32
    move-exception v0

    #@33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_32

    #@34
    throw v0

    #@35
    :cond_35
    :try_start_35
    iget v0, p0, Landroid/support/v4/util/LruCache;->size:I

    #@37
    if-le v0, p1, :cond_41

    #@39
    iget-object v0, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@3b
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_43

    #@41
    :cond_41
    monitor-exit p0

    #@42
    return-void

    #@43
    :cond_43
    iget-object v0, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@45
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    #@48
    move-result-object v0

    #@49
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@4c
    move-result-object v0

    #@4d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@50
    move-result-object v0

    #@51
    check-cast v0, Ljava/util/Map$Entry;

    #@53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@56
    move-result-object v1

    #@57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@5a
    move-result-object v0

    #@5b
    iget-object v2, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@5d
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    iget v2, p0, Landroid/support/v4/util/LruCache;->size:I

    #@62
    invoke-direct {p0, v1, v0}, Landroid/support/v4/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@65
    move-result v3

    #@66
    sub-int/2addr v2, v3

    #@67
    iput v2, p0, Landroid/support/v4/util/LruCache;->size:I

    #@69
    iget v2, p0, Landroid/support/v4/util/LruCache;->evictionCount:I

    #@6b
    add-int/lit8 v2, v2, 0x1

    #@6d
    iput v2, p0, Landroid/support/v4/util/LruCache;->evictionCount:I

    #@6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_35 .. :try_end_70} :catchall_32

    #@70
    const/4 v2, 0x1

    #@71
    const/4 v3, 0x0

    #@72
    invoke-virtual {p0, v2, v1, v0, v3}, Landroid/support/v4/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@75
    goto :goto_0
.end method
