.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoStubImpl"
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
.method public addAction(Ljava/lang/Object;I)V
    .registers 3

    #@0
    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    #@0
    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    #@0
    return-void
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .registers 4
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
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public findFocus(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getActions(Ljava/lang/Object;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    #@0
    return-void
.end method

.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    #@0
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getLiveRegion(Ljava/lang/Object;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMovementGranularities(Ljava/lang/Object;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isCheckable(Ljava/lang/Object;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isClickable(Ljava/lang/Object;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isFocusable(Ljava/lang/Object;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isLongClickable(Ljava/lang/Object;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isVisibleToUser(Ljava/lang/Object;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public obtain(Landroid/view/View;)Ljava/lang/Object;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public obtain(Landroid/view/View;I)Ljava/lang/Object;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public performAction(Ljava/lang/Object;I)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .registers 2

    #@0
    return-void
.end method

.method public setAccessibilityFocused(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    return-void
.end method

.method public setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    #@0
    return-void
.end method

.method public setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    #@0
    return-void
.end method

.method public setCheckable(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    return-void
.end method

.method public setClickable(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    return-void
.end method

.method public setFocusable(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    return-void
.end method

.method public setFocused(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    return-void
.end method

.method public setLiveRegion(Ljava/lang/Object;I)V
    .registers 3

    #@0
    return-void
.end method

.method public setLongClickable(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    return-void
.end method

.method public setMovementGranularities(Ljava/lang/Object;I)V
    .registers 3

    #@0
    return-void
.end method

.method public setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    #@0
    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    #@0
    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    return-void
.end method

.method public setSelected(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .registers 3

    #@0
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .registers 4

    #@0
    return-void
.end method

.method public setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    #@0
    return-void
.end method

.method public setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    #@0
    return-void
.end method

.method public setVisibleToUser(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    return-void
.end method
