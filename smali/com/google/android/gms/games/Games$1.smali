.class final Lcom/google/android/gms/games/Games$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
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
        "Lcom/google/android/gms/games/internal/GamesClientImpl;",
        "Lcom/google/android/gms/games/Games$GamesOptions;",
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
    check-cast v4, Lcom/google/android/gms/games/Games$GamesOptions;

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
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/Games$1;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gy;Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/games/internal/GamesClientImpl;
    .registers 24

    #@0
    if-nez p4, :cond_a

    #@2
    new-instance p4, Lcom/google/android/gms/games/Games$GamesOptions;

    #@4
    const/4 v1, 0x0

    #@5
    move-object/from16 v0, p4

    #@7
    invoke-direct {v0, v1}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(Lcom/google/android/gms/games/Games$1;)V

    #@a
    :cond_a
    new-instance v1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@c
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/gy;->fn()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/gy;->fj()Ljava/lang/String;

    #@13
    move-result-object v5

    #@14
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/gy;->fm()[Ljava/lang/String;

    #@17
    move-result-object v8

    #@18
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/gy;->fk()I

    #@1b
    move-result v9

    #@1c
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/gy;->fo()Landroid/view/View;

    #@1f
    move-result-object v10

    #@20
    move-object/from16 v0, p4

    #@22
    iget-boolean v11, v0, Lcom/google/android/gms/games/Games$GamesOptions;->MM:Z

    #@24
    move-object/from16 v0, p4

    #@26
    iget-boolean v12, v0, Lcom/google/android/gms/games/Games$GamesOptions;->MN:Z

    #@28
    move-object/from16 v0, p4

    #@2a
    iget v13, v0, Lcom/google/android/gms/games/Games$GamesOptions;->MO:I

    #@2c
    move-object/from16 v0, p4

    #@2e
    iget-boolean v14, v0, Lcom/google/android/gms/games/Games$GamesOptions;->MP:Z

    #@30
    move-object/from16 v0, p4

    #@32
    iget v15, v0, Lcom/google/android/gms/games/Games$GamesOptions;->MQ:I

    #@34
    move-object/from16 v0, p4

    #@36
    iget-object v0, v0, Lcom/google/android/gms/games/Games$GamesOptions;->MR:Ljava/lang/String;

    #@38
    move-object/from16 v16, v0

    #@3a
    move-object/from16 v2, p1

    #@3c
    move-object/from16 v3, p2

    #@3e
    move-object/from16 v6, p5

    #@40
    move-object/from16 v7, p6

    #@42
    invoke-direct/range {v1 .. v16}, Lcom/google/android/gms/games/internal/GamesClientImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;ILandroid/view/View;ZZIZILjava/lang/String;)V

    #@45
    return-object v1
.end method

.method public getPriority()I
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method
