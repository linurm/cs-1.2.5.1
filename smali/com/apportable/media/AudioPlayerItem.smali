.class Lcom/apportable/media/AudioPlayerItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field apportableAudioPlayer:Lcom/apportable/media/AudioPlayer;

.field id:I

.field loops:I

.field player:Landroid/media/MediaPlayer;

.field seekTarget:I

.field suspended:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "AudioPlayerItem"

    #@2
    sput-object v0, Lcom/apportable/media/AudioPlayerItem;->TAG:Ljava/lang/String;

    #@4
    return-void
.end method

.method public constructor <init>(ILandroid/media/MediaPlayer;Lcom/apportable/media/AudioPlayer;)V
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-boolean v1, p0, Lcom/apportable/media/AudioPlayerItem;->suspended:Z

    #@6
    const/4 v0, -0x1

    #@7
    iput v0, p0, Lcom/apportable/media/AudioPlayerItem;->seekTarget:I

    #@9
    iput-object p2, p0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@b
    iput-object p3, p0, Lcom/apportable/media/AudioPlayerItem;->apportableAudioPlayer:Lcom/apportable/media/AudioPlayer;

    #@d
    iput v1, p0, Lcom/apportable/media/AudioPlayerItem;->loops:I

    #@f
    iput p1, p0, Lcom/apportable/media/AudioPlayerItem;->id:I

    #@11
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    #@14
    invoke-virtual {p2, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    #@17
    return-void
.end method


# virtual methods
.method public native nativeOnComplete(I)V
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/media/AudioPlayerItem$1;

    #@2
    invoke-direct {v0, p0}, Lcom/apportable/media/AudioPlayerItem$1;-><init>(Lcom/apportable/media/AudioPlayerItem;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnGlThread(Ljava/lang/Runnable;)V

    #@8
    iget v0, p0, Lcom/apportable/media/AudioPlayerItem;->loops:I

    #@a
    if-lez v0, :cond_1e

    #@c
    iget v0, p0, Lcom/apportable/media/AudioPlayerItem;->loops:I

    #@e
    add-int/lit8 v0, v0, -0x1

    #@10
    iput v0, p0, Lcom/apportable/media/AudioPlayerItem;->loops:I

    #@12
    iget-object v0, p0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@14
    const/4 v1, 0x0

    #@15
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    #@18
    iget-object v0, p0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    #@1a
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    #@1d
    :goto_1d
    return-void

    #@1e
    :cond_1e
    iget-object v0, p0, Lcom/apportable/media/AudioPlayerItem;->apportableAudioPlayer:Lcom/apportable/media/AudioPlayer;

    #@20
    iget v1, p0, Lcom/apportable/media/AudioPlayerItem;->id:I

    #@22
    invoke-virtual {v0, v1}, Lcom/apportable/media/AudioPlayer;->lazyReleaseAudio(I)V

    #@25
    goto :goto_1d
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 2

    #@0
    return-void
.end method

.method public setLooping(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/media/AudioPlayerItem;->loops:I

    #@2
    return-void
.end method
