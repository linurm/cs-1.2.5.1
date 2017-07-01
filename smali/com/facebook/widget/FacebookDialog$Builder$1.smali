.class Lcom/facebook/widget/FacebookDialog$Builder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/widget/FacebookDialog$OnPresentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/FacebookDialog$Builder;->getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/FacebookDialog$Builder;


# direct methods
.method constructor <init>(Lcom/facebook/widget/FacebookDialog$Builder;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder$1;->this$0:Lcom/facebook/widget/FacebookDialog$Builder;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPresent(Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder$1;->this$0:Lcom/facebook/widget/FacebookDialog$Builder;

    #@2
    iget-object v0, v0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    #@4
    if-eqz v0, :cond_23

    #@6
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder$1;->this$0:Lcom/facebook/widget/FacebookDialog$Builder;

    #@8
    iget-object v0, v0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@d
    move-result v0

    #@e
    if-lez v0, :cond_23

    #@10
    # invokes: Lcom/facebook/widget/FacebookDialog;->getAttachmentStore()Lcom/facebook/NativeAppCallAttachmentStore;
    invoke-static {}, Lcom/facebook/widget/FacebookDialog;->access$900()Lcom/facebook/NativeAppCallAttachmentStore;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder$1;->this$0:Lcom/facebook/widget/FacebookDialog$Builder;

    #@16
    iget-object v1, v1, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    #@18
    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$Builder$1;->this$0:Lcom/facebook/widget/FacebookDialog$Builder;

    #@1e
    iget-object v2, v2, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    #@20
    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/NativeAppCallAttachmentStore;->addAttachmentsForCall(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V

    #@23
    :cond_23
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder$1;->this$0:Lcom/facebook/widget/FacebookDialog$Builder;

    #@25
    iget-object v0, v0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachmentFiles:Ljava/util/HashMap;

    #@27
    if-eqz v0, :cond_46

    #@29
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder$1;->this$0:Lcom/facebook/widget/FacebookDialog$Builder;

    #@2b
    iget-object v0, v0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachmentFiles:Ljava/util/HashMap;

    #@2d
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@30
    move-result v0

    #@31
    if-lez v0, :cond_46

    #@33
    # invokes: Lcom/facebook/widget/FacebookDialog;->getAttachmentStore()Lcom/facebook/NativeAppCallAttachmentStore;
    invoke-static {}, Lcom/facebook/widget/FacebookDialog;->access$900()Lcom/facebook/NativeAppCallAttachmentStore;

    #@36
    move-result-object v0

    #@37
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder$1;->this$0:Lcom/facebook/widget/FacebookDialog$Builder;

    #@39
    iget-object v1, v1, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    #@3b
    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    #@3e
    move-result-object v1

    #@3f
    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$Builder$1;->this$0:Lcom/facebook/widget/FacebookDialog$Builder;

    #@41
    iget-object v2, v2, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachmentFiles:Ljava/util/HashMap;

    #@43
    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/NativeAppCallAttachmentStore;->addAttachmentFilesForCall(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V

    #@46
    :cond_46
    return-void
.end method
