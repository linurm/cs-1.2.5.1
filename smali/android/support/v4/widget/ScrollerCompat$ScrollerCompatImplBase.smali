.class Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImplBase;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/ScrollerCompat$ScrollerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ScrollerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScrollerCompatImplBase"
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
.method public abortAnimation(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Landroid/widget/Scroller;

    #@2
    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    #@5
    return-void
.end method

.method public computeScrollOffset(Ljava/lang/Object;)Z
    .registers 3

    #@0
    check-cast p1, Landroid/widget/Scroller;

    #@2
    invoke-virtual {p1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public createScroller(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;
    .registers 4

    #@0
    if-eqz p2, :cond_8

    #@2
    new-instance v0, Landroid/widget/Scroller;

    #@4
    invoke-direct {v0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    new-instance v0, Landroid/widget/Scroller;

    #@a
    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    #@d
    goto :goto_7
.end method

.method public fling(Ljava/lang/Object;IIIIIIII)V
    .registers 19

    #@0
    move-object v0, p1

    #@1
    check-cast v0, Landroid/widget/Scroller;

    #@3
    move v1, p2

    #@4
    move v2, p3

    #@5
    move v3, p4

    #@6
    move v4, p5

    #@7
    move v5, p6

    #@8
    move/from16 v6, p7

    #@a
    move/from16 v7, p8

    #@c
    move/from16 v8, p9

    #@e
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    #@11
    return-void
.end method

.method public fling(Ljava/lang/Object;IIIIIIIIII)V
    .registers 21

    #@0
    move-object v0, p1

    #@1
    check-cast v0, Landroid/widget/Scroller;

    #@3
    move v1, p2

    #@4
    move v2, p3

    #@5
    move v3, p4

    #@6
    move v4, p5

    #@7
    move v5, p6

    #@8
    move/from16 v6, p7

    #@a
    move/from16 v7, p8

    #@c
    move/from16 v8, p9

    #@e
    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    #@11
    return-void
.end method

.method public getCurrVelocity(Ljava/lang/Object;)F
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCurrX(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Landroid/widget/Scroller;

    #@2
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrX()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCurrY(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Landroid/widget/Scroller;

    #@2
    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFinalX(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Landroid/widget/Scroller;

    #@2
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getFinalY(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Landroid/widget/Scroller;

    #@2
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isFinished(Ljava/lang/Object;)Z
    .registers 3

    #@0
    check-cast p1, Landroid/widget/Scroller;

    #@2
    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isOverScrolled(Ljava/lang/Object;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public notifyHorizontalEdgeReached(Ljava/lang/Object;III)V
    .registers 5

    #@0
    return-void
.end method

.method public notifyVerticalEdgeReached(Ljava/lang/Object;III)V
    .registers 5

    #@0
    return-void
.end method

.method public startScroll(Ljava/lang/Object;IIII)V
    .registers 6

    #@0
    check-cast p1, Landroid/widget/Scroller;

    #@2
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/Scroller;->startScroll(IIII)V

    #@5
    return-void
.end method

.method public startScroll(Ljava/lang/Object;IIIII)V
    .registers 13

    #@0
    move-object v0, p1

    #@1
    check-cast v0, Landroid/widget/Scroller;

    #@3
    move v1, p2

    #@4
    move v2, p3

    #@5
    move v3, p4

    #@6
    move v4, p5

    #@7
    move v5, p6

    #@8
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    #@b
    return-void
.end method
