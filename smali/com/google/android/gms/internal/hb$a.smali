.class final Lcom/google/android/gms/internal/hb$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic Gi:Lcom/google/android/gms/internal/hb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hb;Landroid/os/Looper;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/hb$a;->Gi:Lcom/google/android/gms/internal/hb;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v2, 0x1

    #@3
    iget v0, p1, Landroid/os/Message;->what:I

    #@5
    if-ne v0, v2, :cond_1a

    #@7
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$a;->Gi:Lcom/google/android/gms/internal/hb;

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb;->isConnecting()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1a

    #@f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11
    check-cast v0, Lcom/google/android/gms/internal/hb$b;

    #@13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb$b;->fu()V

    #@16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb$b;->unregister()V

    #@19
    :goto_19
    return-void

    #@1a
    :cond_1a
    iget v0, p1, Landroid/os/Message;->what:I

    #@1c
    const/4 v1, 0x3

    #@1d
    if-ne v0, v1, :cond_36

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$a;->Gi:Lcom/google/android/gms/internal/hb;

    #@21
    invoke-static {v0}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;)Lcom/google/android/gms/internal/hc;

    #@24
    move-result-object v1

    #@25
    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    #@27
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@29
    check-cast v0, Ljava/lang/Integer;

    #@2b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2e
    move-result v0

    #@2f
    invoke-direct {v2, v0, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    #@32
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    #@35
    goto :goto_19

    #@36
    :cond_36
    iget v0, p1, Landroid/os/Message;->what:I

    #@38
    const/4 v1, 0x4

    #@39
    if-ne v0, v1, :cond_57

    #@3b
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$a;->Gi:Lcom/google/android/gms/internal/hb;

    #@3d
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;I)V

    #@40
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$a;->Gi:Lcom/google/android/gms/internal/hb;

    #@42
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;Landroid/os/IInterface;)Landroid/os/IInterface;

    #@45
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$a;->Gi:Lcom/google/android/gms/internal/hb;

    #@47
    invoke-static {v0}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hb;)Lcom/google/android/gms/internal/hc;

    #@4a
    move-result-object v1

    #@4b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@4d
    check-cast v0, Ljava/lang/Integer;

    #@4f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@52
    move-result v0

    #@53
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/hc;->ao(I)V

    #@56
    goto :goto_19

    #@57
    :cond_57
    iget v0, p1, Landroid/os/Message;->what:I

    #@59
    if-ne v0, v3, :cond_6e

    #@5b
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$a;->Gi:Lcom/google/android/gms/internal/hb;

    #@5d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb;->isConnected()Z

    #@60
    move-result v0

    #@61
    if-nez v0, :cond_6e

    #@63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@65
    check-cast v0, Lcom/google/android/gms/internal/hb$b;

    #@67
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb$b;->fu()V

    #@6a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb$b;->unregister()V

    #@6d
    goto :goto_19

    #@6e
    :cond_6e
    iget v0, p1, Landroid/os/Message;->what:I

    #@70
    if-eq v0, v3, :cond_76

    #@72
    iget v0, p1, Landroid/os/Message;->what:I

    #@74
    if-ne v0, v2, :cond_7e

    #@76
    :cond_76
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@78
    check-cast v0, Lcom/google/android/gms/internal/hb$b;

    #@7a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb$b;->fv()V

    #@7d
    goto :goto_19

    #@7e
    :cond_7e
    const-string v0, "GmsClient"

    #@80
    const-string v1, "Don\'t know how to handle this message."

    #@82
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    goto :goto_19
.end method
