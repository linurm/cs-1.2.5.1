.class Landroid/support/v4/view/ViewCompatICS;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@5
    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    #@0
    invoke-virtual {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    #@3
    return-void
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Landroid/view/View$AccessibilityDelegate;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    #@5
    return-void
.end method
