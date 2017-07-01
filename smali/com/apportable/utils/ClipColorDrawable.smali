.class public Lcom/apportable/utils/ClipColorDrawable;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/utils/ClipColorDrawable$ColorState;
    }
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/apportable/utils/ClipColorDrawable;-><init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;)V

    #@4
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/apportable/utils/ClipColorDrawable;-><init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;)V

    #@4
    invoke-virtual {p0, p1}, Lcom/apportable/utils/ClipColorDrawable;->setColor(I)V

    #@7
    return-void
.end method

.method private constructor <init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;)V
    .registers 3

    #@0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@3
    new-instance v0, Landroid/graphics/Paint;

    #@5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@8
    iput-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mPaint:Landroid/graphics/Paint;

    #@a
    new-instance v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@c
    invoke-direct {v0, p1}, Lcom/apportable/utils/ClipColorDrawable$ColorState;-><init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;)V

    #@f
    iput-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@11
    return-void
.end method

.method synthetic constructor <init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;Lcom/apportable/utils/ClipColorDrawable$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/utils/ClipColorDrawable;-><init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;)V

    #@3
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    #@0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Lcom/apportable/utils/ClipColorDrawable;->getBounds()Landroid/graphics/Rect;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@b
    iget-object v1, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@d
    iget v1, v1, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    #@f
    ushr-int/lit8 v1, v1, 0x18

    #@11
    if-eqz v1, :cond_25

    #@13
    iget-object v1, p0, Lcom/apportable/utils/ClipColorDrawable;->mPaint:Landroid/graphics/Paint;

    #@15
    iget-object v2, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@17
    iget v2, v2, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    #@19
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    #@1c
    invoke-virtual {p0}, Lcom/apportable/utils/ClipColorDrawable;->getBounds()Landroid/graphics/Rect;

    #@1f
    move-result-object v1

    #@20
    iget-object v2, p0, Lcom/apportable/utils/ClipColorDrawable;->mPaint:Landroid/graphics/Paint;

    #@22
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    #@25
    :cond_25
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@28
    return-void
.end method

.method public getAlpha()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@2
    iget v0, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    #@4
    ushr-int/lit8 v0, v0, 0x18

    #@6
    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    #@0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@6
    iget v1, v1, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mChangingConfigurations:I

    #@8
    or-int/2addr v0, v1

    #@9
    return v0
.end method

.method public getColor()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@2
    iget v0, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    #@4
    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@2
    invoke-virtual {p0}, Lcom/apportable/utils/ClipColorDrawable;->getChangingConfigurations()I

    #@5
    move-result v1

    #@6
    iput v1, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mChangingConfigurations:I

    #@8
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@a
    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@2
    iget v0, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    #@4
    ushr-int/lit8 v0, v0, 0x18

    #@6
    sparse-switch v0, :sswitch_data_10

    #@9
    const/4 v0, -0x3

    #@a
    :goto_a
    return v0

    #@b
    :sswitch_b
    const/4 v0, -0x1

    #@c
    goto :goto_a

    #@d
    :sswitch_d
    const/4 v0, -0x2

    #@e
    goto :goto_a

    #@f
    nop

    #@10
    :sswitch_data_10
    .sparse-switch
        0x0 -> :sswitch_d
        0xff -> :sswitch_b
    .end sparse-switch
.end method

.method public setAlpha(I)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@2
    iget v0, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mBaseColor:I

    #@4
    iget-object v1, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@6
    iget v1, v1, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    #@8
    iget-object v2, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@a
    shr-int/lit8 v3, p1, 0x7

    #@c
    add-int/2addr v3, p1

    #@d
    ushr-int/lit8 v0, v0, 0x18

    #@f
    mul-int/2addr v0, v3

    #@10
    shr-int/lit8 v0, v0, 0x8

    #@12
    shl-int/lit8 v0, v0, 0x18

    #@14
    iget-object v3, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@16
    iget v3, v3, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mBaseColor:I

    #@18
    shl-int/lit8 v3, v3, 0x8

    #@1a
    ushr-int/lit8 v3, v3, 0x8

    #@1c
    or-int/2addr v0, v3

    #@1d
    iput v0, v2, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    #@1f
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@21
    iget v0, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    #@23
    if-eq v1, v0, :cond_28

    #@25
    invoke-virtual {p0}, Lcom/apportable/utils/ClipColorDrawable;->invalidateSelf()V

    #@28
    :cond_28
    return-void
.end method

.method public setColor(I)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@2
    iget v0, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mBaseColor:I

    #@4
    if-ne v0, p1, :cond_c

    #@6
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@8
    iget v0, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    #@a
    if-eq v0, p1, :cond_17

    #@c
    :cond_c
    invoke-virtual {p0}, Lcom/apportable/utils/ClipColorDrawable;->invalidateSelf()V

    #@f
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@11
    iget-object v1, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    #@13
    iput p1, v1, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    #@15
    iput p1, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mBaseColor:I

    #@17
    :cond_17
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    #@0
    return-void
.end method
