.class final Lcom/apportable/Lifecycle$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/Lifecycle;->expectLoseFocus(Lcom/apportable/activity/VerdeActivity;)V
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
    iput-object p1, p0, Lcom/apportable/Lifecycle$2;->val$localActivity:Lcom/apportable/activity/VerdeActivity;

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
    if-eqz v0, :cond_19

    #@6
    # getter for: Lcom/apportable/Lifecycle;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/apportable/Lifecycle;->access$100()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    const-string v1, "UNFOCUSING BECAUSE WE DIDN\'T GET AN UNFOCUS EVENT"

    #@c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    iget-object v0, p0, Lcom/apportable/Lifecycle$2;->val$localActivity:Lcom/apportable/activity/VerdeActivity;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-static {v0, v1}, Lcom/apportable/Lifecycle;->onActivityWindowFocusChanged(Lcom/apportable/activity/VerdeActivity;Z)V

    #@15
    const/4 v0, 0x1

    #@16
    # setter for: Lcom/apportable/Lifecycle;->didNotReceiveUnfocus:Z
    invoke-static {v0}, Lcom/apportable/Lifecycle;->access$202(Z)Z

    #@19
    :cond_19
    return-void
.end method
