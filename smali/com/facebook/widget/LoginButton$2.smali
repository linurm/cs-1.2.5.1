.class Lcom/facebook/widget/LoginButton$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/LoginButton;->fetchUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/LoginButton;

.field final synthetic val$currentSession:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/Session;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$2;->this$0:Lcom/facebook/widget/LoginButton;

    #@2
    iput-object p2, p0, Lcom/facebook/widget/LoginButton$2;->val$currentSession:Lcom/facebook/Session;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$2;->val$currentSession:Lcom/facebook/Session;

    #@2
    iget-object v1, p0, Lcom/facebook/widget/LoginButton$2;->this$0:Lcom/facebook/widget/LoginButton;

    #@4
    # getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;
    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->access$400(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    #@b
    move-result-object v1

    #@c
    if-ne v0, v1, :cond_2a

    #@e
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$2;->this$0:Lcom/facebook/widget/LoginButton;

    #@10
    # setter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;
    invoke-static {v0, p1}, Lcom/facebook/widget/LoginButton;->access$502(Lcom/facebook/widget/LoginButton;Lcom/facebook/model/GraphUser;)Lcom/facebook/model/GraphUser;

    #@13
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$2;->this$0:Lcom/facebook/widget/LoginButton;

    #@15
    # getter for: Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$600(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    #@18
    move-result-object v0

    #@19
    if-eqz v0, :cond_2a

    #@1b
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$2;->this$0:Lcom/facebook/widget/LoginButton;

    #@1d
    # getter for: Lcom/facebook/widget/LoginButton;->userInfoChangedCallback:Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;
    invoke-static {v0}, Lcom/facebook/widget/LoginButton;->access$600(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Lcom/facebook/widget/LoginButton$2;->this$0:Lcom/facebook/widget/LoginButton;

    #@23
    # getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;
    invoke-static {v1}, Lcom/facebook/widget/LoginButton;->access$500(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    #@26
    move-result-object v1

    #@27
    invoke-interface {v0, v1}, Lcom/facebook/widget/LoginButton$UserInfoChangedCallback;->onUserInfoFetched(Lcom/facebook/model/GraphUser;)V

    #@2a
    :cond_2a
    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    #@2d
    move-result-object v0

    #@2e
    if-eqz v0, :cond_3d

    #@30
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$2;->this$0:Lcom/facebook/widget/LoginButton;

    #@32
    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Lcom/facebook/widget/LoginButton;->handleError(Ljava/lang/Exception;)V

    #@3d
    :cond_3d
    return-void
.end method
