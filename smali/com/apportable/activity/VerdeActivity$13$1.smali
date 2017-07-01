.class Lcom/apportable/activity/VerdeActivity$13$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/activity/VerdeActivity$13;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity$13;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    #@3
    iget-object v1, v1, Lcom/apportable/activity/VerdeActivity$13;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@5
    iget-object v2, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    #@7
    iget-object v2, v2, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    #@9
    invoke-virtual {v1, v2}, Lcom/apportable/activity/VerdeActivity;->setIntent(Landroid/content/Intent;)V

    #@c
    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    #@e
    iget-object v1, v1, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    #@10
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@13
    move-result-object v1

    #@14
    if-eqz v1, :cond_1e

    #@16
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    #@18
    iget-object v0, v0, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    #@1a
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    :cond_1e
    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    #@20
    iget-object v1, v1, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    #@22
    const-string v2, "ACCESS_TOKEN"

    #@24
    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_88

    #@2a
    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    #@2c
    iget-object v1, v1, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    #@2e
    const-string v2, "ACCESS_TOKEN"

    #@30
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    iget-object v2, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    #@36
    iget-object v2, v2, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    #@38
    const-string v3, "ACCESS_SECRET"

    #@3a
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    iget-object v3, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    #@40
    iget-object v3, v3, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    #@42
    const-string v4, "UID"

    #@44
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    new-instance v4, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string v5, "oauth_token="

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    const-string v4, "&oauth_token_secret="

    #@59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    const-string v2, "&uid="

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    if-eqz v0, :cond_88

    #@71
    new-instance v2, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v0

    #@7a
    const-string v2, "?"

    #@7c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    :cond_88
    if-eqz v0, :cond_8d

    #@8a
    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeHandleUri(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$400(Ljava/lang/String;)V

    #@8d
    :cond_8d
    return-void
.end method
