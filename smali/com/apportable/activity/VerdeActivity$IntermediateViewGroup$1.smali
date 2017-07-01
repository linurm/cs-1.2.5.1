.class Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;->removeView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;Landroid/view/View;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup$1;->this$1:Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;

    #@2
    iput-object p2, p0, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup$1;->val$view:Landroid/view/View;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup$1;->this$1:Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;

    #@2
    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup$1;->val$view:Landroid/view/View;

    #@4
    # invokes: Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;->access$601(Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;Landroid/view/View;)V

    #@7
    return-void
.end method
