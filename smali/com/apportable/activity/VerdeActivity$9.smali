.class Lcom/apportable/activity/VerdeActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$9;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$9;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    invoke-static {v0}, Lcom/apportable/Lifecycle;->onActivityStop(Lcom/apportable/activity/VerdeActivity;)V

    #@5
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$9;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@7
    # getter for: Lcom/apportable/activity/VerdeActivity;->mPaused:Z
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$700(Lcom/apportable/activity/VerdeActivity;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_24

    #@d
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$9;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@f
    const/4 v1, 0x1

    #@10
    # setter for: Lcom/apportable/activity/VerdeActivity;->mPaused:Z
    invoke-static {v0, v1}, Lcom/apportable/activity/VerdeActivity;->access$702(Lcom/apportable/activity/VerdeActivity;Z)Z

    #@13
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$9;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@15
    # getter for: Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$200(Lcom/apportable/activity/VerdeActivity;)Landroid/widget/FrameLayout;

    #@18
    move-result-object v0

    #@19
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    #@24
    :cond_24
    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeOnStop()V
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->access$1100()V

    #@27
    return-void
.end method
