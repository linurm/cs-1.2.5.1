.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcsMr1;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getMaxScrollX(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollX()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getMaxScrollY(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollY()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static setMaxScrollX(Ljava/lang/Object;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    #@5
    return-void
.end method

.method public static setMaxScrollY(Ljava/lang/Object;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    #@5
    return-void
.end method
