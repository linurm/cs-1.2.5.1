.class Lcom/facebook/widget/UserSettingsFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Request$GraphUserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/UserSettingsFragment;->fetchUserInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/UserSettingsFragment;

.field final synthetic val$currentSession:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/widget/UserSettingsFragment;Lcom/facebook/Session;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/facebook/widget/UserSettingsFragment$1;->this$0:Lcom/facebook/widget/UserSettingsFragment;

    #@2
    iput-object p2, p0, Lcom/facebook/widget/UserSettingsFragment$1;->val$currentSession:Lcom/facebook/Session;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment$1;->val$currentSession:Lcom/facebook/Session;

    #@2
    iget-object v1, p0, Lcom/facebook/widget/UserSettingsFragment$1;->this$0:Lcom/facebook/widget/UserSettingsFragment;

    #@4
    invoke-virtual {v1}, Lcom/facebook/widget/UserSettingsFragment;->getSession()Lcom/facebook/Session;

    #@7
    move-result-object v1

    #@8
    if-ne v0, v1, :cond_14

    #@a
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment$1;->this$0:Lcom/facebook/widget/UserSettingsFragment;

    #@c
    # setter for: Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;
    invoke-static {v0, p1}, Lcom/facebook/widget/UserSettingsFragment;->access$002(Lcom/facebook/widget/UserSettingsFragment;Lcom/facebook/model/GraphUser;)Lcom/facebook/model/GraphUser;

    #@f
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment$1;->this$0:Lcom/facebook/widget/UserSettingsFragment;

    #@11
    # invokes: Lcom/facebook/widget/UserSettingsFragment;->updateUI()V
    invoke-static {v0}, Lcom/facebook/widget/UserSettingsFragment;->access$100(Lcom/facebook/widget/UserSettingsFragment;)V

    #@14
    :cond_14
    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_2b

    #@1a
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment$1;->this$0:Lcom/facebook/widget/UserSettingsFragment;

    #@1c
    # getter for: Lcom/facebook/widget/UserSettingsFragment;->loginButton:Lcom/facebook/widget/LoginButton;
    invoke-static {v0}, Lcom/facebook/widget/UserSettingsFragment;->access$200(Lcom/facebook/widget/UserSettingsFragment;)Lcom/facebook/widget/LoginButton;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Lcom/facebook/widget/LoginButton;->handleError(Ljava/lang/Exception;)V

    #@2b
    :cond_2b
    return-void
.end method
