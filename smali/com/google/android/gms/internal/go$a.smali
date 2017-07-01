.class Lcom/google/android/gms/internal/go$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/go;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic CI:Lcom/google/android/gms/internal/go;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/go;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/go$a;->CI:Lcom/google/android/gms/internal/go;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/go;Lcom/google/android/gms/internal/go$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/go$a;-><init>(Lcom/google/android/gms/internal/go;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/go$a;->CI:Lcom/google/android/gms/internal/go;

    #@3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/go;->a(Lcom/google/android/gms/internal/go;Z)Z

    #@6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v2

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/go$a;->CI:Lcom/google/android/gms/internal/go;

    #@c
    invoke-static {v0}, Lcom/google/android/gms/internal/go;->a(Lcom/google/android/gms/internal/go;)Ljava/util/List;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v4

    #@14
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_25

    #@1a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/google/android/gms/internal/gr;

    #@20
    const/4 v5, 0x3

    #@21
    invoke-virtual {v0, v2, v3, v5}, Lcom/google/android/gms/internal/gr;->d(JI)Z

    #@24
    goto :goto_14

    #@25
    :cond_25
    sget-object v2, Lcom/google/android/gms/internal/gr;->CN:Ljava/lang/Object;

    #@27
    monitor-enter v2

    #@28
    :try_start_28
    iget-object v0, p0, Lcom/google/android/gms/internal/go$a;->CI:Lcom/google/android/gms/internal/go;

    #@2a
    invoke-static {v0}, Lcom/google/android/gms/internal/go;->a(Lcom/google/android/gms/internal/go;)Ljava/util/List;

    #@2d
    move-result-object v0

    #@2e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v3

    #@32
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_47

    #@38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Lcom/google/android/gms/internal/gr;

    #@3e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gr;->ev()Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_51

    #@44
    const/4 v0, 0x1

    #@45
    :goto_45
    move v1, v0

    #@46
    goto :goto_32

    #@47
    :cond_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_28 .. :try_end_48} :catchall_4e

    #@48
    iget-object v0, p0, Lcom/google/android/gms/internal/go$a;->CI:Lcom/google/android/gms/internal/go;

    #@4a
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/go;->b(Lcom/google/android/gms/internal/go;Z)V

    #@4d
    return-void

    #@4e
    :catchall_4e
    move-exception v0

    #@4f
    :try_start_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    #@50
    throw v0

    #@51
    :cond_51
    move v0, v1

    #@52
    goto :goto_45
.end method
