.class public abstract Lcom/google/android/gms/wearable/WearableListenerService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/android/gms/wearable/DataApi$DataListener;
.implements Lcom/google/android/gms/wearable/MessageApi$MessageListener;
.implements Lcom/google/android/gms/wearable/NodeApi$NodeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/WearableListenerService$a;
    }
.end annotation


# static fields
.field public static final BIND_LISTENER_INTENT_ACTION:Ljava/lang/String; = "com.google.android.gms.wearable.BIND_LISTENER"


# instance fields
.field private GC:Landroid/os/IBinder;

.field private volatile alq:I

.field private alr:Landroid/os/Handler;

.field private als:Ljava/lang/Object;

.field private alt:Z

.field private xQ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alq:I

    #@6
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->als:Ljava/lang/Object;

    #@d
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->xQ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/wearable/WearableListenerService;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->nn()V

    #@3
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->als:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/wearable/WearableListenerService;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alt:Z

    #@2
    return v0
.end method

.method static synthetic e(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/os/Handler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alr:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method private ed(I)Z
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v0

    #@5
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    if-eqz v2, :cond_1a

    #@b
    move v0, v1

    #@c
    :goto_c
    array-length v3, v2

    #@d
    if-ge v0, v3, :cond_1a

    #@f
    const-string v3, "com.google.android.gms"

    #@11
    aget-object v4, v2, v0

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1b

    #@19
    const/4 v1, 0x1

    #@1a
    :cond_1a
    return v1

    #@1b
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_c
.end method

.method private nn()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alq:I

    #@6
    if-ne v0, v1, :cond_9

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->getPackageManager()Landroid/content/pm/PackageManager;

    #@c
    move-result-object v1

    #@d
    const-string v2, "com.google.android.gms"

    #@f
    invoke-static {v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1e

    #@15
    invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/WearableListenerService;->ed(I)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1e

    #@1b
    iput v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alq:I

    #@1d
    goto :goto_8

    #@1e
    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    #@20
    const-string v1, "Caller is not GooglePlayServices"

    #@22
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    #@0
    const-string v0, "com.google.android.gms.wearable.BIND_LISTENER"

    #@2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_f

    #@c
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->GC:Landroid/os/IBinder;

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    goto :goto_e
.end method

.method public onCreate()V
    .registers 4

    #@0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #@3
    const-string v0, "WearableLS"

    #@5
    const/4 v1, 0x3

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_28

    #@c
    const-string v0, "WearableLS"

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v2, "onCreate: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->getPackageName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    :cond_28
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/WearableListenerService;->getPackageName()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->xQ:Ljava/lang/String;

    #@2e
    new-instance v0, Landroid/os/HandlerThread;

    #@30
    const-string v1, "WearableListenerService"

    #@32
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@35
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@38
    new-instance v1, Landroid/os/Handler;

    #@3a
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@3d
    move-result-object v0

    #@3e
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@41
    iput-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alr:Landroid/os/Handler;

    #@43
    new-instance v0, Lcom/google/android/gms/wearable/WearableListenerService$a;

    #@45
    const/4 v1, 0x0

    #@46
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wearable/WearableListenerService$a;-><init>(Lcom/google/android/gms/wearable/WearableListenerService;Lcom/google/android/gms/wearable/WearableListenerService$1;)V

    #@49
    iput-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->GC:Landroid/os/IBinder;

    #@4b
    return-void
.end method

.method public onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    .registers 2

    #@0
    return-void
.end method

.method public onDestroy()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/wearable/WearableListenerService;->als:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    const/4 v0, 0x1

    #@4
    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alt:Z

    #@6
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService;->alr:Landroid/os/Handler;

    #@8
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    #@f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    #@10
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    #@13
    return-void

    #@14
    :catchall_14
    move-exception v0

    #@15
    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    #@16
    throw v0
.end method

.method public onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V
    .registers 2

    #@0
    return-void
.end method

.method public onPeerConnected(Lcom/google/android/gms/wearable/Node;)V
    .registers 2

    #@0
    return-void
.end method

.method public onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V
    .registers 2

    #@0
    return-void
.end method
