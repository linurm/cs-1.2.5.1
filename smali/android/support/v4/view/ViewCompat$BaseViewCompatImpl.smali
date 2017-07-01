.class Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# instance fields
.field private mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private mTempDetachBound:Z

.field mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    #@6
    return-void
.end method

.method private bindTempDetach()V
    .registers 4

    #@0
    :try_start_0
    const-class v0, Landroid/view/View;

    #@2
    const-string v1, "dispatchStartTemporaryDetach"

    #@4
    const/4 v2, 0x0

    #@5
    new-array v2, v2, [Ljava/lang/Class;

    #@7
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    #@d
    const-class v0, Landroid/view/View;

    #@f
    const-string v1, "dispatchFinishTemporaryDetach"

    #@11
    const/4 v2, 0x0

    #@12
    new-array v2, v2, [Ljava/lang/Class;

    #@14
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_1e

    #@1a
    :goto_1a
    const/4 v0, 0x1

    #@1b
    iput-boolean v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    #@1d
    return-void

    #@1e
    :catch_1e
    move-exception v0

    #@1f
    const-string v1, "ViewCompat"

    #@21
    const-string v2, "Couldn\'t find method"

    #@23
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    goto :goto_1a
.end method


# virtual methods
.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 3

    #@0
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    #@2
    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    #@5
    return-object v0
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .registers 5

    #@0
    iget-boolean v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    #@7
    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    #@9
    if-eqz v0, :cond_1d

    #@b
    :try_start_b
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    #@d
    const/4 v1, 0x0

    #@e
    new-array v1, v1, [Ljava/lang/Object;

    #@10
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v1, "ViewCompat"

    #@17
    const-string v2, "Error calling dispatchFinishTemporaryDetach"

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_13

    #@1d
    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->onFinishTemporaryDetach()V

    #@20
    goto :goto_13
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .registers 5

    #@0
    iget-boolean v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    #@7
    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    #@9
    if-eqz v0, :cond_1d

    #@b
    :try_start_b
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    #@d
    const/4 v1, 0x0

    #@e
    new-array v1, v1, [Ljava/lang/Object;

    #@10
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    #@13
    :goto_13
    return-void

    #@14
    :catch_14
    move-exception v0

    #@15
    const-string v1, "ViewCompat"

    #@17
    const-string v2, "Error calling dispatchStartTemporaryDetach"

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_13

    #@1d
    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    #@20
    goto :goto_13
.end method

.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getAlpha(Landroid/view/View;)F
    .registers 3

    #@0
    const/high16 v0, 0x3f800000    # 1.0f

    #@2
    return v0
.end method

.method getFrameTime()J
    .registers 3

    #@0
    const-wide/16 v0, 0xa

    #@2
    return-wide v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLabelFor(Landroid/view/View;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .registers 3

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .registers 3

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getOverScrollMode(Landroid/view/View;)I
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .registers 3

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .registers 3

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 3

    #@0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getPivotX(Landroid/view/View;)F
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPivotY(Landroid/view/View;)F
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getRotation(Landroid/view/View;)F
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getRotationX(Landroid/view/View;)F
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getRotationY(Landroid/view/View;)F
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getScaleX(Landroid/view/View;)F
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getScaleY(Landroid/view/View;)F
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getTranslationX(Landroid/view/View;)F
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getTranslationY(Landroid/view/View;)F
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getX(Landroid/view/View;)F
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getY(Landroid/view/View;)F
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isOpaque(Landroid/view/View;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v1

    #@5
    if-eqz v1, :cond_f

    #@7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    #@a
    move-result v1

    #@b
    const/4 v2, -0x1

    #@c
    if-ne v1, v2, :cond_f

    #@e
    const/4 v0, 0x1

    #@f
    :cond_f
    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    #@0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    #@0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    #@0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 2

    #@0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    #@3
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 6

    #@0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->invalidate(IIII)V

    #@3
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@7
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 8

    #@0
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    #@3
    move-result-wide v0

    #@4
    add-long/2addr v0, p3

    #@5
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    #@8
    return-void
.end method

.method public resolveSizeAndState(III)I
    .registers 5

    #@0
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 3

    #@0
    return-void
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 3

    #@0
    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .registers 3

    #@0
    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .registers 3

    #@0
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .registers 3

    #@0
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .registers 3

    #@0
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 3

    #@0
    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    #@0
    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .registers 3

    #@0
    return-void
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
    .registers 3

    #@0
    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .registers 6

    #@0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    #@3
    return-void
.end method

.method public setPivotX(Landroid/view/View;F)V
    .registers 3

    #@0
    return-void
.end method

.method public setPivotY(Landroid/view/View;F)V
    .registers 3

    #@0
    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .registers 3

    #@0
    return-void
.end method

.method public setRotationX(Landroid/view/View;F)V
    .registers 3

    #@0
    return-void
.end method

.method public setRotationY(Landroid/view/View;F)V
    .registers 3

    #@0
    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .registers 3

    #@0
    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .registers 3

    #@0
    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .registers 3

    #@0
    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .registers 3

    #@0
    return-void
.end method

.method public setX(Landroid/view/View;F)V
    .registers 3

    #@0
    return-void
.end method

.method public setY(Landroid/view/View;F)V
    .registers 3

    #@0
    return-void
.end method
