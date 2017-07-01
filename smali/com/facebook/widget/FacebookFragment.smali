.class Lcom/facebook/widget/FacebookFragment;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/FacebookFragment$DefaultSessionStatusCallback;
    }
.end annotation


# instance fields
.field private sessionTracker:Lcom/facebook/internal/SessionTracker;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    #@3
    return-void
.end method

.method private openSession(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;ILcom/facebook/internal/SessionAuthorizationType;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/SessionLoginBehavior;",
            "I",
            "Lcom/facebook/internal/SessionAuthorizationType;",
            ")V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@2
    if-eqz v0, :cond_4c

    #@4
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@6
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_16

    #@c
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Lcom/facebook/SessionState;->isClosed()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2a

    #@16
    :cond_16
    new-instance v0, Lcom/facebook/Session$Builder;

    #@18
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    #@1f
    invoke-virtual {v0, p1}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    #@26
    move-result-object v0

    #@27
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    #@2a
    :cond_2a
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    #@2d
    move-result v1

    #@2e
    if-nez v1, :cond_4c

    #@30
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    #@32
    invoke-direct {v1, p0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    #@35
    invoke-virtual {v1, p2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p3}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1, p4}, Lcom/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/facebook/Session$OpenRequest;

    #@40
    move-result-object v1

    #@41
    sget-object v2, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    #@43
    invoke-virtual {v2, p5}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_4d

    #@49
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    #@4c
    :cond_4c
    :goto_4c
    return-void

    #@4d
    :cond_4d
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    #@50
    goto :goto_4c
.end method


# virtual methods
.method protected final closeSession()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@2
    if-eqz v0, :cond_f

    #@4
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@6
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_f

    #@c
    invoke-virtual {v0}, Lcom/facebook/Session;->close()V

    #@f
    :cond_f
    return-void
.end method

.method protected final closeSessionAndClearTokenInformation()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@2
    if-eqz v0, :cond_f

    #@4
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@6
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    #@9
    move-result-object v0

    #@a
    if-eqz v0, :cond_f

    #@c
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    #@f
    :cond_f
    return-void
.end method

.method protected final getAccessToken()Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@3
    if-eqz v1, :cond_11

    #@5
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@7
    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_11

    #@d
    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    :cond_11
    return-object v0
.end method

.method protected final getExpirationDate()Ljava/util/Date;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@3
    if-eqz v1, :cond_11

    #@5
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@7
    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_11

    #@d
    invoke-virtual {v1}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    #@10
    move-result-object v0

    #@11
    :cond_11
    return-object v0
.end method

.method protected final getSession()Lcom/facebook/Session;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@2
    if-eqz v0, :cond_b

    #@4
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@6
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_a
.end method

.method protected final getSessionPermissions()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@3
    if-eqz v1, :cond_11

    #@5
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@7
    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_11

    #@d
    invoke-virtual {v1}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    #@10
    move-result-object v0

    #@11
    :cond_11
    return-object v0
.end method

.method protected final getSessionState()Lcom/facebook/SessionState;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@3
    if-eqz v1, :cond_11

    #@5
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@7
    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_11

    #@d
    invoke-virtual {v1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    #@10
    move-result-object v0

    #@11
    :cond_11
    return-object v0
.end method

.method protected final isSessionOpen()Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@3
    if-eqz v1, :cond_e

    #@5
    iget-object v1, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@7
    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_e

    #@d
    const/4 v0, 0x1

    #@e
    :cond_e
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6

    #@0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@3
    new-instance v0, Lcom/facebook/internal/SessionTracker;

    #@5
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@8
    move-result-object v1

    #@9
    new-instance v2, Lcom/facebook/widget/FacebookFragment$DefaultSessionStatusCallback;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-direct {v2, p0, v3}, Lcom/facebook/widget/FacebookFragment$DefaultSessionStatusCallback;-><init>(Lcom/facebook/widget/FacebookFragment;Lcom/facebook/widget/FacebookFragment$1;)V

    #@f
    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;)V

    #@12
    iput-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@14
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    #@0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    #@3
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@5
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    #@10
    return-void
.end method

.method public onDestroy()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    #@3
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@5
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->stopTracking()V

    #@8
    return-void
.end method

.method protected onSessionStateChange(Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 3

    #@0
    return-void
.end method

.method protected final openSession()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0, v0}, Lcom/facebook/widget/FacebookFragment;->openSessionForRead(Ljava/lang/String;Ljava/util/List;)V

    #@4
    return-void
.end method

.method protected final openSessionForPublish(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    #@2
    const v1, 0xface

    #@5
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/widget/FacebookFragment;->openSessionForPublish(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;I)V

    #@8
    return-void
.end method

.method protected final openSessionForPublish(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/SessionLoginBehavior;",
            "I)V"
        }
    .end annotation

    #@0
    sget-object v5, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    move v4, p4

    #@7
    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/FacebookFragment;->openSession(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;ILcom/facebook/internal/SessionAuthorizationType;)V

    #@a
    return-void
.end method

.method protected final openSessionForRead(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    #@2
    const v1, 0xface

    #@5
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/facebook/widget/FacebookFragment;->openSessionForRead(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;I)V

    #@8
    return-void
.end method

.method protected final openSessionForRead(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/SessionLoginBehavior;",
            "I)V"
        }
    .end annotation

    #@0
    sget-object v5, Lcom/facebook/internal/SessionAuthorizationType;->READ:Lcom/facebook/internal/SessionAuthorizationType;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v3, p3

    #@6
    move v4, p4

    #@7
    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/FacebookFragment;->openSession(Ljava/lang/String;Ljava/util/List;Lcom/facebook/SessionLoginBehavior;ILcom/facebook/internal/SessionAuthorizationType;)V

    #@a
    return-void
.end method

.method public setSession(Lcom/facebook/Session;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/facebook/widget/FacebookFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@6
    invoke-virtual {v0, p1}, Lcom/facebook/internal/SessionTracker;->setSession(Lcom/facebook/Session;)V

    #@9
    :cond_9
    return-void
.end method
