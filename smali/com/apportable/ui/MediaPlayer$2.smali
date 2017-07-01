.class Lcom/apportable/ui/MediaPlayer$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/MediaPlayer;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/apportable/ui/MediaPlayer;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/MediaPlayer$2;->this$0:Lcom/apportable/ui/MediaPlayer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer$2;->this$0:Lcom/apportable/ui/MediaPlayer;

    #@2
    # getter for: Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;
    invoke-static {v0}, Lcom/apportable/ui/MediaPlayer;->access$100(Lcom/apportable/ui/MediaPlayer;)Lcom/apportable/ui/VideoView;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Lcom/apportable/ui/MediaPlayer$2$1;

    #@8
    invoke-direct {v1, p0}, Lcom/apportable/ui/MediaPlayer$2$1;-><init>(Lcom/apportable/ui/MediaPlayer$2;)V

    #@b
    invoke-virtual {v0, v1}, Lcom/apportable/ui/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    #@e
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer$2;->this$0:Lcom/apportable/ui/MediaPlayer;

    #@10
    # getter for: Lcom/apportable/ui/MediaPlayer;->mMediaPlayer:Lcom/apportable/ui/VideoView;
    invoke-static {v0}, Lcom/apportable/ui/MediaPlayer;->access$100(Lcom/apportable/ui/MediaPlayer;)Lcom/apportable/ui/VideoView;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Lcom/apportable/ui/VideoView;->start()V

    #@17
    return-void
.end method
