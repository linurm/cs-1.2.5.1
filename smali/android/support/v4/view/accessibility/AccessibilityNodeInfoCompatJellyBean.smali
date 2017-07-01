.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addChild(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 3

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    #@5
    return-void
.end method

.method public static findFocus(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->focusSearch(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getMovementGranularities(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularities()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isAccessibilityFocused(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isVisibleToUser(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static obtain(Landroid/view/View;I)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-static {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .registers 4

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static setAccesibilityFocused(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    #@5
    return-void
.end method

.method public static setMovementGranularities(Ljava/lang/Object;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMovementGranularities(I)V

    #@5
    return-void
.end method

.method public static setParent(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 3

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    #@5
    return-void
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 3

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    #@5
    return-void
.end method

.method public static setVisibleToUser(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    #@5
    return-void
.end method
