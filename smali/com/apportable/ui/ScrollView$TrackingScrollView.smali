.class Lcom/apportable/ui/ScrollView$TrackingScrollView;
.super Lpandemic/android/view/TwoDScrollView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackingScrollView"
.end annotation


# instance fields
.field private mDontNotifyScroll:Z

.field private mDragging:Z

.field private mPagingEnabled:Z

.field final synthetic this$0:Lcom/apportable/ui/ScrollView;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/ScrollView;Landroid/content/Context;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->this$0:Lcom/apportable/ui/ScrollView;

    #@2
    invoke-direct {p0, p2}, Lpandemic/android/view/TwoDScrollView;-><init>(Landroid/content/Context;)V

    #@5
    return-void
.end method

.method static synthetic access$302(Lcom/apportable/ui/ScrollView$TrackingScrollView;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mPagingEnabled:Z

    #@2
    return p1
.end method


# virtual methods
.method public fling(II)V
    .registers 4

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mPagingEnabled:Z

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-super {p0, p1, p2}, Lpandemic/android/view/TwoDScrollView;->fling(II)V

    #@7
    :cond_7
    iget-object v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->this$0:Lcom/apportable/ui/ScrollView;

    #@9
    iget v0, v0, Lcom/apportable/ui/ScrollView;->mObject:I

    #@b
    # invokes: Lcom/apportable/ui/ScrollView;->notifyFling(III)V
    invoke-static {v0, p1, p2}, Lcom/apportable/ui/ScrollView;->access$100(III)V

    #@e
    return-void
.end method

.method public isDragging()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDragging:Z

    #@2
    return v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 6

    #@0
    invoke-super {p0, p1, p2, p3, p4}, Lpandemic/android/view/TwoDScrollView;->onScrollChanged(IIII)V

    #@3
    iget-boolean v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDontNotifyScroll:Z

    #@5
    if-eqz v0, :cond_8

    #@7
    :goto_7
    return-void

    #@8
    :cond_8
    iget-object v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->this$0:Lcom/apportable/ui/ScrollView;

    #@a
    iget v0, v0, Lcom/apportable/ui/ScrollView;->mObject:I

    #@c
    # invokes: Lcom/apportable/ui/ScrollView;->notifyScroll(III)V
    invoke-static {v0, p1, p2}, Lcom/apportable/ui/ScrollView;->access$200(III)V

    #@f
    goto :goto_7
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    #@0
    const/4 v5, 0x3

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v4, 0x1

    #@3
    iget-boolean v2, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDragging:Z

    #@5
    iget-boolean v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDragging:Z

    #@7
    if-eqz v0, :cond_25

    #@9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@c
    move-result v0

    #@d
    if-eq v0, v4, :cond_11

    #@f
    if-ne v0, v5, :cond_13

    #@11
    :cond_11
    iput-boolean v1, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDragging:Z

    #@13
    :cond_13
    :goto_13
    invoke-super {p0, p1}, Lpandemic/android/view/TwoDScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@16
    move-result v1

    #@17
    if-eqz v2, :cond_24

    #@19
    if-eq v0, v4, :cond_1d

    #@1b
    if-ne v0, v5, :cond_24

    #@1d
    :cond_1d
    iget-object v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->this$0:Lcom/apportable/ui/ScrollView;

    #@1f
    iget v0, v0, Lcom/apportable/ui/ScrollView;->mObject:I

    #@21
    # invokes: Lcom/apportable/ui/ScrollView;->notifyTouchFinish(I)V
    invoke-static {v0}, Lcom/apportable/ui/ScrollView;->access$000(I)V

    #@24
    :cond_24
    return v1

    #@25
    :cond_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    #@28
    move-result v0

    #@29
    const/4 v3, 0x2

    #@2a
    if-ne v0, v3, :cond_2e

    #@2c
    iput-boolean v4, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDragging:Z

    #@2e
    :cond_2e
    move v0, v1

    #@2f
    goto :goto_13
.end method

.method public scrollTo(II)V
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollX()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollY()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x1

    #@9
    iput-boolean v2, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDontNotifyScroll:Z

    #@b
    invoke-super {p0, p1, p2}, Lpandemic/android/view/TwoDScrollView;->scrollTo(II)V

    #@e
    const/4 v2, 0x0

    #@f
    iput-boolean v2, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDontNotifyScroll:Z

    #@11
    invoke-virtual {p0}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollX()I

    #@14
    move-result v2

    #@15
    invoke-virtual {p0}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollY()I

    #@18
    move-result v3

    #@19
    if-ne v0, v2, :cond_1d

    #@1b
    if-eq v1, v3, :cond_24

    #@1d
    :cond_1d
    iget-object v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->this$0:Lcom/apportable/ui/ScrollView;

    #@1f
    iget v0, v0, Lcom/apportable/ui/ScrollView;->mObject:I

    #@21
    # invokes: Lcom/apportable/ui/ScrollView;->notifyScroll(III)V
    invoke-static {v0, v2, v3}, Lcom/apportable/ui/ScrollView;->access$200(III)V

    #@24
    :cond_24
    return-void
.end method
