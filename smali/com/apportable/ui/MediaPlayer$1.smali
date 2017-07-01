.class Lcom/apportable/ui/MediaPlayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/MediaPlayer;->setContentURI(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/apportable/ui/MediaPlayer$1;->this$0:Lcom/apportable/ui/MediaPlayer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 6

    #@0
    iget-object v0, p0, Lcom/apportable/ui/MediaPlayer$1;->this$0:Lcom/apportable/ui/MediaPlayer;

    #@2
    const/4 v1, 0x0

    #@3
    # setter for: Lcom/apportable/ui/MediaPlayer;->mPlaybackPossible:Z
    invoke-static {v0, v1}, Lcom/apportable/ui/MediaPlayer;->access$002(Lcom/apportable/ui/MediaPlayer;Z)Z

    #@6
    const/4 v0, 0x1

    #@7
    return v0
.end method
