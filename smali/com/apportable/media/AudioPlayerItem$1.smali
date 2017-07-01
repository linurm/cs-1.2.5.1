.class Lcom/apportable/media/AudioPlayerItem$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/media/AudioPlayerItem;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/media/AudioPlayerItem;


# direct methods
.method constructor <init>(Lcom/apportable/media/AudioPlayerItem;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/media/AudioPlayerItem$1;->this$0:Lcom/apportable/media/AudioPlayerItem;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/media/AudioPlayerItem$1;->this$0:Lcom/apportable/media/AudioPlayerItem;

    #@2
    iget-object v1, p0, Lcom/apportable/media/AudioPlayerItem$1;->this$0:Lcom/apportable/media/AudioPlayerItem;

    #@4
    iget v1, v1, Lcom/apportable/media/AudioPlayerItem;->id:I

    #@6
    invoke-virtual {v0, v1}, Lcom/apportable/media/AudioPlayerItem;->nativeOnComplete(I)V

    #@9
    return-void
.end method
