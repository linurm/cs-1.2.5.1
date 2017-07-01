.class Lcom/apportable/ui/TextField$TextFieldLayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/TextField$TextFieldLayer;-><init>(Lcom/apportable/ui/TextField;Landroid/content/Context;Lcom/apportable/ui/TextField;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

.field final synthetic val$this$0:Lcom/apportable/ui/TextField;


# direct methods
.method constructor <init>(Lcom/apportable/ui/TextField$TextFieldLayer;Lcom/apportable/ui/TextField;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$1;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@2
    iput-object p2, p0, Lcom/apportable/ui/TextField$TextFieldLayer$1;->val$this$0:Lcom/apportable/ui/TextField;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 7

    #@0
    const/4 v3, 0x1

    #@1
    new-instance v0, Landroid/util/TypedValue;

    #@3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@6
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Lcom/apportable/activity/VerdeActivity;->getTheme()Landroid/content/res/Resources$Theme;

    #@d
    move-result-object v1

    #@e
    const v2, 0x10102eb

    #@11
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2e

    #@17
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$1;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@19
    iget-object v1, v1, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    #@1b
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@1d
    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer$1;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@1f
    invoke-virtual {v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@26
    move-result-object v2

    #@27
    invoke-static {v0, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@2a
    move-result v0

    #@2b
    # invokes: Lcom/apportable/ui/TextField;->actionBarWillShow(I)V
    invoke-static {v1, v0}, Lcom/apportable/ui/TextField;->access$400(Lcom/apportable/ui/TextField;I)V

    #@2e
    :cond_2e
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 6

    #@0
    new-instance v0, Landroid/util/TypedValue;

    #@2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@5
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Lcom/apportable/activity/VerdeActivity;->getTheme()Landroid/content/res/Resources$Theme;

    #@c
    move-result-object v1

    #@d
    const v2, 0x10102eb

    #@10
    const/4 v3, 0x1

    #@11
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2e

    #@17
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$1;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@19
    iget-object v1, v1, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    #@1b
    iget v0, v0, Landroid/util/TypedValue;->data:I

    #@1d
    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer$1;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    #@1f
    invoke-virtual {v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->getResources()Landroid/content/res/Resources;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@26
    move-result-object v2

    #@27
    invoke-static {v0, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@2a
    move-result v0

    #@2b
    # invokes: Lcom/apportable/ui/TextField;->actionBarWillHide(I)V
    invoke-static {v1, v0}, Lcom/apportable/ui/TextField;->access$500(Lcom/apportable/ui/TextField;I)V

    #@2e
    :cond_2e
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method
