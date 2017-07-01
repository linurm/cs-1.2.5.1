.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatIcs;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addAction(Ljava/lang/Object;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    #@5
    return-void
.end method

.method public static addChild(Ljava/lang/Object;Landroid/view/View;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    #@5
    return-void
.end method

.method public static findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    return-object v0
.end method

.method public static getActions(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    #@5
    return-void
.end method

.method public static getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    #@5
    return-void
.end method

.method public static getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getChildCount(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getWindowId(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isCheckable(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isChecked(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isClickable(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isEnabled(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isFocusable(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isFocused(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isLongClickable(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isPassword(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isScrollable(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isSelected(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static obtain()Ljava/lang/Object;
    .registers 1

    #@0
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static obtain(Landroid/view/View;)Ljava/lang/Object;
    .registers 2

    #@0
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static performAction(Ljava/lang/Object;I)Z
    .registers 3

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static recycle(Ljava/lang/Object;)V
    .registers 1

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    #@5
    return-void
.end method

.method public static setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    #@5
    return-void
.end method

.method public static setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    #@5
    return-void
.end method

.method public static setCheckable(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    #@5
    return-void
.end method

.method public static setChecked(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    #@5
    return-void
.end method

.method public static setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public static setClickable(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    #@5
    return-void
.end method

.method public static setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public static setEnabled(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    #@5
    return-void
.end method

.method public static setFocusable(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    #@5
    return-void
.end method

.method public static setFocused(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    #@5
    return-void
.end method

.method public static setLongClickable(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    #@5
    return-void
.end method

.method public static setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public static setParent(Ljava/lang/Object;Landroid/view/View;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    #@5
    return-void
.end method

.method public static setPassword(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    #@5
    return-void
.end method

.method public static setScrollable(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    #@5
    return-void
.end method

.method public static setSelected(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    #@5
    return-void
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    #@5
    return-void
.end method

.method public static setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method
