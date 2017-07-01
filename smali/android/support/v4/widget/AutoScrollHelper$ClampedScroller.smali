.class Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClampedScroller"
.end annotation


# instance fields
.field private mDeltaTime:J

.field private mDeltaX:I

.field private mDeltaY:I

.field private mEffectiveRampDown:I

.field private mRampDownDuration:I

.field private mRampUpDuration:I

.field private mStartTime:J

.field private mStopTime:J

.field private mStopValue:F

.field private mTargetVelocityX:F

.field private mTargetVelocityY:F


# direct methods
.method public constructor <init>()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const-wide/high16 v0, -0x8000000000000000L

    #@6
    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    #@8
    const-wide/16 v0, -0x1

    #@a
    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    #@c
    const-wide/16 v0, 0x0

    #@e
    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    #@10
    iput v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    #@12
    iput v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    #@14
    return-void
.end method

.method private getValueAt(J)F
    .registers 10

    #@0
    const/high16 v6, 0x3f800000    # 1.0f

    #@2
    const/4 v0, 0x0

    #@3
    iget-wide v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    #@5
    cmp-long v1, p1, v2

    #@7
    if-gez v1, :cond_a

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    iget-wide v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    #@c
    const-wide/16 v4, 0x0

    #@e
    cmp-long v1, v2, v4

    #@10
    if-ltz v1, :cond_18

    #@12
    iget-wide v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    #@14
    cmp-long v1, p1, v2

    #@16
    if-gez v1, :cond_29

    #@18
    :cond_18
    iget-wide v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    #@1a
    sub-long v2, p1, v2

    #@1c
    long-to-float v1, v2

    #@1d
    iget v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    #@1f
    int-to-float v2, v2

    #@20
    div-float/2addr v1, v2

    #@21
    # invokes: Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F
    invoke-static {v1, v0, v6}, Landroid/support/v4/widget/AutoScrollHelper;->access$900(FFF)F

    #@24
    move-result v0

    #@25
    const/high16 v1, 0x3f000000    # 0.5f

    #@27
    mul-float/2addr v0, v1

    #@28
    goto :goto_9

    #@29
    :cond_29
    iget-wide v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    #@2b
    iget v1, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    #@2d
    iget v4, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    #@2f
    sub-long v2, p1, v2

    #@31
    long-to-float v2, v2

    #@32
    iget v3, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    #@34
    int-to-float v3, v3

    #@35
    div-float/2addr v2, v3

    #@36
    # invokes: Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F
    invoke-static {v2, v0, v6}, Landroid/support/v4/widget/AutoScrollHelper;->access$900(FFF)F

    #@39
    move-result v0

    #@3a
    mul-float/2addr v0, v4

    #@3b
    sub-float v1, v6, v1

    #@3d
    add-float/2addr v0, v1

    #@3e
    goto :goto_9
.end method

.method private interpolateValue(F)F
    .registers 4

    #@0
    const/high16 v0, -0x3f800000    # -4.0f

    #@2
    mul-float/2addr v0, p1

    #@3
    mul-float/2addr v0, p1

    #@4
    const/high16 v1, 0x40800000    # 4.0f

    #@6
    mul-float/2addr v1, p1

    #@7
    add-float/2addr v0, v1

    #@8
    return v0
.end method


# virtual methods
.method public computeScrollDelta()V
    .registers 7

    #@0
    iget-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_10

    #@8
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    const-string v1, "Cannot compute scroll delta before calling start()"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    :cond_10
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@13
    move-result-wide v0

    #@14
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    #@17
    move-result v2

    #@18
    invoke-direct {p0, v2}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->interpolateValue(F)F

    #@1b
    move-result v2

    #@1c
    iget-wide v4, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    #@1e
    sub-long v4, v0, v4

    #@20
    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    #@22
    long-to-float v0, v4

    #@23
    mul-float/2addr v0, v2

    #@24
    iget v1, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    #@26
    mul-float/2addr v0, v1

    #@27
    float-to-int v0, v0

    #@28
    iput v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    #@2a
    long-to-float v0, v4

    #@2b
    mul-float/2addr v0, v2

    #@2c
    iget v1, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    #@2e
    mul-float/2addr v0, v1

    #@2f
    float-to-int v0, v0

    #@30
    iput v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    #@32
    return-void
.end method

.method public getDeltaX()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    #@2
    return v0
.end method

.method public getDeltaY()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    #@2
    return v0
.end method

.method public getHorizontalDirection()I
    .registers 3

    #@0
    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    #@2
    iget v1, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    #@4
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@7
    move-result v1

    #@8
    div-float/2addr v0, v1

    #@9
    float-to-int v0, v0

    #@a
    return v0
.end method

.method public getVerticalDirection()I
    .registers 3

    #@0
    iget v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    #@2
    iget v1, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    #@4
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    #@7
    move-result v1

    #@8
    div-float/2addr v0, v1

    #@9
    float-to-int v0, v0

    #@a
    return v0
.end method

.method public isFinished()Z
    .registers 7

    #@0
    iget-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-lez v0, :cond_18

    #@8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@b
    move-result-wide v0

    #@c
    iget-wide v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    #@e
    iget v4, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    #@10
    int-to-long v4, v4

    #@11
    add-long/2addr v2, v4

    #@12
    cmp-long v0, v0, v2

    #@14
    if-lez v0, :cond_18

    #@16
    const/4 v0, 0x1

    #@17
    :goto_17
    return v0

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    goto :goto_17
.end method

.method public requestStop()V
    .registers 6

    #@0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iget-wide v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    #@6
    sub-long v2, v0, v2

    #@8
    long-to-int v2, v2

    #@9
    const/4 v3, 0x0

    #@a
    iget v4, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    #@c
    # invokes: Landroid/support/v4/widget/AutoScrollHelper;->constrain(III)I
    invoke-static {v2, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->access$800(III)I

    #@f
    move-result v2

    #@10
    iput v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    #@12
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    #@15
    move-result v2

    #@16
    iput v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    #@18
    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    #@1a
    return-void
.end method

.method public setRampDownDuration(I)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    #@2
    return-void
.end method

.method public setRampUpDuration(I)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    #@2
    return-void
.end method

.method public setTargetVelocity(FF)V
    .registers 3

    #@0
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    #@2
    iput p2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    #@4
    return-void
.end method

.method public start()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    #@4
    move-result-wide v0

    #@5
    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    #@7
    const-wide/16 v0, -0x1

    #@9
    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    #@b
    iget-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    #@d
    iput-wide v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    #@f
    const/high16 v0, 0x3f000000    # 0.5f

    #@11
    iput v0, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    #@13
    iput v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    #@15
    iput v2, p0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    #@17
    return-void
.end method
