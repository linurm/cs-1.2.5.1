.class Lcom/apportable/ui/Button;
.super Lcom/apportable/ui/Control;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/Button$DrawableState;,
        Lcom/apportable/ui/Button$UIButtonType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundDrawableDisabled:Landroid/graphics/drawable/Drawable;

.field private mBackgroundDrawableHighlighted:Landroid/graphics/drawable/Drawable;

.field private mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

.field private mBackgroundDrawableSelected:Landroid/graphics/drawable/Drawable;

.field private mBackgroundHeight:I

.field private mBackgroundWidth:I

.field private mButton:Landroid/widget/Button;

.field private mButtonType:I

.field private mContentEdgeInsetBottom:I

.field private mContentEdgeInsetLeft:I

.field private mContentEdgeInsetRight:I

.field private mContentEdgeInsetTop:I

.field private mContentMode:I

.field private mEnabled:Z

.field private mFontSize:F

.field private mHandler:Landroid/os/Handler;

.field private mHighlighted:Z

.field private mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

.field private mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

.field private mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

.field private mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

.field private mImageEdgeInsetBottom:I

.field private mImageEdgeInsetLeft:I

.field private mImageEdgeInsetRight:I

.field private mImageEdgeInsetTop:I

.field private mSelected:Z

.field private mShadowColor:I

.field private mShadowOffsetX:F

.field private mShadowOffsetY:F

.field private mText:Ljava/lang/String;

.field private mTextAlignment:I

.field private mTextColor:I

.field private mTintColor:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mUseSystemTheme:Z

.field private touchUpInsideEvent:Ljava/lang/Runnable;

.field private touchUpOutsideEvent:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "com.apportable.ui.Button"

    #@2
    sput-object v0, Lcom/apportable/ui/Button;->TAG:Ljava/lang/String;

    #@4
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 7

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;I)V

    #@6
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@8
    iput-object v0, p0, Lcom/apportable/ui/Button;->mTypeface:Landroid/graphics/Typeface;

    #@a
    const/high16 v0, 0x41880000    # 17.0f

    #@c
    iput v0, p0, Lcom/apportable/ui/Button;->mFontSize:F

    #@e
    iput-boolean v1, p0, Lcom/apportable/ui/Button;->mSelected:Z

    #@10
    iput-boolean v1, p0, Lcom/apportable/ui/Button;->mHighlighted:Z

    #@12
    iput-boolean v3, p0, Lcom/apportable/ui/Button;->mEnabled:Z

    #@14
    iput-boolean v1, p0, Lcom/apportable/ui/Button;->mUseSystemTheme:Z

    #@16
    iput v1, p0, Lcom/apportable/ui/Button;->mContentMode:I

    #@18
    const/high16 v0, -0x1000000

    #@1a
    iput v0, p0, Lcom/apportable/ui/Button;->mTextColor:I

    #@1c
    iput v3, p0, Lcom/apportable/ui/Button;->mTextAlignment:I

    #@1e
    iput v1, p0, Lcom/apportable/ui/Button;->mShadowColor:I

    #@20
    const/4 v0, 0x0

    #@21
    iput v0, p0, Lcom/apportable/ui/Button;->mShadowOffsetX:F

    #@23
    const/high16 v0, 0x3f800000    # 1.0f

    #@25
    iput v0, p0, Lcom/apportable/ui/Button;->mShadowOffsetY:F

    #@27
    new-instance v0, Landroid/os/Handler;

    #@29
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@2c
    iput-object v0, p0, Lcom/apportable/ui/Button;->mHandler:Landroid/os/Handler;

    #@2e
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@30
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    #@32
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

    #@34
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    #@36
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@38
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    #@3a
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableSelected:Landroid/graphics/drawable/Drawable;

    #@3c
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableDisabled:Landroid/graphics/drawable/Drawable;

    #@3e
    iput v1, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    #@40
    iput v1, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    #@42
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetTop:I

    #@44
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetBottom:I

    #@46
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetLeft:I

    #@48
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetRight:I

    #@4a
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetTop:I

    #@4c
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetBottom:I

    #@4e
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetLeft:I

    #@50
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetRight:I

    #@52
    new-instance v0, Lcom/apportable/ui/Button$1;

    #@54
    invoke-direct {v0, p0}, Lcom/apportable/ui/Button$1;-><init>(Lcom/apportable/ui/Button;)V

    #@57
    iput-object v0, p0, Lcom/apportable/ui/Button;->touchUpInsideEvent:Ljava/lang/Runnable;

    #@59
    new-instance v0, Lcom/apportable/ui/Button$2;

    #@5b
    invoke-direct {v0, p0}, Lcom/apportable/ui/Button$2;-><init>(Lcom/apportable/ui/Button;)V

    #@5e
    iput-object v0, p0, Lcom/apportable/ui/Button;->touchUpOutsideEvent:Ljava/lang/Runnable;

    #@60
    invoke-direct {p0}, Lcom/apportable/ui/Button;->init()V

    #@63
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 8

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@6
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    #@8
    iput-object v0, p0, Lcom/apportable/ui/Button;->mTypeface:Landroid/graphics/Typeface;

    #@a
    const/high16 v0, 0x41880000    # 17.0f

    #@c
    iput v0, p0, Lcom/apportable/ui/Button;->mFontSize:F

    #@e
    iput-boolean v1, p0, Lcom/apportable/ui/Button;->mSelected:Z

    #@10
    iput-boolean v1, p0, Lcom/apportable/ui/Button;->mHighlighted:Z

    #@12
    iput-boolean v3, p0, Lcom/apportable/ui/Button;->mEnabled:Z

    #@14
    iput-boolean v1, p0, Lcom/apportable/ui/Button;->mUseSystemTheme:Z

    #@16
    iput v1, p0, Lcom/apportable/ui/Button;->mContentMode:I

    #@18
    const/high16 v0, -0x1000000

    #@1a
    iput v0, p0, Lcom/apportable/ui/Button;->mTextColor:I

    #@1c
    iput v3, p0, Lcom/apportable/ui/Button;->mTextAlignment:I

    #@1e
    iput v1, p0, Lcom/apportable/ui/Button;->mShadowColor:I

    #@20
    const/4 v0, 0x0

    #@21
    iput v0, p0, Lcom/apportable/ui/Button;->mShadowOffsetX:F

    #@23
    const/high16 v0, 0x3f800000    # 1.0f

    #@25
    iput v0, p0, Lcom/apportable/ui/Button;->mShadowOffsetY:F

    #@27
    new-instance v0, Landroid/os/Handler;

    #@29
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@2c
    iput-object v0, p0, Lcom/apportable/ui/Button;->mHandler:Landroid/os/Handler;

    #@2e
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@30
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    #@32
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

    #@34
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    #@36
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@38
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    #@3a
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableSelected:Landroid/graphics/drawable/Drawable;

    #@3c
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableDisabled:Landroid/graphics/drawable/Drawable;

    #@3e
    iput v1, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    #@40
    iput v1, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    #@42
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetTop:I

    #@44
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetBottom:I

    #@46
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetLeft:I

    #@48
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetRight:I

    #@4a
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetTop:I

    #@4c
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetBottom:I

    #@4e
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetLeft:I

    #@50
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetRight:I

    #@52
    new-instance v0, Lcom/apportable/ui/Button$1;

    #@54
    invoke-direct {v0, p0}, Lcom/apportable/ui/Button$1;-><init>(Lcom/apportable/ui/Button;)V

    #@57
    iput-object v0, p0, Lcom/apportable/ui/Button;->touchUpInsideEvent:Ljava/lang/Runnable;

    #@59
    new-instance v0, Lcom/apportable/ui/Button$2;

    #@5b
    invoke-direct {v0, p0}, Lcom/apportable/ui/Button$2;-><init>(Lcom/apportable/ui/Button;)V

    #@5e
    iput-object v0, p0, Lcom/apportable/ui/Button;->touchUpOutsideEvent:Ljava/lang/Runnable;

    #@60
    invoke-direct {p0}, Lcom/apportable/ui/Button;->init()V

    #@63
    return-void
.end method

.method private _contentModeIsAdjacent()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/apportable/ui/Button;->mContentMode:I

    #@2
    const/4 v1, 0x5

    #@3
    if-eq v0, v1, :cond_15

    #@5
    iget v0, p0, Lcom/apportable/ui/Button;->mContentMode:I

    #@7
    const/4 v1, 0x6

    #@8
    if-eq v0, v1, :cond_15

    #@a
    iget v0, p0, Lcom/apportable/ui/Button;->mContentMode:I

    #@c
    const/4 v1, 0x7

    #@d
    if-eq v0, v1, :cond_15

    #@f
    iget v0, p0, Lcom/apportable/ui/Button;->mContentMode:I

    #@11
    const/16 v1, 0x8

    #@13
    if-ne v0, v1, :cond_17

    #@15
    :cond_15
    const/4 v0, 0x1

    #@16
    :goto_16
    return v0

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    goto :goto_16
.end method

.method private _layerIconOnBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 11

    #@0
    const/4 v6, 0x0

    #@1
    if-nez p1, :cond_c5

    #@3
    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@5
    :goto_5
    if-eqz v1, :cond_d

    #@7
    invoke-direct {p0}, Lcom/apportable/ui/Button;->_contentModeIsAdjacent()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_e

    #@d
    :cond_d
    :goto_d
    return-object p2

    #@e
    :cond_e
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@10
    if-eqz v0, :cond_9f

    #@12
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@14
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@17
    move-result v0

    #@18
    iput v0, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    #@1a
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@1c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@1f
    move-result v0

    #@20
    iput v0, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    #@22
    :cond_22
    :goto_22
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@25
    move-result v0

    #@26
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@29
    move-result v2

    #@2a
    if-lez v0, :cond_bf

    #@2c
    invoke-virtual {p0}, Lcom/apportable/ui/Button;->getWidth()I

    #@2f
    move-result v3

    #@30
    invoke-virtual {p0}, Lcom/apportable/ui/Button;->getHeight()I

    #@33
    move-result v5

    #@34
    iget v4, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    #@36
    if-ge v0, v4, :cond_c3

    #@38
    iget v4, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    #@3a
    if-eqz v4, :cond_c3

    #@3c
    iget v4, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    #@3e
    sub-int v0, v4, v0

    #@40
    mul-int/2addr v0, v3

    #@41
    iget v3, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    #@43
    mul-int/lit8 v3, v3, 0x2

    #@45
    div-int/2addr v0, v3

    #@46
    move v4, v0

    #@47
    :goto_47
    iget v0, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    #@49
    if-ge v2, v0, :cond_c1

    #@4b
    iget v0, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    #@4d
    if-eqz v0, :cond_c1

    #@4f
    iget v0, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    #@51
    sub-int/2addr v0, v2

    #@52
    mul-int/2addr v0, v5

    #@53
    iget v2, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    #@55
    mul-int/lit8 v2, v2, 0x2

    #@57
    div-int/2addr v0, v2

    #@58
    move v5, v0

    #@59
    :goto_59
    if-nez v5, :cond_7d

    #@5b
    if-nez v4, :cond_7d

    #@5d
    iget v0, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetTop:I

    #@5f
    if-nez v0, :cond_7d

    #@61
    iget v0, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetBottom:I

    #@63
    if-nez v0, :cond_7d

    #@65
    iget v0, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetLeft:I

    #@67
    if-nez v0, :cond_7d

    #@69
    iget v0, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetRight:I

    #@6b
    if-nez v0, :cond_7d

    #@6d
    iget v0, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetLeft:I

    #@6f
    if-nez v0, :cond_7d

    #@71
    iget v0, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetRight:I

    #@73
    if-nez v0, :cond_7d

    #@75
    iget v0, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetTop:I

    #@77
    if-nez v0, :cond_7d

    #@79
    iget v0, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetBottom:I

    #@7b
    if-eqz v0, :cond_bf

    #@7d
    :cond_7d
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    #@7f
    iget v2, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetLeft:I

    #@81
    add-int/2addr v2, v4

    #@82
    iget v3, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetLeft:I

    #@84
    add-int/2addr v2, v3

    #@85
    iget v3, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetTop:I

    #@87
    add-int/2addr v3, v5

    #@88
    iget v7, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetTop:I

    #@8a
    add-int/2addr v3, v7

    #@8b
    iget v7, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetRight:I

    #@8d
    add-int/2addr v4, v7

    #@8e
    iget v7, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetRight:I

    #@90
    add-int/2addr v4, v7

    #@91
    iget v7, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetBottom:I

    #@93
    add-int/2addr v5, v7

    #@94
    iget v7, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetBottom:I

    #@96
    add-int/2addr v5, v7

    #@97
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    #@9a
    :goto_9a
    if-nez p2, :cond_af

    #@9c
    move-object p2, v0

    #@9d
    goto/16 :goto_d

    #@9f
    :cond_9f
    if-eqz p2, :cond_22

    #@a1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@a4
    move-result v0

    #@a5
    iput v0, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    #@a7
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@aa
    move-result v0

    #@ab
    iput v0, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    #@ad
    goto/16 :goto_22

    #@af
    :cond_af
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    #@b1
    const/4 v2, 0x2

    #@b2
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    #@b4
    aput-object p2, v2, v6

    #@b6
    const/4 v3, 0x1

    #@b7
    aput-object v0, v2, v3

    #@b9
    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    #@bc
    move-object p2, v1

    #@bd
    goto/16 :goto_d

    #@bf
    :cond_bf
    move-object v0, v1

    #@c0
    goto :goto_9a

    #@c1
    :cond_c1
    move v5, v6

    #@c2
    goto :goto_59

    #@c3
    :cond_c3
    move v4, v6

    #@c4
    goto :goto_47

    #@c5
    :cond_c5
    move-object v1, p1

    #@c6
    goto/16 :goto_5
.end method

.method private _setBackgroundDrawable(Landroid/graphics/drawable/Drawable;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p2, :cond_d

    #@3
    iput-object p1, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@5
    iput v0, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    #@7
    iput v0, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    #@9
    :cond_9
    :goto_9
    invoke-direct {p0}, Lcom/apportable/ui/Button;->_updateBackgroundDrawable()V

    #@c
    return-void

    #@d
    :cond_d
    const/4 v0, 0x1

    #@e
    if-ne p2, v0, :cond_13

    #@10
    iput-object p1, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    #@12
    goto :goto_9

    #@13
    :cond_13
    const/4 v0, 0x4

    #@14
    if-ne p2, v0, :cond_19

    #@16
    iput-object p1, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableSelected:Landroid/graphics/drawable/Drawable;

    #@18
    goto :goto_9

    #@19
    :cond_19
    const/4 v0, 0x2

    #@1a
    if-ne p2, v0, :cond_9

    #@1c
    iput-object p1, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableDisabled:Landroid/graphics/drawable/Drawable;

    #@1e
    goto :goto_9
.end method

.method private _setIconDrawable(Landroid/graphics/drawable/Drawable;I)V
    .registers 10

    #@0
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    if-nez p2, :cond_6a

    #@5
    iput-object p1, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@7
    :cond_7
    :goto_7
    invoke-direct {p0}, Lcom/apportable/ui/Button;->_contentModeIsAdjacent()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_93

    #@d
    iget-object v0, p0, Lcom/apportable/ui/Button;->mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

    #@f
    if-nez v0, :cond_1d

    #@11
    iget-object v0, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    #@13
    if-nez v0, :cond_1d

    #@15
    iget-object v0, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    #@17
    if-nez v0, :cond_1d

    #@19
    iget-object v0, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@1b
    if-eqz v0, :cond_97

    #@1d
    :cond_1d
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    #@1f
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    #@22
    iget-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

    #@24
    if-eqz v2, :cond_32

    #@26
    iget-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

    #@28
    new-array v3, v5, [I

    #@2a
    const v4, 0x10100a1

    #@2d
    aput v4, v3, v6

    #@2f
    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@32
    :cond_32
    iget-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    #@34
    if-eqz v2, :cond_42

    #@36
    iget-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    #@38
    new-array v3, v5, [I

    #@3a
    const v4, 0x10100a7

    #@3d
    aput v4, v3, v6

    #@3f
    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@42
    :cond_42
    iget-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    #@44
    if-eqz v2, :cond_52

    #@46
    iget-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    #@48
    new-array v3, v5, [I

    #@4a
    const v4, -0x101009e

    #@4d
    aput v4, v3, v6

    #@4f
    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@52
    :cond_52
    iget-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@54
    if-eqz v2, :cond_5d

    #@56
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    #@58
    iget-object v3, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@5a
    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@5d
    :cond_5d
    :goto_5d
    iget v2, p0, Lcom/apportable/ui/Button;->mContentMode:I

    #@5f
    packed-switch v2, :pswitch_data_9a

    #@62
    sget-object v0, Lcom/apportable/ui/Button;->TAG:Ljava/lang/String;

    #@64
    const-string v1, "contentMode is not adjacent"

    #@66
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@69
    :goto_69
    return-void

    #@6a
    :cond_6a
    if-ne p2, v5, :cond_6f

    #@6c
    iput-object p1, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    #@6e
    goto :goto_7

    #@6f
    :cond_6f
    const/4 v0, 0x4

    #@70
    if-ne p2, v0, :cond_75

    #@72
    iput-object p1, p0, Lcom/apportable/ui/Button;->mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

    #@74
    goto :goto_7

    #@75
    :cond_75
    const/4 v0, 0x2

    #@76
    if-ne p2, v0, :cond_7

    #@78
    iput-object p1, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    #@7a
    goto :goto_7

    #@7b
    :pswitch_7b
    iget-object v2, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@7d
    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@80
    goto :goto_69

    #@81
    :pswitch_81
    iget-object v2, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@83
    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@86
    goto :goto_69

    #@87
    :pswitch_87
    iget-object v2, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@89
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@8c
    goto :goto_69

    #@8d
    :pswitch_8d
    iget-object v2, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@8f
    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@92
    goto :goto_69

    #@93
    :cond_93
    invoke-direct {p0}, Lcom/apportable/ui/Button;->_updateBackgroundDrawable()V

    #@96
    goto :goto_69

    #@97
    :cond_97
    move-object v0, v1

    #@98
    goto :goto_5d

    #@99
    nop

    #@9a
    :pswitch_data_9a
    .packed-switch 0x5
        :pswitch_87
        :pswitch_81
        :pswitch_8d
        :pswitch_7b
    .end packed-switch
.end method

.method private _setText(Ljava/lang/String;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/Button;->mText:Ljava/lang/String;

    #@2
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@7
    return-void
.end method

.method private _updateBackgroundDrawable()V
    .registers 7

    #@0
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    #@4
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    #@7
    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

    #@9
    sget-object v2, Lcom/apportable/ui/Button$DrawableState;->Selected:Lcom/apportable/ui/Button$DrawableState;

    #@b
    invoke-direct {p0, v2}, Lcom/apportable/ui/Button;->createBackgroundDrawable(Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;

    #@e
    move-result-object v2

    #@f
    invoke-direct {p0, v1, v2}, Lcom/apportable/ui/Button;->_layerIconOnBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object v1

    #@13
    if-eqz v1, :cond_1f

    #@15
    new-array v2, v5, [I

    #@17
    const v3, 0x10100a1

    #@1a
    aput v3, v2, v4

    #@1c
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@1f
    :cond_1f
    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    #@21
    sget-object v2, Lcom/apportable/ui/Button$DrawableState;->Highlighted:Lcom/apportable/ui/Button$DrawableState;

    #@23
    invoke-direct {p0, v2}, Lcom/apportable/ui/Button;->createBackgroundDrawable(Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;

    #@26
    move-result-object v2

    #@27
    invoke-direct {p0, v1, v2}, Lcom/apportable/ui/Button;->_layerIconOnBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@2a
    move-result-object v1

    #@2b
    if-eqz v1, :cond_3d

    #@2d
    sget-object v2, Lcom/apportable/ui/Button$DrawableState;->Highlighted:Lcom/apportable/ui/Button$DrawableState;

    #@2f
    invoke-direct {p0, v1, v2}, Lcom/apportable/ui/Button;->dimDrawableForState(Landroid/graphics/drawable/Drawable;Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;

    #@32
    move-result-object v1

    #@33
    new-array v2, v5, [I

    #@35
    const v3, 0x10100a7

    #@38
    aput v3, v2, v4

    #@3a
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@3d
    :cond_3d
    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    #@3f
    sget-object v2, Lcom/apportable/ui/Button$DrawableState;->Disabled:Lcom/apportable/ui/Button$DrawableState;

    #@41
    invoke-direct {p0, v2}, Lcom/apportable/ui/Button;->createBackgroundDrawable(Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;

    #@44
    move-result-object v2

    #@45
    invoke-direct {p0, v1, v2}, Lcom/apportable/ui/Button;->_layerIconOnBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@48
    move-result-object v1

    #@49
    if-eqz v1, :cond_5b

    #@4b
    sget-object v2, Lcom/apportable/ui/Button$DrawableState;->Disabled:Lcom/apportable/ui/Button$DrawableState;

    #@4d
    invoke-direct {p0, v1, v2}, Lcom/apportable/ui/Button;->dimDrawableForState(Landroid/graphics/drawable/Drawable;Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;

    #@50
    move-result-object v1

    #@51
    new-array v2, v5, [I

    #@53
    const v3, -0x101009e

    #@56
    aput v3, v2, v4

    #@58
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@5b
    :cond_5b
    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@5d
    sget-object v2, Lcom/apportable/ui/Button$DrawableState;->Normal:Lcom/apportable/ui/Button$DrawableState;

    #@5f
    invoke-direct {p0, v2}, Lcom/apportable/ui/Button;->createBackgroundDrawable(Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;

    #@62
    move-result-object v2

    #@63
    invoke-direct {p0, v1, v2}, Lcom/apportable/ui/Button;->_layerIconOnBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@66
    move-result-object v1

    #@67
    if-eqz v1, :cond_6e

    #@69
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    #@6b
    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    #@6e
    :cond_6e
    iget-object v1, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@70
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@73
    iget v0, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetLeft:I

    #@75
    iget v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetTop:I

    #@77
    iget v2, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetRight:I

    #@79
    iget v3, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetBottom:I

    #@7b
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/apportable/ui/Button;->setContentEdgeInsets(IIII)V

    #@7e
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/Button;)Ljava/lang/Runnable;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Button;->touchUpOutsideEvent:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/ui/Button;)Landroid/os/Handler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Button;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Lcom/apportable/ui/Button;)Ljava/lang/Runnable;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Button;->touchUpInsideEvent:Ljava/lang/Runnable;

    #@2
    return-object v0
.end method

.method private native clicked(I)V
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/Button;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/Button;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Button;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/Button;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/Button;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/Button;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private createBackgroundDrawable(Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;
    .registers 7

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    const/4 v0, 0x0

    #@3
    sget-object v1, Lcom/apportable/ui/Button$4;->$SwitchMap$com$apportable$ui$Button$DrawableState:[I

    #@5
    invoke-virtual {p1}, Lcom/apportable/ui/Button$DrawableState;->ordinal()I

    #@8
    move-result v2

    #@9
    aget v1, v1, v2

    #@b
    packed-switch v1, :pswitch_data_72

    #@e
    :goto_e
    if-eqz v0, :cond_1d

    #@10
    :goto_10
    return-object v0

    #@11
    :pswitch_11
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@13
    goto :goto_e

    #@14
    :pswitch_14
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableSelected:Landroid/graphics/drawable/Drawable;

    #@16
    goto :goto_e

    #@17
    :pswitch_17
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableDisabled:Landroid/graphics/drawable/Drawable;

    #@19
    goto :goto_e

    #@1a
    :pswitch_1a
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    #@1c
    goto :goto_e

    #@1d
    :cond_1d
    iget v0, p0, Lcom/apportable/ui/Button;->mButtonType:I

    #@1f
    const/4 v1, 0x1

    #@20
    if-ne v0, v1, :cond_60

    #@22
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    #@24
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    #@27
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    #@2a
    const/4 v1, 0x2

    #@2b
    const v2, -0x777778

    #@2e
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    #@31
    const/high16 v1, 0x40c00000    # 6.0f

    #@33
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    #@36
    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Normal:Lcom/apportable/ui/Button$DrawableState;

    #@38
    if-eq p1, v1, :cond_3e

    #@3a
    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Selected:Lcom/apportable/ui/Button$DrawableState;

    #@3c
    if-ne p1, v1, :cond_42

    #@3e
    :cond_3e
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    #@41
    goto :goto_10

    #@42
    :cond_42
    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Disabled:Lcom/apportable/ui/Button$DrawableState;

    #@44
    if-ne p1, v1, :cond_52

    #@46
    iget-object v1, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@48
    if-nez v1, :cond_52

    #@4a
    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@4c
    if-nez v1, :cond_52

    #@4e
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    #@51
    goto :goto_10

    #@52
    :cond_52
    iget-object v1, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@54
    if-nez v1, :cond_60

    #@56
    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@58
    if-nez v1, :cond_60

    #@5a
    iget v1, p0, Lcom/apportable/ui/Button;->mTintColor:I

    #@5c
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    #@5f
    goto :goto_10

    #@60
    :cond_60
    sget-object v0, Lcom/apportable/ui/Button$DrawableState;->Normal:Lcom/apportable/ui/Button$DrawableState;

    #@62
    if-ne p1, v0, :cond_6a

    #@64
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@66
    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@69
    goto :goto_10

    #@6a
    :cond_6a
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@6c
    invoke-static {v0}, Lcom/apportable/utils/ImageUtils;->copy(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@6f
    move-result-object v0

    #@70
    goto :goto_10

    #@71
    nop

    #@72
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private dimDrawableForState(Landroid/graphics/drawable/Drawable;Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Normal:Lcom/apportable/ui/Button$DrawableState;

    #@3
    if-ne p2, v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return-object p1

    #@6
    :cond_6
    sget-object v1, Lcom/apportable/ui/Button$4;->$SwitchMap$com$apportable$ui$Button$DrawableState:[I

    #@8
    invoke-virtual {p2}, Lcom/apportable/ui/Button$DrawableState;->ordinal()I

    #@b
    move-result v2

    #@c
    aget v1, v1, v2

    #@e
    packed-switch v1, :pswitch_data_48

    #@11
    move-object v1, v0

    #@12
    :goto_12
    iget v2, p0, Lcom/apportable/ui/Button;->mButtonType:I

    #@14
    const/4 v3, 0x1

    #@15
    if-ne v2, v3, :cond_1f

    #@17
    iget-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@19
    if-nez v2, :cond_1f

    #@1b
    iget-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@1d
    if-eqz v2, :cond_5

    #@1f
    :cond_1f
    if-nez v0, :cond_5

    #@21
    if-nez v1, :cond_5

    #@23
    sget-object v0, Lcom/apportable/ui/Button$DrawableState;->Highlighted:Lcom/apportable/ui/Button$DrawableState;

    #@25
    if-ne p2, v0, :cond_3a

    #@27
    new-instance v0, Lcom/apportable/utils/DimDrawable;

    #@29
    const/high16 v1, -0x41000000    # -0.5f

    #@2b
    invoke-direct {v0, p1, v1}, Lcom/apportable/utils/DimDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    #@2e
    move-object p1, v0

    #@2f
    goto :goto_5

    #@30
    :pswitch_30
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableDisabled:Landroid/graphics/drawable/Drawable;

    #@32
    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    #@34
    goto :goto_12

    #@35
    :pswitch_35
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    #@37
    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    #@39
    goto :goto_12

    #@3a
    :cond_3a
    sget-object v0, Lcom/apportable/ui/Button$DrawableState;->Disabled:Lcom/apportable/ui/Button$DrawableState;

    #@3c
    if-ne p2, v0, :cond_5

    #@3e
    new-instance v0, Lcom/apportable/utils/DimDrawable;

    #@40
    const v1, 0x3e99999a    # 0.3f

    #@43
    invoke-direct {v0, p1, v1}, Lcom/apportable/utils/DimDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    #@46
    move-object p1, v0

    #@47
    goto :goto_5

    #@48
    :pswitch_data_48
    .packed-switch 0x3
        :pswitch_30
        :pswitch_35
    .end packed-switch
.end method

.method private init()V
    .registers 5

    #@0
    const/4 v2, 0x1

    #@1
    new-instance v0, Landroid/widget/Button;

    #@3
    invoke-virtual {p0}, Lcom/apportable/ui/Button;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    #@a
    iput-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@c
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@e
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setMaxLines(I)V

    #@11
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@13
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setHorizontallyScrolling(Z)V

    #@16
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@18
    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    #@1b
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@1d
    const/4 v1, 0x0

    #@1e
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    #@21
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@23
    new-instance v1, Lcom/apportable/ui/Button$3;

    #@25
    invoke-direct {v1, p0}, Lcom/apportable/ui/Button$3;-><init>(Lcom/apportable/ui/Button;)V

    #@28
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    #@2b
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@2d
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Button;->setContentView(Landroid/view/View;)V

    #@30
    const/16 v0, 0xff

    #@32
    const/4 v1, 0x5

    #@33
    const/16 v2, 0x86

    #@35
    const/16 v3, 0xf4

    #@37
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    #@3a
    move-result v0

    #@3b
    iput v0, p0, Lcom/apportable/ui/Button;->mTintColor:I

    #@3d
    return-void
.end method

.method private updateShadow(IFF)V
    .registers 6

    #@0
    iput p1, p0, Lcom/apportable/ui/Button;->mShadowColor:I

    #@2
    iput p2, p0, Lcom/apportable/ui/Button;->mShadowOffsetX:F

    #@4
    iput p3, p0, Lcom/apportable/ui/Button;->mShadowOffsetY:F

    #@6
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@8
    const/high16 v1, 0x3f800000    # 1.0f

    #@a
    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    #@d
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Button;->mEnabled:Z

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public getEnabled()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Button;->mEnabled:Z

    #@2
    return v0
.end method

.method public getHighlighted()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Button;->mHighlighted:Z

    #@2
    return v0
.end method

.method public getSelected()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Button;->mSelected:Z

    #@2
    return v0
.end method

.method public getShadowColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/Button;->mShadowColor:I

    #@2
    return v0
.end method

.method public getShadowOffsetX()F
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/Button;->mShadowOffsetX:F

    #@2
    return v0
.end method

.method public getShadowOffsetY()F
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/Button;->mShadowOffsetY:F

    #@2
    return v0
.end method

.method public getTextAlignment()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/Button;->mTextAlignment:I

    #@2
    return v0
.end method

.method public getTextColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/Button;->mTextColor:I

    #@2
    return v0
.end method

.method public getTextForState(I)Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Button;->mText:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    #@0
    invoke-super/range {p0 .. p5}, Lcom/apportable/ui/Control;->onLayout(ZIIII)V

    #@3
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@5
    if-eqz v0, :cond_a

    #@7
    invoke-direct {p0}, Lcom/apportable/ui/Button;->_updateBackgroundDrawable()V

    #@a
    :cond_a
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/Bitmap;I)V
    .registers 4

    #@0
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Lcom/apportable/ui/Button;->_setBackgroundDrawable(Landroid/graphics/drawable/Drawable;I)V

    #@7
    return-void
.end method

.method public setBackgroundDrawable(Ljava/lang/String;I)V
    .registers 6

    #@0
    :try_start_0
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->Drawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Lcom/apportable/ui/Button;->_setBackgroundDrawable(Landroid/graphics/drawable/Drawable;I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    #@7
    :goto_7
    return-void

    #@8
    :catch_8
    move-exception v0

    #@9
    sget-object v0, Lcom/apportable/ui/Button;->TAG:Ljava/lang/String;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v2, "Could not load image from "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    goto :goto_7
.end method

.method public setButtonType(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/ui/Button;->mButtonType:I

    #@2
    return-void
.end method

.method public setContentEdgeInsets(IIII)V
    .registers 6

    #@0
    iput p1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetLeft:I

    #@2
    iput p2, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetTop:I

    #@4
    iput p3, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetRight:I

    #@6
    iput p4, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetBottom:I

    #@8
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@a
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/Button;->setPadding(IIII)V

    #@d
    return-void
.end method

.method public setContentMode(I)V
    .registers 4

    #@0
    iput p1, p0, Lcom/apportable/ui/Button;->mContentMode:I

    #@2
    iget-object v0, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v0, v1}, Lcom/apportable/ui/Button;->_setIconDrawable(Landroid/graphics/drawable/Drawable;I)V

    #@8
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Lcom/apportable/ui/Control;->setEnabled(Z)V

    #@3
    iput-boolean p1, p0, Lcom/apportable/ui/Button;->mEnabled:Z

    #@5
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@7
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    #@a
    return-void
.end method

.method public setFont(Landroid/graphics/Typeface;F)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/apportable/ui/Button;->mTypeface:Landroid/graphics/Typeface;

    #@2
    iput p2, p0, Lcom/apportable/ui/Button;->mFontSize:F

    #@4
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@6
    invoke-static {p2}, Lcom/apportable/utils/ScreenUtils;->convertPixelsToDp(F)F

    #@9
    move-result v1

    #@a
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    #@d
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@f
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    #@12
    return-void
.end method

.method public setHighlighted(Z)V
    .registers 3

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/Button;->mHighlighted:Z

    #@2
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setPressed(Z)V

    #@7
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/Bitmap;I)V
    .registers 4

    #@0
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/apportable/utils/ImageUtils;->createDrawableWithInferredStates(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0, p2}, Lcom/apportable/ui/Button;->_setIconDrawable(Landroid/graphics/drawable/Drawable;I)V

    #@b
    return-void
.end method

.method public setIconDrawable(Ljava/lang/String;I)V
    .registers 6

    #@0
    if-eqz p1, :cond_a

    #@2
    :try_start_2
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->Drawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    :goto_6
    invoke-direct {p0, v0, p2}, Lcom/apportable/ui/Button;->_setIconDrawable(Landroid/graphics/drawable/Drawable;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_c

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_6

    #@c
    :catch_c
    move-exception v0

    #@d
    sget-object v0, Lcom/apportable/ui/Button;->TAG:Ljava/lang/String;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string v2, "Could not load image from "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    goto :goto_9
.end method

.method public setImageEdgeInsets(IIII)V
    .registers 5

    #@0
    iput p1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetLeft:I

    #@2
    iput p2, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetTop:I

    #@4
    iput p3, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetRight:I

    #@6
    iput p4, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetBottom:I

    #@8
    invoke-direct {p0}, Lcom/apportable/ui/Button;->_updateBackgroundDrawable()V

    #@b
    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/Button;->mSelected:Z

    #@2
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSelected(Z)V

    #@7
    return-void
.end method

.method public setShadowColor(I)V
    .registers 4

    #@0
    iget v0, p0, Lcom/apportable/ui/Button;->mShadowOffsetX:F

    #@2
    iget v1, p0, Lcom/apportable/ui/Button;->mShadowOffsetY:F

    #@4
    invoke-direct {p0, p1, v0, v1}, Lcom/apportable/ui/Button;->updateShadow(IFF)V

    #@7
    return-void
.end method

.method public setShadowOffset(FF)V
    .registers 4

    #@0
    iget v0, p0, Lcom/apportable/ui/Button;->mShadowColor:I

    #@2
    invoke-direct {p0, v0, p1, p2}, Lcom/apportable/ui/Button;->updateShadow(IFF)V

    #@5
    return-void
.end method

.method public setText(Ljava/lang/String;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/ui/Button;->_setText(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method public setTextAlignment(I)V
    .registers 4

    #@0
    iput p1, p0, Lcom/apportable/ui/Button;->mTextAlignment:I

    #@2
    packed-switch p1, :pswitch_data_1e

    #@5
    :goto_5
    return-void

    #@6
    :pswitch_6
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@8
    const/16 v1, 0x13

    #@a
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    #@d
    goto :goto_5

    #@e
    :pswitch_e
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@10
    const/16 v1, 0x11

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    #@15
    goto :goto_5

    #@16
    :pswitch_16
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@18
    const/16 v1, 0x15

    #@1a
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    #@1d
    goto :goto_5

    #@1e
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_16
    .end packed-switch
.end method

.method public setTextColor(I)V
    .registers 3

    #@0
    iput p1, p0, Lcom/apportable/ui/Button;->mTextColor:I

    #@2
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    #@7
    return-void
.end method

.method public setTintColor(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/ui/Button;->mTintColor:I

    #@2
    invoke-direct {p0}, Lcom/apportable/ui/Button;->_updateBackgroundDrawable()V

    #@5
    return-void
.end method

.method public useSystemUi(Z)V
    .registers 4

    #@0
    iput-boolean p1, p0, Lcom/apportable/ui/Button;->mUseSystemTheme:Z

    #@2
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@8
    return-void
.end method
