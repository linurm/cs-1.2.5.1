.class Lcom/facebook/widget/UserSettingsFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/internal/ImageRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/UserSettingsFragment;->getImageRequest()Lcom/facebook/internal/ImageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/UserSettingsFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/UserSettingsFragment;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/UserSettingsFragment$2;->this$0:Lcom/facebook/widget/UserSettingsFragment;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/internal/ImageResponse;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/widget/UserSettingsFragment$2;->this$0:Lcom/facebook/widget/UserSettingsFragment;

    #@2
    iget-object v1, p0, Lcom/facebook/widget/UserSettingsFragment$2;->this$0:Lcom/facebook/widget/UserSettingsFragment;

    #@4
    # getter for: Lcom/facebook/widget/UserSettingsFragment;->user:Lcom/facebook/model/GraphUser;
    invoke-static {v1}, Lcom/facebook/widget/UserSettingsFragment;->access$000(Lcom/facebook/widget/UserSettingsFragment;)Lcom/facebook/model/GraphUser;

    #@7
    move-result-object v1

    #@8
    invoke-interface {v1}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    # invokes: Lcom/facebook/widget/UserSettingsFragment;->processImageResponse(Ljava/lang/String;Lcom/facebook/internal/ImageResponse;)V
    invoke-static {v0, v1, p1}, Lcom/facebook/widget/UserSettingsFragment;->access$300(Lcom/facebook/widget/UserSettingsFragment;Ljava/lang/String;Lcom/facebook/internal/ImageResponse;)V

    #@f
    return-void
.end method
