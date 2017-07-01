.class public Lcom/google/android/gms/internal/hd$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hd$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic GF:Lcom/google/android/gms/internal/hd$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hd$a;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/hd$a$a;->GF:Lcom/google/android/gms/internal/hd$a;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a$a;->GF:Lcom/google/android/gms/internal/hd$a;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/internal/hd$a;->GE:Lcom/google/android/gms/internal/hd;

    #@4
    invoke-static {v0}, Lcom/google/android/gms/internal/hd;->a(Lcom/google/android/gms/internal/hd;)Ljava/util/HashMap;

    #@7
    move-result-object v1

    #@8
    monitor-enter v1

    #@9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a$a;->GF:Lcom/google/android/gms/internal/hd$a;

    #@b
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/hd$a;->a(Lcom/google/android/gms/internal/hd$a;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a$a;->GF:Lcom/google/android/gms/internal/hd$a;

    #@10
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/hd$a;->a(Lcom/google/android/gms/internal/hd$a;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    #@13
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a$a;->GF:Lcom/google/android/gms/internal/hd$a;

    #@15
    invoke-static {v0}, Lcom/google/android/gms/internal/hd$a;->a(Lcom/google/android/gms/internal/hd$a;)Ljava/util/HashSet;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v2

    #@1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_30

    #@23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/google/android/gms/internal/hb$f;

    #@29
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/hb$f;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    #@2c
    goto :goto_1d

    #@2d
    :catchall_2d
    move-exception v0

    #@2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_2d

    #@2f
    throw v0

    #@30
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a$a;->GF:Lcom/google/android/gms/internal/hd$a;

    #@32
    const/4 v2, 0x1

    #@33
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hd$a;->a(Lcom/google/android/gms/internal/hd$a;I)I

    #@36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_2d

    #@37
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a$a;->GF:Lcom/google/android/gms/internal/hd$a;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/internal/hd$a;->GE:Lcom/google/android/gms/internal/hd;

    #@4
    invoke-static {v0}, Lcom/google/android/gms/internal/hd;->a(Lcom/google/android/gms/internal/hd;)Ljava/util/HashMap;

    #@7
    move-result-object v1

    #@8
    monitor-enter v1

    #@9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a$a;->GF:Lcom/google/android/gms/internal/hd$a;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hd$a;->a(Lcom/google/android/gms/internal/hd$a;Landroid/os/IBinder;)Landroid/os/IBinder;

    #@f
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a$a;->GF:Lcom/google/android/gms/internal/hd$a;

    #@11
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/hd$a;->a(Lcom/google/android/gms/internal/hd$a;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    #@14
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a$a;->GF:Lcom/google/android/gms/internal/hd$a;

    #@16
    invoke-static {v0}, Lcom/google/android/gms/internal/hd$a;->a(Lcom/google/android/gms/internal/hd$a;)Ljava/util/HashSet;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v2

    #@1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_31

    #@24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lcom/google/android/gms/internal/hb$f;

    #@2a
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hb$f;->onServiceDisconnected(Landroid/content/ComponentName;)V

    #@2d
    goto :goto_1e

    #@2e
    :catchall_2e
    move-exception v0

    #@2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_2e

    #@30
    throw v0

    #@31
    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/hd$a$a;->GF:Lcom/google/android/gms/internal/hd$a;

    #@33
    const/4 v2, 0x2

    #@34
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hd$a;->a(Lcom/google/android/gms/internal/hd$a;I)I

    #@37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_2e

    #@38
    return-void
.end method
