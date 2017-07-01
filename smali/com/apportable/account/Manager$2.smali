.class Lcom/apportable/account/Manager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/account/Manager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/apportable/account/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/account/Manager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callback:Lcom/apportable/account/Callback;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/apportable/account/Manager;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/apportable/account/Callback;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/apportable/account/Manager$2;->this$0:Lcom/apportable/account/Manager;

    #@2
    iput-object p2, p0, Lcom/apportable/account/Manager$2;->val$account:Landroid/accounts/Account;

    #@4
    iput-object p3, p0, Lcom/apportable/account/Manager$2;->val$authTokenType:Ljava/lang/String;

    #@6
    iput-object p4, p0, Lcom/apportable/account/Manager$2;->val$options:Landroid/os/Bundle;

    #@8
    iput-object p5, p0, Lcom/apportable/account/Manager$2;->val$callback:Lcom/apportable/account/Callback;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    #@0
    # getter for: Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;
    invoke-static {}, Lcom/apportable/account/Manager;->access$200()Landroid/accounts/AccountManager;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/apportable/account/Manager$2;->val$account:Landroid/accounts/Account;

    #@6
    iget-object v2, p0, Lcom/apportable/account/Manager$2;->val$authTokenType:Ljava/lang/String;

    #@8
    iget-object v3, p0, Lcom/apportable/account/Manager$2;->val$options:Landroid/os/Bundle;

    #@a
    iget-object v4, p0, Lcom/apportable/account/Manager$2;->this$0:Lcom/apportable/account/Manager;

    #@c
    # getter for: Lcom/apportable/account/Manager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/apportable/account/Manager;->access$100(Lcom/apportable/account/Manager;)Landroid/content/Context;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Landroid/app/Activity;

    #@12
    iget-object v5, p0, Lcom/apportable/account/Manager$2;->val$callback:Lcom/apportable/account/Callback;

    #@14
    iget-object v6, p0, Lcom/apportable/account/Manager$2;->this$0:Lcom/apportable/account/Manager;

    #@16
    # getter for: Lcom/apportable/account/Manager;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/apportable/account/Manager;->access$000(Lcom/apportable/account/Manager;)Landroid/os/Handler;

    #@19
    move-result-object v6

    #@1a
    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    #@1d
    move-result-object v0

    #@1e
    if-eqz v0, :cond_25

    #@20
    iget-object v1, p0, Lcom/apportable/account/Manager$2;->val$callback:Lcom/apportable/account/Callback;

    #@22
    invoke-virtual {v1, v0}, Lcom/apportable/account/Callback;->run(Landroid/accounts/AccountManagerFuture;)V

    #@25
    :cond_25
    return-void
.end method
