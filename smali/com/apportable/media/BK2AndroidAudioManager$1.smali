.class Lcom/apportable/media/BK2AndroidAudioManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    iput-object p1, p0, Lcom/apportable/media/BK2AndroidAudioManager$1;->this$0:Lcom/apportable/media/BK2AndroidAudioManager;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 3

    #@0
    # getter for: Lcom/apportable/media/BK2AndroidAudioManager;->instance:Lcom/apportable/media/BK2AndroidAudioManager;
    invoke-static {}, Lcom/apportable/media/BK2AndroidAudioManager;->access$000()Lcom/apportable/media/BK2AndroidAudioManager;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_d

    #@6
    # getter for: Lcom/apportable/media/BK2AndroidAudioManager;->instance:Lcom/apportable/media/BK2AndroidAudioManager;
    invoke-static {}, Lcom/apportable/media/BK2AndroidAudioManager;->access$000()Lcom/apportable/media/BK2AndroidAudioManager;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Lcom/apportable/media/BK2AndroidAudioManager;->audioFocusChange(I)V

    #@d
    :cond_d
    return-void
.end method
