.class public Lcom/google/android/gms/tagmanager/TagManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/TagManager$a;
    }
.end annotation


# static fields
.field private static aig:Lcom/google/android/gms/tagmanager/TagManager;


# instance fields
.field private final aeu:Lcom/google/android/gms/tagmanager/DataLayer;

.field private final agO:Lcom/google/android/gms/tagmanager/r;

.field private final aie:Lcom/google/android/gms/tagmanager/TagManager$a;

.field private final aif:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/google/android/gms/tagmanager/n;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager$a;Lcom/google/android/gms/tagmanager/DataLayer;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "context cannot be null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    #@13
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/TagManager;->aie:Lcom/google/android/gms/tagmanager/TagManager$a;

    #@15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aif:Ljava/util/concurrent/ConcurrentMap;

    #@1c
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/TagManager;->aeu:Lcom/google/android/gms/tagmanager/DataLayer;

    #@1e
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aeu:Lcom/google/android/gms/tagmanager/DataLayer;

    #@20
    new-instance v1, Lcom/google/android/gms/tagmanager/TagManager$1;

    #@22
    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/TagManager$1;-><init>(Lcom/google/android/gms/tagmanager/TagManager;)V

    #@25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Lcom/google/android/gms/tagmanager/DataLayer$b;)V

    #@28
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aeu:Lcom/google/android/gms/tagmanager/DataLayer;

    #@2a
    new-instance v1, Lcom/google/android/gms/tagmanager/d;

    #@2c
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    #@2e
    invoke-direct {v1, v2}, Lcom/google/android/gms/tagmanager/d;-><init>(Landroid/content/Context;)V

    #@31
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Lcom/google/android/gms/tagmanager/DataLayer$b;)V

    #@34
    new-instance v0, Lcom/google/android/gms/tagmanager/r;

    #@36
    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/r;-><init>()V

    #@39
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->agO:Lcom/google/android/gms/tagmanager/r;

    #@3b
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/TagManager;Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/TagManager;->cl(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method private cl(Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aif:Ljava/util/concurrent/ConcurrentMap;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1a

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/google/android/gms/tagmanager/n;

    #@16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/n;->bH(Ljava/lang/String;)V

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;
    .registers 5

    #@0
    const-class v0, Lcom/google/android/gms/tagmanager/TagManager;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/tagmanager/TagManager;->aig:Lcom/google/android/gms/tagmanager/TagManager;

    #@5
    if-nez v0, :cond_2f

    #@7
    if-nez p0, :cond_19

    #@9
    const-string v0, "TagManager.getInstance requires non-null context."

    #@b
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@e
    new-instance v0, Ljava/lang/NullPointerException;

    #@10
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@13
    throw v0

    #@14
    :catchall_14
    move-exception v0

    #@15
    const-class v1, Lcom/google/android/gms/tagmanager/TagManager;

    #@17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_14

    #@18
    throw v0

    #@19
    :cond_19
    :try_start_19
    new-instance v0, Lcom/google/android/gms/tagmanager/TagManager$2;

    #@1b
    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/TagManager$2;-><init>()V

    #@1e
    new-instance v1, Lcom/google/android/gms/tagmanager/v;

    #@20
    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/v;-><init>(Landroid/content/Context;)V

    #@23
    new-instance v2, Lcom/google/android/gms/tagmanager/TagManager;

    #@25
    new-instance v3, Lcom/google/android/gms/tagmanager/DataLayer;

    #@27
    invoke-direct {v3, v1}, Lcom/google/android/gms/tagmanager/DataLayer;-><init>(Lcom/google/android/gms/tagmanager/DataLayer$c;)V

    #@2a
    invoke-direct {v2, p0, v0, v3}, Lcom/google/android/gms/tagmanager/TagManager;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager$a;Lcom/google/android/gms/tagmanager/DataLayer;)V

    #@2d
    sput-object v2, Lcom/google/android/gms/tagmanager/TagManager;->aig:Lcom/google/android/gms/tagmanager/TagManager;

    #@2f
    :cond_2f
    sget-object v0, Lcom/google/android/gms/tagmanager/TagManager;->aig:Lcom/google/android/gms/tagmanager/TagManager;

    #@31
    const-class v1, Lcom/google/android/gms/tagmanager/TagManager;

    #@33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_14

    #@34
    return-object v0
.end method


# virtual methods
.method a(Lcom/google/android/gms/tagmanager/n;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aif:Ljava/util/concurrent/ConcurrentMap;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@6
    move-result-object v1

    #@7
    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    return-void
.end method

.method b(Lcom/google/android/gms/tagmanager/n;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aif:Ljava/util/concurrent/ConcurrentMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aeu:Lcom/google/android/gms/tagmanager/DataLayer;

    #@2
    return-object v0
.end method

.method i(Landroid/net/Uri;)Z
    .registers 7

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/tagmanager/cd;->md()Lcom/google/android/gms/tagmanager/cd;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/tagmanager/cd;->i(Landroid/net/Uri;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_85

    #@b
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cd;->getContainerId()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    sget-object v0, Lcom/google/android/gms/tagmanager/TagManager$3;->aii:[I

    #@11
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cd;->me()Lcom/google/android/gms/tagmanager/cd$a;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Lcom/google/android/gms/tagmanager/cd$a;->ordinal()I

    #@18
    move-result v3

    #@19
    aget v0, v0, v3
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_49

    #@1b
    packed-switch v0, :pswitch_data_88

    #@1e
    :cond_1e
    const/4 v0, 0x1

    #@1f
    :goto_1f
    monitor-exit p0

    #@20
    return v0

    #@21
    :pswitch_21
    :try_start_21
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aif:Ljava/util/concurrent/ConcurrentMap;

    #@23
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    #@26
    move-result-object v0

    #@27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v1

    #@2b
    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_1e

    #@31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Lcom/google/android/gms/tagmanager/n;

    #@37
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/n;->getContainerId()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_2b

    #@41
    const/4 v3, 0x0

    #@42
    invoke-virtual {v0, v3}, Lcom/google/android/gms/tagmanager/n;->bJ(Ljava/lang/String;)V

    #@45
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/n;->refresh()V
    :try_end_48
    .catchall {:try_start_21 .. :try_end_48} :catchall_49

    #@48
    goto :goto_2b

    #@49
    :catchall_49
    move-exception v0

    #@4a
    monitor-exit p0

    #@4b
    throw v0

    #@4c
    :pswitch_4c
    :try_start_4c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aif:Ljava/util/concurrent/ConcurrentMap;

    #@4e
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    #@51
    move-result-object v0

    #@52
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@55
    move-result-object v3

    #@56
    :cond_56
    :goto_56
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_1e

    #@5c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5f
    move-result-object v0

    #@60
    check-cast v0, Lcom/google/android/gms/tagmanager/n;

    #@62
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/n;->getContainerId()Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v4

    #@6a
    if-eqz v4, :cond_77

    #@6c
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cd;->mf()Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v0, v4}, Lcom/google/android/gms/tagmanager/n;->bJ(Ljava/lang/String;)V

    #@73
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/n;->refresh()V

    #@76
    goto :goto_56

    #@77
    :cond_77
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/n;->lo()Ljava/lang/String;

    #@7a
    move-result-object v4

    #@7b
    if-eqz v4, :cond_56

    #@7d
    const/4 v4, 0x0

    #@7e
    invoke-virtual {v0, v4}, Lcom/google/android/gms/tagmanager/n;->bJ(Ljava/lang/String;)V

    #@81
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/n;->refresh()V
    :try_end_84
    .catchall {:try_start_4c .. :try_end_84} :catchall_49

    #@84
    goto :goto_56

    #@85
    :cond_85
    const/4 v0, 0x0

    #@86
    goto :goto_1f

    #@87
    nop

    #@88
    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_21
        :pswitch_4c
        :pswitch_4c
    .end packed-switch
.end method

.method public loadContainerDefaultOnly(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aie:Lcom/google/android/gms/tagmanager/TagManager$a;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    #@4
    const/4 v3, 0x0

    #@5
    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->agO:Lcom/google/android/gms/tagmanager/r;

    #@7
    move-object v2, p0

    #@8
    move-object v4, p1

    #@9
    move v5, p2

    #@a
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$a;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/o;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->lr()V

    #@11
    return-object v0
.end method

.method public loadContainerDefaultOnly(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aie:Lcom/google/android/gms/tagmanager/TagManager$a;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v3

    #@8
    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->agO:Lcom/google/android/gms/tagmanager/r;

    #@a
    move-object v2, p0

    #@b
    move-object v4, p1

    #@c
    move v5, p2

    #@d
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$a;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/o;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->lr()V

    #@14
    return-object v0
.end method

.method public loadContainerPreferFresh(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aie:Lcom/google/android/gms/tagmanager/TagManager$a;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    #@4
    const/4 v3, 0x0

    #@5
    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->agO:Lcom/google/android/gms/tagmanager/r;

    #@7
    move-object v2, p0

    #@8
    move-object v4, p1

    #@9
    move v5, p2

    #@a
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$a;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/o;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->lt()V

    #@11
    return-object v0
.end method

.method public loadContainerPreferFresh(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aie:Lcom/google/android/gms/tagmanager/TagManager$a;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v3

    #@8
    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->agO:Lcom/google/android/gms/tagmanager/r;

    #@a
    move-object v2, p0

    #@b
    move-object v4, p1

    #@c
    move v5, p2

    #@d
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$a;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/o;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->lt()V

    #@14
    return-object v0
.end method

.method public loadContainerPreferNonDefault(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aie:Lcom/google/android/gms/tagmanager/TagManager$a;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    #@4
    const/4 v3, 0x0

    #@5
    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->agO:Lcom/google/android/gms/tagmanager/r;

    #@7
    move-object v2, p0

    #@8
    move-object v4, p1

    #@9
    move v5, p2

    #@a
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$a;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/o;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->ls()V

    #@11
    return-object v0
.end method

.method public loadContainerPreferNonDefault(Ljava/lang/String;ILandroid/os/Handler;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/tagmanager/ContainerHolder;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/TagManager;->aie:Lcom/google/android/gms/tagmanager/TagManager$a;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/TagManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@7
    move-result-object v3

    #@8
    iget-object v6, p0, Lcom/google/android/gms/tagmanager/TagManager;->agO:Lcom/google/android/gms/tagmanager/r;

    #@a
    move-object v2, p0

    #@b
    move-object v4, p1

    #@c
    move v5, p2

    #@d
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/TagManager$a;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/o;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/o;->ls()V

    #@14
    return-object v0
.end method

.method public setVerboseLoggingEnabled(Z)V
    .registers 3

    #@0
    if-eqz p1, :cond_7

    #@2
    const/4 v0, 0x2

    #@3
    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->setLogLevel(I)V

    #@6
    return-void

    #@7
    :cond_7
    const/4 v0, 0x5

    #@8
    goto :goto_3
.end method
