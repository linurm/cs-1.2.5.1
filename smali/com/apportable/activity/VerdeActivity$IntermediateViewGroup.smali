.class Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/activity/VerdeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntermediateViewGroup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/Context;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@5
    return-void
.end method

.method static synthetic access$601(Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;Landroid/view/View;)V
    .registers 2

    #@0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@3
    return-void
.end method


# virtual methods
.method public removeView(Landroid/view/View;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    new-instance v1, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup$1;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup$1;-><init>(Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;Landroid/view/View;)V

    #@7
    const/4 v2, 0x1

    #@8
    invoke-virtual {v0, v1, v2}, Lcom/apportable/activity/VerdeActivity;->runOnThread(Ljava/lang/Runnable;I)V

    #@b
    return-void
.end method
