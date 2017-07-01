.class final Lcom/google/android/gms/common/images/ImageManager$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field final synthetic Fi:Lcom/google/android/gms/common/images/ImageManager;

.field private Fl:Z

.field private final kK:Ljava/util/concurrent/CountDownLatch;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mUri:Landroid/net/Uri;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mBitmap:Landroid/graphics/Bitmap;

    #@9
    iput-boolean p4, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fl:Z

    #@b
    iput-object p5, p0, Lcom/google/android/gms/common/images/ImageManager$f;->kK:Ljava/util/concurrent/CountDownLatch;

    #@d
    return-void
.end method

.method private a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;Z)V
    .registers 13

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {p1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;)Ljava/util/ArrayList;

    #@4
    move-result-object v3

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v4

    #@9
    move v1, v2

    #@a
    :goto_a
    if-ge v1, v4, :cond_53

    #@c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/google/android/gms/common/images/a;

    #@12
    if-eqz p2, :cond_30

    #@14
    iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@16
    invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    #@19
    move-result-object v5

    #@1a
    iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mBitmap:Landroid/graphics/Bitmap;

    #@1c
    invoke-virtual {v0, v5, v6, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    #@1f
    :goto_1f
    instance-of v5, v0, Lcom/google/android/gms/common/images/a$c;

    #@21
    if-nez v5, :cond_2c

    #@23
    iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@25
    invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    #@28
    move-result-object v5

    #@29
    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    :cond_2c
    add-int/lit8 v0, v1, 0x1

    #@2e
    move v1, v0

    #@2f
    goto :goto_a

    #@30
    :cond_30
    iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@32
    invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    #@35
    move-result-object v5

    #@36
    iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mUri:Landroid/net/Uri;

    #@38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3b
    move-result-wide v8

    #@3c
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3f
    move-result-object v7

    #@40
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    iget-object v5, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@45
    invoke-static {v5}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    #@48
    move-result-object v5

    #@49
    iget-object v6, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@4b
    invoke-static {v6}, Lcom/google/android/gms/common/images/ImageManager;->c(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/gw;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v0, v5, v6, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/gw;Z)V

    #@52
    goto :goto_1f

    #@53
    :cond_53
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    const-string v0, "OnBitmapLoadedRunnable must be executed in the main thread"

    #@3
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->ay(Ljava/lang/String;)V

    #@6
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mBitmap:Landroid/graphics/Bitmap;

    #@8
    if-eqz v0, :cond_30

    #@a
    const/4 v0, 0x1

    #@b
    move v1, v0

    #@c
    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@e
    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$b;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_46

    #@14
    iget-boolean v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fl:Z

    #@16
    if-eqz v0, :cond_32

    #@18
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$b;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$b;->evictAll()V

    #@21
    invoke-static {}, Ljava/lang/System;->gc()V

    #@24
    iput-boolean v2, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fl:Z

    #@26
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@28
    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->g(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@2f
    :goto_2f
    return-void

    #@30
    :cond_30
    move v1, v2

    #@31
    goto :goto_c

    #@32
    :cond_32
    if-eqz v1, :cond_46

    #@34
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@36
    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->h(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/common/images/ImageManager$b;

    #@39
    move-result-object v0

    #@3a
    new-instance v2, Lcom/google/android/gms/common/images/a$a;

    #@3c
    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mUri:Landroid/net/Uri;

    #@3e
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/images/a$a;-><init>(Landroid/net/Uri;)V

    #@41
    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mBitmap:Landroid/graphics/Bitmap;

    #@43
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/images/ImageManager$b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@46
    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@48
    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->e(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    #@4b
    move-result-object v0

    #@4c
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mUri:Landroid/net/Uri;

    #@4e
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    #@54
    if-eqz v0, :cond_59

    #@56
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/images/ImageManager$f;->a(Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;Z)V

    #@59
    :cond_59
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$f;->kK:Ljava/util/concurrent/CountDownLatch;

    #@5b
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@5e
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->fd()Ljava/lang/Object;

    #@61
    move-result-object v1

    #@62
    monitor-enter v1

    #@63
    :try_start_63
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->fe()Ljava/util/HashSet;

    #@66
    move-result-object v0

    #@67
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$f;->mUri:Landroid/net/Uri;

    #@69
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    #@6c
    monitor-exit v1

    #@6d
    goto :goto_2f

    #@6e
    :catchall_6e
    move-exception v0

    #@6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_6e

    #@70
    throw v0
.end method
