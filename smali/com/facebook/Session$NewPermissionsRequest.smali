.class public final Lcom/facebook/Session$NewPermissionsRequest;
.super Lcom/facebook/Session$AuthorizationRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewPermissionsRequest"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Landroid/app/Activity;)V

    #@3
    invoke-virtual {p0, p2}, Lcom/facebook/Session$NewPermissionsRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;

    #@6
    return-void
.end method

.method public varargs constructor <init>(Landroid/app/Activity;[Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Landroid/app/Activity;)V

    #@3
    invoke-virtual {p0, p2}, Lcom/facebook/Session$NewPermissionsRequest;->setPermissions([Ljava/lang/String;)Lcom/facebook/Session$AuthorizationRequest;

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    #@3
    invoke-virtual {p0, p2}, Lcom/facebook/Session$NewPermissionsRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$AuthorizationRequest;

    #@6
    return-void
.end method

.method public varargs constructor <init>(Landroid/support/v4/app/Fragment;[Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    #@3
    invoke-virtual {p0, p2}, Lcom/facebook/Session$NewPermissionsRequest;->setPermissions([Ljava/lang/String;)Lcom/facebook/Session$AuthorizationRequest;

    #@6
    return-void
.end method


# virtual methods
.method getAuthorizationClientRequest()Lcom/facebook/AuthorizationClient$AuthorizationRequest;
    .registers 3

    #@0
    invoke-super {p0}, Lcom/facebook/Session$AuthorizationRequest;->getAuthorizationClientRequest()Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->setRerequest(Z)V

    #@8
    return-object v0
.end method

.method public bridge synthetic setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$AuthorizationRequest;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/Session$NewPermissionsRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$NewPermissionsRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$NewPermissionsRequest;
    .registers 2

    #@0
    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$AuthorizationRequest;

    #@3
    return-object p0
.end method

.method public bridge synthetic setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$AuthorizationRequest;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/Session$NewPermissionsRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$NewPermissionsRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$NewPermissionsRequest;
    .registers 2

    #@0
    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$AuthorizationRequest;

    #@3
    return-object p0
.end method

.method public bridge synthetic setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/Session$NewPermissionsRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$NewPermissionsRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$NewPermissionsRequest;
    .registers 2

    #@0
    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$AuthorizationRequest;

    #@3
    return-object p0
.end method

.method public bridge synthetic setRequestCode(I)Lcom/facebook/Session$AuthorizationRequest;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/Session$NewPermissionsRequest;->setRequestCode(I)Lcom/facebook/Session$NewPermissionsRequest;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final setRequestCode(I)Lcom/facebook/Session$NewPermissionsRequest;
    .registers 2

    #@0
    invoke-super {p0, p1}, Lcom/facebook/Session$AuthorizationRequest;->setRequestCode(I)Lcom/facebook/Session$AuthorizationRequest;

    #@3
    return-object p0
.end method
