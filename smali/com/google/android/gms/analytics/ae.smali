.class Lcom/google/android/gms/analytics/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/m;


# static fields
.field private static tq:Ljava/lang/Object;

.field private static wZ:Lcom/google/android/gms/analytics/ae;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/analytics/ae;->tq:Ljava/lang/Object;

    #@7
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/analytics/ae;->mContext:Landroid/content/Context;

    #@5
    return-void
.end method

.method public static dv()Lcom/google/android/gms/analytics/ae;
    .registers 2

    #@0
    sget-object v1, Lcom/google/android/gms/analytics/ae;->tq:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/ae;->wZ:Lcom/google/android/gms/analytics/ae;

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

.method public static u(Landroid/content/Context;)V
    .registers 3

    #@0
    sget-object v1, Lcom/google/android/gms/analytics/ae;->tq:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/ae;->wZ:Lcom/google/android/gms/analytics/ae;

    #@5
    if-nez v0, :cond_e

    #@7
    new-instance v0, Lcom/google/android/gms/analytics/ae;

    #@9
    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/ae;-><init>(Landroid/content/Context;)V

    #@c
    sput-object v0, Lcom/google/android/gms/analytics/ae;->wZ:Lcom/google/android/gms/analytics/ae;

    #@e
    :cond_e
    monitor-exit v1

    #@f
    return-void

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    #@12
    throw v0
.end method


# virtual methods
.method public J(Ljava/lang/String;)Z
    .registers 3

    #@0
    const-string v0, "&sr"

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected dw()Ljava/lang/String;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ae;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@9
    move-result-object v0

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string v2, "x"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    :cond_3
    :goto_3
    return-object v0

    #@4
    :cond_4
    const-string v1, "&sr"

    #@6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_3

    #@c
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ae;->dw()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    goto :goto_3
.end method
