.class Landroid/support/v4/view/ViewCompat$JbMr1ViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JbMr1ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$JBViewCompatImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLabelFor(Landroid/view/View;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->getLabelFor(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->getLayoutDirection(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->getPaddingEnd(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->getPaddingStart(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->setLabelFor(Landroid/view/View;I)V

    #@3
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    #@3
    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->setLayoutDirection(Landroid/view/View;I)V

    #@3
    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .registers 6

    #@0
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/ViewCompatJellybeanMr1;->setPaddingRelative(Landroid/view/View;IIII)V

    #@3
    return-void
.end method
