.class Lcom/apportable/activity/VerdeActivity$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;

.field final synthetic val$newConfig:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/res/Configuration;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$12;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    iput-object p2, p0, Lcom/apportable/activity/VerdeActivity$12;->val$newConfig:Landroid/content/res/Configuration;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$12;->val$newConfig:Landroid/content/res/Configuration;

    #@2
    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeOnConfigurationChanged(Landroid/content/res/Configuration;)V
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$1400(Landroid/content/res/Configuration;)V

    #@5
    return-void
.end method
