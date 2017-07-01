.class public abstract Lcom/google/android/gms/internal/hb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$a;
.implements Lcom/google/android/gms/internal/hc$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/hb$a;,
        Lcom/google/android/gms/internal/hb$b;,
        Lcom/google/android/gms/internal/hb$c;,
        Lcom/google/android/gms/internal/hb$d;,
        Lcom/google/android/gms/internal/hb$e;,
        Lcom/google/android/gms/internal/hb$f;,
        Lcom/google/android/gms/internal/hb$g;,
        Lcom/google/android/gms/internal/hb$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$a;",
        "Lcom/google/android/gms/internal/hc$b;"
    }
.end annotation


# static fields
.field public static final Gh:[Ljava/lang/String;


# instance fields
.field private final DF:Landroid/os/Looper;

.field private final DS:Lcom/google/android/gms/internal/hc;

.field private Gb:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final Gc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/hb",
            "<TT;>.b<*>;>;"
        }
    .end annotation
.end field

.field private Gd:Lcom/google/android/gms/internal/hb$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hb",
            "<TT;>.f;"
        }
    .end annotation
.end field

.field private volatile Ge:I

.field private final Gf:[Ljava/lang/String;

.field Gg:Z

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    const-string v2, "service_esmobile"

    #@6
    aput-object v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    const-string v2, "service_googleme"

    #@b
    aput-object v2, v0, v1

    #@d
    sput-object v0, Lcom/google/android/gms/internal/hb;->Gh:[Ljava/lang/String;

    #@f
    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/hb;->Gc:Ljava/util/ArrayList;

    #@a
    const/4 v0, 0x1

    #@b
    iput v0, p0, Lcom/google/android/gms/internal/hb;->Ge:I

    #@d
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/google/android/gms/internal/hb;->Gg:Z

    #@10
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/content/Context;

    #@16
    iput-object v0, p0, Lcom/google/android/gms/internal/hb;->mContext:Landroid/content/Context;

    #@18
    const-string v0, "Looper must not be null"

    #@1a
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/os/Looper;

    #@20
    iput-object v0, p0, Lcom/google/android/gms/internal/hb;->DF:Landroid/os/Looper;

    #@22
    new-instance v0, Lcom/google/android/gms/internal/hc;

    #@24
    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/hc;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/hc$b;)V

    #@27
    iput-object v0, p0, Lcom/google/android/gms/internal/hb;->DS:Lcom/google/android/gms/internal/hc;

    #@29
    new-instance v0, Lcom/google/android/gms/internal/hb$a;

    #@2b
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/hb$a;-><init>(Lcom/google/android/gms/internal/hb;Landroid/os/Looper;)V

    #@2e
    iput-object v0, p0, Lcom/google/android/gms/internal/hb;->mHandler:Landroid/os/Handler;

    #@30
    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/hb;->b([Ljava/lang/String;)V

    #@33
    iput-object p5, p0, Lcom/google/android/gms/internal/hb;->Gf:[Ljava/lang/String;

    #@35
    invoke-static {p3}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    #@3b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hb;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    #@3e
    invoke-static {p4}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    #@44
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hb;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    #@47
    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v2

    #@4
    new-instance v3, Lcom/google/android/gms/internal/hb$c;

    #@6
    invoke-direct {v3, p2}, Lcom/google/android/gms/internal/hb$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    #@9
    new-instance v4, Lcom/google/android/gms/internal/hb$g;

    #@b
    invoke-direct {v4, p3}, Lcom/google/android/gms/internal/hb$g;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    #@e
    move-object v0, p0

    #@f
    move-object v1, p1

    #@10
    move-object v5, p4

    #@11
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    #@14
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/hb;Landroid/os/IInterface;)Landroid/os/IInterface;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/hb;->Gb:Landroid/os/IInterface;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/hb;Lcom/google/android/gms/internal/hb$f;)Lcom/google/android/gms/internal/hb$f;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/hb;->Gd:Lcom/google/android/gms/internal/hb$f;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/hb;)Lcom/google/android/gms/internal/hc;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->DS:Lcom/google/android/gms/internal/hc;

    #@2
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/hb;I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/hb;->am(I)V

    #@3
    return-void
.end method

.method private am(I)V
    .registers 4

    #@0
    const/4 v1, 0x3

    #@1
    iget v0, p0, Lcom/google/android/gms/internal/hb;->Ge:I

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/hb;->Ge:I

    #@5
    if-eq v0, p1, :cond_c

    #@7
    if-ne p1, v1, :cond_d

    #@9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hb;->onConnected()V

    #@c
    :cond_c
    :goto_c
    return-void

    #@d
    :cond_d
    if-ne v0, v1, :cond_c

    #@f
    const/4 v0, 0x1

    #@10
    if-ne p1, v0, :cond_c

    #@12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hb;->onDisconnected()V

    #@15
    goto :goto_c
.end method

.method static synthetic b(Lcom/google/android/gms/internal/hb;)Ljava/util/ArrayList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->Gc:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/hb;)Landroid/os/IInterface;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->Gb:Landroid/os/IInterface;

    #@2
    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/hb;)Lcom/google/android/gms/internal/hb$f;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->Gd:Lcom/google/android/gms/internal/hb$f;

    #@2
    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/hb;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method


# virtual methods
.method protected final I(Landroid/os/IBinder;)V
    .registers 4

    #@0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/hi$a;->L(Landroid/os/IBinder;)Lcom/google/android/gms/internal/hi;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/google/android/gms/internal/hb$e;

    #@6
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/hb$e;-><init>(Lcom/google/android/gms/internal/hb;)V

    #@9
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/hb;->a(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hb$e;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    #@c
    :goto_c
    return-void

    #@d
    :catch_d
    move-exception v0

    #@e
    const-string v0, "GmsClient"

    #@10
    const-string v1, "service died"

    #@12
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    goto :goto_c
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 8

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/hb;->mHandler:Landroid/os/Handler;

    #@4
    const/4 v2, 0x1

    #@5
    new-instance v3, Lcom/google/android/gms/internal/hb$h;

    #@7
    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gms/internal/hb$h;-><init>(Lcom/google/android/gms/internal/hb;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    #@a
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@11
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/hb$b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hb",
            "<TT;>.b<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/hb;->Gc:Ljava/util/ArrayList;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->Gc:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->mHandler:Landroid/os/Handler;

    #@b
    iget-object v1, p0, Lcom/google/android/gms/internal/hb;->mHandler:Landroid/os/Handler;

    #@d
    const/4 v2, 0x2

    #@e
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@15
    return-void

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

.method protected abstract a(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hb$e;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public an(I)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->mHandler:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/hb;->mHandler:Landroid/os/Handler;

    #@4
    const/4 v2, 0x4

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@10
    return-void
.end method

.method protected varargs b([Ljava/lang/String;)V
    .registers 2

    #@0
    return-void
.end method

.method protected abstract bu()Ljava/lang/String;
.end method

.method protected abstract bv()Ljava/lang/String;
.end method

.method protected final cn()V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hb;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    return-void
.end method

.method public connect()V
    .registers 5

    #@0
    const/4 v3, 0x3

    #@1
    const/4 v1, 0x1

    #@2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/hb;->Gg:Z

    #@4
    const/4 v0, 0x2

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hb;->am(I)V

    #@8
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->mContext:Landroid/content/Context;

    #@a
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_23

    #@10
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/hb;->am(I)V

    #@13
    iget-object v1, p0, Lcom/google/android/gms/internal/hb;->mHandler:Landroid/os/Handler;

    #@15
    iget-object v2, p0, Lcom/google/android/gms/internal/hb;->mHandler:Landroid/os/Handler;

    #@17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@22
    :cond_22
    :goto_22
    return-void

    #@23
    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->Gd:Lcom/google/android/gms/internal/hb$f;

    #@25
    if-eqz v0, :cond_40

    #@27
    const-string v0, "GmsClient"

    #@29
    const-string v1, "Calling connect() while still connected, missing disconnect()."

    #@2b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    const/4 v0, 0x0

    #@2f
    iput-object v0, p0, Lcom/google/android/gms/internal/hb;->Gb:Landroid/os/IInterface;

    #@31
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->mContext:Landroid/content/Context;

    #@33
    invoke-static {v0}, Lcom/google/android/gms/internal/hd;->E(Landroid/content/Context;)Lcom/google/android/gms/internal/hd;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hb;->bu()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    iget-object v2, p0, Lcom/google/android/gms/internal/hb;->Gd:Lcom/google/android/gms/internal/hb$f;

    #@3d
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->b(Ljava/lang/String;Lcom/google/android/gms/internal/hb$f;)V

    #@40
    :cond_40
    new-instance v0, Lcom/google/android/gms/internal/hb$f;

    #@42
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/hb$f;-><init>(Lcom/google/android/gms/internal/hb;)V

    #@45
    iput-object v0, p0, Lcom/google/android/gms/internal/hb;->Gd:Lcom/google/android/gms/internal/hb$f;

    #@47
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->mContext:Landroid/content/Context;

    #@49
    invoke-static {v0}, Lcom/google/android/gms/internal/hd;->E(Landroid/content/Context;)Lcom/google/android/gms/internal/hd;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hb;->bu()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    iget-object v2, p0, Lcom/google/android/gms/internal/hb;->Gd:Lcom/google/android/gms/internal/hb$f;

    #@53
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->a(Ljava/lang/String;Lcom/google/android/gms/internal/hb$f;)Z

    #@56
    move-result v0

    #@57
    if-nez v0, :cond_22

    #@59
    const-string v0, "GmsClient"

    #@5b
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string v2, "unable to connect to service: "

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hb;->bu()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v1

    #@72
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->mHandler:Landroid/os/Handler;

    #@77
    iget-object v1, p0, Lcom/google/android/gms/internal/hb;->mHandler:Landroid/os/Handler;

    #@79
    const/16 v2, 0x9

    #@7b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@86
    goto :goto_22
.end method

.method public disconnect()V
    .registers 6

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/hb;->Gg:Z

    #@4
    iget-object v2, p0, Lcom/google/android/gms/internal/hb;->Gc:Ljava/util/ArrayList;

    #@6
    monitor-enter v2

    #@7
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/hb;->Gc:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v3

    #@d
    move v1, v0

    #@e
    :goto_e
    if-ge v1, v3, :cond_1f

    #@10
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->Gc:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/google/android/gms/internal/hb$b;

    #@18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hb$b;->fw()V

    #@1b
    add-int/lit8 v0, v1, 0x1

    #@1d
    move v1, v0

    #@1e
    goto :goto_e

    #@1f
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->Gc:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_41

    #@25
    const/4 v0, 0x1

    #@26
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/hb;->am(I)V

    #@29
    iput-object v4, p0, Lcom/google/android/gms/internal/hb;->Gb:Landroid/os/IInterface;

    #@2b
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->Gd:Lcom/google/android/gms/internal/hb$f;

    #@2d
    if-eqz v0, :cond_40

    #@2f
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->mContext:Landroid/content/Context;

    #@31
    invoke-static {v0}, Lcom/google/android/gms/internal/hd;->E(Landroid/content/Context;)Lcom/google/android/gms/internal/hd;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hb;->bu()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    iget-object v2, p0, Lcom/google/android/gms/internal/hb;->Gd:Lcom/google/android/gms/internal/hb$f;

    #@3b
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hd;->b(Ljava/lang/String;Lcom/google/android/gms/internal/hb$f;)V

    #@3e
    iput-object v4, p0, Lcom/google/android/gms/internal/hb;->Gd:Lcom/google/android/gms/internal/hb$f;

    #@40
    :cond_40
    return-void

    #@41
    :catchall_41
    move-exception v0

    #@42
    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    #@43
    throw v0
.end method

.method public eO()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/hb;->Gg:Z

    #@2
    return v0
.end method

.method public ef()Landroid/os/Bundle;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final fs()[Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->Gf:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final ft()Landroid/os/IInterface;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hb;->cn()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->Gb:Landroid/os/IInterface;

    #@5
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->DF:Landroid/os/Looper;

    #@2
    return-object v0
.end method

.method public isConnected()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/hb;->Ge:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    goto :goto_6
.end method

.method public isConnecting()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/hb;->Ge:I

    #@2
    const/4 v1, 0x2

    #@3
    if-ne v0, v1, :cond_7

    #@5
    const/4 v0, 0x1

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    goto :goto_6
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->DS:Lcom/google/android/gms/internal/hc;

    #@2
    new-instance v1, Lcom/google/android/gms/internal/hb$c;

    #@4
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/hb$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hc;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->DS:Lcom/google/android/gms/internal/hc;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected onConnected()V
    .registers 1

    #@0
    return-void
.end method

.method protected onDisconnected()V
    .registers 1

    #@0
    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->DS:Lcom/google/android/gms/internal/hc;

    #@2
    new-instance v1, Lcom/google/android/gms/internal/hb$c;

    #@4
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/hb$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hc;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    #@a
    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->DS:Lcom/google/android/gms/internal/hc;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    #@5
    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->DS:Lcom/google/android/gms/internal/hc;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    #@5
    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->DS:Lcom/google/android/gms/internal/hc;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    #@5
    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->DS:Lcom/google/android/gms/internal/hc;

    #@2
    new-instance v1, Lcom/google/android/gms/internal/hb$c;

    #@4
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/hb$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hc;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    #@a
    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb;->DS:Lcom/google/android/gms/internal/hc;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    #@5
    return-void
.end method

.method protected abstract x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method
