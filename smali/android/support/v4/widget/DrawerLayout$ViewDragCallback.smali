.class Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewDragCallback"
.end annotation


# instance fields
.field private final mAbsGravity:I

.field private mDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private final mPeekRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/support/v4/widget/DrawerLayout;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout;I)V
    .registers 4

    #@0
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@2
    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    #@5
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;

    #@7
    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;-><init>(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V

    #@a
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    #@c
    iput p2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    #@e
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->peekDrawer()V

    #@3
    return-void
.end method

.method private closeOtherDrawer()V
    .registers 3

    #@0
    const/4 v0, 0x3

    #@1
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    #@3
    if-ne v1, v0, :cond_6

    #@5
    const/4 v0, 0x5

    #@6
    :cond_6
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@8
    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_13

    #@e
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@10
    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    #@13
    :cond_13
    return-void
.end method

.method private peekDrawer()V
    .registers 7

    #@0
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@5
    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    #@8
    move-result v2

    #@9
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    #@b
    if-ne v1, v5, :cond_58

    #@d
    move v3, v4

    #@e
    :goto_e
    if-eqz v3, :cond_5a

    #@10
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@12
    invoke-virtual {v1, v5}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@15
    move-result-object v1

    #@16
    if-eqz v1, :cond_1d

    #@18
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@1b
    move-result v0

    #@1c
    neg-int v0, v0

    #@1d
    :cond_1d
    add-int/2addr v0, v2

    #@1e
    move v2, v0

    #@1f
    :goto_1f
    if-eqz v1, :cond_57

    #@21
    if-eqz v3, :cond_29

    #@23
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@26
    move-result v0

    #@27
    if-lt v0, v2, :cond_31

    #@29
    :cond_29
    if-nez v3, :cond_57

    #@2b
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    #@2e
    move-result v0

    #@2f
    if-le v0, v2, :cond_57

    #@31
    :cond_31
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@33
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_57

    #@39
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@3f
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@41
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@44
    move-result v5

    #@45
    invoke-virtual {v3, v1, v2, v5}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    #@48
    iput-boolean v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #@4a
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@4c
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@4f
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    #@52
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@54
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->cancelChildViewTouch()V

    #@57
    :cond_57
    return-void

    #@58
    :cond_58
    move v3, v0

    #@59
    goto :goto_e

    #@5a
    :cond_5a
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@5c
    const/4 v1, 0x5

    #@5d
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@60
    move-result-object v0

    #@61
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@63
    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@66
    move-result v1

    #@67
    sub-int/2addr v1, v2

    #@68
    move v2, v1

    #@69
    move-object v1, v0

    #@6a
    goto :goto_1f
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 6

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_18

    #@9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@c
    move-result v0

    #@d
    neg-int v0, v0

    #@e
    const/4 v1, 0x0

    #@f
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    #@12
    move-result v1

    #@13
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v0

    #@17
    :goto_17
    return v0

    #@18
    :cond_18
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@1a
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@1d
    move-result v0

    #@1e
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@21
    move-result v1

    #@22
    sub-int v1, v0, v1

    #@24
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    #@27
    move-result v0

    #@28
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@2b
    move-result v0

    #@2c
    goto :goto_17
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 5

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onEdgeDragStarted(II)V
    .registers 5

    #@0
    and-int/lit8 v0, p1, 0x1

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_1c

    #@5
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@7
    const/4 v1, 0x3

    #@8
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    :goto_c
    if-eqz v0, :cond_1b

    #@e
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@10
    invoke-virtual {v1, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_1b

    #@16
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@18
    invoke-virtual {v1, v0, p2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    #@1b
    :cond_1b
    return-void

    #@1c
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@1e
    const/4 v1, 0x5

    #@1f
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    #@22
    move-result-object v0

    #@23
    goto :goto_c
.end method

.method public onEdgeLock(I)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onEdgeTouched(II)V
    .registers 7

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    #@4
    const-wide/16 v2, 0xa0

    #@6
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    #@9
    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 5

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    #@6
    const/4 v1, 0x0

    #@7
    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    #@9
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->closeOtherDrawer()V

    #@c
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@2
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    #@4
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@6
    invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getCapturedView()Landroid/view/View;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    #@d
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 9

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@6
    const/4 v2, 0x3

    #@7
    invoke-virtual {v1, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_27

    #@d
    add-int v1, v0, p2

    #@f
    int-to-float v1, v1

    #@10
    int-to-float v0, v0

    #@11
    div-float v0, v1, v0

    #@13
    :goto_13
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@15
    invoke-virtual {v1, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    #@18
    const/4 v1, 0x0

    #@19
    cmpl-float v0, v0, v1

    #@1b
    if-nez v0, :cond_33

    #@1d
    const/4 v0, 0x4

    #@1e
    :goto_1e
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    #@21
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@23
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@26
    return-void

    #@27
    :cond_27
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@29
    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@2c
    move-result v1

    #@2d
    sub-int/2addr v1, p2

    #@2e
    int-to-float v1, v1

    #@2f
    int-to-float v0, v0

    #@30
    div-float v0, v1, v0

    #@32
    goto :goto_13

    #@33
    :cond_33
    const/4 v0, 0x0

    #@34
    goto :goto_1e
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 10

    #@0
    const/high16 v5, 0x3f000000    # 0.5f

    #@2
    const/4 v4, 0x0

    #@3
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@5
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    #@8
    move-result v1

    #@9
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@c
    move-result v2

    #@d
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@f
    const/4 v3, 0x3

    #@10
    invoke-virtual {v0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_34

    #@16
    cmpl-float v0, p2, v4

    #@18
    if-gtz v0, :cond_22

    #@1a
    cmpl-float v0, p2, v4

    #@1c
    if-nez v0, :cond_32

    #@1e
    cmpl-float v0, v1, v5

    #@20
    if-lez v0, :cond_32

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    :cond_23
    :goto_23
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@25
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@28
    move-result v2

    #@29
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    #@2c
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@2e
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    #@31
    return-void

    #@32
    :cond_32
    neg-int v0, v2

    #@33
    goto :goto_23

    #@34
    :cond_34
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@36
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    #@39
    move-result v0

    #@3a
    cmpg-float v3, p2, v4

    #@3c
    if-ltz v3, :cond_46

    #@3e
    cmpl-float v3, p2, v4

    #@40
    if-nez v3, :cond_23

    #@42
    cmpl-float v1, v1, v5

    #@44
    if-lez v1, :cond_23

    #@46
    :cond_46
    sub-int/2addr v0, v2

    #@47
    goto :goto_23
.end method

.method public removeCallbacks()V
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@2
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mPeekRunnable:Ljava/lang/Runnable;

    #@4
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    #@7
    return-void
.end method

.method public setDragger(Landroid/support/v4/widget/ViewDragHelper;)V
    .registers 2

    #@0
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mDragger:Landroid/support/v4/widget/ViewDragHelper;

    #@2
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1c

    #@8
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@a
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->mAbsGravity:I

    #@c
    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1c

    #@12
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->this$0:Landroid/support/v4/widget/DrawerLayout;

    #@14
    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    #@17
    move-result v0

    #@18
    if-nez v0, :cond_1c

    #@1a
    const/4 v0, 0x1

    #@1b
    :goto_1b
    return v0

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    goto :goto_1b
.end method
