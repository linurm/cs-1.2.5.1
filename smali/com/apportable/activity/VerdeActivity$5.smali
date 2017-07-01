.class Lcom/apportable/activity/VerdeActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;

.field final synthetic val$params:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$5;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@2
    iput-object p2, p0, Lcom/apportable/activity/VerdeActivity$5;->val$view:Landroid/view/View;

    #@4
    iput-object p3, p0, Lcom/apportable/activity/VerdeActivity$5;->val$params:Landroid/view/ViewGroup$LayoutParams;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    #@0
    invoke-static {}, Lcom/apportable/ui/Window;->getKeyWindowDialog()Landroid/app/Dialog;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_19

    #@6
    new-instance v1, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;

    #@8
    iget-object v2, p0, Lcom/apportable/activity/VerdeActivity$5;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@a
    iget-object v3, p0, Lcom/apportable/activity/VerdeActivity$5;->this$0:Lcom/apportable/activity/VerdeActivity;

    #@c
    invoke-direct {v1, v2, v3}, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;-><init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/Context;)V

    #@f
    iget-object v2, p0, Lcom/apportable/activity/VerdeActivity$5;->val$view:Landroid/view/View;

    #@11
    invoke-virtual {v1, v2}, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;->addView(Landroid/view/View;)V

    #@14
    iget-object v2, p0, Lcom/apportable/activity/VerdeActivity$5;->val$params:Landroid/view/ViewGroup$LayoutParams;

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@19
    :cond_19
    return-void
.end method
