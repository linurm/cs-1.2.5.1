.class final Lcom/google/android/gms/location/LocationServices$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/LocationServices;
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
        "Lcom/google/android/gms/internal/jg;",
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
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/location/LocationServices$1;->c(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/jg;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public c(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/jg;
    .registers 13

    #@0
    new-instance v0, Lcom/google/android/gms/internal/jg;

    #@2
    const-string v5, "locationServices"

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p5

    #@7
    move-object v4, p6

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/jg;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public getPriority()I
    .registers 2

    #@0
    const v0, 0x7fffffff

    #@3
    return v0
.end method
