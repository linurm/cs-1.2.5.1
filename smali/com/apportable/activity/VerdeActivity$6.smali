.class Lcom/apportable/activity/VerdeActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->onStart()V
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
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$6;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$6;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    # getter for: Lcom/apportable/activity/VerdeActivity;->mPaused:Z
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$700(Lcom/apportable/activity/VerdeActivity;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1f

    #@8
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$6;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@a
    # getter for: Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$200(Lcom/apportable/activity/VerdeActivity;)Landroid/widget/FrameLayout;

    #@d
    move-result-object v0

    #@e
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@19
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$6;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@1b
    const/4 v1, 0x0

    #@1c
    # setter for: Lcom/apportable/activity/VerdeActivity;->mPaused:Z
    invoke-static {v0, v1}, Lcom/apportable/activity/VerdeActivity;->access$702(Lcom/apportable/activity/VerdeActivity;Z)Z

    #@1f
    :cond_1f
    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeOnStart()V
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->access$800()V

    #@22
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$6;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@24
    invoke-static {v0}, Lcom/apportable/Lifecycle;->onActivityStart(Lcom/apportable/activity/VerdeActivity;)V

    #@27
    return-void
.end method
