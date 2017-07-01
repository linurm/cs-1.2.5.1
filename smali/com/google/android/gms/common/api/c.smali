.class final Lcom/google/android/gms/common/api/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/c$a;,
        Lcom/google/android/gms/common/api/c$b;,
        Lcom/google/android/gms/common/api/c$c;
    }
.end annotation


# instance fields
.field private final DF:Landroid/os/Looper;

.field private final DQ:Ljava/util/concurrent/locks/Lock;

.field private final DR:Ljava/util/concurrent/locks/Condition;

.field private final DS:Lcom/google/android/gms/internal/hc;

.field private final DT:Landroid/support/v4/app/Fragment;

.field final DU:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/c$c",
            "<*>;>;"
        }
    .end annotation
.end field

.field private DV:Lcom/google/android/gms/common/ConnectionResult;

.field private DW:I

.field private DX:I

.field private DY:I

.field private DZ:Z

.field private final Dy:Lcom/google/android/gms/common/api/c$a;

.field private Ea:I

.field private Eb:J

.field final Ec:Landroid/os/Handler;

.field private final Ed:Landroid/os/Bundle;

.field private final Ee:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$c",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">;"
        }
    .end annotation
.end field

.field private final Ef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Eg:Z

.field final Eh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/c$c",
            "<*>;>;"
        }
    .end annotation
.end field

.field final Ei:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private final Ej:Lcom/google/android/gms/internal/hc$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Ljava/util/Map;Landroid/support/v4/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/gy;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@a
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@c
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/concurrent/locks/Condition;

    #@12
    new-instance v0, Ljava/util/LinkedList;

    #@14
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@17
    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DU:Ljava/util/Queue;

    #@19
    const/4 v0, 0x4

    #@1a
    iput v0, p0, Lcom/google/android/gms/common/api/c;->DX:I

    #@1c
    const/4 v0, 0x0

    #@1d
    iput v0, p0, Lcom/google/android/gms/common/api/c;->DY:I

    #@1f
    const/4 v0, 0x0

    #@20
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DZ:Z

    #@22
    const-wide/16 v0, 0x1388

    #@24
    iput-wide v0, p0, Lcom/google/android/gms/common/api/c;->Eb:J

    #@26
    new-instance v0, Landroid/os/Bundle;

    #@28
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Landroid/os/Bundle;

    #@2d
    new-instance v0, Ljava/util/HashMap;

    #@2f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@32
    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Map;

    #@34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@36
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@39
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Eh:Ljava/util/Set;

    #@3f
    new-instance v0, Lcom/google/android/gms/common/api/c$1;

    #@41
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/c$1;-><init>(Lcom/google/android/gms/common/api/c;)V

    #@44
    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Dy:Lcom/google/android/gms/common/api/c$a;

    #@46
    new-instance v0, Lcom/google/android/gms/common/api/c$2;

    #@48
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/c$2;-><init>(Lcom/google/android/gms/common/api/c;)V

    #@4b
    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Ei:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    #@4d
    new-instance v0, Lcom/google/android/gms/common/api/c$3;

    #@4f
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/c$3;-><init>(Lcom/google/android/gms/common/api/c;)V

    #@52
    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Ej:Lcom/google/android/gms/internal/hc$b;

    #@54
    new-instance v0, Lcom/google/android/gms/internal/hc;

    #@56
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->Ej:Lcom/google/android/gms/internal/hc$b;

    #@58
    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/hc;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/hc$b;)V

    #@5b
    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/internal/hc;

    #@5d
    iput-object p5, p0, Lcom/google/android/gms/common/api/c;->DT:Landroid/support/v4/app/Fragment;

    #@5f
    iput-object p2, p0, Lcom/google/android/gms/common/api/c;->DF:Landroid/os/Looper;

    #@61
    new-instance v0, Lcom/google/android/gms/common/api/c$b;

    #@63
    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/api/c$b;-><init>(Lcom/google/android/gms/common/api/c;Landroid/os/Looper;)V

    #@66
    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Ec:Landroid/os/Handler;

    #@68
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@6b
    move-result-object v1

    #@6c
    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_7e

    #@72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@75
    move-result-object v0

    #@76
    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    #@78
    iget-object v2, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/internal/hc;

    #@7a
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/hc;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    #@7d
    goto :goto_6c

    #@7e
    :cond_7e
    invoke-interface/range {p7 .. p7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@81
    move-result-object v1

    #@82
    :goto_82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@85
    move-result v0

    #@86
    if-eqz v0, :cond_94

    #@88
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8b
    move-result-object v0

    #@8c
    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    #@8e
    iget-object v2, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/internal/hc;

    #@90
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/hc;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    #@93
    goto :goto_82

    #@94
    :cond_94
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@97
    move-result-object v0

    #@98
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9b
    move-result-object v7

    #@9c
    :goto_9c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@9f
    move-result v0

    #@a0
    if-eqz v0, :cond_c9

    #@a2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a5
    move-result-object v0

    #@a6
    move-object v2, v0

    #@a7
    check-cast v2, Lcom/google/android/gms/common/api/Api;

    #@a9
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->ez()Lcom/google/android/gms/common/api/Api$b;

    #@ac
    move-result-object v0

    #@ad
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b0
    move-result-object v1

    #@b1
    iget-object v8, p0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Map;

    #@b3
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->eB()Lcom/google/android/gms/common/api/Api$c;

    #@b6
    move-result-object v9

    #@b7
    iget-object v5, p0, Lcom/google/android/gms/common/api/c;->Ei:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    #@b9
    new-instance v6, Lcom/google/android/gms/common/api/c$4;

    #@bb
    invoke-direct {v6, p0, v0}, Lcom/google/android/gms/common/api/c$4;-><init>(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/Api$b;)V

    #@be
    move-object v2, p1

    #@bf
    move-object v3, p2

    #@c0
    move-object v4, p3

    #@c1
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/Api$b;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;

    #@c4
    move-result-object v0

    #@c5
    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c8
    goto :goto_9c

    #@c9
    :cond_c9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/gy;->fl()Ljava/util/List;

    #@cc
    move-result-object v0

    #@cd
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@d0
    move-result-object v0

    #@d1
    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Ef:Ljava/util/List;

    #@d3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/api/c;->DV:Lcom/google/android/gms/common/ConnectionResult;

    #@2
    return-object p1
.end method

.method private static a(Lcom/google/android/gms/common/api/Api$b;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$b",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/gy;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ")TC;"
        }
    .end annotation

    #@0
    move-object v0, p0

    #@1
    move-object v1, p2

    #@2
    move-object v2, p3

    #@3
    move-object v3, p4

    #@4
    move-object v4, p1

    #@5
    move-object v5, p5

    #@6
    move-object v6, p6

    #@7
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@2
    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/api/c$c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">(",
            "Lcom/google/android/gms/common/api/c$c",
            "<TA;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    iget-object v2, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@4
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@7
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_13

    #@d
    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eM()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_44

    #@13
    :cond_13
    move v2, v0

    #@14
    :goto_14
    const-string v3, "GoogleApiClient is not connected yet."

    #@16
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@19
    invoke-interface {p1}, Lcom/google/android/gms/common/api/c$c;->eB()Lcom/google/android/gms/common/api/Api$c;

    #@1c
    move-result-object v2

    #@1d
    if-eqz v2, :cond_46

    #@1f
    :goto_1f
    const-string v1, "This task can not be executed or enqueued (it\'s probably a Batch or malformed)"

    #@21
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@24
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Eh:Ljava/util/Set;

    #@26
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@29
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Dy:Lcom/google/android/gms/common/api/c$a;

    #@2b
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/c$c;->a(Lcom/google/android/gms/common/api/c$a;)V

    #@2e
    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eM()Z

    #@31
    move-result v0

    #@32
    if-eqz v0, :cond_48

    #@34
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@36
    const/16 v1, 0x8

    #@38
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@3b
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/c$c;->m(Lcom/google/android/gms/common/api/Status;)V
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_59

    #@3e
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@40
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@43
    :goto_43
    return-void

    #@44
    :cond_44
    move v2, v1

    #@45
    goto :goto_14

    #@46
    :cond_46
    move v0, v1

    #@47
    goto :goto_1f

    #@48
    :cond_48
    :try_start_48
    invoke-interface {p1}, Lcom/google/android/gms/common/api/c$c;->eB()Lcom/google/android/gms/common/api/Api$c;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    #@4f
    move-result-object v0

    #@50
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/c$c;->b(Lcom/google/android/gms/common/api/Api$a;)V
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_59

    #@53
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@55
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@58
    goto :goto_43

    #@59
    :catchall_59
    move-exception v0

    #@5a
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@5c
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@5f
    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/c;I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/c;->aa(I)V

    #@3
    return-void
.end method

.method private aa(I)V
    .registers 7

    #@0
    const/4 v1, 0x3

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, -0x1

    #@3
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@8
    :try_start_8
    iget v0, p0, Lcom/google/android/gms/common/api/c;->DX:I

    #@a
    if-eq v0, v1, :cond_bb

    #@c
    if-ne p1, v4, :cond_6f

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnecting()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_3a

    #@14
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DU:Ljava/util/Queue;

    #@16
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_3f

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/google/android/gms/common/api/c$c;

    #@26
    invoke-interface {v0}, Lcom/google/android/gms/common/api/c$c;->eG()I

    #@29
    move-result v2

    #@2a
    if-eq v2, v3, :cond_1a

    #@2c
    invoke-interface {v0}, Lcom/google/android/gms/common/api/c$c;->cancel()V

    #@2f
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_33

    #@32
    goto :goto_1a

    #@33
    :catchall_33
    move-exception v0

    #@34
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@36
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@39
    throw v0

    #@3a
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DU:Ljava/util/Queue;

    #@3c
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    #@3f
    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Eh:Ljava/util/Set;

    #@41
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@44
    move-result-object v1

    #@45
    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@48
    move-result v0

    #@49
    if-eqz v0, :cond_55

    #@4b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    check-cast v0, Lcom/google/android/gms/common/api/c$c;

    #@51
    invoke-interface {v0}, Lcom/google/android/gms/common/api/c$c;->cancel()V

    #@54
    goto :goto_45

    #@55
    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Eh:Ljava/util/Set;

    #@57
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@5a
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DV:Lcom/google/android/gms/common/ConnectionResult;

    #@5c
    if-nez v0, :cond_6f

    #@5e
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DU:Ljava/util/Queue;

    #@60
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    #@63
    move-result v0

    #@64
    if-nez v0, :cond_6f

    #@66
    const/4 v0, 0x1

    #@67
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DZ:Z
    :try_end_69
    .catchall {:try_start_3a .. :try_end_69} :catchall_33

    #@69
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@6b
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@6e
    :goto_6e
    return-void

    #@6f
    :cond_6f
    :try_start_6f
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnecting()Z

    #@72
    move-result v0

    #@73
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    #@76
    move-result v1

    #@77
    const/4 v2, 0x3

    #@78
    iput v2, p0, Lcom/google/android/gms/common/api/c;->DX:I

    #@7a
    if-eqz v0, :cond_86

    #@7c
    if-ne p1, v4, :cond_81

    #@7e
    const/4 v0, 0x0

    #@7f
    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DV:Lcom/google/android/gms/common/ConnectionResult;

    #@81
    :cond_81
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/concurrent/locks/Condition;

    #@83
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    #@86
    :cond_86
    const/4 v0, 0x0

    #@87
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Eg:Z

    #@89
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Map;

    #@8b
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@8e
    move-result-object v0

    #@8f
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@92
    move-result-object v2

    #@93
    :cond_93
    :goto_93
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@96
    move-result v0

    #@97
    if-eqz v0, :cond_a9

    #@99
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9c
    move-result-object v0

    #@9d
    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    #@9f
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->isConnected()Z

    #@a2
    move-result v3

    #@a3
    if-eqz v3, :cond_93

    #@a5
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->disconnect()V

    #@a8
    goto :goto_93

    #@a9
    :cond_a9
    const/4 v0, 0x1

    #@aa
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Eg:Z

    #@ac
    const/4 v0, 0x4

    #@ad
    iput v0, p0, Lcom/google/android/gms/common/api/c;->DX:I

    #@af
    if-eqz v1, :cond_bb

    #@b1
    if-eq p1, v4, :cond_b8

    #@b3
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/internal/hc;

    #@b5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc;->ao(I)V

    #@b8
    :cond_b8
    const/4 v0, 0x0

    #@b9
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Eg:Z
    :try_end_bb
    .catchall {:try_start_6f .. :try_end_bb} :catchall_33

    #@bb
    :cond_bb
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@bd
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@c0
    goto :goto_6e
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/c;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/api/c;->DX:I

    #@2
    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/c;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/common/api/c;->DY:I

    #@2
    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/c;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/common/api/c;->DW:I

    #@2
    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/c;)Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/c;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eK()V

    #@3
    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/c;)Z
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eM()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private eK()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    :try_start_5
    iget v0, p0, Lcom/google/android/gms/common/api/c;->Ea:I

    #@7
    add-int/lit8 v0, v0, -0x1

    #@9
    iput v0, p0, Lcom/google/android/gms/common/api/c;->Ea:I

    #@b
    iget v0, p0, Lcom/google/android/gms/common/api/c;->Ea:I

    #@d
    if-nez v0, :cond_3d

    #@f
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DV:Lcom/google/android/gms/common/ConnectionResult;

    #@11
    if-eqz v0, :cond_52

    #@13
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DZ:Z

    #@16
    const/4 v0, 0x3

    #@17
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/c;->aa(I)V

    #@1a
    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eM()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_26

    #@20
    iget v0, p0, Lcom/google/android/gms/common/api/c;->DY:I

    #@22
    add-int/lit8 v0, v0, -0x1

    #@24
    iput v0, p0, Lcom/google/android/gms/common/api/c;->DY:I

    #@26
    :cond_26
    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eM()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_43

    #@2c
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ec:Landroid/os/Handler;

    #@2e
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->Ec:Landroid/os/Handler;

    #@30
    const/4 v2, 0x1

    #@31
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@34
    move-result-object v1

    #@35
    iget-wide v2, p0, Lcom/google/android/gms/common/api/c;->Eb:J

    #@37
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@3a
    :goto_3a
    const/4 v0, 0x0

    #@3b
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Eg:Z
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_4b

    #@3d
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@3f
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@42
    return-void

    #@43
    :cond_43
    :try_start_43
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/internal/hc;

    #@45
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DV:Lcom/google/android/gms/common/ConnectionResult;

    #@47
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_4b

    #@4a
    goto :goto_3a

    #@4b
    :catchall_4b
    move-exception v0

    #@4c
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@4e
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@51
    throw v0

    #@52
    :cond_52
    const/4 v0, 0x2

    #@53
    :try_start_53
    iput v0, p0, Lcom/google/android/gms/common/api/c;->DX:I

    #@55
    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eN()V

    #@58
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/concurrent/locks/Condition;

    #@5a
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    #@5d
    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eL()V

    #@60
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DZ:Z

    #@62
    if-eqz v0, :cond_6c

    #@64
    const/4 v0, 0x0

    #@65
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DZ:Z

    #@67
    const/4 v0, -0x1

    #@68
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/c;->aa(I)V

    #@6b
    goto :goto_3d

    #@6c
    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Landroid/os/Bundle;

    #@6e
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    #@71
    move-result v0

    #@72
    if-eqz v0, :cond_7b

    #@74
    const/4 v0, 0x0

    #@75
    :goto_75
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/internal/hc;

    #@77
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/hc;->c(Landroid/os/Bundle;)V

    #@7a
    goto :goto_3d

    #@7b
    :cond_7b
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Landroid/os/Bundle;
    :try_end_7d
    .catchall {:try_start_53 .. :try_end_7d} :catchall_4b

    #@7d
    goto :goto_75
.end method

.method private eL()V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_c

    #@6
    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eM()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_3b

    #@c
    :cond_c
    const/4 v0, 0x1

    #@d
    :goto_d
    const-string v1, "GoogleApiClient is not connected yet."

    #@f
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@12
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@14
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@17
    :goto_17
    :try_start_17
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DU:Ljava/util/Queue;

    #@19
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_34

    #@1c
    move-result v0

    #@1d
    if-nez v0, :cond_3d

    #@1f
    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DU:Ljava/util/Queue;

    #@21
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/google/android/gms/common/api/c$c;

    #@27
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c$c;)V
    :try_end_2a
    .catch Landroid/os/DeadObjectException; {:try_start_1f .. :try_end_2a} :catch_2b
    .catchall {:try_start_1f .. :try_end_2a} :catchall_34

    #@2a
    goto :goto_17

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    :try_start_2c
    const-string v1, "GoogleApiClientImpl"

    #@2e
    const-string v2, "Service died while flushing queue"

    #@30
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_34

    #@33
    goto :goto_17

    #@34
    :catchall_34
    move-exception v0

    #@35
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@37
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@3a
    throw v0

    #@3b
    :cond_3b
    const/4 v0, 0x0

    #@3c
    goto :goto_d

    #@3d
    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@3f
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@42
    return-void
.end method

.method private eM()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    :try_start_5
    iget v0, p0, Lcom/google/android/gms/common/api/c;->DY:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_12

    #@7
    if-eqz v0, :cond_10

    #@9
    const/4 v0, 0x1

    #@a
    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@c
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_a

    #@12
    :catchall_12
    move-exception v0

    #@13
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@15
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@18
    throw v0
.end method

.method private eN()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    const/4 v0, 0x0

    #@6
    :try_start_6
    iput v0, p0, Lcom/google/android/gms/common/api/c;->DY:I

    #@8
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ec:Landroid/os/Handler;

    #@a
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_14

    #@e
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@13
    return-void

    #@14
    :catchall_14
    move-exception v0

    #@15
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@17
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@1a
    throw v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/c;)J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/common/api/c;->Eb:J

    #@2
    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/c;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Eg:Z

    #@2
    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DV:Lcom/google/android/gms/common/ConnectionResult;

    #@2
    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/common/api/c;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/api/c;->DW:I

    #@2
    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$c",
            "<TC;>;)TC;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    #@8
    const-string v1, "Appropriate Api was not requested."

    #@a
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "T:",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_14

    #@b
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/c;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1a

    #@e
    :goto_e
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@10
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@13
    return-object p1

    #@14
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DU:Ljava/util/Queue;

    #@16
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    #@19
    goto :goto_e

    #@1a
    :catchall_1a
    move-exception v0

    #@1b
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@1d
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@20
    throw v0
.end method

.method public b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "T:",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_d

    #@7
    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eM()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1a

    #@d
    :cond_d
    move v0, v1

    #@e
    :goto_e
    const-string v2, "GoogleApiClient is not connected yet."

    #@10
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@13
    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eL()V

    #@16
    :try_start_16
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c$c;)V
    :try_end_19
    .catch Landroid/os/DeadObjectException; {:try_start_16 .. :try_end_19} :catch_1c

    #@19
    :goto_19
    return-object p1

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    goto :goto_e

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/c;->aa(I)V

    #@20
    goto :goto_19
.end method

.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 4

    #@0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    if-eq v0, v1, :cond_3a

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    const-string v1, "blockingConnect must not be called on the UI thread"

    #@d
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@15
    :try_start_15
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->connect()V

    #@18
    :goto_18
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnecting()Z
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_64

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_3c

    #@1e
    :try_start_1e
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/concurrent/locks/Condition;

    #@20
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_23} :catch_24
    .catchall {:try_start_1e .. :try_end_23} :catchall_64

    #@23
    goto :goto_18

    #@24
    :catch_24
    move-exception v0

    #@25
    :try_start_25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@2c
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    #@2e
    const/16 v1, 0xf

    #@30
    const/4 v2, 0x0

    #@31
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_64

    #@34
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@36
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@39
    :goto_39
    return-object v0

    #@3a
    :cond_3a
    const/4 v0, 0x0

    #@3b
    goto :goto_b

    #@3c
    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_4a

    #@42
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->CS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_64

    #@44
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@46
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@49
    goto :goto_39

    #@4a
    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DV:Lcom/google/android/gms/common/ConnectionResult;

    #@4c
    if-eqz v0, :cond_56

    #@4e
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DV:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_64

    #@50
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@52
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@55
    goto :goto_39

    #@56
    :cond_56
    :try_start_56
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    #@58
    const/16 v1, 0xd

    #@5a
    const/4 v2, 0x0

    #@5b
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_64

    #@5e
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@60
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@63
    goto :goto_39

    #@64
    :catchall_64
    move-exception v0

    #@65
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@67
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@6a
    throw v0
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 9

    #@0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@7
    move-result-object v1

    #@8
    if-eq v0, v1, :cond_3c

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    const-string v1, "blockingConnect must not be called on the UI thread"

    #@d
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@10
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@12
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@15
    :try_start_15
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->connect()V

    #@18
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@1b
    move-result-wide v0

    #@1c
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnecting()Z
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_7c

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_54

    #@22
    :try_start_22
    iget-object v2, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/concurrent/locks/Condition;

    #@24
    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    #@27
    move-result-wide v0

    #@28
    const-wide/16 v2, 0x0

    #@2a
    cmp-long v2, v0, v2

    #@2c
    if-gtz v2, :cond_1c

    #@2e
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    #@30
    const/16 v1, 0xe

    #@32
    const/4 v2, 0x0

    #@33
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_36} :catch_3e
    .catchall {:try_start_22 .. :try_end_36} :catchall_7c

    #@36
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@38
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@3b
    :goto_3b
    return-object v0

    #@3c
    :cond_3c
    const/4 v0, 0x0

    #@3d
    goto :goto_b

    #@3e
    :catch_3e
    move-exception v0

    #@3f
    :try_start_3f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@46
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    #@48
    const/16 v1, 0xf

    #@4a
    const/4 v2, 0x0

    #@4b
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_7c

    #@4e
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@50
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@53
    goto :goto_3b

    #@54
    :cond_54
    :try_start_54
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_62

    #@5a
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->CS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_7c

    #@5c
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@5e
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@61
    goto :goto_3b

    #@62
    :cond_62
    :try_start_62
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DV:Lcom/google/android/gms/common/ConnectionResult;

    #@64
    if-eqz v0, :cond_6e

    #@66
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DV:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_7c

    #@68
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@6a
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@6d
    goto :goto_3b

    #@6e
    :cond_6e
    :try_start_6e
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    #@70
    const/16 v1, 0xd

    #@72
    const/4 v2, 0x0

    #@73
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_7c

    #@76
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@78
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@7b
    goto :goto_3b

    #@7c
    :catchall_7c
    move-exception v0

    #@7d
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@7f
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@82
    throw v0
.end method

.method public connect()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    const/4 v0, 0x0

    #@6
    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DZ:Z

    #@8
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_14

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnecting()Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_4a

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1a

    #@14
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@19
    :goto_19
    return-void

    #@1a
    :cond_1a
    const/4 v0, 0x1

    #@1b
    :try_start_1b
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Eg:Z

    #@1d
    const/4 v0, 0x0

    #@1e
    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DV:Lcom/google/android/gms/common/ConnectionResult;

    #@20
    const/4 v0, 0x1

    #@21
    iput v0, p0, Lcom/google/android/gms/common/api/c;->DX:I

    #@23
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Landroid/os/Bundle;

    #@25
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    #@28
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Map;

    #@2a
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@2d
    move-result v0

    #@2e
    iput v0, p0, Lcom/google/android/gms/common/api/c;->Ea:I

    #@30
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Map;

    #@32
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@35
    move-result-object v0

    #@36
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v1

    #@3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_51

    #@40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    #@46
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->connect()V
    :try_end_49
    .catchall {:try_start_1b .. :try_end_49} :catchall_4a

    #@49
    goto :goto_3a

    #@4a
    :catchall_4a
    move-exception v0

    #@4b
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@4d
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@50
    throw v0

    #@51
    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@53
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@56
    goto :goto_19
.end method

.method public disconnect()V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eN()V

    #@3
    const/4 v0, -0x1

    #@4
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/c;->aa(I)V

    #@7
    return-void
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DF:Landroid/os/Looper;

    #@2
    return-object v0
.end method

.method public isConnected()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    :try_start_5
    iget v0, p0, Lcom/google/android/gms/common/api/c;->DX:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_13

    #@7
    const/4 v1, 0x2

    #@8
    if-ne v0, v1, :cond_11

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@d
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@10
    return v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_b

    #@13
    :catchall_13
    move-exception v0

    #@14
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@16
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@19
    throw v0
.end method

.method public isConnecting()Z
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@6
    :try_start_6
    iget v1, p0, Lcom/google/android/gms/common/api/c;->DX:I
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_12

    #@8
    if-ne v1, v0, :cond_10

    #@a
    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@c
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_a

    #@12
    :catchall_12
    move-exception v0

    #@13
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DQ:Ljava/util/concurrent/locks/Lock;

    #@15
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@18
    throw v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/internal/hc;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/internal/hc;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public reconnect()V
    .registers 1

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->disconnect()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->connect()V

    #@6
    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/internal/hc;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    #@5
    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/internal/hc;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    #@5
    return-void
.end method

.method public stopAutoManage()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DT:Landroid/support/v4/app/Fragment;

    #@2
    if-eqz v0, :cond_2d

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    const-string v1, "Called stopAutoManage but automatic lifecycle management is not enabled."

    #@7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@a
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DT:Landroid/support/v4/app/Fragment;

    #@c
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_2c

    #@12
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DT:Landroid/support/v4/app/Fragment;

    #@14
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    #@1f
    move-result-object v0

    #@20
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DT:Landroid/support/v4/app/Fragment;

    #@22
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    #@29
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->disconnect()V

    #@2c
    :cond_2c
    return-void

    #@2d
    :cond_2d
    const/4 v0, 0x0

    #@2e
    goto :goto_5
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/internal/hc;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    #@5
    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/internal/hc;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hc;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    #@5
    return-void
.end method
