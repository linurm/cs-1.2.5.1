.class public abstract Lcom/google/android/gms/internal/i;
.super Lcom/google/android/gms/internal/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/i$a;
    }
.end annotation


# static fields
.field private static jS:Ljava/lang/reflect/Method;

.field private static jT:Ljava/lang/reflect/Method;

.field private static jU:Ljava/lang/reflect/Method;

.field private static jV:Ljava/lang/reflect/Method;

.field private static jW:Ljava/lang/reflect/Method;

.field private static jX:Ljava/lang/reflect/Method;

.field private static jY:Ljava/lang/reflect/Method;

.field private static jZ:Ljava/lang/reflect/Method;

.field private static ka:Ljava/lang/String;

.field private static kb:Lcom/google/android/gms/internal/o;

.field static kc:Z

.field private static startTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const-wide/16 v0, 0x0

    #@2
    sput-wide v0, Lcom/google/android/gms/internal/i;->startTime:J

    #@4
    const/4 v0, 0x0

    #@5
    sput-boolean v0, Lcom/google/android/gms/internal/i;->kc:Z

    #@7
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/n;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/h;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/n;)V

    #@3
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/internal/m;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/internal/i;->jV:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_a

    #@4
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    #@6
    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    #@9
    throw v0

    #@a
    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/i;->jV:Ljava/lang/reflect/Method;

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x1

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    const/4 v3, 0x0

    #@11
    aput-object p0, v2, v3

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/nio/ByteBuffer;

    #@19
    if-nez v0, :cond_28

    #@1b
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    #@1d
    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    #@20
    throw v0
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_21} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_21} :catch_32

    #@21
    :catch_21
    move-exception v0

    #@22
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@24
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v1

    #@28
    :cond_28
    :try_start_28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@2b
    move-result-object v0

    #@2c
    const/4 v1, 0x1

    #@2d
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/m;->a([BZ)Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_30} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_30} :catch_32

    #@30
    move-result-object v0

    #@31
    return-object v0

    #@32
    :catch_32
    move-exception v0

    #@33
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@35
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@38
    throw v1
.end method

.method static a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/util/DisplayMetrics;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/internal/i;->jW:Ljava/lang/reflect/Method;

    #@2
    if-eqz v0, :cond_6

    #@4
    if-nez p0, :cond_c

    #@6
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    #@8
    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    #@b
    throw v0

    #@c
    :cond_c
    :try_start_c
    sget-object v0, Lcom/google/android/gms/internal/i;->jW:Ljava/lang/reflect/Method;

    #@e
    const/4 v1, 0x0

    #@f
    const/4 v2, 0x2

    #@10
    new-array v2, v2, [Ljava/lang/Object;

    #@12
    const/4 v3, 0x0

    #@13
    aput-object p0, v2, v3

    #@15
    const/4 v3, 0x1

    #@16
    aput-object p1, v2, v3

    #@18
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/util/ArrayList;
    :try_end_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_1e} :catch_1f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_1e} :catch_26

    #@1e
    return-object v0

    #@1f
    :catch_1f
    move-exception v0

    #@20
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@22
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@25
    throw v1

    #@26
    :catch_26
    move-exception v0

    #@27
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@29
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@2c
    throw v1
.end method

.method protected static a(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/m;)V
    .registers 5

    #@0
    const-class v0, Lcom/google/android/gms/internal/i;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-boolean v0, Lcom/google/android/gms/internal/i;->kc:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_25

    #@5
    if-nez v0, :cond_21

    #@7
    :try_start_7
    new-instance v0, Lcom/google/android/gms/internal/o;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/o;-><init>(Lcom/google/android/gms/internal/m;Ljava/security/SecureRandom;)V

    #@d
    sput-object v0, Lcom/google/android/gms/internal/i;->kb:Lcom/google/android/gms/internal/o;

    #@f
    sput-object p0, Lcom/google/android/gms/internal/i;->ka:Ljava/lang/String;

    #@11
    invoke-static {p1}, Lcom/google/android/gms/internal/i;->h(Landroid/content/Context;)V

    #@14
    invoke-static {}, Lcom/google/android/gms/internal/i;->w()Ljava/lang/Long;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@1b
    move-result-wide v0

    #@1c
    sput-wide v0, Lcom/google/android/gms/internal/i;->startTime:J

    #@1e
    const/4 v0, 0x1

    #@1f
    sput-boolean v0, Lcom/google/android/gms/internal/i;->kc:Z
    :try_end_21
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_7 .. :try_end_21} :catch_2a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_21} :catch_2c
    .catchall {:try_start_7 .. :try_end_21} :catchall_25

    #@21
    :cond_21
    :goto_21
    const-class v0, Lcom/google/android/gms/internal/i;

    #@23
    monitor-exit v0

    #@24
    return-void

    #@25
    :catchall_25
    move-exception v0

    #@26
    const-class v1, Lcom/google/android/gms/internal/i;

    #@28
    monitor-exit v1

    #@29
    throw v0

    #@2a
    :catch_2a
    move-exception v0

    #@2b
    goto :goto_21

    #@2c
    :catch_2c
    move-exception v0

    #@2d
    goto :goto_21
.end method

.method static b(Landroid/content/Context;Lcom/google/android/gms/internal/m;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/internal/i;->jY:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_a

    #@4
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    #@6
    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    #@9
    throw v0

    #@a
    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/i;->jY:Ljava/lang/reflect/Method;

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x1

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    const/4 v3, 0x0

    #@11
    aput-object p0, v2, v3

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/nio/ByteBuffer;

    #@19
    if-nez v0, :cond_28

    #@1b
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    #@1d
    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    #@20
    throw v0
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_21} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_21} :catch_32

    #@21
    :catch_21
    move-exception v0

    #@22
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@24
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v1

    #@28
    :cond_28
    :try_start_28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@2b
    move-result-object v0

    #@2c
    const/4 v1, 0x1

    #@2d
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/m;->a([BZ)Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_30} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_30} :catch_32

    #@30
    move-result-object v0

    #@31
    return-object v0

    #@32
    :catch_32
    move-exception v0

    #@33
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@35
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@38
    throw v1
.end method

.method private static b([BLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    #@0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    #@2
    sget-object v1, Lcom/google/android/gms/internal/i;->kb:Lcom/google/android/gms/internal/o;

    #@4
    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/internal/o;->c([BLjava/lang/String;)[B

    #@7
    move-result-object v1

    #@8
    const-string v2, "UTF-8"

    #@a
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Lcom/google/android/gms/internal/o$a; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_15

    #@d
    return-object v0

    #@e
    :catch_e
    move-exception v0

    #@f
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@11
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@14
    throw v1

    #@15
    :catch_15
    move-exception v0

    #@16
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@18
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@1b
    throw v1
.end method

.method static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/internal/i;->jX:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_a

    #@4
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    #@6
    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    #@9
    throw v0

    #@a
    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/i;->jX:Ljava/lang/reflect/Method;

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x1

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    const/4 v3, 0x0

    #@11
    aput-object p0, v2, v3

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/String;

    #@19
    if-nez v0, :cond_2f

    #@1b
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    #@1d
    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    #@20
    throw v0
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_21} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_21} :catch_28

    #@21
    :catch_21
    move-exception v0

    #@22
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@24
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@27
    throw v1

    #@28
    :catch_28
    move-exception v0

    #@29
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@2b
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@2e
    throw v1

    #@2f
    :cond_2f
    return-object v0
.end method

.method static g(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/internal/i;->jZ:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_a

    #@4
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    #@6
    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    #@9
    throw v0

    #@a
    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/i;->jZ:Ljava/lang/reflect/Method;

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x1

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    const/4 v3, 0x0

    #@11
    aput-object p0, v2, v3

    #@13
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/ArrayList;

    #@19
    if-eqz v0, :cond_22

    #@1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v1

    #@1f
    const/4 v2, 0x2

    #@20
    if-eq v1, v2, :cond_36

    #@22
    :cond_22
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    #@24
    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    #@27
    throw v0
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_28} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_28} :catch_2f

    #@28
    :catch_28
    move-exception v0

    #@29
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@2b
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@2e
    throw v1

    #@2f
    :catch_2f
    move-exception v0

    #@30
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@32
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@35
    throw v1

    #@36
    :cond_36
    return-object v0
.end method

.method private static h(Landroid/content/Context;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    #@0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/i;->kb:Lcom/google/android/gms/internal/o;

    #@2
    invoke-static {}, Lcom/google/android/gms/internal/q;->getKey()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/o;->b(Ljava/lang/String;)[B

    #@9
    move-result-object v2

    #@a
    sget-object v0, Lcom/google/android/gms/internal/i;->kb:Lcom/google/android/gms/internal/o;

    #@c
    invoke-static {}, Lcom/google/android/gms/internal/q;->B()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/o;->c([BLjava/lang/String;)[B

    #@13
    move-result-object v3

    #@14
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@17
    move-result-object v0

    #@18
    if-nez v0, :cond_30

    #@1a
    const-string v0, "dex"

    #@1c
    const/4 v1, 0x0

    #@1d
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    #@20
    move-result-object v0

    #@21
    if-nez v0, :cond_30

    #@23
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    #@25
    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    #@28
    throw v0
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_29} :catch_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_29} :catch_18f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_29} :catch_196
    .catch Lcom/google/android/gms/internal/o$a; {:try_start_0 .. :try_end_29} :catch_19d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_29} :catch_1a4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_29} :catch_1ab

    #@29
    :catch_29
    move-exception v0

    #@2a
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@2c
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@2f
    throw v1

    #@30
    :cond_30
    move-object v1, v0

    #@31
    :try_start_31
    const-string v0, "ads"

    #@33
    const-string v4, ".jar"

    #@35
    invoke-static {v0, v4, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    #@38
    move-result-object v4

    #@39
    new-instance v0, Ljava/io/FileOutputStream;

    #@3b
    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@3e
    const/4 v5, 0x0

    #@3f
    array-length v6, v3

    #@40
    invoke-virtual {v0, v3, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    #@43
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_46} :catch_29
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_46} :catch_18f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_46} :catch_196
    .catch Lcom/google/android/gms/internal/o$a; {:try_start_31 .. :try_end_46} :catch_19d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_31 .. :try_end_46} :catch_1a4
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_46} :catch_1ab

    #@46
    :try_start_46
    new-instance v0, Ldalvik/system/DexClassLoader;

    #@48
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    const/4 v6, 0x0

    #@51
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@54
    move-result-object v7

    #@55
    invoke-direct {v0, v3, v5, v6, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@58
    invoke-static {}, Lcom/google/android/gms/internal/q;->C()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v0, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@63
    move-result-object v3

    #@64
    invoke-static {}, Lcom/google/android/gms/internal/q;->O()Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v0, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@6f
    move-result-object v5

    #@70
    invoke-static {}, Lcom/google/android/gms/internal/q;->I()Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {v0, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@7b
    move-result-object v6

    #@7c
    invoke-static {}, Lcom/google/android/gms/internal/q;->G()Ljava/lang/String;

    #@7f
    move-result-object v7

    #@80
    invoke-static {v2, v7}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@83
    move-result-object v7

    #@84
    invoke-virtual {v0, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@87
    move-result-object v7

    #@88
    invoke-static {}, Lcom/google/android/gms/internal/q;->Q()Ljava/lang/String;

    #@8b
    move-result-object v8

    #@8c
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@8f
    move-result-object v8

    #@90
    invoke-virtual {v0, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@93
    move-result-object v8

    #@94
    invoke-static {}, Lcom/google/android/gms/internal/q;->E()Ljava/lang/String;

    #@97
    move-result-object v9

    #@98
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@9b
    move-result-object v9

    #@9c
    invoke-virtual {v0, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@9f
    move-result-object v9

    #@a0
    invoke-static {}, Lcom/google/android/gms/internal/q;->M()Ljava/lang/String;

    #@a3
    move-result-object v10

    #@a4
    invoke-static {v2, v10}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@a7
    move-result-object v10

    #@a8
    invoke-virtual {v0, v10}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@ab
    move-result-object v10

    #@ac
    invoke-static {}, Lcom/google/android/gms/internal/q;->K()Ljava/lang/String;

    #@af
    move-result-object v11

    #@b0
    invoke-static {v2, v11}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@b3
    move-result-object v11

    #@b4
    invoke-virtual {v0, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@b7
    move-result-object v0

    #@b8
    invoke-static {}, Lcom/google/android/gms/internal/q;->D()Ljava/lang/String;

    #@bb
    move-result-object v11

    #@bc
    invoke-static {v2, v11}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@bf
    move-result-object v11

    #@c0
    const/4 v12, 0x0

    #@c1
    new-array v12, v12, [Ljava/lang/Class;

    #@c3
    invoke-virtual {v3, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@c6
    move-result-object v3

    #@c7
    sput-object v3, Lcom/google/android/gms/internal/i;->jS:Ljava/lang/reflect/Method;

    #@c9
    invoke-static {}, Lcom/google/android/gms/internal/q;->P()Ljava/lang/String;

    #@cc
    move-result-object v3

    #@cd
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@d0
    move-result-object v3

    #@d1
    const/4 v11, 0x0

    #@d2
    new-array v11, v11, [Ljava/lang/Class;

    #@d4
    invoke-virtual {v5, v3, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@d7
    move-result-object v3

    #@d8
    sput-object v3, Lcom/google/android/gms/internal/i;->jT:Ljava/lang/reflect/Method;

    #@da
    invoke-static {}, Lcom/google/android/gms/internal/q;->J()Ljava/lang/String;

    #@dd
    move-result-object v3

    #@de
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@e1
    move-result-object v3

    #@e2
    const/4 v5, 0x0

    #@e3
    new-array v5, v5, [Ljava/lang/Class;

    #@e5
    invoke-virtual {v6, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@e8
    move-result-object v3

    #@e9
    sput-object v3, Lcom/google/android/gms/internal/i;->jU:Ljava/lang/reflect/Method;

    #@eb
    invoke-static {}, Lcom/google/android/gms/internal/q;->H()Ljava/lang/String;

    #@ee
    move-result-object v3

    #@ef
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@f2
    move-result-object v3

    #@f3
    const/4 v5, 0x1

    #@f4
    new-array v5, v5, [Ljava/lang/Class;

    #@f6
    const/4 v6, 0x0

    #@f7
    const-class v11, Landroid/content/Context;

    #@f9
    aput-object v11, v5, v6

    #@fb
    invoke-virtual {v7, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@fe
    move-result-object v3

    #@ff
    sput-object v3, Lcom/google/android/gms/internal/i;->jV:Ljava/lang/reflect/Method;

    #@101
    invoke-static {}, Lcom/google/android/gms/internal/q;->R()Ljava/lang/String;

    #@104
    move-result-object v3

    #@105
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@108
    move-result-object v3

    #@109
    const/4 v5, 0x2

    #@10a
    new-array v5, v5, [Ljava/lang/Class;

    #@10c
    const/4 v6, 0x0

    #@10d
    const-class v7, Landroid/view/MotionEvent;

    #@10f
    aput-object v7, v5, v6

    #@111
    const/4 v6, 0x1

    #@112
    const-class v7, Landroid/util/DisplayMetrics;

    #@114
    aput-object v7, v5, v6

    #@116
    invoke-virtual {v8, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@119
    move-result-object v3

    #@11a
    sput-object v3, Lcom/google/android/gms/internal/i;->jW:Ljava/lang/reflect/Method;

    #@11c
    invoke-static {}, Lcom/google/android/gms/internal/q;->F()Ljava/lang/String;

    #@11f
    move-result-object v3

    #@120
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@123
    move-result-object v3

    #@124
    const/4 v5, 0x1

    #@125
    new-array v5, v5, [Ljava/lang/Class;

    #@127
    const/4 v6, 0x0

    #@128
    const-class v7, Landroid/content/Context;

    #@12a
    aput-object v7, v5, v6

    #@12c
    invoke-virtual {v9, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@12f
    move-result-object v3

    #@130
    sput-object v3, Lcom/google/android/gms/internal/i;->jX:Ljava/lang/reflect/Method;

    #@132
    invoke-static {}, Lcom/google/android/gms/internal/q;->N()Ljava/lang/String;

    #@135
    move-result-object v3

    #@136
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@139
    move-result-object v3

    #@13a
    const/4 v5, 0x1

    #@13b
    new-array v5, v5, [Ljava/lang/Class;

    #@13d
    const/4 v6, 0x0

    #@13e
    const-class v7, Landroid/content/Context;

    #@140
    aput-object v7, v5, v6

    #@142
    invoke-virtual {v10, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@145
    move-result-object v3

    #@146
    sput-object v3, Lcom/google/android/gms/internal/i;->jY:Ljava/lang/reflect/Method;

    #@148
    invoke-static {}, Lcom/google/android/gms/internal/q;->L()Ljava/lang/String;

    #@14b
    move-result-object v3

    #@14c
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    #@14f
    move-result-object v2

    #@150
    const/4 v3, 0x1

    #@151
    new-array v3, v3, [Ljava/lang/Class;

    #@153
    const/4 v5, 0x0

    #@154
    const-class v6, Landroid/content/Context;

    #@156
    aput-object v6, v3, v5

    #@158
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@15b
    move-result-object v0

    #@15c
    sput-object v0, Lcom/google/android/gms/internal/i;->jZ:Ljava/lang/reflect/Method;
    :try_end_15e
    .catchall {:try_start_46 .. :try_end_15e} :catchall_176

    #@15e
    :try_start_15e
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    #@161
    move-result-object v0

    #@162
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@165
    new-instance v2, Ljava/io/File;

    #@167
    const-string v3, ".jar"

    #@169
    const-string v4, ".dex"

    #@16b
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@16e
    move-result-object v0

    #@16f
    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@172
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    #@175
    return-void

    #@176
    :catchall_176
    move-exception v0

    #@177
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    #@17a
    move-result-object v2

    #@17b
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    #@17e
    new-instance v3, Ljava/io/File;

    #@180
    const-string v4, ".jar"

    #@182
    const-string v5, ".dex"

    #@184
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@187
    move-result-object v2

    #@188
    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@18b
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@18e
    throw v0
    :try_end_18f
    .catch Ljava/io/FileNotFoundException; {:try_start_15e .. :try_end_18f} :catch_29
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_18f} :catch_18f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15e .. :try_end_18f} :catch_196
    .catch Lcom/google/android/gms/internal/o$a; {:try_start_15e .. :try_end_18f} :catch_19d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15e .. :try_end_18f} :catch_1a4
    .catch Ljava/lang/NullPointerException; {:try_start_15e .. :try_end_18f} :catch_1ab

    #@18f
    :catch_18f
    move-exception v0

    #@190
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@192
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@195
    throw v1

    #@196
    :catch_196
    move-exception v0

    #@197
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@199
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@19c
    throw v1

    #@19d
    :catch_19d
    move-exception v0

    #@19e
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@1a0
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@1a3
    throw v1

    #@1a4
    :catch_1a4
    move-exception v0

    #@1a5
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@1a7
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@1aa
    throw v1

    #@1ab
    :catch_1ab
    move-exception v0

    #@1ac
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@1ae
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@1b1
    throw v1
.end method

.method static v()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/internal/i;->ka:Ljava/lang/String;

    #@2
    if-nez v0, :cond_a

    #@4
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    #@6
    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    #@9
    throw v0

    #@a
    :cond_a
    sget-object v0, Lcom/google/android/gms/internal/i;->ka:Ljava/lang/String;

    #@c
    return-object v0
.end method

.method static w()Ljava/lang/Long;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/internal/i;->jS:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_a

    #@4
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    #@6
    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    #@9
    throw v0

    #@a
    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/i;->jS:Ljava/lang/reflect/Method;

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x0

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/Long;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_16} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_16} :catch_1e

    #@16
    return-object v0

    #@17
    :catch_17
    move-exception v0

    #@18
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@1a
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@1d
    throw v1

    #@1e
    :catch_1e
    move-exception v0

    #@1f
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@21
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@24
    throw v1
.end method

.method static x()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/internal/i;->jU:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_a

    #@4
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    #@6
    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    #@9
    throw v0

    #@a
    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/i;->jU:Ljava/lang/reflect/Method;

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x0

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_16} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_16} :catch_1e

    #@16
    return-object v0

    #@17
    :catch_17
    move-exception v0

    #@18
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@1a
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@1d
    throw v1

    #@1e
    :catch_1e
    move-exception v0

    #@1f
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@21
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@24
    throw v1
.end method

.method static y()Ljava/lang/Long;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/internal/i;->jT:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_a

    #@4
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    #@6
    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    #@9
    throw v0

    #@a
    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/i;->jT:Ljava/lang/reflect/Method;

    #@c
    const/4 v1, 0x0

    #@d
    const/4 v2, 0x0

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/Long;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_16} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_16} :catch_1e

    #@16
    return-object v0

    #@17
    :catch_17
    move-exception v0

    #@18
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@1a
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@1d
    throw v1

    #@1e
    :catch_1e
    move-exception v0

    #@1f
    new-instance v1, Lcom/google/android/gms/internal/i$a;

    #@21
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    #@24
    throw v1
.end method


# virtual methods
.method protected c(Landroid/content/Context;)V
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/i;->x()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/i;->a(ILjava/lang/String;)V
    :try_end_8
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_1 .. :try_end_8} :catch_4f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_59

    #@8
    :goto_8
    const/4 v0, 0x2

    #@9
    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/i;->v()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/i;->a(ILjava/lang/String;)V
    :try_end_10
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_9 .. :try_end_10} :catch_51
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_59

    #@10
    :goto_10
    const/16 v0, 0x19

    #@12
    :try_start_12
    invoke-static {}, Lcom/google/android/gms/internal/i;->w()Ljava/lang/Long;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@19
    move-result-wide v2

    #@1a
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/i;->a(IJ)V
    :try_end_1d
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_12 .. :try_end_1d} :catch_53
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_59

    #@1d
    :goto_1d
    :try_start_1d
    invoke-static {p1}, Lcom/google/android/gms/internal/i;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    #@20
    move-result-object v1

    #@21
    const/16 v2, 0x1f

    #@23
    const/4 v0, 0x0

    #@24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/lang/Long;

    #@2a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@2d
    move-result-wide v4

    #@2e
    invoke-virtual {p0, v2, v4, v5}, Lcom/google/android/gms/internal/i;->a(IJ)V

    #@31
    const/16 v2, 0x20

    #@33
    const/4 v0, 0x1

    #@34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Ljava/lang/Long;

    #@3a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@3d
    move-result-wide v0

    #@3e
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/i;->a(IJ)V
    :try_end_41
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_1d .. :try_end_41} :catch_55
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_41} :catch_59

    #@41
    :goto_41
    const/16 v0, 0x21

    #@43
    :try_start_43
    invoke-static {}, Lcom/google/android/gms/internal/i;->y()Ljava/lang/Long;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@4a
    move-result-wide v2

    #@4b
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/i;->a(IJ)V
    :try_end_4e
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_43 .. :try_end_4e} :catch_57
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4e} :catch_59

    #@4e
    :goto_4e
    return-void

    #@4f
    :catch_4f
    move-exception v0

    #@50
    goto :goto_8

    #@51
    :catch_51
    move-exception v0

    #@52
    goto :goto_10

    #@53
    :catch_53
    move-exception v0

    #@54
    goto :goto_1d

    #@55
    :catch_55
    move-exception v0

    #@56
    goto :goto_41

    #@57
    :catch_57
    move-exception v0

    #@58
    goto :goto_4e

    #@59
    :catch_59
    move-exception v0

    #@5a
    goto :goto_4e
.end method

.method protected e(Landroid/content/Context;)V
    .registers 8

    #@0
    const/4 v0, 0x2

    #@1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/i;->v()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/i;->a(ILjava/lang/String;)V
    :try_end_8
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_1 .. :try_end_8} :catch_8a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_97

    #@8
    :goto_8
    const/4 v0, 0x1

    #@9
    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/i;->x()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/i;->a(ILjava/lang/String;)V
    :try_end_10
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_9 .. :try_end_10} :catch_8d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_97

    #@10
    :goto_10
    :try_start_10
    invoke-static {}, Lcom/google/android/gms/internal/i;->w()Ljava/lang/Long;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@17
    move-result-wide v0

    #@18
    const/16 v2, 0x19

    #@1a
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/i;->a(IJ)V

    #@1d
    sget-wide v2, Lcom/google/android/gms/internal/i;->startTime:J

    #@1f
    const-wide/16 v4, 0x0

    #@21
    cmp-long v2, v2, v4

    #@23
    if-eqz v2, :cond_34

    #@25
    const/16 v2, 0x11

    #@27
    sget-wide v4, Lcom/google/android/gms/internal/i;->startTime:J

    #@29
    sub-long/2addr v0, v4

    #@2a
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/i;->a(IJ)V

    #@2d
    const/16 v0, 0x17

    #@2f
    sget-wide v2, Lcom/google/android/gms/internal/i;->startTime:J

    #@31
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/i;->a(IJ)V
    :try_end_34
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_10 .. :try_end_34} :catch_8f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_34} :catch_97

    #@34
    :cond_34
    :goto_34
    :try_start_34
    iget-object v0, p0, Lcom/google/android/gms/internal/i;->jO:Landroid/view/MotionEvent;

    #@36
    iget-object v1, p0, Lcom/google/android/gms/internal/i;->jP:Landroid/util/DisplayMetrics;

    #@38
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/i;->a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;

    #@3b
    move-result-object v1

    #@3c
    const/16 v2, 0xe

    #@3e
    const/4 v0, 0x0

    #@3f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Ljava/lang/Long;

    #@45
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@48
    move-result-wide v4

    #@49
    invoke-virtual {p0, v2, v4, v5}, Lcom/google/android/gms/internal/i;->a(IJ)V

    #@4c
    const/16 v2, 0xf

    #@4e
    const/4 v0, 0x1

    #@4f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    check-cast v0, Ljava/lang/Long;

    #@55
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@58
    move-result-wide v4

    #@59
    invoke-virtual {p0, v2, v4, v5}, Lcom/google/android/gms/internal/i;->a(IJ)V

    #@5c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5f
    move-result v0

    #@60
    const/4 v2, 0x3

    #@61
    if-lt v0, v2, :cond_73

    #@63
    const/16 v2, 0x10

    #@65
    const/4 v0, 0x2

    #@66
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@69
    move-result-object v0

    #@6a
    check-cast v0, Ljava/lang/Long;

    #@6c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@6f
    move-result-wide v0

    #@70
    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/i;->a(IJ)V
    :try_end_73
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_34 .. :try_end_73} :catch_91
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_73} :catch_97

    #@73
    :cond_73
    :goto_73
    const/16 v0, 0x1b

    #@75
    :try_start_75
    iget-object v1, p0, Lcom/google/android/gms/internal/i;->jQ:Lcom/google/android/gms/internal/m;

    #@77
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/i;->a(Landroid/content/Context;Lcom/google/android/gms/internal/m;)Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/i;->a(ILjava/lang/String;)V
    :try_end_7e
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_75 .. :try_end_7e} :catch_93
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7e} :catch_97

    #@7e
    :goto_7e
    const/16 v0, 0x1d

    #@80
    :try_start_80
    iget-object v1, p0, Lcom/google/android/gms/internal/i;->jQ:Lcom/google/android/gms/internal/m;

    #@82
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/i;->b(Landroid/content/Context;Lcom/google/android/gms/internal/m;)Ljava/lang/String;

    #@85
    move-result-object v1

    #@86
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/i;->a(ILjava/lang/String;)V
    :try_end_89
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_80 .. :try_end_89} :catch_95
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_89} :catch_97

    #@89
    :goto_89
    return-void

    #@8a
    :catch_8a
    move-exception v0

    #@8b
    goto/16 :goto_8

    #@8d
    :catch_8d
    move-exception v0

    #@8e
    goto :goto_10

    #@8f
    :catch_8f
    move-exception v0

    #@90
    goto :goto_34

    #@91
    :catch_91
    move-exception v0

    #@92
    goto :goto_73

    #@93
    :catch_93
    move-exception v0

    #@94
    goto :goto_7e

    #@95
    :catch_95
    move-exception v0

    #@96
    goto :goto_89

    #@97
    :catch_97
    move-exception v0

    #@98
    goto :goto_89
.end method
