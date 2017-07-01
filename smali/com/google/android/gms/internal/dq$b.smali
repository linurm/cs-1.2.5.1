.class public final Lcom/google/android/gms/internal/dq$b;
.super Lcom/google/android/gms/internal/dq;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final ls:Ljava/lang/Object;

.field private final pT:Lcom/google/android/gms/internal/dp$a;

.field private final pU:Lcom/google/android/gms/internal/dr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/dp$a;)V
    .registers 6

    #@0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/dq;-><init>(Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/dp$a;)V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/dq$b;->ls:Ljava/lang/Object;

    #@a
    iput-object p3, p0, Lcom/google/android/gms/internal/dq$b;->pT:Lcom/google/android/gms/internal/dp$a;

    #@c
    new-instance v0, Lcom/google/android/gms/internal/dr;

    #@e
    iget-object v1, p2, Lcom/google/android/gms/internal/ds;->kQ:Lcom/google/android/gms/internal/ev;

    #@10
    iget v1, v1, Lcom/google/android/gms/internal/ev;->sy:I

    #@12
    invoke-direct {v0, p1, p0, p0, v1}, Lcom/google/android/gms/internal/dr;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;I)V

    #@15
    iput-object v0, p0, Lcom/google/android/gms/internal/dq$b;->pU:Lcom/google/android/gms/internal/dr;

    #@17
    iget-object v0, p0, Lcom/google/android/gms/internal/dq$b;->pU:Lcom/google/android/gms/internal/dr;

    #@19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dr;->connect()V

    #@1c
    return-void
.end method


# virtual methods
.method public bs()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/dq$b;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dq$b;->pU:Lcom/google/android/gms/internal/dr;

    #@5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dr;->isConnected()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_13

    #@b
    iget-object v0, p0, Lcom/google/android/gms/internal/dq$b;->pU:Lcom/google/android/gms/internal/dr;

    #@d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dr;->isConnecting()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_18

    #@13
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/dq$b;->pU:Lcom/google/android/gms/internal/dr;

    #@15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dr;->disconnect()V

    #@18
    :cond_18
    monitor-exit v1

    #@19
    return-void

    #@1a
    :catchall_1a
    move-exception v0

    #@1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    #@1c
    throw v0
.end method

.method public bt()Lcom/google/android/gms/internal/dw;
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/dq$b;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dq$b;->pU:Lcom/google/android/gms/internal/dr;

    #@5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dr;->bw()Lcom/google/android/gms/internal/dw;
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_f

    #@8
    move-result-object v0

    #@9
    :try_start_9
    monitor-exit v1

    #@a
    :goto_a
    return-object v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const/4 v0, 0x0

    #@d
    monitor-exit v1

    #@e
    goto :goto_a

    #@f
    :catchall_f
    move-exception v0

    #@10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    #@11
    throw v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dq$b;->start()V

    #@3
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dq$b;->pT:Lcom/google/android/gms/internal/dp$a;

    #@2
    new-instance v1, Lcom/google/android/gms/internal/du;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/du;-><init>(I)V

    #@8
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/dp$a;->a(Lcom/google/android/gms/internal/du;)V

    #@b
    return-void
.end method

.method public onDisconnected()V
    .registers 2

    #@0
    const-string v0, "Disconnected from remote ad request service."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    return-void
.end method
