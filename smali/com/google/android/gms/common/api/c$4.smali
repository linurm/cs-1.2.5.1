.class Lcom/google/android/gms/common/api/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/api/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Ljava/util/Map;Landroid/support/v4/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ek:Lcom/google/android/gms/common/api/c;

.field final synthetic El:Lcom/google/android/gms/common/api/Api$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/Api$b;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/api/c$4;->Ek:Lcom/google/android/gms/common/api/c;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/common/api/c$4;->El:Lcom/google/android/gms/common/api/Api$b;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$4;->Ek:Lcom/google/android/gms/common/api/c;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$4;->Ek:Lcom/google/android/gms/common/api/c;

    #@b
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->h(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/ConnectionResult;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_1f

    #@11
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$4;->El:Lcom/google/android/gms/common/api/Api$b;

    #@13
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$b;->getPriority()I

    #@16
    move-result v0

    #@17
    iget-object v1, p0, Lcom/google/android/gms/common/api/c$4;->Ek:Lcom/google/android/gms/common/api/c;

    #@19
    invoke-static {v1}, Lcom/google/android/gms/common/api/c;->i(Lcom/google/android/gms/common/api/c;)I

    #@1c
    move-result v1

    #@1d
    if-ge v0, v1, :cond_2f

    #@1f
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$4;->Ek:Lcom/google/android/gms/common/api/c;

    #@21
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;

    #@24
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$4;->Ek:Lcom/google/android/gms/common/api/c;

    #@26
    iget-object v1, p0, Lcom/google/android/gms/common/api/c$4;->El:Lcom/google/android/gms/common/api/Api$b;

    #@28
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$b;->getPriority()I

    #@2b
    move-result v1

    #@2c
    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/c;->c(Lcom/google/android/gms/common/api/c;I)I

    #@2f
    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$4;->Ek:Lcom/google/android/gms/common/api/c;

    #@31
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->d(Lcom/google/android/gms/common/api/c;)V
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_3e

    #@34
    iget-object v0, p0, Lcom/google/android/gms/common/api/c$4;->Ek:Lcom/google/android/gms/common/api/c;

    #@36
    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;

    #@39
    move-result-object v0

    #@3a
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@3d
    return-void

    #@3e
    :catchall_3e
    move-exception v0

    #@3f
    iget-object v1, p0, Lcom/google/android/gms/common/api/c$4;->Ek:Lcom/google/android/gms/common/api/c;

    #@41
    invoke-static {v1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;

    #@44
    move-result-object v1

    #@45
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@48
    throw v0
.end method
