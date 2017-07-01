.class Landroid/support/v4/widget/ScrollerCompatGingerbread;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static abortAnimation(Ljava/lang/Object;)V
    .registers 1

    #@0
    check-cast p0, Landroid/widget/OverScroller;

    #@2
    invoke-virtual {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    #@5
    return-void
.end method

.method public static computeScrollOffset(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/widget/OverScroller;

    #@2
    invoke-virtual {p0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .registers 3

    #@0
    if-eqz p1, :cond_8

    #@2
    new-instance v0, Landroid/widget/OverScroller;

    #@4
    invoke-direct {v0, p0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    new-instance v0, Landroid/widget/OverScroller;

    #@a
    invoke-direct {v0, p0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    #@d
    goto :goto_7
.end method

.method public static fling(Ljava/lang/Object;IIIIIIII)V
    .registers 18

    #@0
    move-object v0, p0

    #@1
    check-cast v0, Landroid/widget/OverScroller;

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    move v6, p6

    #@9
    move/from16 v7, p7

    #@b
    move/from16 v8, p8

    #@d
    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    #@10
    return-void
.end method

.method public static fling(Ljava/lang/Object;IIIIIIIIII)V
    .registers 22

    #@0
    move-object v0, p0

    #@1
    check-cast v0, Landroid/widget/OverScroller;

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move/from16 v5, p5

    #@9
    move/from16 v6, p6

    #@b
    move/from16 v7, p7

    #@d
    move/from16 v8, p8

    #@f
    move/from16 v9, p9

    #@11
    move/from16 v10, p10

    #@13
    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    #@16
    return-void
.end method

.method public static getCurrX(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/widget/OverScroller;

    #@2
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrX()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getCurrY(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/widget/OverScroller;

    #@2
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrY()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getFinalX(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/widget/OverScroller;

    #@2
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalX()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getFinalY(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/widget/OverScroller;

    #@2
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getFinalY()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isFinished(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/widget/OverScroller;

    #@2
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isFinished()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isOverScrolled(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/widget/OverScroller;

    #@2
    invoke-virtual {p0}, Landroid/widget/OverScroller;->isOverScrolled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
    .registers 4

    #@0
    check-cast p0, Landroid/widget/OverScroller;

    #@2
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    #@5
    return-void
.end method

.method public static notifyVerticalEdgeReached(Ljava/lang/Object;III)V
    .registers 4

    #@0
    check-cast p0, Landroid/widget/OverScroller;

    #@2
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    #@5
    return-void
.end method

.method public static startScroll(Ljava/lang/Object;IIII)V
    .registers 5

    #@0
    check-cast p0, Landroid/widget/OverScroller;

    #@2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/OverScroller;->startScroll(IIII)V

    #@5
    return-void
.end method

.method public static startScroll(Ljava/lang/Object;IIIII)V
    .registers 12

    #@0
    move-object v0, p0

    #@1
    check-cast v0, Landroid/widget/OverScroller;

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    #@b
    return-void
.end method
