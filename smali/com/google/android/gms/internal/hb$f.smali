.class final Lcom/google/android/gms/internal/hb$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final synthetic Gi:Lcom/google/android/gms/internal/hb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/hb;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/hb$f;->Gi:Lcom/google/android/gms/internal/hb;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$f;->Gi:Lcom/google/android/gms/internal/hb;

    #@2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/hb;->I(Landroid/os/IBinder;)V

    #@5
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$f;->Gi:Lcom/google/android/gms/internal/hb;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/internal/hb;->mHandler:Landroid/os/Handler;

    #@4
    iget-object v1, p0, Lcom/google/android/gms/internal/hb$f;->Gi:Lcom/google/android/gms/internal/hb;

    #@6
    iget-object v1, v1, Lcom/google/android/gms/internal/hb;->mHandler:Landroid/os/Handler;

    #@8
    const/4 v2, 0x4

    #@9
    const/4 v3, 0x1

    #@a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@15
    return-void
.end method
