.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getLiveRegion(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLiveRegion()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static setLiveRegion(Ljava/lang/Object;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLiveRegion(I)V

    #@5
    return-void
.end method
