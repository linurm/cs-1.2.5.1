.class public Lcom/google/android/gms/plus/internal/e;
.super Lcom/google/android/gms/internal/hb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/internal/e$a;,
        Lcom/google/android/gms/plus/internal/e$b;,
        Lcom/google/android/gms/plus/internal/e$c;,
        Lcom/google/android/gms/plus/internal/e$d;,
        Lcom/google/android/gms/plus/internal/e$e;,
        Lcom/google/android/gms/plus/internal/e$f;,
        Lcom/google/android/gms/plus/internal/e$g;,
        Lcom/google/android/gms/plus/internal/e$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/plus/internal/d;",
        ">;"
    }
.end annotation


# instance fields
.field private abJ:Lcom/google/android/gms/plus/model/people/Person;

.field private final abK:Lcom/google/android/gms/plus/internal/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/plus/internal/h;)V
    .registers 12

    #@0
    invoke-virtual {p5}, Lcom/google/android/gms/plus/internal/h;->jZ()[Ljava/lang/String;

    #@3
    move-result-object v5

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v3, p3

    #@8
    move-object v4, p4

    #@9
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    #@c
    iput-object p5, p0, Lcom/google/android/gms/plus/internal/e;->abK:Lcom/google/android/gms/plus/internal/h;

    #@e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Lcom/google/android/gms/plus/internal/h;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@3
    move-result-object v2

    #@4
    new-instance v3, Lcom/google/android/gms/internal/hb$c;

    #@6
    invoke-direct {v3, p2}, Lcom/google/android/gms/internal/hb$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    #@9
    new-instance v4, Lcom/google/android/gms/internal/hb$g;

    #@b
    invoke-direct {v4, p3}, Lcom/google/android/gms/internal/hb$g;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    #@e
    move-object v0, p0

    #@f
    move-object v1, p1

    #@10
    move-object v5, p4

    #@11
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/plus/internal/h;)V

    #@14
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;)Lcom/google/android/gms/internal/hg;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/hg;"
        }
    .end annotation

    #@0
    const/4 v6, 0x0

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->cn()V

    #@4
    new-instance v1, Lcom/google/android/gms/plus/internal/e$e;

    #@6
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/e$e;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V

    #@9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ft()Landroid/os/IInterface;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/google/android/gms/plus/internal/d;

    #@f
    const/4 v2, 0x1

    #@10
    const/4 v4, -0x1

    #@11
    move v3, p2

    #@12
    move-object v5, p3

    #@13
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/d;->a(Lcom/google/android/gms/plus/internal/b;IIILjava/lang/String;)Lcom/google/android/gms/internal/hg;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_18

    #@16
    move-result-object v0

    #@17
    :goto_17
    return-object v0

    #@18
    :catch_18
    move-exception v0

    #@19
    const/16 v0, 0x8

    #@1b
    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->af(I)Lcom/google/android/gms/common/data/DataHolder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/plus/internal/e$e;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    #@22
    move-object v0, v6

    #@23
    goto :goto_17
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5

    #@0
    if-nez p1, :cond_18

    #@2
    if-eqz p3, :cond_18

    #@4
    const-string v0, "loaded_person"

    #@6
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_18

    #@c
    const-string v0, "loaded_person"

    #@e
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@11
    move-result-object v0

    #@12
    invoke-static {v0}, Lcom/google/android/gms/internal/ks;->i([B)Lcom/google/android/gms/internal/ks;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/e;->abJ:Lcom/google/android/gms/plus/model/people/Person;

    #@18
    :cond_18
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/hb;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    #@1b
    return-void
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
            ">;I",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v7, 0x0

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->cn()V

    #@4
    if-eqz p1, :cond_1a

    #@6
    new-instance v1, Lcom/google/android/gms/plus/internal/e$b;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/e$b;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    :goto_b
    :try_start_b
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ft()Landroid/os/IInterface;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/google/android/gms/plus/internal/d;

    #@11
    move v2, p2

    #@12
    move-object v3, p3

    #@13
    move-object v4, p4

    #@14
    move-object v5, p5

    #@15
    move-object v6, p6

    #@16
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/d;->a(Lcom/google/android/gms/plus/internal/b;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_1c

    #@19
    :goto_19
    return-void

    #@1a
    :cond_1a
    move-object v1, v7

    #@1b
    goto :goto_b

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    const/16 v0, 0x8

    #@1f
    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->af(I)Lcom/google/android/gms/common/data/DataHolder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v1, v0, v7, v7}, Lcom/google/android/gms/plus/internal/e$b;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V

    #@26
    goto :goto_19
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/plus/model/moments/Moment;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/plus/model/moments/Moment;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->cn()V

    #@4
    if-eqz p1, :cond_1c

    #@6
    new-instance v0, Lcom/google/android/gms/plus/internal/e$a;

    #@8
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/plus/internal/e$a;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    move-object v1, v0

    #@c
    :goto_c
    :try_start_c
    check-cast p2, Lcom/google/android/gms/internal/kp;

    #@e
    invoke-static {p2}, Lcom/google/android/gms/internal/ie;->a(Lcom/google/android/gms/internal/hy;)Lcom/google/android/gms/internal/ie;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ft()Landroid/os/IInterface;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/google/android/gms/plus/internal/d;

    #@18
    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/plus/internal/d;->a(Lcom/google/android/gms/plus/internal/b;Lcom/google/android/gms/internal/ie;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1b} :catch_1e

    #@1b
    :goto_1b
    return-void

    #@1c
    :cond_1c
    move-object v1, v2

    #@1d
    goto :goto_c

    #@1e
    :catch_1e
    move-exception v0

    #@1f
    if-nez v1, :cond_27

    #@21
    new-instance v1, Ljava/lang/IllegalStateException;

    #@23
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@26
    throw v1

    #@27
    :cond_27
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@29
    const/16 v3, 0x8

    #@2b
    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    #@2e
    invoke-virtual {v1, v0}, Lcom/google/android/gms/plus/internal/e$a;->am(Lcom/google/android/gms/common/api/Status;)V

    #@31
    goto :goto_1b
.end method

.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->cn()V

    #@3
    new-instance v1, Lcom/google/android/gms/plus/internal/e$e;

    #@5
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/e$e;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V

    #@8
    :try_start_8
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ft()Landroid/os/IInterface;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/google/android/gms/plus/internal/d;

    #@e
    new-instance v2, Ljava/util/ArrayList;

    #@10
    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@13
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/plus/internal/d;->a(Lcom/google/android/gms/plus/internal/b;Ljava/util/List;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17

    #@16
    :goto_16
    return-void

    #@17
    :catch_17
    move-exception v0

    #@18
    const/16 v0, 0x8

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->af(I)Lcom/google/android/gms/common/data/DataHolder;

    #@1d
    move-result-object v0

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/plus/internal/e$e;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    #@22
    goto :goto_16
.end method

.method protected a(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hb$e;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e;->abK:Lcom/google/android/gms/plus/internal/h;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->kh()Landroid/os/Bundle;

    #@5
    move-result-object v7

    #@6
    const-string v0, "request_visible_actions"

    #@8
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/e;->abK:Lcom/google/android/gms/plus/internal/h;

    #@a
    invoke-virtual {v1}, Lcom/google/android/gms/plus/internal/h;->ka()[Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@11
    const v2, 0x4da6e8

    #@14
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e;->abK:Lcom/google/android/gms/plus/internal/h;

    #@16
    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->kd()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e;->abK:Lcom/google/android/gms/plus/internal/h;

    #@1c
    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->kc()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->fs()[Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e;->abK:Lcom/google/android/gms/plus/internal/h;

    #@26
    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->getAccountName()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    move-object v0, p1

    #@2b
    move-object v1, p2

    #@2c
    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/hi;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@2f
    return-void
.end method

.method protected bn(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/d;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/plus/internal/d$a;->bm(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/d;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected bu()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.plus.service.START"

    #@2
    return-object v0
.end method

.method protected bv()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    #@2
    return-object v0
.end method

.method public by(Ljava/lang/String;)Z
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->fs()[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public clearDefaultAccount()V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->cn()V

    #@3
    const/4 v0, 0x0

    #@4
    :try_start_4
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/e;->abJ:Lcom/google/android/gms/plus/model/people/Person;

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ft()Landroid/os/IInterface;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/google/android/gms/plus/internal/d;

    #@c
    invoke-interface {v0}, Lcom/google/android/gms/plus/internal/d;->clearDefaultAccount()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    #@f
    return-void

    #@10
    :catch_10
    move-exception v0

    #@11
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public d(Lcom/google/android/gms/common/api/a$d;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;Ljava/util/Collection;)V

    #@7
    return-void
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->cn()V

    #@3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ft()Landroid/os/IInterface;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/plus/internal/d;

    #@9
    invoke-interface {v0}, Lcom/google/android/gms/plus/internal/d;->getAccountName()Ljava/lang/String;
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    :catch_e
    move-exception v0

    #@f
    new-instance v1, Ljava/lang/IllegalStateException;

    #@11
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@14
    throw v1
.end method

.method public getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->cn()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e;->abJ:Lcom/google/android/gms/plus/model/people/Person;

    #@5
    return-object v0
.end method

.method public k(Lcom/google/android/gms/common/api/a$d;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/plus/Moments$LoadMomentsResult;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v3, 0x0

    #@1
    const/16 v2, 0x14

    #@3
    const-string v6, "me"

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v4, v3

    #@8
    move-object v5, v3

    #@9
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    #@c
    return-void
.end method

.method public l(Lcom/google/android/gms/common/api/a$d;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v6, 0x0

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->cn()V

    #@4
    new-instance v1, Lcom/google/android/gms/plus/internal/e$e;

    #@6
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/e$e;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V

    #@9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ft()Landroid/os/IInterface;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Lcom/google/android/gms/plus/internal/d;

    #@f
    const/4 v2, 0x2

    #@10
    const/4 v3, 0x1

    #@11
    const/4 v4, -0x1

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/d;->a(Lcom/google/android/gms/plus/internal/b;IIILjava/lang/String;)Lcom/google/android/gms/internal/hg;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    #@16
    :goto_16
    return-void

    #@17
    :catch_17
    move-exception v0

    #@18
    const/16 v0, 0x8

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->af(I)Lcom/google/android/gms/common/data/DataHolder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/plus/internal/e$e;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V

    #@21
    goto :goto_16
.end method

.method public m(Lcom/google/android/gms/common/api/a$d;)V
    .registers 5
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
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->cn()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->clearDefaultAccount()V

    #@6
    new-instance v1, Lcom/google/android/gms/plus/internal/e$g;

    #@8
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/e$g;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V

    #@b
    :try_start_b
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ft()Landroid/os/IInterface;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/google/android/gms/plus/internal/d;

    #@11
    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/internal/d;->b(Lcom/google/android/gms/plus/internal/b;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    #@14
    :goto_14
    return-void

    #@15
    :catch_15
    move-exception v0

    #@16
    const/16 v0, 0x8

    #@18
    const/4 v2, 0x0

    #@19
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/plus/internal/e$g;->h(ILandroid/os/Bundle;)V

    #@1c
    goto :goto_14
.end method

.method public r(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)Lcom/google/android/gms/internal/hg;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/plus/People$LoadPeopleResult;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/hg;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;)Lcom/google/android/gms/internal/hg;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public removeMoment(Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->cn()V

    #@3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ft()Landroid/os/IInterface;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/plus/internal/d;

    #@9
    invoke-interface {v0, p1}, Lcom/google/android/gms/plus/internal/d;->removeMoment(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    #@c
    return-void

    #@d
    :catch_d
    move-exception v0

    #@e
    new-instance v1, Ljava/lang/IllegalStateException;

    #@10
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/e;->bn(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/d;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
