.class Lcom/apportable/ui/Switch$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/Switch;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/Switch;


# direct methods
.method constructor <init>(Lcom/apportable/ui/Switch;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/Switch$1;->this$0:Lcom/apportable/ui/Switch;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Switch$1;->this$0:Lcom/apportable/ui/Switch;

    #@2
    # getter for: Lcom/apportable/ui/Switch;->mSwitch:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/apportable/ui/Switch;->access$000(Lcom/apportable/ui/Switch;)Landroid/widget/CheckBox;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    #@9
    move-result v0

    #@a
    iget-object v1, p0, Lcom/apportable/ui/Switch$1;->this$0:Lcom/apportable/ui/Switch;

    #@c
    # getter for: Lcom/apportable/ui/Switch;->mChecked:Z
    invoke-static {v1}, Lcom/apportable/ui/Switch;->access$100(Lcom/apportable/ui/Switch;)Z

    #@f
    move-result v1

    #@10
    if-eq v1, v0, :cond_1e

    #@12
    iget-object v1, p0, Lcom/apportable/ui/Switch$1;->this$0:Lcom/apportable/ui/Switch;

    #@14
    # setter for: Lcom/apportable/ui/Switch;->mChecked:Z
    invoke-static {v1, v0}, Lcom/apportable/ui/Switch;->access$102(Lcom/apportable/ui/Switch;Z)Z

    #@17
    iget-object v0, p0, Lcom/apportable/ui/Switch$1;->this$0:Lcom/apportable/ui/Switch;

    #@19
    const/16 v1, 0x1000

    #@1b
    invoke-virtual {v0, v1}, Lcom/apportable/ui/Switch;->sendEvent(I)V

    #@1e
    :cond_1e
    return-void
.end method
