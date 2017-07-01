.class final Lcom/apportable/Lifecycle$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/Lifecycle;->expectGainFocus(Lcom/apportable/activity/VerdeActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic val$localActivity:Lcom/apportable/activity/VerdeActivity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/Lifecycle$3;->val$localActivity:Lcom/apportable/activity/VerdeActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    # getter for: Lcom/apportable/Lifecycle;->sWindowHasFocus:Z
    invoke-static {}, Lcom/apportable/Lifecycle;->access$000()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_1f

    #@6
    # getter for: Lcom/apportable/Lifecycle;->didNotReceiveUnfocus:Z
    invoke-static {}, Lcom/apportable/Lifecycle;->access$200()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1f

    #@c
    # getter for: Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/apportable/Lifecycle;->access$100()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    const-string v1, "FOCUSING BECAUSE WE DIDN\'T GET A FOCUS EVENT"

    #@12
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    iget-object v0, p0, Lcom/apportable/Lifecycle$3;->val$localActivity:Lcom/apportable/activity/VerdeActivity;

    #@17
    const/4 v1, 0x1

    #@18
    invoke-static {v0, v1}, Lcom/apportable/Lifecycle;->onActivityWindowFocusChanged(Lcom/apportable/activity/VerdeActivity;Z)V

    #@1b
    const/4 v0, 0x0

    #@1c
    # setter for: Lcom/apportable/Lifecycle;->didNotReceiveUnfocus:Z
    invoke-static {v0}, Lcom/apportable/Lifecycle;->access$202(Z)Z

    #@1f
    :cond_1f
    return-void
.end method
