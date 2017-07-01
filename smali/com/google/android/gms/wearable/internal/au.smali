.class public Lcom/google/android/gms/wearable/internal/au;
.super Lcom/google/android/gms/internal/hb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/internal/au$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/wearable/internal/ad;",
        ">;"
    }
.end annotation


# instance fields
.field private final agU:Ljava/util/concurrent/ExecutorService;

.field private final ame:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            "Lcom/google/android/gms/wearable/internal/av;",
            ">;"
        }
    .end annotation
.end field

.field private final amf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            "Lcom/google/android/gms/wearable/internal/av;",
            ">;"
        }
    .end annotation
.end field

.field private final amg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            "Lcom/google/android/gms/wearable/internal/av;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    new-array v5, v0, [Ljava/lang/String;

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v4, p4

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    #@b
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->agU:Ljava/util/concurrent/ExecutorService;

    #@11
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->ame:Ljava/util/HashMap;

    #@18
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->amf:Ljava/util/HashMap;

    #@1f
    new-instance v0, Ljava/util/HashMap;

    #@21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@24
    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->amg:Ljava/util/HashMap;

    #@26
    return-void
.end method

.method private a(Landroid/os/ParcelFileDescriptor;[B)Ljava/util/concurrent/FutureTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "[B)",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    #@2
    new-instance v1, Lcom/google/android/gms/wearable/internal/au$11;

    #@4
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/wearable/internal/au$11;-><init>(Lcom/google/android/gms/wearable/internal/au;Landroid/os/ParcelFileDescriptor;[B)V

    #@7
    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    #@a
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/wearable/internal/au;)Ljava/util/HashMap;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->ame:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/wearable/internal/au;)Ljava/util/HashMap;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->amf:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/wearable/internal/au;)Ljava/util/HashMap;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->amg:Ljava/util/HashMap;

    #@2
    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 11

    #@0
    const/4 v1, 0x2

    #@1
    const-string v0, "WearableClient"

    #@3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_21

    #@9
    const-string v0, "WearableClient"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v2, "onPostInitHandler: statusCode "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    :cond_21
    if-nez p1, :cond_9f

    #@23
    :try_start_23
    new-instance v1, Lcom/google/android/gms/wearable/internal/au$1;

    #@25
    invoke-direct {v1, p0}, Lcom/google/android/gms/wearable/internal/au$1;-><init>(Lcom/google/android/gms/wearable/internal/au;)V

    #@28
    const-string v0, "WearableClient"

    #@2a
    const/4 v2, 0x2

    #@2b
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_49

    #@31
    new-instance v0, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string v2, "WearableClient"

    #@38
    const-string v3, "onPostInitHandler: service "

    #@3a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@49
    :cond_49
    invoke-static {p2}, Lcom/google/android/gms/wearable/internal/ad$a;->by(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ad;

    #@4c
    move-result-object v2

    #@4d
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->ame:Ljava/util/HashMap;

    #@4f
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@52
    move-result-object v0

    #@53
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@56
    move-result-object v3

    #@57
    :goto_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_aa

    #@5d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Ljava/util/Map$Entry;

    #@63
    const-string v4, "WearableClient"

    #@65
    const/4 v5, 0x2

    #@66
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@69
    move-result v4

    #@6a
    if-eqz v4, :cond_88

    #@6c
    new-instance v4, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@71
    const-string v5, "WearableClient"

    #@73
    const-string v6, "onPostInitHandler: adding Data listener "

    #@75
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@7c
    move-result-object v6

    #@7d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v4

    #@81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v4

    #@85
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    :cond_88
    new-instance v4, Lcom/google/android/gms/wearable/internal/b;

    #@8a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@8d
    move-result-object v0

    #@8e
    check-cast v0, Lcom/google/android/gms/wearable/internal/av;

    #@90
    invoke-direct {v4, v0}, Lcom/google/android/gms/wearable/internal/b;-><init>(Lcom/google/android/gms/wearable/internal/av;)V

    #@93
    invoke-interface {v2, v1, v4}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/internal/b;)V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_96} :catch_97

    #@96
    goto :goto_57

    #@97
    :catch_97
    move-exception v0

    #@98
    const-string v1, "WearableClient"

    #@9a
    const-string v2, "WearableClientImpl.onPostInitHandler: error while adding listener"

    #@9c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9f
    :cond_9f
    const-string v0, "WearableClient"

    #@a1
    const-string v1, "WearableClientImpl.onPostInitHandler: done"

    #@a3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a6
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/hb;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    #@a9
    return-void

    #@aa
    :cond_aa
    :try_start_aa
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->amf:Ljava/util/HashMap;

    #@ac
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@af
    move-result-object v0

    #@b0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@b3
    move-result-object v3

    #@b4
    :goto_b4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@b7
    move-result v0

    #@b8
    if-eqz v0, :cond_f4

    #@ba
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@bd
    move-result-object v0

    #@be
    check-cast v0, Ljava/util/Map$Entry;

    #@c0
    const-string v4, "WearableClient"

    #@c2
    const/4 v5, 0x2

    #@c3
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c6
    move-result v4

    #@c7
    if-eqz v4, :cond_e5

    #@c9
    new-instance v4, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    const-string v5, "WearableClient"

    #@d0
    const-string v6, "onPostInitHandler: adding Message listener "

    #@d2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v4

    #@d6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@d9
    move-result-object v6

    #@da
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v4

    #@de
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v4

    #@e2
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e5
    :cond_e5
    new-instance v4, Lcom/google/android/gms/wearable/internal/b;

    #@e7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@ea
    move-result-object v0

    #@eb
    check-cast v0, Lcom/google/android/gms/wearable/internal/av;

    #@ed
    invoke-direct {v4, v0}, Lcom/google/android/gms/wearable/internal/b;-><init>(Lcom/google/android/gms/wearable/internal/av;)V

    #@f0
    invoke-interface {v2, v1, v4}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/internal/b;)V

    #@f3
    goto :goto_b4

    #@f4
    :cond_f4
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->amg:Ljava/util/HashMap;

    #@f6
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@f9
    move-result-object v0

    #@fa
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@fd
    move-result-object v3

    #@fe
    :goto_fe
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@101
    move-result v0

    #@102
    if-eqz v0, :cond_9f

    #@104
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@107
    move-result-object v0

    #@108
    check-cast v0, Ljava/util/Map$Entry;

    #@10a
    const-string v4, "WearableClient"

    #@10c
    const/4 v5, 0x2

    #@10d
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@110
    move-result v4

    #@111
    if-eqz v4, :cond_12f

    #@113
    new-instance v4, Ljava/lang/StringBuilder;

    #@115
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@118
    const-string v5, "WearableClient"

    #@11a
    const-string v6, "onPostInitHandler: adding Node listener "

    #@11c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v4

    #@120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@123
    move-result-object v6

    #@124
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v4

    #@128
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12b
    move-result-object v4

    #@12c
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12f
    :cond_12f
    new-instance v4, Lcom/google/android/gms/wearable/internal/b;

    #@131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@134
    move-result-object v0

    #@135
    check-cast v0, Lcom/google/android/gms/wearable/internal/av;

    #@137
    invoke-direct {v4, v0}, Lcom/google/android/gms/wearable/internal/b;-><init>(Lcom/google/android/gms/wearable/internal/av;)V

    #@13a
    invoke-interface {v2, v1, v4}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/internal/b;)V
    :try_end_13d
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_13d} :catch_97

    #@13d
    goto :goto_fe
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Landroid/net/Uri;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataItemResult;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/wearable/internal/ad;

    #@6
    new-instance v1, Lcom/google/android/gms/wearable/internal/au$12;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/internal/au$12;-><init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/ab;Landroid/net/Uri;)V

    #@e
    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/Asset;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;",
            ">;",
            "Lcom/google/android/gms/wearable/Asset;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/wearable/internal/ad;

    #@6
    new-instance v1, Lcom/google/android/gms/wearable/internal/au$4;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/internal/au$4;-><init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/Asset;)V

    #@e
    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/DataApi$DataListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/au;->ame:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->ame:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/wearable/internal/ac;

    #@b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    #@c
    if-nez v0, :cond_1c

    #@e
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@10
    const/16 v1, 0xfa2

    #@12
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@15
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@18
    :goto_18
    return-void

    #@19
    :catchall_19
    move-exception v0

    #@1a
    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    #@1b
    throw v0

    #@1c
    :cond_1c
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/au;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/internal/ac;)V

    #@1f
    goto :goto_18
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/DataApi$DataListener;[Landroid/content/IntentFilter;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/DataApi$DataListener;",
            "[",
            "Landroid/content/IntentFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {p2, p3}, Lcom/google/android/gms/wearable/internal/av;->a(Lcom/google/android/gms/wearable/DataApi$DataListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/av;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/au;->ame:Ljava/util/HashMap;

    #@6
    monitor-enter v2

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->ame:Ljava/util/HashMap;

    #@9
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_1b

    #@f
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@11
    const/16 v1, 0xfa1

    #@13
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@16
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@19
    monitor-exit v2

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->ame:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_35

    #@21
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au;->ft()Landroid/os/IInterface;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/google/android/gms/wearable/internal/ad;

    #@27
    new-instance v2, Lcom/google/android/gms/wearable/internal/au$7;

    #@29
    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/gms/wearable/internal/au$7;-><init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/wearable/DataApi$DataListener;Lcom/google/android/gms/common/api/a$d;)V

    #@2c
    new-instance v3, Lcom/google/android/gms/wearable/internal/b;

    #@2e
    invoke-direct {v3, v1}, Lcom/google/android/gms/wearable/internal/b;-><init>(Lcom/google/android/gms/wearable/internal/av;)V

    #@31
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/internal/b;)V

    #@34
    goto :goto_1a

    #@35
    :catchall_35
    move-exception v0

    #@36
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    #@37
    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/DataItemAsset;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$GetFdForAssetResult;",
            ">;",
            "Lcom/google/android/gms/wearable/DataItemAsset;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-interface {p2}, Lcom/google/android/gms/wearable/DataItemAsset;->getId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/wearable/Asset;->createFromRef(Ljava/lang/String;)Lcom/google/android/gms/wearable/Asset;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/au;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/Asset;)V

    #@b
    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/MessageApi$MessageListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/au;->amf:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->amf:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/wearable/internal/ac;

    #@b
    if-nez v0, :cond_19

    #@d
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@f
    const/16 v2, 0xfa2

    #@11
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@14
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@17
    :goto_17
    monitor-exit v1

    #@18
    return-void

    #@19
    :cond_19
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/au;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/internal/ac;)V

    #@1c
    goto :goto_17

    #@1d
    :catchall_1d
    move-exception v0

    #@1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    #@1f
    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
            "[",
            "Landroid/content/IntentFilter;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {p2, p3}, Lcom/google/android/gms/wearable/internal/av;->a(Lcom/google/android/gms/wearable/MessageApi$MessageListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/wearable/internal/av;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/au;->amf:Ljava/util/HashMap;

    #@6
    monitor-enter v2

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->amf:Ljava/util/HashMap;

    #@9
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_1b

    #@f
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@11
    const/16 v1, 0xfa1

    #@13
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@16
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@19
    monitor-exit v2

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->amf:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_35

    #@21
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au;->ft()Landroid/os/IInterface;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/google/android/gms/wearable/internal/ad;

    #@27
    new-instance v2, Lcom/google/android/gms/wearable/internal/au$8;

    #@29
    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/gms/wearable/internal/au$8;-><init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/wearable/MessageApi$MessageListener;Lcom/google/android/gms/common/api/a$d;)V

    #@2c
    new-instance v3, Lcom/google/android/gms/wearable/internal/b;

    #@2e
    invoke-direct {v3, v1}, Lcom/google/android/gms/wearable/internal/b;-><init>(Lcom/google/android/gms/wearable/internal/av;)V

    #@31
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/internal/b;)V

    #@34
    goto :goto_1a

    #@35
    :catchall_35
    move-exception v0

    #@36
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    #@37
    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/NodeApi$NodeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {p2}, Lcom/google/android/gms/wearable/internal/av;->a(Lcom/google/android/gms/wearable/NodeApi$NodeListener;)Lcom/google/android/gms/wearable/internal/av;

    #@3
    move-result-object v1

    #@4
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/au;->amg:Ljava/util/HashMap;

    #@6
    monitor-enter v2

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->amg:Ljava/util/HashMap;

    #@9
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_1b

    #@f
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@11
    const/16 v1, 0xfa1

    #@13
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@16
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@19
    monitor-exit v2

    #@1a
    :goto_1a
    return-void

    #@1b
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->amg:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_35

    #@21
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au;->ft()Landroid/os/IInterface;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/google/android/gms/wearable/internal/ad;

    #@27
    new-instance v2, Lcom/google/android/gms/wearable/internal/au$9;

    #@29
    invoke-direct {v2, p0, p2, p1}, Lcom/google/android/gms/wearable/internal/au$9;-><init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/wearable/NodeApi$NodeListener;Lcom/google/android/gms/common/api/a$d;)V

    #@2c
    new-instance v3, Lcom/google/android/gms/wearable/internal/b;

    #@2e
    invoke-direct {v3, v1}, Lcom/google/android/gms/wearable/internal/b;-><init>(Lcom/google/android/gms/wearable/internal/av;)V

    #@31
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/internal/b;)V

    #@34
    goto :goto_1a

    #@35
    :catchall_35
    move-exception v0

    #@36
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    #@37
    throw v0
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/PutDataRequest;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataItemResult;",
            ">;",
            "Lcom/google/android/gms/wearable/PutDataRequest;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getAssets()Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_5f

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/util/Map$Entry;

    #@1a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    #@20
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->getData()[B

    #@23
    move-result-object v2

    #@24
    if-nez v2, :cond_e

    #@26
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->getDigest()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    if-nez v2, :cond_e

    #@2c
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->getFd()Landroid/os/ParcelFileDescriptor;

    #@2f
    move-result-object v2

    #@30
    if-nez v2, :cond_e

    #@32
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/Asset;->getUri()Landroid/net/Uri;

    #@35
    move-result-object v2

    #@36
    if-nez v2, :cond_e

    #@38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@3a
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string v3, "Put for "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getUri()Landroid/net/Uri;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    const-string v3, " contains invalid asset: "

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v1

    #@5f
    :cond_5f
    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getUri()Landroid/net/Uri;

    #@62
    move-result-object v0

    #@63
    invoke-static {v0}, Lcom/google/android/gms/wearable/PutDataRequest;->k(Landroid/net/Uri;)Lcom/google/android/gms/wearable/PutDataRequest;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getData()[B

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {v2, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->setData([B)Lcom/google/android/gms/wearable/PutDataRequest;

    #@6e
    new-instance v3, Ljava/util/ArrayList;

    #@70
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@73
    invoke-virtual {p2}, Lcom/google/android/gms/wearable/PutDataRequest;->getAssets()Ljava/util/Map;

    #@76
    move-result-object v0

    #@77
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@7a
    move-result-object v0

    #@7b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7e
    move-result-object v4

    #@7f
    :goto_7f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@82
    move-result v0

    #@83
    if-eqz v0, :cond_121

    #@85
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@88
    move-result-object v0

    #@89
    check-cast v0, Ljava/util/Map$Entry;

    #@8b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@8e
    move-result-object v1

    #@8f
    check-cast v1, Lcom/google/android/gms/wearable/Asset;

    #@91
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/Asset;->getData()[B

    #@94
    move-result-object v5

    #@95
    if-nez v5, :cond_a7

    #@97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@9a
    move-result-object v1

    #@9b
    check-cast v1, Ljava/lang/String;

    #@9d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@a0
    move-result-object v0

    #@a1
    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    #@a3
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/wearable/PutDataRequest;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;

    #@a6
    goto :goto_7f

    #@a7
    :cond_a7
    :try_start_a7
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_107

    #@aa
    move-result-object v5

    #@ab
    const-string v6, "WearableClient"

    #@ad
    const/4 v7, 0x3

    #@ae
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@b1
    move-result v6

    #@b2
    if-eqz v6, :cond_e4

    #@b4
    const-string v6, "WearableClient"

    #@b6
    new-instance v7, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string v8, "processAssets: replacing data with FD in asset: "

    #@bd
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v7

    #@c1
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v7

    #@c5
    const-string v8, " read:"

    #@c7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v7

    #@cb
    aget-object v8, v5, v9

    #@cd
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v7

    #@d1
    const-string v8, " write:"

    #@d3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v7

    #@d7
    aget-object v8, v5, v10

    #@d9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v7

    #@dd
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v7

    #@e1
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e4
    :cond_e4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e7
    move-result-object v0

    #@e8
    check-cast v0, Ljava/lang/String;

    #@ea
    aget-object v6, v5, v9

    #@ec
    invoke-static {v6}, Lcom/google/android/gms/wearable/Asset;->createFromFd(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/wearable/Asset;

    #@ef
    move-result-object v6

    #@f0
    invoke-virtual {v2, v0, v6}, Lcom/google/android/gms/wearable/PutDataRequest;->putAsset(Ljava/lang/String;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/wearable/PutDataRequest;

    #@f3
    aget-object v0, v5, v10

    #@f5
    invoke-virtual {v1}, Lcom/google/android/gms/wearable/Asset;->getData()[B

    #@f8
    move-result-object v1

    #@f9
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/au;->a(Landroid/os/ParcelFileDescriptor;[B)Ljava/util/concurrent/FutureTask;

    #@fc
    move-result-object v0

    #@fd
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@100
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/au;->agU:Ljava/util/concurrent/ExecutorService;

    #@102
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #@105
    goto/16 :goto_7f

    #@107
    :catch_107
    move-exception v0

    #@108
    new-instance v1, Ljava/lang/IllegalStateException;

    #@10a
    new-instance v2, Ljava/lang/StringBuilder;

    #@10c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10f
    const-string v3, "Unable to create ParcelFileDescriptor for asset in request: "

    #@111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v2

    #@115
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v2

    #@119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v2

    #@11d
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@120
    throw v1

    #@121
    :cond_121
    :try_start_121
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au;->ft()Landroid/os/IInterface;

    #@124
    move-result-object v0

    #@125
    check-cast v0, Lcom/google/android/gms/wearable/internal/ad;

    #@127
    new-instance v1, Lcom/google/android/gms/wearable/internal/au$a;

    #@129
    invoke-direct {v1, p1, v3}, Lcom/google/android/gms/wearable/internal/au$a;-><init>(Lcom/google/android/gms/common/api/a$d;Ljava/util/List;)V

    #@12c
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/PutDataRequest;)V
    :try_end_12f
    .catch Ljava/lang/NullPointerException; {:try_start_121 .. :try_end_12f} :catch_130

    #@12f
    return-void

    #@130
    :catch_130
    move-exception v0

    #@131
    new-instance v1, Ljava/lang/IllegalStateException;

    #@133
    new-instance v2, Ljava/lang/StringBuilder;

    #@135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    const-string v3, "Unable to putDataItem: "

    #@13a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v2

    #@13e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v2

    #@142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@145
    move-result-object v2

    #@146
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@149
    throw v1
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/internal/ac;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/internal/ac;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/wearable/internal/ad;

    #@6
    new-instance v1, Lcom/google/android/gms/wearable/internal/au$10;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/internal/au$10;-><init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    new-instance v2, Lcom/google/android/gms/wearable/internal/ao;

    #@d
    invoke-direct {v2, p2}, Lcom/google/android/gms/wearable/internal/ao;-><init>(Lcom/google/android/gms/wearable/internal/ac;)V

    #@10
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/internal/ao;)V

    #@13
    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/wearable/MessageApi$SendMessageResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/wearable/internal/ad;

    #@6
    new-instance v1, Lcom/google/android/gms/wearable/internal/au$3;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/internal/au$3;-><init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/wearable/internal/ad;->a(Lcom/google/android/gms/wearable/internal/ab;Ljava/lang/String;Ljava/lang/String;[B)V

    #@e
    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hb$e;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const v0, 0x4da6e8

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/hi;->e(Lcom/google/android/gms/internal/hh;ILjava/lang/String;)V

    #@e
    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;Landroid/net/Uri;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/wearable/DataItemBuffer;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/wearable/internal/ad;

    #@6
    new-instance v1, Lcom/google/android/gms/wearable/internal/au$14;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/internal/au$14;-><init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/ad;->b(Lcom/google/android/gms/wearable/internal/ab;Landroid/net/Uri;)V

    #@e
    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/NodeApi$NodeListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/wearable/NodeApi$NodeListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/au;->amg:Ljava/util/HashMap;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->amg:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/wearable/internal/ac;

    #@b
    if-nez v0, :cond_19

    #@d
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@f
    const/16 v2, 0xfa2

    #@11
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@14
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@17
    :goto_17
    monitor-exit v1

    #@18
    return-void

    #@19
    :cond_19
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/au;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/wearable/internal/ac;)V

    #@1c
    goto :goto_17

    #@1d
    :catchall_1d
    move-exception v0

    #@1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    #@1f
    throw v0
.end method

.method protected bu()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.wearable.BIND"

    #@2
    return-object v0
.end method

.method protected bv()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    #@2
    return-object v0
.end method

.method protected bz(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ad;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/ad$a;->by(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ad;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public c(Lcom/google/android/gms/common/api/a$d;Landroid/net/Uri;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DeleteDataItemsResult;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/wearable/internal/ad;

    #@6
    new-instance v1, Lcom/google/android/gms/wearable/internal/au$2;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/internal/au$2;-><init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/wearable/internal/ad;->c(Lcom/google/android/gms/wearable/internal/ab;Landroid/net/Uri;)V

    #@e
    return-void
.end method

.method public disconnect()V
    .registers 2

    #@0
    invoke-super {p0}, Lcom/google/android/gms/internal/hb;->disconnect()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->ame:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@8
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->amf:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au;->amg:Ljava/util/HashMap;

    #@f
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@12
    return-void
.end method

.method public o(Lcom/google/android/gms/common/api/a$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/wearable/DataItemBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/wearable/internal/ad;

    #@6
    new-instance v1, Lcom/google/android/gms/wearable/internal/au$13;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/internal/au$13;-><init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ad;->d(Lcom/google/android/gms/wearable/internal/ab;)V

    #@e
    return-void
.end method

.method public p(Lcom/google/android/gms/common/api/a$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$GetLocalNodeResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/wearable/internal/ad;

    #@6
    new-instance v1, Lcom/google/android/gms/wearable/internal/au$5;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/internal/au$5;-><init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ad;->e(Lcom/google/android/gms/wearable/internal/ab;)V

    #@e
    return-void
.end method

.method public q(Lcom/google/android/gms/common/api/a$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/wearable/NodeApi$GetConnectedNodesResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/internal/au;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/wearable/internal/ad;

    #@6
    new-instance v1, Lcom/google/android/gms/wearable/internal/au$6;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/wearable/internal/au$6;-><init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1}, Lcom/google/android/gms/wearable/internal/ad;->f(Lcom/google/android/gms/wearable/internal/ab;)V

    #@e
    return-void
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/au;->bz(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ad;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
