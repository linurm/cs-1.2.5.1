.class public final Lcom/google/android/gms/internal/ga;
.super Lcom/google/android/gms/internal/hb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ga$a;,
        Lcom/google/android/gms/internal/ga$b;,
        Lcom/google/android/gms/internal/ga$c;,
        Lcom/google/android/gms/internal/ga$d;,
        Lcom/google/android/gms/internal/ga$e;,
        Lcom/google/android/gms/internal/ga$f;,
        Lcom/google/android/gms/internal/ga$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/internal/gc;",
        ">;"
    }
.end annotation


# instance fields
.field private final yQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13

    #@0
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    move-object v2, p2

    #@3
    move-object v3, p3

    #@4
    move-object v4, p4

    #@5
    move-object v5, p6

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    #@9
    invoke-static {p5}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/String;

    #@f
    iput-object v0, p0, Lcom/google/android/gms/internal/ga;->yQ:Ljava/lang/String;

    #@11
    return-void
.end method


# virtual methods
.method protected D(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gc;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/gc$a;->F(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gc;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateListResult;",
            ">;)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/internal/gc;

    #@6
    new-instance v1, Lcom/google/android/gms/internal/ga$c;

    #@8
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ga$c;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gc;->a(Lcom/google/android/gms/internal/gb;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "AppStateClient"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
            ">;I)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/internal/gc;

    #@6
    new-instance v1, Lcom/google/android/gms/internal/ga$a;

    #@8
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ga$a;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gc;->b(Lcom/google/android/gms/internal/gb;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "AppStateClient"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;I",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/internal/gc;

    #@6
    new-instance v1, Lcom/google/android/gms/internal/ga$e;

    #@8
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ga$e;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/gc;->a(Lcom/google/android/gms/internal/gb;ILjava/lang/String;[B)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "AppStateClient"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    goto :goto_e
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;I[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;I[B)V"
        }
    .end annotation

    #@0
    if-nez p1, :cond_e

    #@2
    const/4 v0, 0x0

    #@3
    move-object v1, v0

    #@4
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga;->ft()Landroid/os/IInterface;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/google/android/gms/internal/gc;

    #@a
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/internal/gc;->a(Lcom/google/android/gms/internal/gb;I[B)V

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    new-instance v0, Lcom/google/android/gms/internal/ga$e;

    #@10
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ga$e;-><init>(Lcom/google/android/gms/common/api/a$d;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_15

    #@13
    move-object v1, v0

    #@14
    goto :goto_4

    #@15
    :catch_15
    move-exception v0

    #@16
    const-string v0, "AppStateClient"

    #@18
    const-string v1, "service died"

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    goto :goto_d
.end method

.method protected a(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hb$e;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const v2, 0x4da6e8

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    iget-object v4, p0, Lcom/google/android/gms/internal/ga;->yQ:Ljava/lang/String;

    #@d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga;->fs()[Ljava/lang/String;

    #@10
    move-result-object v5

    #@11
    move-object v0, p1

    #@12
    move-object v1, p2

    #@13
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/hi;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    #@16
    return-void
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/internal/gc;

    #@6
    new-instance v1, Lcom/google/android/gms/internal/ga$g;

    #@8
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ga$g;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gc;->b(Lcom/google/android/gms/internal/gb;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "AppStateClient"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    goto :goto_e
.end method

.method public b(Lcom/google/android/gms/common/api/a$d;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;I)V"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/internal/gc;

    #@6
    new-instance v1, Lcom/google/android/gms/internal/ga$e;

    #@8
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ga$e;-><init>(Lcom/google/android/gms/common/api/a$d;)V

    #@b
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/gc;->a(Lcom/google/android/gms/internal/gb;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    #@e
    :goto_e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    const-string v0, "AppStateClient"

    #@12
    const-string v1, "service died"

    #@14
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    goto :goto_e
.end method

.method protected varargs b([Ljava/lang/String;)V
    .registers 8

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    move v0, v1

    #@3
    move v2, v1

    #@4
    :goto_4
    array-length v4, p1

    #@5
    if-ge v2, v4, :cond_15

    #@7
    aget-object v4, p1, v2

    #@9
    const-string v5, "https://www.googleapis.com/auth/appstate"

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_12

    #@11
    move v0, v3

    #@12
    :cond_12
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_4

    #@15
    :cond_15
    const-string v2, "App State APIs requires %s to function."

    #@17
    new-array v3, v3, [Ljava/lang/Object;

    #@19
    const-string v4, "https://www.googleapis.com/auth/appstate"

    #@1b
    aput-object v4, v3, v1

    #@1d
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->a(ZLjava/lang/Object;)V

    #@24
    return-void
.end method

.method protected bu()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.appstate.service.START"

    #@2
    return-object v0
.end method

.method protected bv()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.appstate.internal.IAppStateService"

    #@2
    return-object v0
.end method

.method public dU()I
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/internal/gc;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/internal/gc;->dU()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "AppStateClient"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    const/4 v0, 0x2

    #@14
    goto :goto_a
.end method

.method public dV()I
    .registers 3

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ga;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/internal/gc;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/internal/gc;->dV()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :catch_b
    move-exception v0

    #@c
    const-string v0, "AppStateClient"

    #@e
    const-string v1, "service died"

    #@10
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    const/4 v0, 0x2

    #@14
    goto :goto_a
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ga;->D(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gc;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
