.class Lcom/apportable/activity/VerdeActivity$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->setContentSize(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;

.field final synthetic val$h:F

.field final synthetic val$w:F


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;FF)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$14;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    iput p2, p0, Lcom/apportable/activity/VerdeActivity$14;->val$w:F

    #@4
    iput p3, p0, Lcom/apportable/activity/VerdeActivity$14;->val$h:F

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    #@7
    move-result-object v0

    #@8
    iget v1, p0, Lcom/apportable/activity/VerdeActivity$14;->val$w:F

    #@a
    float-to-int v1, v1

    #@b
    iget v2, p0, Lcom/apportable/activity/VerdeActivity$14;->val$h:F

    #@d
    float-to-int v2, v2

    #@e
    invoke-virtual {v0, v1, v2}, Lcom/apportable/gl/GLSurfaceView;->setFixedSize(II)V

    #@11
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$14;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@13
    iget v1, p0, Lcom/apportable/activity/VerdeActivity$14;->val$w:F

    #@15
    float-to-int v1, v1

    #@16
    # setter for: Lcom/apportable/activity/VerdeActivity;->mContentWidth:I
    invoke-static {v0, v1}, Lcom/apportable/activity/VerdeActivity;->access$1502(Lcom/apportable/activity/VerdeActivity;I)I

    #@19
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$14;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@1b
    iget v1, p0, Lcom/apportable/activity/VerdeActivity$14;->val$h:F

    #@1d
    float-to-int v1, v1

    #@1e
    # setter for: Lcom/apportable/activity/VerdeActivity;->mContentHeight:I
    invoke-static {v0, v1}, Lcom/apportable/activity/VerdeActivity;->access$1602(Lcom/apportable/activity/VerdeActivity;I)I

    #@21
    return-void
.end method
