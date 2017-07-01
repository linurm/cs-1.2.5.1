.class final Lcom/google/android/gms/appstate/AppStateManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appstate/AppStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$b",
        "<",
        "Lcom/google/android/gms/internal/ga;",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .registers 14

    #@0
    move-object v4, p4

    #@1
    check-cast v4, Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p3

    #@7
    move-object v5, p5

    #@8
    move-object v6, p6

    #@9
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/appstate/AppStateManager$1;->b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/ga;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/ga;
    .registers 14

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ga;

    #@2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/gy;->fj()Ljava/lang/String;

    #@5
    move-result-object v5

    #@6
    invoke-virtual {p3}, Lcom/google/android/gms/internal/gy;->fl()Ljava/util/List;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x0

    #@b
    new-array v2, v2, [Ljava/lang/String;

    #@d
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@10
    move-result-object v6

    #@11
    check-cast v6, [Ljava/lang/String;

    #@13
    move-object v1, p1

    #@14
    move-object v2, p2

    #@15
    move-object v3, p5

    #@16
    move-object v4, p6

    #@17
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ga;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V

    #@1a
    return-object v0
.end method

.method public getPriority()I
    .registers 2

    #@0
    const v0, 0x7fffffff

    #@3
    return v0
.end method
