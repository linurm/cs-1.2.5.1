.class final Lcom/apportable/utils/RunLoop$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/utils/RunLoop;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 3

    #@0
    # getter for: Lcom/apportable/utils/RunLoop;->sHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/apportable/utils/RunLoop;->access$100()Landroid/os/Handler;

    #@3
    move-result-object v0

    #@4
    # getter for: Lcom/apportable/utils/RunLoop;->STOP_MESSAGE:I
    invoke-static {}, Lcom/apportable/utils/RunLoop;->access$000()I

    #@7
    move-result v1

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1f

    #@e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@11
    move-result-object v0

    #@12
    # getter for: Lcom/apportable/utils/RunLoop;->STOP_MESSAGE:I
    invoke-static {}, Lcom/apportable/utils/RunLoop;->access$000()I

    #@15
    move-result v1

    #@16
    iput v1, v0, Landroid/os/Message;->what:I

    #@18
    # getter for: Lcom/apportable/utils/RunLoop;->sHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/apportable/utils/RunLoop;->access$100()Landroid/os/Handler;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1f
    :cond_1f
    const/4 v0, 0x1

    #@20
    return v0
.end method
