.class public abstract Lcom/google/android/gms/internal/ha;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field private static final FX:Ljava/lang/Object;

.field private static FY:Ljava/lang/ClassLoader;

.field private static FZ:Ljava/lang/Integer;


# instance fields
.field private Ga:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v0, Ljava/lang/Object;

    #@3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@6
    sput-object v0, Lcom/google/android/gms/internal/ha;->FX:Ljava/lang/Object;

    #@8
    sput-object v1, Lcom/google/android/gms/internal/ha;->FY:Ljava/lang/ClassLoader;

    #@a
    sput-object v1, Lcom/google/android/gms/internal/ha;->FZ:Ljava/lang/Integer;

    #@c
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ha;->Ga:Z

    #@6
    return-void
.end method

.method private static a(Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    const-string v1, "SAFE_PARCELABLE_NULL_STRING"

    #@3
    const-string v2, "NULL"

    #@5
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_11} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_11} :catch_15

    #@11
    move-result v0

    #@12
    :goto_12
    return v0

    #@13
    :catch_13
    move-exception v1

    #@14
    goto :goto_12

    #@15
    :catch_15
    move-exception v1

    #@16
    goto :goto_12
.end method

.method protected static aA(Ljava/lang/String;)Z
    .registers 2

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/ha;->fp()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    :try_start_8
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Lcom/google/android/gms/internal/ha;->a(Ljava/lang/Class;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_11

    #@f
    move-result v0

    #@10
    goto :goto_7

    #@11
    :catch_11
    move-exception v0

    #@12
    const/4 v0, 0x0

    #@13
    goto :goto_7
.end method

.method protected static fp()Ljava/lang/ClassLoader;
    .registers 2

    #@0
    sget-object v1, Lcom/google/android/gms/internal/ha;->FX:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ha;->FY:Ljava/lang/ClassLoader;

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

.method protected static fq()Ljava/lang/Integer;
    .registers 2

    #@0
    sget-object v1, Lcom/google/android/gms/internal/ha;->FX:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ha;->FZ:Ljava/lang/Integer;

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


# virtual methods
.method protected fr()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ha;->Ga:Z

    #@2
    return v0
.end method
