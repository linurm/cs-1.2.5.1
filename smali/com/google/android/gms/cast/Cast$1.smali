.class final Lcom/google/android/gms/cast/Cast$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/Cast;
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
        "Lcom/google/android/gms/internal/gh;",
        "Lcom/google/android/gms/cast/Cast$CastOptions;",
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
.method public bridge synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .registers 14

    #@0
    move-object v4, p4

    #@1
    check-cast v4, Lcom/google/android/gms/cast/Cast$CastOptions;

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
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/cast/Cast$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/cast/Cast$CastOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/gh;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/cast/Cast$CastOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/gh;
    .registers 16

    #@0
    const-string v0, "Setting the API options is required."

    #@2
    invoke-static {p4, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    new-instance v0, Lcom/google/android/gms/internal/gh;

    #@7
    iget-object v3, p4, Lcom/google/android/gms/cast/Cast$CastOptions;->Aa:Lcom/google/android/gms/cast/CastDevice;

    #@9
    invoke-static {p4}, Lcom/google/android/gms/cast/Cast$CastOptions;->a(Lcom/google/android/gms/cast/Cast$CastOptions;)I

    #@c
    move-result v1

    #@d
    int-to-long v4, v1

    #@e
    iget-object v6, p4, Lcom/google/android/gms/cast/Cast$CastOptions;->Ab:Lcom/google/android/gms/cast/Cast$Listener;

    #@10
    move-object v1, p1

    #@11
    move-object v2, p2

    #@12
    move-object v7, p5

    #@13
    move-object v8, p6

    #@14
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/gh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    #@17
    return-object v0
.end method

.method public getPriority()I
    .registers 2

    #@0
    const v0, 0x7fffffff

    #@3
    return v0
.end method
