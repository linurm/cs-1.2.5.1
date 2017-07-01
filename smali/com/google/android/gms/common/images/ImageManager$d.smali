.class final Lcom/google/android/gms/common/images/ImageManager$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic Fi:Lcom/google/android/gms/common/images/ImageManager;

.field private final Fk:Lcom/google/android/gms/common/images/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/a;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    iput-object p2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fk:Lcom/google/android/gms/common/images/a;

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    #@0
    const/4 v6, 0x1

    #@1
    const-string v0, "LoadImageRunnable must be executed on the main thread"

    #@3
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->ay(Ljava/lang/String;)V

    #@6
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@8
    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fk:Lcom/google/android/gms/common/images/a;

    #@e
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    #@14
    if-eqz v0, :cond_26

    #@16
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@18
    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fk:Lcom/google/android/gms/common/images/a;

    #@1e
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fk:Lcom/google/android/gms/common/images/a;

    #@23
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->c(Lcom/google/android/gms/common/images/a;)V

    #@26
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fk:Lcom/google/android/gms/common/images/a;

    #@28
    iget-object v1, v0, Lcom/google/android/gms/common/images/a;->Fm:Lcom/google/android/gms/common/images/a$a;

    #@2a
    iget-object v0, v1, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    #@2c
    if-nez v0, :cond_40

    #@2e
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fk:Lcom/google/android/gms/common/images/a;

    #@30
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@32
    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    #@35
    move-result-object v1

    #@36
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@38
    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->c(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/gw;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/gw;Z)V

    #@3f
    :goto_3f
    return-void

    #@40
    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@42
    invoke-static {v0, v1}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;Lcom/google/android/gms/common/images/a$a;)Landroid/graphics/Bitmap;

    #@45
    move-result-object v0

    #@46
    if-eqz v0, :cond_54

    #@48
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fk:Lcom/google/android/gms/common/images/a;

    #@4a
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@4c
    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v1, v2, v0, v6}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    #@53
    goto :goto_3f

    #@54
    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@56
    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    #@59
    move-result-object v0

    #@5a
    iget-object v2, v1, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    #@5c
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    move-result-object v0

    #@60
    check-cast v0, Ljava/lang/Long;

    #@62
    if-eqz v0, :cond_91

    #@64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@67
    move-result-wide v2

    #@68
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@6b
    move-result-wide v4

    #@6c
    sub-long/2addr v2, v4

    #@6d
    const-wide/32 v4, 0x36ee80

    #@70
    cmp-long v0, v2, v4

    #@72
    if-gez v0, :cond_86

    #@74
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fk:Lcom/google/android/gms/common/images/a;

    #@76
    iget-object v1, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@78
    invoke-static {v1}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    #@7b
    move-result-object v1

    #@7c
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@7e
    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->c(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/gw;

    #@81
    move-result-object v2

    #@82
    invoke-virtual {v0, v1, v2, v6}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/gw;Z)V

    #@85
    goto :goto_3f

    #@86
    :cond_86
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@88
    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->d(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    #@8b
    move-result-object v0

    #@8c
    iget-object v2, v1, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    #@8e
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@91
    :cond_91
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fk:Lcom/google/android/gms/common/images/a;

    #@93
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@95
    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;

    #@98
    move-result-object v2

    #@99
    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@9b
    invoke-static {v3}, Lcom/google/android/gms/common/images/ImageManager;->c(Lcom/google/android/gms/common/images/ImageManager;)Lcom/google/android/gms/internal/gw;

    #@9e
    move-result-object v3

    #@9f
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/gw;)V

    #@a2
    iget-object v0, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@a4
    invoke-static {v0}, Lcom/google/android/gms/common/images/ImageManager;->e(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    #@a7
    move-result-object v0

    #@a8
    iget-object v2, v1, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    #@aa
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    move-result-object v0

    #@ae
    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    #@b0
    if-nez v0, :cond_c6

    #@b2
    new-instance v0, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    #@b4
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@b6
    iget-object v3, v1, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    #@b8
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;-><init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;)V

    #@bb
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@bd
    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->e(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    #@c0
    move-result-object v2

    #@c1
    iget-object v3, v1, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    #@c3
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c6
    :cond_c6
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fk:Lcom/google/android/gms/common/images/a;

    #@c8
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->b(Lcom/google/android/gms/common/images/a;)V

    #@cb
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fk:Lcom/google/android/gms/common/images/a;

    #@cd
    instance-of v2, v2, Lcom/google/android/gms/common/images/a$c;

    #@cf
    if-nez v2, :cond_dc

    #@d1
    iget-object v2, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fi:Lcom/google/android/gms/common/images/ImageManager;

    #@d3
    invoke-static {v2}, Lcom/google/android/gms/common/images/ImageManager;->a(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;

    #@d6
    move-result-object v2

    #@d7
    iget-object v3, p0, Lcom/google/android/gms/common/images/ImageManager$d;->Fk:Lcom/google/android/gms/common/images/a;

    #@d9
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@dc
    :cond_dc
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->fd()Ljava/lang/Object;

    #@df
    move-result-object v2

    #@e0
    monitor-enter v2

    #@e1
    :try_start_e1
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->fe()Ljava/util/HashSet;

    #@e4
    move-result-object v3

    #@e5
    iget-object v4, v1, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    #@e7
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@ea
    move-result v3

    #@eb
    if-nez v3, :cond_f9

    #@ed
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->fe()Ljava/util/HashSet;

    #@f0
    move-result-object v3

    #@f1
    iget-object v1, v1, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    #@f3
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@f6
    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->ff()V

    #@f9
    :cond_f9
    monitor-exit v2

    #@fa
    goto/16 :goto_3f

    #@fc
    :catchall_fc
    move-exception v0

    #@fd
    monitor-exit v2
    :try_end_fe
    .catchall {:try_start_e1 .. :try_end_fe} :catchall_fc

    #@fe
    throw v0
.end method
