.class Lcom/apportable/activity/VerdeActivity$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/Intent;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$13;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    iput-object p2, p0, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$13;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    new-instance v1, Lcom/apportable/activity/VerdeActivity$13$1;

    #@4
    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$13$1;-><init>(Lcom/apportable/activity/VerdeActivity$13;)V

    #@7
    const/4 v2, 0x1

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/apportable/activity/VerdeActivity;->runOnThread(Ljava/lang/Runnable;I)V

    #@b
    return-void
.end method
