.class Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getAddedCount(Ljava/lang/Object;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getAddedCount(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCurrentItemIndex(Ljava/lang/Object;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getCurrentItemIndex(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getFromIndex(Ljava/lang/Object;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getFromIndex(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getItemCount(Ljava/lang/Object;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getItemCount(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getRemovedCount(Ljava/lang/Object;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getRemovedCount(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getScrollX(Ljava/lang/Object;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getScrollX(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getScrollY(Ljava/lang/Object;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getScrollY(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getSource(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getSource(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getText(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
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
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getText(Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getToIndex(Ljava/lang/Object;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getToIndex(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getWindowId(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isChecked(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isEnabled(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isFullScreen(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isFullScreen(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isPassword(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isScrollable(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->obtain()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .registers 2

    #@0
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->recycle(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public setAddedCount(Ljava/lang/Object;I)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setAddedCount(Ljava/lang/Object;I)V

    #@3
    return-void
.end method

.method public setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    #@3
    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setChecked(Ljava/lang/Object;Z)V

    #@3
    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    #@3
    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    #@3
    return-void
.end method

.method public setCurrentItemIndex(Ljava/lang/Object;I)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setCurrentItemIndex(Ljava/lang/Object;I)V

    #@3
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setEnabled(Ljava/lang/Object;Z)V

    #@3
    return-void
.end method

.method public setFromIndex(Ljava/lang/Object;I)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setFromIndex(Ljava/lang/Object;I)V

    #@3
    return-void
.end method

.method public setFullScreen(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setFullScreen(Ljava/lang/Object;Z)V

    #@3
    return-void
.end method

.method public setItemCount(Ljava/lang/Object;I)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setItemCount(Ljava/lang/Object;I)V

    #@3
    return-void
.end method

.method public setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V

    #@3
    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setPassword(Ljava/lang/Object;Z)V

    #@3
    return-void
.end method

.method public setRemovedCount(Ljava/lang/Object;I)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setRemovedCount(Ljava/lang/Object;I)V

    #@3
    return-void
.end method

.method public setScrollX(Ljava/lang/Object;I)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollX(Ljava/lang/Object;I)V

    #@3
    return-void
.end method

.method public setScrollY(Ljava/lang/Object;I)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollY(Ljava/lang/Object;I)V

    #@3
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollable(Ljava/lang/Object;Z)V

    #@3
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    #@3
    return-void
.end method

.method public setToIndex(Ljava/lang/Object;I)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setToIndex(Ljava/lang/Object;I)V

    #@3
    return-void
.end method
