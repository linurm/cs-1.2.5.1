.class Lcom/facebook/AuthorizationClient$AuthDialogBuilder;
.super Lcom/facebook/widget/WebDialog$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthDialogBuilder"
.end annotation


# static fields
.field private static final OAUTH_DIALOG:Ljava/lang/String; = "oauth"

.field static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"


# instance fields
.field private e2e:Ljava/lang/String;

.field private isRerequest:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    #@0
    const-string v0, "oauth"

    #@2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/widget/WebDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@5
    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/widget/WebDialog;
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->getParameters()Landroid/os/Bundle;

    #@3
    move-result-object v3

    #@4
    const-string v0, "redirect_uri"

    #@6
    const-string v1, "fbconnect://success"

    #@8
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    const-string v0, "client_id"

    #@d
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->getApplicationId()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    const-string v0, "e2e"

    #@16
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->e2e:Ljava/lang/String;

    #@18
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    const-string v0, "response_type"

    #@1d
    const-string v1, "token"

    #@1f
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    const-string v0, "return_scopes"

    #@24
    const-string v1, "true"

    #@26
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@29
    iget-boolean v0, p0, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->isRerequest:Z

    #@2b
    if-eqz v0, :cond_3a

    #@2d
    invoke-static {}, Lcom/facebook/Settings;->getPlatformCompatibilityEnabled()Z

    #@30
    move-result v0

    #@31
    if-nez v0, :cond_3a

    #@33
    const-string v0, "auth_type"

    #@35
    const-string v1, "rerequest"

    #@37
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    :cond_3a
    new-instance v0, Lcom/facebook/widget/WebDialog;

    #@3c
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->getContext()Landroid/content/Context;

    #@3f
    move-result-object v1

    #@40
    const-string v2, "oauth"

    #@42
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->getTheme()I

    #@45
    move-result v4

    #@46
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->getListener()Lcom/facebook/widget/WebDialog$OnCompleteListener;

    #@49
    move-result-object v5

    #@4a
    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V

    #@4d
    return-object v0
.end method

.method public setE2E(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$AuthDialogBuilder;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->e2e:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public setIsRerequest(Z)Lcom/facebook/AuthorizationClient$AuthDialogBuilder;
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->isRerequest:Z

    #@2
    return-object p0
.end method
