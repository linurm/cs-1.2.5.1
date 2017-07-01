.class public Lcom/facebook/LoginActivity;
.super Landroid/app/Activity;


# static fields
.field private static final EXTRA_REQUEST:Ljava/lang/String; = "request"

.field private static final NULL_CALLING_PKG_ERROR_MSG:Ljava/lang/String; = "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance."

.field static final RESULT_KEY:Ljava/lang/String; = "com.facebook.LoginActivity:Result"

.field private static final SAVED_AUTH_CLIENT:Ljava/lang/String; = "authorizationClient"

.field private static final SAVED_CALLING_PKG_KEY:Ljava/lang/String; = "callingPackage"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private authorizationClient:Lcom/facebook/AuthorizationClient;

.field private callingPackage:Ljava/lang/String;

.field private request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/LoginActivity;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/LoginActivity;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/LoginActivity;Lcom/facebook/AuthorizationClient$Result;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/LoginActivity;->onAuthClientCompleted(Lcom/facebook/AuthorizationClient$Result;)V

    #@3
    return-void
.end method

.method private onAuthClientCompleted(Lcom/facebook/AuthorizationClient$Result;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/facebook/LoginActivity;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    #@3
    iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    #@5
    sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

    #@7
    if-ne v0, v1, :cond_23

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    new-instance v1, Landroid/os/Bundle;

    #@c
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@f
    const-string v2, "com.facebook.LoginActivity:Result"

    #@11
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    #@14
    new-instance v2, Landroid/content/Intent;

    #@16
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@19
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@1c
    invoke-virtual {p0, v0, v2}, Lcom/facebook/LoginActivity;->setResult(ILandroid/content/Intent;)V

    #@1f
    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->finish()V

    #@22
    return-void

    #@23
    :cond_23
    const/4 v0, -0x1

    #@24
    goto :goto_a
.end method

.method static populateIntentExtras(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Landroid/os/Bundle;
    .registers 3

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "request"

    #@7
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    #@a
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/AuthorizationClient;->onActivityResult(IILandroid/content/Intent;)Z

    #@5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    const v0, 0x7f030001

    #@6
    invoke-virtual {p0, v0}, Lcom/facebook/LoginActivity;->setContentView(I)V

    #@9
    if-eqz p1, :cond_37

    #@b
    const-string v0, "callingPackage"

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    #@13
    const-string v0, "authorizationClient"

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/facebook/AuthorizationClient;

    #@1b
    iput-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@1d
    :goto_1d
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@1f
    invoke-virtual {v0, p0}, Lcom/facebook/AuthorizationClient;->setContext(Landroid/app/Activity;)V

    #@22
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@24
    new-instance v1, Lcom/facebook/LoginActivity$1;

    #@26
    invoke-direct {v1, p0}, Lcom/facebook/LoginActivity$1;-><init>(Lcom/facebook/LoginActivity;)V

    #@29
    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V

    #@2c
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@2e
    new-instance v1, Lcom/facebook/LoginActivity$2;

    #@30
    invoke-direct {v1, p0}, Lcom/facebook/LoginActivity$2;-><init>(Lcom/facebook/LoginActivity;)V

    #@33
    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->setBackgroundProcessingListener(Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;)V

    #@36
    return-void

    #@37
    :cond_37
    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->getCallingPackage()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    #@3d
    new-instance v0, Lcom/facebook/AuthorizationClient;

    #@3f
    invoke-direct {v0}, Lcom/facebook/AuthorizationClient;-><init>()V

    #@42
    iput-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@44
    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->getIntent()Landroid/content/Intent;

    #@47
    move-result-object v0

    #@48
    const-string v1, "request"

    #@4a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    #@50
    iput-object v0, p0, Lcom/facebook/LoginActivity;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    #@52
    goto :goto_1d
.end method

.method public onPause()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    #@3
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@5
    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient;->cancelCurrentHandler()V

    #@8
    const v0, 0x7f040018

    #@b
    invoke-virtual {p0, v0}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    const/16 v1, 0x8

    #@11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@14
    return-void
.end method

.method public onResume()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    #@3
    iget-object v0, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    #@5
    if-nez v0, :cond_12

    #@7
    sget-object v0, Lcom/facebook/LoginActivity;->TAG:Ljava/lang/String;

    #@9
    const-string v1, "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance."

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->finish()V

    #@11
    :goto_11
    return-void

    #@12
    :cond_12
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@14
    iget-object v1, p0, Lcom/facebook/LoginActivity;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    #@16
    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->startOrContinueAuth(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    #@19
    goto :goto_11
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    const-string v0, "callingPackage"

    #@5
    iget-object v1, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    const-string v0, "authorizationClient"

    #@c
    iget-object v1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    #@e
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    #@11
    return-void
.end method
