.class final Lcom/google/android/gms/plus/Plus$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/Plus;
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
        "Lcom/google/android/gms/plus/internal/e;",
        "Lcom/google/android/gms/plus/Plus$PlusOptions;",
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
    check-cast v4, Lcom/google/android/gms/plus/Plus$PlusOptions;

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
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/Plus$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/plus/Plus$PlusOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/plus/internal/e;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/plus/Plus$PlusOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/plus/internal/e;
    .registers 17

    #@0
    if-nez p4, :cond_8

    #@2
    new-instance p4, Lcom/google/android/gms/plus/Plus$PlusOptions;

    #@4
    const/4 v0, 0x0

    #@5
    invoke-direct {p4, v0}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>(Lcom/google/android/gms/plus/Plus$1;)V

    #@8
    :cond_8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/gy;->fj()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p3}, Lcom/google/android/gms/internal/gy;->fm()[Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    iget-object v0, p4, Lcom/google/android/gms/plus/Plus$PlusOptions;->abs:Ljava/util/Set;

    #@12
    const/4 v3, 0x0

    #@13
    new-array v3, v3, [Ljava/lang/String;

    #@15
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, [Ljava/lang/String;

    #@1b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    new-instance v8, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@25
    invoke-direct {v8}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;-><init>()V

    #@28
    new-instance v9, Lcom/google/android/gms/plus/internal/e;

    #@2a
    new-instance v0, Lcom/google/android/gms/plus/internal/h;

    #@2c
    const/4 v4, 0x0

    #@2d
    new-array v4, v4, [Ljava/lang/String;

    #@2f
    const/4 v7, 0x0

    #@30
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/plus/internal/h;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V

    #@33
    move-object v1, v9

    #@34
    move-object v2, p1

    #@35
    move-object v3, p2

    #@36
    move-object v4, p5

    #@37
    move-object/from16 v5, p6

    #@39
    move-object v6, v0

    #@3a
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/plus/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/plus/internal/h;)V

    #@3d
    return-object v9
.end method

.method public getPriority()I
    .registers 2

    #@0
    const/4 v0, 0x2

    #@1
    return v0
.end method
