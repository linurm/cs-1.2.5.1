.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAddedCount(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getCurrentItemIndex(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getCurrentItemIndex()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getFromIndex(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getItemCount(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getItemCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getParcelableData()Landroid/os/Parcelable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getRemovedCount(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getScrollX(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollX()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getScrollY(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollY()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getSource(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getText(Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getToIndex(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getWindowId(Ljava/lang/Object;)I
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isChecked(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isChecked()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isEnabled(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isFullScreen(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isFullScreen()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isPassword(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isPassword()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isScrollable(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isScrollable()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static obtain()Ljava/lang/Object;
    .registers 1

    #@0
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static recycle(Ljava/lang/Object;)V
    .registers 1

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    #@5
    return-void
.end method

.method public static setAddedCount(Ljava/lang/Object;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    #@5
    return-void
.end method

.method public static setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public static setChecked(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    #@5
    return-void
.end method

.method public static setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public static setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    #@5
    return-void
.end method

.method public static setCurrentItemIndex(Ljava/lang/Object;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    #@5
    return-void
.end method

.method public static setEnabled(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    #@5
    return-void
.end method

.method public static setFromIndex(Ljava/lang/Object;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    #@5
    return-void
.end method

.method public static setFullScreen(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFullScreen(Z)V

    #@5
    return-void
.end method

.method public static setItemCount(Ljava/lang/Object;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    #@5
    return-void
.end method

.method public static setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setParcelableData(Landroid/os/Parcelable;)V

    #@5
    return-void
.end method

.method public static setPassword(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    #@5
    return-void
.end method

.method public static setRemovedCount(Ljava/lang/Object;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    #@5
    return-void
.end method

.method public static setScrollX(Ljava/lang/Object;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    #@5
    return-void
.end method

.method public static setScrollY(Ljava/lang/Object;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    #@5
    return-void
.end method

.method public static setScrollable(Ljava/lang/Object;Z)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    #@5
    return-void
.end method

.method public static setSource(Ljava/lang/Object;Landroid/view/View;)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    #@5
    return-void
.end method

.method public static setToIndex(Ljava/lang/Object;I)V
    .registers 2

    #@0
    check-cast p0, Landroid/view/accessibility/AccessibilityRecord;

    #@2
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    #@5
    return-void
.end method
