.class Lcom/apportable/ui/VideoView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lcom/apportable/ui/VideoView$4;->this$0:Lcom/apportable/ui/VideoView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 8

    #@0
    const/4 v3, -0x1

    #@1
    iget-object v0, p0, Lcom/apportable/ui/VideoView$4;->this$0:Lcom/apportable/ui/VideoView;

    #@3
    # getter for: Lcom/apportable/ui/VideoView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1700(Lcom/apportable/ui/VideoView;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v2, "Error: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string v2, ","

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    iget-object v0, p0, Lcom/apportable/ui/VideoView$4;->this$0:Lcom/apportable/ui/VideoView;

    #@29
    # setter for: Lcom/apportable/ui/VideoView;->mCurrentState:I
    invoke-static {v0, v3}, Lcom/apportable/ui/VideoView;->access$202(Lcom/apportable/ui/VideoView;I)I

    #@2c
    iget-object v0, p0, Lcom/apportable/ui/VideoView$4;->this$0:Lcom/apportable/ui/VideoView;

    #@2e
    # setter for: Lcom/apportable/ui/VideoView;->mTargetState:I
    invoke-static {v0, v3}, Lcom/apportable/ui/VideoView;->access$1502(Lcom/apportable/ui/VideoView;I)I

    #@31
    iget-object v0, p0, Lcom/apportable/ui/VideoView$4;->this$0:Lcom/apportable/ui/VideoView;

    #@33
    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    #@36
    move-result-object v0

    #@37
    if-eqz v0, :cond_42

    #@39
    iget-object v0, p0, Lcom/apportable/ui/VideoView$4;->this$0:Lcom/apportable/ui/VideoView;

    #@3b
    # getter for: Lcom/apportable/ui/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1100(Lcom/apportable/ui/VideoView;)Landroid/widget/MediaController;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    #@42
    :cond_42
    iget-object v0, p0, Lcom/apportable/ui/VideoView$4;->this$0:Lcom/apportable/ui/VideoView;

    #@44
    # getter for: Lcom/apportable/ui/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1800(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    #@47
    move-result-object v0

    #@48
    if-eqz v0, :cond_5c

    #@4a
    iget-object v0, p0, Lcom/apportable/ui/VideoView$4;->this$0:Lcom/apportable/ui/VideoView;

    #@4c
    # getter for: Lcom/apportable/ui/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    invoke-static {v0}, Lcom/apportable/ui/VideoView;->access$1800(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    #@4f
    move-result-object v0

    #@50
    iget-object v1, p0, Lcom/apportable/ui/VideoView$4;->this$0:Lcom/apportable/ui/VideoView;

    #@52
    # getter for: Lcom/apportable/ui/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/apportable/ui/VideoView;->access$1000(Lcom/apportable/ui/VideoView;)Landroid/media/MediaPlayer;

    #@55
    move-result-object v1

    #@56
    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    #@59
    move-result v0

    #@5a
    if-eqz v0, :cond_5c

    #@5c
    :cond_5c
    const/4 v0, 0x1

    #@5d
    return v0
.end method
