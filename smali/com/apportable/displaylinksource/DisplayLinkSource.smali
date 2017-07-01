.class public Lcom/apportable/displaylinksource/DisplayLinkSource;
.super Ljava/lang/Thread;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private mChoreographer:Landroid/view/Choreographer;

.field private mLastFrameTime:D

.field private mLooper:Landroid/os/Looper;

.field private mObject:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    #@4
    iput-object v2, p0, Lcom/apportable/displaylinksource/DisplayLinkSource;->mChoreographer:Landroid/view/Choreographer;

    #@6
    const-wide/16 v0, 0x0

    #@8
    iput-wide v0, p0, Lcom/apportable/displaylinksource/DisplayLinkSource;->mLastFrameTime:D

    #@a
    iput-object v2, p0, Lcom/apportable/displaylinksource/DisplayLinkSource;->mLooper:Landroid/os/Looper;

    #@c
    iput p1, p0, Lcom/apportable/displaylinksource/DisplayLinkSource;->mObject:I

    #@e
    return-void
.end method

.method public static isAvailable()Z
    .registers 2

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x10

    #@4
    if-lt v0, v1, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method private native nativeDoFrame(ID)V
.end method


# virtual methods
.method public doFrame(J)V
    .registers 8

    #@0
    long-to-double v0, p1

    #@1
    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    #@6
    mul-double/2addr v0, v2

    #@7
    iget-wide v2, p0, Lcom/apportable/displaylinksource/DisplayLinkSource;->mLastFrameTime:D

    #@9
    iput-wide v0, p0, Lcom/apportable/displaylinksource/DisplayLinkSource;->mLastFrameTime:D

    #@b
    iget v4, p0, Lcom/apportable/displaylinksource/DisplayLinkSource;->mObject:I

    #@d
    sub-double/2addr v0, v2

    #@e
    invoke-direct {p0, v4, v0, v1}, Lcom/apportable/displaylinksource/DisplayLinkSource;->nativeDoFrame(ID)V

    #@11
    iget-object v0, p0, Lcom/apportable/displaylinksource/DisplayLinkSource;->mChoreographer:Landroid/view/Choreographer;

    #@13
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@16
    return-void
.end method

.method public invalidate()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/displaylinksource/DisplayLinkSource;->mLooper:Landroid/os/Looper;

    #@2
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    #@5
    return-void
.end method

.method public run()V
    .registers 5

    #@0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    #@3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/apportable/displaylinksource/DisplayLinkSource;->mChoreographer:Landroid/view/Choreographer;

    #@9
    iget-object v0, p0, Lcom/apportable/displaylinksource/DisplayLinkSource;->mChoreographer:Landroid/view/Choreographer;

    #@b
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    #@e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@11
    move-result-wide v0

    #@12
    long-to-double v0, v0

    #@13
    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    #@18
    mul-double/2addr v0, v2

    #@19
    iput-wide v0, p0, Lcom/apportable/displaylinksource/DisplayLinkSource;->mLastFrameTime:D

    #@1b
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/apportable/displaylinksource/DisplayLinkSource;->mLooper:Landroid/os/Looper;

    #@21
    invoke-static {}, Landroid/os/Looper;->loop()V

    #@24
    return-void
.end method
