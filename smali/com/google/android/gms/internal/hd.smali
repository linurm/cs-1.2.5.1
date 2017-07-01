.class public final Lcom/google/android/gms/internal/hd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hd$a;,
        Lcom/google/android/gms/internal/hd$a$a;
    }
.end annotation


# static fields
.field private static final Gv:Ljava/lang/Object;

.field private static Gw:Lcom/google/android/gms/internal/hd;


# instance fields
.field private final Gx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hd$a;",
            ">;"
        }
    .end annotation
.end field

.field private final lz:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/hd;->Gv:Ljava/lang/Object;

    #@7
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@c
    iput-object v0, p0, Lcom/google/android/gms/internal/hd;->mHandler:Landroid/os/Handler;

    #@e
    new-instance v0, Ljava/util/HashMap;

    #@10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@13
    iput-object v0, p0, Lcom/google/android/gms/internal/hd;->Gx:Ljava/util/HashMap;

    #@15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/google/android/gms/internal/hd;->lz:Landroid/content/Context;

    #@1b
    return-void
.end method

.method public static E(Landroid/content/Context;)Lcom/google/android/gms/internal/hd;
    .registers 4

    #@0
    sget-object v1, Lcom/google/android/gms/internal/hd;->Gv:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/hd;->Gw:Lcom/google/android/gms/internal/hd;

    #@5
    if-nez v0, :cond_12

    #@7
    new-instance v0, Lcom/google/android/gms/internal/hd;

    #@9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/hd;-><init>(Landroid/content/Context;)V

    #@10
    sput-object v0, Lcom/google/android/gms/internal/hd;->Gw:Lcom/google/android/gms/internal/hd;

    #@12
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    #@13
    sget-object v0, Lcom/google/android/gms/internal/hd;->Gw:Lcom/google/android/gms/internal/hd;

    #@15
    return-object v0

    #@16
    :catchall_16
    move-exception v0

    #@17
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    #@18
    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/hd;)Ljava/util/HashMap;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->Gx:Ljava/util/HashMap;

    #@2
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/hb$f;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hb",
            "<*>.f;)Z"
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/hd;->Gx:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->Gx:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/internal/hd$a;

    #@b
    if-nez v0, :cond_3a

    #@d
    new-instance v0, Lcom/google/android/gms/internal/hd$a;

    #@f
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/hd$a;-><init>(Lcom/google/android/gms/internal/hd;Ljava/lang/String;)V

    #@12
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/hd$a;->a(Lcom/google/android/gms/internal/hb$f;)V

    #@15
    new-instance v2, Landroid/content/Intent;

    #@17
    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1a
    const-string v3, "com.google.android.gms"

    #@1c
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@1f
    move-result-object v2

    #@20
    iget-object v3, p0, Lcom/google/android/gms/internal/hd;->lz:Landroid/content/Context;

    #@22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hd$a;->fx()Lcom/google/android/gms/internal/hd$a$a;

    #@25
    move-result-object v4

    #@26
    const/16 v5, 0x81

    #@28
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@2b
    move-result v2

    #@2c
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hd$a;->B(Z)V

    #@2f
    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->Gx:Ljava/util/HashMap;

    #@31
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    :goto_34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hd$a;->isBound()Z

    #@37
    move-result v0

    #@38
    monitor-exit v1

    #@39
    return v0

    #@3a
    :cond_3a
    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->mHandler:Landroid/os/Handler;

    #@3c
    const/4 v3, 0x0

    #@3d
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@40
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/hd$a;->c(Lcom/google/android/gms/internal/hb$f;)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_62

    #@46
    new-instance v0, Ljava/lang/IllegalStateException;

    #@48
    new-instance v2, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string v3, "Trying to bind a GmsServiceConnection that was already connected before.  startServiceAction="

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v0

    #@5f
    :catchall_5f
    move-exception v0

    #@60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    #@61
    throw v0

    #@62
    :cond_62
    :try_start_62
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/hd$a;->a(Lcom/google/android/gms/internal/hb$f;)V

    #@65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hd$a;->getState()I

    #@68
    move-result v2

    #@69
    packed-switch v2, :pswitch_data_94

    #@6c
    goto :goto_34

    #@6d
    :pswitch_6d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hd$a;->getComponentName()Landroid/content/ComponentName;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hd$a;->getBinder()Landroid/os/IBinder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/hb$f;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    #@78
    goto :goto_34

    #@79
    :pswitch_79
    new-instance v2, Landroid/content/Intent;

    #@7b
    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7e
    const-string v3, "com.google.android.gms"

    #@80
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@83
    move-result-object v2

    #@84
    iget-object v3, p0, Lcom/google/android/gms/internal/hd;->lz:Landroid/content/Context;

    #@86
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hd$a;->fx()Lcom/google/android/gms/internal/hd$a$a;

    #@89
    move-result-object v4

    #@8a
    const/16 v5, 0x81

    #@8c
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@8f
    move-result v2

    #@90
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/hd$a;->B(Z)V
    :try_end_93
    .catchall {:try_start_62 .. :try_end_93} :catchall_5f

    #@93
    goto :goto_34

    #@94
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_79
    .end packed-switch
.end method

.method public b(Ljava/lang/String;Lcom/google/android/gms/internal/hb$f;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/hb",
            "<*>.f;)V"
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/hd;->Gx:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/hd;->Gx:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/internal/hd$a;

    #@b
    if-nez v0, :cond_29

    #@d
    new-instance v0, Ljava/lang/IllegalStateException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string v3, "Nonexistent connection status for service action: "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    :catchall_26
    move-exception v0

    #@27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    #@28
    throw v0

    #@29
    :cond_29
    :try_start_29
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/hd$a;->c(Lcom/google/android/gms/internal/hb$f;)Z

    #@2c
    move-result v2

    #@2d
    if-nez v2, :cond_48

    #@2f
    new-instance v0, Ljava/lang/IllegalStateException;

    #@31
    new-instance v2, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string v3, "Trying to unbind a GmsServiceConnection  that was not bound before.  startServiceAction="

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@47
    throw v0

    #@48
    :cond_48
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/hd$a;->b(Lcom/google/android/gms/internal/hb$f;)V

    #@4b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hd$a;->fz()Z

    #@4e
    move-result v2

    #@4f
    if-eqz v2, :cond_5f

    #@51
    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->mHandler:Landroid/os/Handler;

    #@53
    const/4 v3, 0x0

    #@54
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@57
    move-result-object v0

    #@58
    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->mHandler:Landroid/os/Handler;

    #@5a
    const-wide/16 v4, 0x1388

    #@5c
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@5f
    :cond_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_29 .. :try_end_60} :catchall_26

    #@60
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    #@0
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_2c

    #@5
    const/4 v0, 0x0

    #@6
    :goto_6
    return v0

    #@7
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@9
    check-cast v0, Lcom/google/android/gms/internal/hd$a;

    #@b
    iget-object v1, p0, Lcom/google/android/gms/internal/hd;->Gx:Ljava/util/HashMap;

    #@d
    monitor-enter v1

    #@e
    :try_start_e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hd$a;->fz()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_26

    #@14
    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->lz:Landroid/content/Context;

    #@16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hd$a;->fx()Lcom/google/android/gms/internal/hd$a$a;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@1d
    iget-object v2, p0, Lcom/google/android/gms/internal/hd;->Gx:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hd$a;->fy()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    :cond_26
    monitor-exit v1

    #@27
    const/4 v0, 0x1

    #@28
    goto :goto_6

    #@29
    :catchall_29
    move-exception v0

    #@2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_29

    #@2b
    throw v0

    #@2c
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method
