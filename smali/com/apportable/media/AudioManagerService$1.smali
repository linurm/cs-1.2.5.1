.class Lcom/apportable/media/AudioManagerService$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/media/AudioManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/media/AudioManagerService;


# direct methods
.method constructor <init>(Lcom/apportable/media/AudioManagerService;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/media/AudioManagerService$1;->this$0:Lcom/apportable/media/AudioManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/media/AudioManagerService$1;->this$0:Lcom/apportable/media/AudioManagerService;

    #@2
    # getter for: Lcom/apportable/media/AudioManagerService;->activityAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v0}, Lcom/apportable/media/AudioManagerService;->access$000(Lcom/apportable/media/AudioManagerService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_11

    #@8
    iget-object v0, p0, Lcom/apportable/media/AudioManagerService$1;->this$0:Lcom/apportable/media/AudioManagerService;

    #@a
    # getter for: Lcom/apportable/media/AudioManagerService;->activityAFChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v0}, Lcom/apportable/media/AudioManagerService;->access$000(Lcom/apportable/media/AudioManagerService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0, p1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    #@11
    :cond_11
    return-void
.end method
