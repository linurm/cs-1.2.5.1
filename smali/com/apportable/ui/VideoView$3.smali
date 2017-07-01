.class Lcom/apportable/ui/VideoView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/VideoView;


# direct methods
.method constructor <init>(Lcom/apportable/ui/VideoView;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/VideoView$3;->this$0:Lcom/apportable/ui/VideoView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    #@0
    const/4 v1, 0x5

    #@1
    iget-object v0, p0, Lcom/apportable/ui/VideoView$3;->this$0:Lcom/apportable/ui/VideoView;

    #@3
    # setter for: Lcom/apportable/ui/VideoView;->mCurrentState:I
    invoke-static {v0, v1}, Lcom/apportable/ui/VideoView;->access$202(Lcom/apportable/ui/VideoView;I)I

    #@6
    iget-object v0, p0, Lcom/apportable/ui/VideoView$3;->this$0:Lcom/apportable/ui/VideoView;

    #@8
    # setter for: Lcom/apportable/ui/VideoView;->mTargetState:I
    invoke-static {v0, v1}, Lcom/apportable/ui/VideoView;->access$1502(Lcom/apportable/ui/VideoView;I)I

    #@b
    iget-object v0, p0, Lcom/apportable/ui/VideoView$3;->this$0:Lcom/apportable/ui/VideoView;

    #@d
    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_1c

    #@13
    iget-object v0, p0, Lcom/apportable/ui/VideoView$3;->this$0:Lcom/apportable/ui/VideoView;

    #@15
    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    #@1c
    :cond_1c
    iget-object v0, p0, Lcom/apportable/ui/VideoView$3;->this$0:Lcom/apportable/ui/VideoView;

    #@1e
    # getter for: Lcom/apportable/ui/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1600(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    #@21
    move-result-object v0

    #@22
    if-eqz v0, :cond_33

    #@24
    iget-object v0, p0, Lcom/apportable/ui/VideoView$3;->this$0:Lcom/apportable/ui/VideoView;

    #@26
    # getter for: Lcom/apportable/ui/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1600(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    #@29
    move-result-object v0

    #@2a
    iget-object v1, p0, Lcom/apportable/ui/VideoView$3;->this$0:Lcom/apportable/ui/VideoView;

    #@2c
    # getter for: Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/apportable/ui/VideoView;->access$1000(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer;

    #@2f
    move-result-object v1

    #@30
    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    #@33
    :cond_33
    return-void
.end method
