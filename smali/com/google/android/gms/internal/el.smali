.class public final Lcom/google/android/gms/internal/el;
.super Ljava/lang/Object;


# static fields
.field private static final qp:Ljava/lang/Object;

.field private static se:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/el;->qp:Ljava/lang/Object;

    #@7
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    sget-object v1, Lcom/google/android/gms/internal/el;->qp:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/el;->se:Ljava/lang/String;

    #@5
    if-nez v0, :cond_10

    #@7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_10

    #@d
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/el;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@10
    :cond_10
    sget-object v0, Lcom/google/android/gms/internal/el;->se:Ljava/lang/String;

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    :catchall_14
    move-exception v0

    #@15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    #@16
    throw v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    #@0
    const/4 v7, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v0, 0x3

    #@3
    :try_start_3
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v3

    #@b
    const-string v0, "com.google.ads.mediation.MediationAdapter"

    #@d
    const/4 v2, 0x0

    #@e
    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_33

    #@11
    move-result-object v4

    #@12
    new-instance v0, Ljava/math/BigInteger;

    #@14
    new-array v2, v7, [B

    #@16
    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    #@19
    const-string v2, ","

    #@1b
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    move-object v2, v0

    #@20
    move v0, v1

    #@21
    :goto_21
    array-length v6, v5

    #@22
    if-ge v0, v6, :cond_39

    #@24
    aget-object v6, v5, v0

    #@26
    invoke-static {v3, v4, v6}, Lcom/google/android/gms/internal/eo;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Z

    #@29
    move-result v6

    #@2a
    if-eqz v6, :cond_30

    #@2c
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    #@2f
    move-result-object v2

    #@30
    :cond_30
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_21

    #@33
    :catch_33
    move-exception v0

    #@34
    const-string v0, "err"

    #@36
    sput-object v0, Lcom/google/android/gms/internal/el;->se:Ljava/lang/String;

    #@38
    :goto_38
    return-void

    #@39
    :cond_39
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@3b
    const-string v3, "%X"

    #@3d
    new-array v4, v7, [Ljava/lang/Object;

    #@3f
    aput-object v2, v4, v1

    #@41
    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    sput-object v0, Lcom/google/android/gms/internal/el;->se:Ljava/lang/String;

    #@47
    goto :goto_38
.end method

.method public static bP()Ljava/lang/String;
    .registers 2

    #@0
    sget-object v1, Lcom/google/android/gms/internal/el;->qp:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/el;->se:Ljava/lang/String;

    #@5
    monitor-exit v1

    #@6
    return-object v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method
