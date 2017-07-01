.class Landroid/support/v4/view/ViewCompatJB;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAccessibilityNodeProvider(Landroid/view/View;)Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getImportantForAccessibility(Landroid/view/View;)I
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getMinimumHeight(Landroid/view/View;)I
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getMinimumWidth(Landroid/view/View;)I
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4

    #@0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 1

    #@0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    #@3
    return-void
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 5

    #@0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidate(IIII)V

    #@3
    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    #@3
    return-void
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 4

    #@0
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    #@3
    return-void
.end method

.method public static setHasTransientState(Landroid/view/View;Z)V
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Landroid/view/View;->setHasTransientState(Z)V

    #@3
    return-void
.end method

.method public static setImportantForAccessibility(Landroid/view/View;I)V
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    #@3
    return-void
.end method
