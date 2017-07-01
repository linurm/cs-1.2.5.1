.class public Lcom/google/android/gms/plus/PlusClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/PlusClient$Builder;,
        Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;,
        Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;,
        Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;,
        Lcom/google/android/gms/plus/PlusClient$OrderBy;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final abt:Lcom/google/android/gms/plus/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/plus/internal/e;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@5
    return-void
.end method


# virtual methods
.method public clearDefaultAccount()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->clearDefaultAccount()V

    #@5
    return-void
.end method

.method public connect()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->connect()V

    #@5
    return-void
.end method

.method public disconnect()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->disconnect()V

    #@5
    return-void
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->getAccountName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isConnected()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->isConnected()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isConnecting()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->isConnecting()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/e;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/e;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method jS()Lcom/google/android/gms/plus/internal/e;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    return-object v0
.end method

.method public loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    new-instance v1, Lcom/google/android/gms/plus/PlusClient$1;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$1;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/e;->k(Lcom/google/android/gms/common/api/a$d;)V

    #@a
    return-void
.end method

.method public loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    new-instance v1, Lcom/google/android/gms/plus/PlusClient$2;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$2;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V

    #@7
    move v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object v4, p4

    #@a
    move-object v5, p5

    #@b
    move-object v6, p6

    #@c
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    #@f
    return-void
.end method

.method public loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    new-instance v1, Lcom/google/android/gms/plus/PlusClient$5;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$5;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V

    #@7
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;Ljava/util/Collection;)V

    #@a
    return-void
.end method

.method public varargs loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;[Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    new-instance v1, Lcom/google/android/gms/plus/PlusClient$6;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$6;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V

    #@7
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/plus/internal/e;->d(Lcom/google/android/gms/common/api/a$d;[Ljava/lang/String;)V

    #@a
    return-void
.end method

.method public loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;ILjava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    new-instance v1, Lcom/google/android/gms/plus/PlusClient$3;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$3;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V

    #@7
    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;)Lcom/google/android/gms/internal/hg;

    #@a
    return-void
.end method

.method public loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    new-instance v1, Lcom/google/android/gms/plus/PlusClient$4;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$4;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V

    #@7
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/plus/internal/e;->r(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)Lcom/google/android/gms/internal/hg;

    #@a
    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/e;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    #@5
    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/e;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    #@5
    return-void
.end method

.method public removeMoment(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/e;->removeMoment(Ljava/lang/String;)V

    #@5
    return-void
.end method

.method public revokeAccessAndDisconnect(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    new-instance v1, Lcom/google/android/gms/plus/PlusClient$7;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$7;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/e;->m(Lcom/google/android/gms/common/api/a$d;)V

    #@a
    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/e;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    #@5
    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/e;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    #@5
    return-void
.end method

.method public writeMoment(Lcom/google/android/gms/plus/model/moments/Moment;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abt:Lcom/google/android/gms/plus/internal/e;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/plus/model/moments/Moment;)V

    #@6
    return-void
.end method
