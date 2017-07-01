.class Lcom/apportable/media/BK2AndroidAudioManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/media/BK2AndroidAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/media/BK2AndroidAudioManager;


# direct methods
.method constructor <init>(Lcom/apportable/media/BK2AndroidAudioManager;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/media/BK2AndroidAudioManager$2;->this$0:Lcom/apportable/media/BK2AndroidAudioManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager$2;->this$0:Lcom/apportable/media/BK2AndroidAudioManager;

    #@2
    check-cast p2, Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;

    #@4
    invoke-virtual {p2}, Lcom/apportable/media/AudioManagerService$AudioManagerServiceBinder;->getService()Lcom/apportable/media/AudioManagerService;

    #@7
    move-result-object v1

    #@8
    # setter for: Lcom/apportable/media/BK2AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;
    invoke-static {v0, v1}, Lcom/apportable/media/BK2AndroidAudioManager;->access$102(Lcom/apportable/media/BK2AndroidAudioManager;Lcom/apportable/media/AudioManagerService;)Lcom/apportable/media/AudioManagerService;

    #@b
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager$2;->this$0:Lcom/apportable/media/BK2AndroidAudioManager;

    #@d
    # getter for: Lcom/apportable/media/BK2AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;
    invoke-static {v0}, Lcom/apportable/media/BK2AndroidAudioManager;->access$100(Lcom/apportable/media/BK2AndroidAudioManager;)Lcom/apportable/media/AudioManagerService;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/apportable/media/BK2AndroidAudioManager$2;->this$0:Lcom/apportable/media/BK2AndroidAudioManager;

    #@13
    # getter for: Lcom/apportable/media/BK2AndroidAudioManager;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Lcom/apportable/media/BK2AndroidAudioManager;->access$200(Lcom/apportable/media/BK2AndroidAudioManager;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Lcom/apportable/media/AudioManagerService;->setListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    #@1a
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/media/BK2AndroidAudioManager$2;->this$0:Lcom/apportable/media/BK2AndroidAudioManager;

    #@2
    const/4 v1, 0x0

    #@3
    # setter for: Lcom/apportable/media/BK2AndroidAudioManager;->audioManagerService:Lcom/apportable/media/AudioManagerService;
    invoke-static {v0, v1}, Lcom/apportable/media/BK2AndroidAudioManager;->access$102(Lcom/apportable/media/BK2AndroidAudioManager;Lcom/apportable/media/AudioManagerService;)Lcom/apportable/media/AudioManagerService;

    #@6
    return-void
.end method
