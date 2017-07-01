.class public final Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private DF:Landroid/os/Looper;

.field private final DH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private DI:I

.field private DJ:Landroid/view/View;

.field private DK:Ljava/lang/String;

.field private final DL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;"
        }
    .end annotation
.end field

.field private DM:Landroid/support/v4/app/FragmentActivity;

.field private DN:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field private final DO:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final DP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private yQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DH:Ljava/util/Set;

    #@a
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DL:Ljava/util/Map;

    #@11
    new-instance v0, Ljava/util/HashSet;

    #@13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@16
    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DO:Ljava/util/Set;

    #@18
    new-instance v0, Ljava/util/HashSet;

    #@1a
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DP:Ljava/util/Set;

    #@1f
    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;

    #@21
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DF:Landroid/os/Looper;

    #@27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DK:Ljava/lang/String;

    #@2d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 5

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    #@3
    const-string v0, "Must provide a connected listener"

    #@5
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DO:Ljava/util/Set;

    #@a
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@d
    const-string v0, "Must provide a connection failed listener"

    #@f
    invoke-static {p3, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DP:Ljava/util/Set;

    #@14
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@17
    return-void
.end method

.method private eJ()Lcom/google/android/gms/common/api/d;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DM:Landroid/support/v4/app/FragmentActivity;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_36

    #@c
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_36

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@20
    instance-of v1, v0, Lcom/google/android/gms/common/api/d;

    #@22
    if-eqz v1, :cond_14

    #@24
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_14

    #@2a
    move-object v1, v0

    #@2b
    check-cast v1, Lcom/google/android/gms/common/api/d;

    #@2d
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/d;->isInitialized()Z

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_14

    #@33
    check-cast v0, Lcom/google/android/gms/common/api/d;

    #@35
    :goto_35
    return-object v0

    #@36
    :cond_36
    new-instance v0, Lcom/google/android/gms/common/api/d;

    #@38
    invoke-direct {v0}, Lcom/google/android/gms/common/api/d;-><init>()V

    #@3b
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    #@3e
    move-result-object v1

    #@3f
    const/4 v2, 0x0

    #@40
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    #@47
    goto :goto_35
.end method


# virtual methods
.method public addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions;",
            ">;)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DL:Ljava/util/Map;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->eA()Ljava/util/List;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@d
    move-result v3

    #@e
    const/4 v0, 0x0

    #@f
    move v1, v0

    #@10
    :goto_10
    if-ge v1, v3, :cond_25

    #@12
    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DH:Ljava/util/Set;

    #@14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    #@1a
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Scope;->eP()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@21
    add-int/lit8 v0, v1, 0x1

    #@23
    move v1, v0

    #@24
    goto :goto_10

    #@25
    :cond_25
    return-object p0
.end method

.method public addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;",
            ">(",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$Builder;"
        }
    .end annotation

    #@0
    const-string v0, "Null options are not permitted for this Api"

    #@2
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DL:Ljava/util/Map;

    #@7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->eA()Ljava/util/List;

    #@d
    move-result-object v2

    #@e
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@11
    move-result v3

    #@12
    const/4 v0, 0x0

    #@13
    move v1, v0

    #@14
    :goto_14
    if-ge v1, v3, :cond_29

    #@16
    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DH:Ljava/util/Set;

    #@18
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    #@1e
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Scope;->eP()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@25
    add-int/lit8 v0, v1, 0x1

    #@27
    move v1, v0

    #@28
    goto :goto_14

    #@29
    :cond_29
    return-object p0
.end method

.method public addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DO:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    return-object p0
.end method

.method public addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DP:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    return-object p0
.end method

.method public addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DH:Ljava/util/Set;

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Scope;->eP()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@9
    return-object p0
.end method

.method public build()Lcom/google/android/gms/common/api/GoogleApiClient;
    .registers 9

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DL:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_32

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    const-string v1, "must call addApi() to add at least one API"

    #@b
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@e
    const/4 v5, 0x0

    #@f
    iget-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DM:Landroid/support/v4/app/FragmentActivity;

    #@11
    if-eqz v0, :cond_17

    #@13
    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->eJ()Lcom/google/android/gms/common/api/d;

    #@16
    move-result-object v5

    #@17
    :cond_17
    new-instance v0, Lcom/google/android/gms/common/api/c;

    #@19
    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->mContext:Landroid/content/Context;

    #@1b
    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DF:Landroid/os/Looper;

    #@1d
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->eI()Lcom/google/android/gms/internal/gy;

    #@20
    move-result-object v3

    #@21
    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DL:Ljava/util/Map;

    #@23
    iget-object v6, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DO:Ljava/util/Set;

    #@25
    iget-object v7, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DP:Ljava/util/Set;

    #@27
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Ljava/util/Map;Landroid/support/v4/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V

    #@2a
    if-eqz v5, :cond_31

    #@2c
    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DN:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    #@2e
    invoke-virtual {v5, v0, v1}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    #@31
    :cond_31
    return-object v0

    #@32
    :cond_32
    const/4 v0, 0x0

    #@33
    goto :goto_9
.end method

.method public eI()Lcom/google/android/gms/internal/gy;
    .registers 7

    #@0
    new-instance v0, Lcom/google/android/gms/internal/gy;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->yQ:Ljava/lang/String;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DH:Ljava/util/Set;

    #@6
    iget v3, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DI:I

    #@8
    iget-object v4, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DJ:Landroid/view/View;

    #@a
    iget-object v5, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DK:Ljava/lang/String;

    #@c
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gy;-><init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;)V

    #@f
    return-object v0
.end method

.method public enableAutoManage(Landroid/support/v4/app/FragmentActivity;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 4

    #@0
    const-string v0, "Null activity is not permitted."

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    #@8
    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DM:Landroid/support/v4/app/FragmentActivity;

    #@a
    iput-object p2, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DN:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    #@c
    return-object p0
.end method

.method public setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->yQ:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public setGravityForPopups(I)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DI:I

    #@2
    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 3

    #@0
    const-string v0, "Handler must not be null"

    #@2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DF:Landroid/os/Looper;

    #@b
    return-object p0
.end method

.method public setViewForPopups(Landroid/view/View;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->DJ:Landroid/view/View;

    #@2
    return-object p0
.end method

.method public useDefaultAccount()Lcom/google/android/gms/common/api/GoogleApiClient$Builder;
    .registers 2

    #@0
    const-string v0, "<<default account>>"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
