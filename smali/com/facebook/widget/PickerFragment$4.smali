.class Lcom/facebook/widget/PickerFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/PickerFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/PickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$4;->this$0:Lcom/facebook/widget/PickerFragment;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_b

    #@6
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$4;->this$0:Lcom/facebook/widget/PickerFragment;

    #@8
    # invokes: Lcom/facebook/widget/PickerFragment;->clearResults()V
    invoke-static {v0}, Lcom/facebook/widget/PickerFragment;->access$100(Lcom/facebook/widget/PickerFragment;)V

    #@b
    :cond_b
    return-void
.end method
