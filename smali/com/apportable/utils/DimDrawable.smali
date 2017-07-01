.class public Lcom/apportable/utils/DimDrawable;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/utils/DimDrawable$State;
    }
.end annotation


# instance fields
.field private mDimAmount:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z

.field private mState:Lcom/apportable/utils/DimDrawable$State;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .registers 6

    #@0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    iput-object p1, p0, Lcom/apportable/utils/DimDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@5
    iput p2, p0, Lcom/apportable/utils/DimDrawable;->mDimAmount:F

    #@7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_18

    #@d
    new-instance v1, Lcom/apportable/utils/DimDrawable$State;

    #@f
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@12
    move-result v2

    #@13
    invoke-direct {v1, v0, p2, v2}, Lcom/apportable/utils/DimDrawable$State;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;FI)V

    #@16
    iput-object v1, p0, Lcom/apportable/utils/DimDrawable;->mState:Lcom/apportable/utils/DimDrawable$State;

    #@18
    :cond_18
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@1b
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    #@0
    const/4 v6, 0x4

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0}, Lcom/apportable/utils/DimDrawable;->getBounds()Landroid/graphics/Rect;

    #@6
    move-result-object v0

    #@7
    const/4 v2, 0x2

    #@8
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    #@b
    move-result v7

    #@c
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@f
    iget v2, p0, Lcom/apportable/utils/DimDrawable;->mDimAmount:F

    #@11
    const/high16 v3, 0x437f0000    # 255.0f

    #@13
    mul-float/2addr v2, v3

    #@14
    float-to-int v8, v2

    #@15
    if-nez v8, :cond_20

    #@17
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@19
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@1c
    :goto_1c
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@1f
    return-void

    #@20
    :cond_20
    if-lez v8, :cond_39

    #@22
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@25
    move-result v2

    #@26
    int-to-float v3, v2

    #@27
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@2a
    move-result v0

    #@2b
    int-to-float v4, v0

    #@2c
    rsub-int v5, v8, 0xff

    #@2e
    move-object v0, p1

    #@2f
    move v2, v1

    #@30
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    #@33
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@35
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@38
    goto :goto_1c

    #@39
    :cond_39
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@3c
    move-result v2

    #@3d
    int-to-float v3, v2

    #@3e
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@41
    move-result v0

    #@42
    int-to-float v4, v0

    #@43
    new-instance v5, Landroid/graphics/Paint;

    #@45
    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    #@48
    move-object v0, p1

    #@49
    move v2, v1

    #@4a
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    #@4d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    #@4f
    invoke-virtual {p1, v9, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@52
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@54
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@57
    neg-int v0, v8

    #@58
    invoke-static {v0, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    #@5b
    move-result v0

    #@5c
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@5e
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    #@61
    goto :goto_1c
.end method

.method public getChangingConfigurations()I
    .registers 3

    #@0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Lcom/apportable/utils/DimDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@9
    move-result v1

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable;->mState:Lcom/apportable/utils/DimDrawable$State;

    #@2
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getOpacity()I
    .registers 2

    #@0
    const/4 v0, -0x2

    #@1
    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/apportable/utils/DimDrawable;->invalidateSelf()V

    #@3
    return-void
.end method

.method public isStateful()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/utils/DimDrawable;->mMutated:Z

    #@2
    if-nez v0, :cond_12

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_12

    #@a
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@f
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Lcom/apportable/utils/DimDrawable;->mMutated:Z

    #@12
    :cond_12
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    #@5
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@5
    move-result v0

    #@6
    invoke-virtual {p0}, Lcom/apportable/utils/DimDrawable;->getBounds()Landroid/graphics/Rect;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, v1}, Lcom/apportable/utils/DimDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@d
    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    #@0
    invoke-virtual {p0, p2, p3, p4}, Lcom/apportable/utils/DimDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    #@3
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    #@5
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@5
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@5
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    #@0
    invoke-virtual {p0, p2}, Lcom/apportable/utils/DimDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    #@3
    return-void
.end method
