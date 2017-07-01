.class Lcom/facebook/widget/WebDialog$BuilderBase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/WebDialog$BuilderBase",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private applicationId:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

.field private parameters:Landroid/os/Bundle;

.field private session:Lcom/facebook/Session;

.field private theme:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const v0, 0x1030010

    #@6
    iput v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    #@8
    const-string v0, "session"

    #@a
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@d
    invoke-virtual {p2}, Lcom/facebook/Session;->isOpened()Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1b

    #@13
    new-instance v0, Lcom/facebook/FacebookException;

    #@15
    const-string v1, "Attempted to use a Session that was not open."

    #@17
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :cond_1b
    iput-object p2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    #@1d
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/widget/WebDialog$BuilderBase;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    #@20
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const v0, 0x1030010

    #@6
    iput v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    #@8
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_1b

    #@e
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1b

    #@14
    iput-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    #@16
    :goto_16
    const/4 v0, 0x0

    #@17
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/widget/WebDialog$BuilderBase;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    #@1a
    return-void

    #@1b
    :cond_1b
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_24

    #@21
    iput-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    #@23
    goto :goto_16

    #@24
    :cond_24
    new-instance v0, Lcom/facebook/FacebookException;

    #@26
    const-string v1, "Attempted to create a builder without an open Active Session or a valid default Application ID."

    #@28
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const v0, 0x1030010

    #@6
    iput v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    #@8
    if-nez p2, :cond_e

    #@a
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    #@d
    move-result-object p2

    #@e
    :cond_e
    const-string v0, "applicationId"

    #@10
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    iput-object p2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    #@15
    invoke-direct {p0, p1, p3, p4}, Lcom/facebook/widget/WebDialog$BuilderBase;->finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    #@18
    return-void
.end method

.method private finishInit(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->context:Landroid/content/Context;

    #@2
    iput-object p2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->action:Ljava/lang/String;

    #@4
    if-eqz p3, :cond_9

    #@6
    iput-object p3, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    new-instance v0, Landroid/os/Bundle;

    #@b
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@e
    iput-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    #@10
    goto :goto_8
.end method


# virtual methods
.method public build()Lcom/facebook/widget/WebDialog;
    .registers 7

    #@0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    #@2
    if-eqz v0, :cond_36

    #@4
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    #@6
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_36

    #@c
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    #@e
    const-string v1, "app_id"

    #@10
    iget-object v2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    #@12
    invoke-virtual {v2}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    #@1b
    const-string v1, "access_token"

    #@1d
    iget-object v2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->session:Lcom/facebook/Session;

    #@1f
    invoke-virtual {v2}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    :goto_26
    new-instance v0, Lcom/facebook/widget/WebDialog;

    #@28
    iget-object v1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->context:Landroid/content/Context;

    #@2a
    iget-object v2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->action:Ljava/lang/String;

    #@2c
    iget-object v3, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    #@2e
    iget v4, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    #@30
    iget-object v5, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    #@32
    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V

    #@35
    return-object v0

    #@36
    :cond_36
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    #@38
    const-string v1, "app_id"

    #@3a
    iget-object v2, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    #@3c
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@3f
    goto :goto_26
.end method

.method protected getApplicationId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->applicationId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->context:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method protected getListener()Lcom/facebook/widget/WebDialog$OnCompleteListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    #@2
    return-object v0
.end method

.method protected getParameters()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->parameters:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method protected getTheme()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    #@2
    return v0
.end method

.method public setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/WebDialog$OnCompleteListener;",
            ")TCONCRETE;"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->listener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    #@2
    return-object p0
.end method

.method public setTheme(I)Lcom/facebook/widget/WebDialog$BuilderBase;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCONCRETE;"
        }
    .end annotation

    #@0
    iput p1, p0, Lcom/facebook/widget/WebDialog$BuilderBase;->theme:I

    #@2
    return-object p0
.end method
