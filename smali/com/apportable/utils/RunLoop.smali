.class public Lcom/apportable/utils/RunLoop;
.super Ljava/lang/Object;


# static fields
.field private static STOP_MESSAGE:I

.field private static sBlankMessage:Landroid/os/Message;

.field private static sHandler:Landroid/os/Handler;

.field private static unified:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-boolean v0, Lcom/apportable/utils/RunLoop;->unified:Z

    #@3
    const v0, 0x299d85

    #@6
    sput v0, Lcom/apportable/utils/RunLoop;->STOP_MESSAGE:I

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    #@0
    sget v0, Lcom/apportable/utils/RunLoop;->STOP_MESSAGE:I

    #@2
    return v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/utils/RunLoop;->sHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method public static isUnifiedThreadModel()Z
    .registers 1

    #@0
    sget-boolean v0, Lcom/apportable/utils/RunLoop;->unified:Z

    #@2
    return v0
.end method

.method private static native nativeNext(Landroid/os/MessageQueue;)Landroid/os/Message;
.end method

.method public static prepare()V
    .registers 2

    #@0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    #@3
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@8
    sput-object v0, Lcom/apportable/utils/RunLoop;->sHandler:Landroid/os/Handler;

    #@a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/apportable/utils/RunLoop;->sBlankMessage:Landroid/os/Message;

    #@10
    const/4 v0, 0x1

    #@11
    sput-boolean v0, Lcom/apportable/utils/RunLoop;->unified:Z

    #@13
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    #@16
    move-result-object v0

    #@17
    new-instance v1, Lcom/apportable/utils/RunLoop$1;

    #@19
    invoke-direct {v1}, Lcom/apportable/utils/RunLoop$1;-><init>()V

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    #@1f
    return-void
.end method

.method public static processMessages()V
    .registers 4

    #@0
    sget-object v0, Lcom/apportable/utils/RunLoop;->sHandler:Landroid/os/Handler;

    #@2
    sget v1, Lcom/apportable/utils/RunLoop;->STOP_MESSAGE:I

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_17

    #@a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@d
    move-result-object v0

    #@e
    sget v1, Lcom/apportable/utils/RunLoop;->STOP_MESSAGE:I

    #@10
    iput v1, v0, Landroid/os/Message;->what:I

    #@12
    sget-object v1, Lcom/apportable/utils/RunLoop;->sHandler:Landroid/os/Handler;

    #@14
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@17
    :cond_17
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    #@1a
    move-result-object v0

    #@1b
    :goto_1b
    invoke-static {v0}, Lcom/apportable/utils/RunLoop;->nativeNext(Landroid/os/MessageQueue;)Landroid/os/Message;

    #@1e
    move-result-object v1

    #@1f
    if-nez v1, :cond_22

    #@21
    :goto_21
    return-void

    #@22
    :cond_22
    iget v2, v1, Landroid/os/Message;->what:I

    #@24
    sget v3, Lcom/apportable/utils/RunLoop;->STOP_MESSAGE:I

    #@26
    if-ne v2, v3, :cond_2c

    #@28
    invoke-static {v1}, Lcom/apportable/utils/RunLoop;->recycleMessage(Landroid/os/Message;)V

    #@2b
    goto :goto_21

    #@2c
    :cond_2c
    invoke-virtual {v1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    #@33
    invoke-static {v1}, Lcom/apportable/utils/RunLoop;->recycleMessage(Landroid/os/Message;)V

    #@36
    goto :goto_1b
.end method

.method private static recycleMessage(Landroid/os/Message;)V
    .registers 2

    #@0
    sget-object v0, Lcom/apportable/utils/RunLoop;->sBlankMessage:Landroid/os/Message;

    #@2
    invoke-virtual {p0, v0}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    #@5
    invoke-virtual {p0}, Landroid/os/Message;->recycle()V

    #@8
    return-void
.end method
