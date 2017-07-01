.class public Lcom/apportable/ui/NavigationBar;
.super Lcom/apportable/ui/View;


# static fields
.field private static final BLACK_OPAQUE_COLORS:[I

.field private static final BLACK_TRANSLUCENT_COLORS:[I

.field private static DEFAULT_COLOR:I


# instance fields
.field private mCenterItems:Landroid/widget/LinearLayout;

.field private mLeftItems:Landroid/widget/LinearLayout;

.field private mNavigationBar:Landroid/widget/RelativeLayout;

.field private mRightItems:Landroid/widget/LinearLayout;

.field private mStyle:I

.field private mTint:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v1, 0x2

    #@1
    const v0, -0xeeeeef

    #@4
    sput v0, Lcom/apportable/ui/NavigationBar;->DEFAULT_COLOR:I

    #@6
    new-array v0, v1, [I

    #@8
    fill-array-data v0, :array_16

    #@b
    sput-object v0, Lcom/apportable/ui/NavigationBar;->BLACK_OPAQUE_COLORS:[I

    #@d
    new-array v0, v1, [I

    #@f
    fill-array-data v0, :array_1e

    #@12
    sput-object v0, Lcom/apportable/ui/NavigationBar;->BLACK_TRANSLUCENT_COLORS:[I

    #@14
    return-void

    #@15
    nop

    #@16
    :array_16
    .array-data 4
        -0xcccccd
        -0x1000000
    .end array-data

    #@1e
    :array_1e
    .array-data 4
        -0x33cccccd    # -4.6976204E7f
        -0x23000000
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    #@4
    iput v0, p0, Lcom/apportable/ui/NavigationBar;->mStyle:I

    #@6
    iput v0, p0, Lcom/apportable/ui/NavigationBar;->mTint:I

    #@8
    const-string v0, ""

    #@a
    iput-object v0, p0, Lcom/apportable/ui/NavigationBar;->mTitle:Ljava/lang/String;

    #@c
    invoke-direct {p0}, Lcom/apportable/ui/NavigationBar;->init()V

    #@f
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@4
    iput v0, p0, Lcom/apportable/ui/NavigationBar;->mStyle:I

    #@6
    iput v0, p0, Lcom/apportable/ui/NavigationBar;->mTint:I

    #@8
    const-string v0, ""

    #@a
    iput-object v0, p0, Lcom/apportable/ui/NavigationBar;->mTitle:Ljava/lang/String;

    #@c
    invoke-direct {p0}, Lcom/apportable/ui/NavigationBar;->init()V

    #@f
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/NavigationBar;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/NavigationBar;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/NavigationBar;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/NavigationBar;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/NavigationBar;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/NavigationBar;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private init()V
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, -0x2

    #@3
    new-instance v0, Landroid/widget/RelativeLayout;

    #@5
    invoke-virtual {p0}, Lcom/apportable/ui/NavigationBar;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    #@c
    iput-object v0, p0, Lcom/apportable/ui/NavigationBar;->mNavigationBar:Landroid/widget/RelativeLayout;

    #@e
    new-instance v0, Landroid/widget/LinearLayout;

    #@10
    invoke-virtual {p0}, Lcom/apportable/ui/NavigationBar;->getContext()Landroid/content/Context;

    #@13
    move-result-object v1

    #@14
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@17
    iput-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    #@19
    new-instance v0, Landroid/widget/LinearLayout;

    #@1b
    invoke-virtual {p0}, Lcom/apportable/ui/NavigationBar;->getContext()Landroid/content/Context;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@22
    iput-object v0, p0, Lcom/apportable/ui/NavigationBar;->mCenterItems:Landroid/widget/LinearLayout;

    #@24
    new-instance v0, Landroid/widget/LinearLayout;

    #@26
    invoke-virtual {p0}, Lcom/apportable/ui/NavigationBar;->getContext()Landroid/content/Context;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@2d
    iput-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    #@2f
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    #@31
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@34
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mCenterItems:Landroid/widget/LinearLayout;

    #@36
    const/4 v1, 0x1

    #@37
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@3a
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    #@3c
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@3f
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    #@41
    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #@44
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    #@46
    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #@49
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    #@4b
    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #@4e
    const/16 v3, 0x9

    #@50
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    #@53
    const/16 v3, 0xd

    #@55
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    #@58
    const/16 v3, 0xb

    #@5a
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    #@5d
    iget-object v3, p0, Lcom/apportable/ui/NavigationBar;->mNavigationBar:Landroid/widget/RelativeLayout;

    #@5f
    iget-object v4, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    #@61
    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@64
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mNavigationBar:Landroid/widget/RelativeLayout;

    #@66
    iget-object v3, p0, Lcom/apportable/ui/NavigationBar;->mCenterItems:Landroid/widget/LinearLayout;

    #@68
    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@6b
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mNavigationBar:Landroid/widget/RelativeLayout;

    #@6d
    iget-object v1, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    #@6f
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@72
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mNavigationBar:Landroid/widget/RelativeLayout;

    #@74
    invoke-virtual {p0, v0}, Lcom/apportable/ui/NavigationBar;->setContentView(Landroid/view/View;)V

    #@77
    return-void
.end method


# virtual methods
.method public addLeftItem(Lcom/apportable/ui/BarItem;)V
    .registers 5

    #@0
    if-nez p1, :cond_3

    #@2
    :cond_2
    :goto_2
    return-void

    #@3
    :cond_3
    invoke-virtual {p1}, Lcom/apportable/ui/BarItem;->getView()Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1}, Lcom/apportable/ui/BarItem;->getLayout()Landroid/widget/LinearLayout$LayoutParams;

    #@a
    move-result-object v1

    #@b
    if-eqz v0, :cond_2

    #@d
    if-eqz v1, :cond_2

    #@f
    iget-object v2, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    #@11
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@14
    goto :goto_2
.end method

.method public addRightItem(Lcom/apportable/ui/BarItem;)V
    .registers 5

    #@0
    if-nez p1, :cond_3

    #@2
    :cond_2
    :goto_2
    return-void

    #@3
    :cond_3
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    #@5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    #@8
    invoke-virtual {p1}, Lcom/apportable/ui/BarItem;->getView()Landroid/view/View;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1}, Lcom/apportable/ui/BarItem;->getLayout()Landroid/widget/LinearLayout$LayoutParams;

    #@f
    move-result-object v1

    #@10
    if-eqz v0, :cond_2

    #@12
    if-eqz v1, :cond_2

    #@14
    iget-object v2, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    #@16
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@19
    goto :goto_2
.end method

.method public beginAnimations(I)V
    .registers 7

    #@0
    const/high16 v3, 0x3f800000    # 1.0f

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v0, 0x1

    #@4
    if-ne p1, v0, :cond_2f

    #@6
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    #@8
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    #@a
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    #@c
    invoke-static {p0}, Lcom/apportable/ui/NavigationBar;->getLayoutWidth(Lcom/apportable/ui/View;)I

    #@f
    move-result v3

    #@10
    int-to-float v3, v3

    #@11
    invoke-direct {v2, v3, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@14
    invoke-direct {v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    #@17
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    #@1a
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    #@1c
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    #@1e
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    #@20
    invoke-static {p0}, Lcom/apportable/ui/NavigationBar;->getLayoutWidth(Lcom/apportable/ui/View;)I

    #@23
    move-result v3

    #@24
    int-to-float v3, v3

    #@25
    invoke-direct {v2, v3, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@28
    invoke-direct {v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    #@2b
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    #@2e
    :cond_2e
    :goto_2e
    return-void

    #@2f
    :cond_2f
    const/4 v0, -0x1

    #@30
    if-ne p1, v0, :cond_5f

    #@32
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    #@34
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    #@36
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    #@38
    invoke-static {p0}, Lcom/apportable/ui/NavigationBar;->getLayoutWidth(Lcom/apportable/ui/View;)I

    #@3b
    move-result v3

    #@3c
    int-to-float v3, v3

    #@3d
    sub-float v3, v4, v3

    #@3f
    invoke-direct {v2, v3, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@42
    invoke-direct {v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    #@45
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    #@48
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    #@4a
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    #@4c
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    #@4e
    invoke-static {p0}, Lcom/apportable/ui/NavigationBar;->getLayoutWidth(Lcom/apportable/ui/View;)I

    #@51
    move-result v3

    #@52
    int-to-float v3, v3

    #@53
    sub-float v3, v4, v3

    #@55
    invoke-direct {v2, v3, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@58
    invoke-direct {v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    #@5b
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    #@5e
    goto :goto_2e

    #@5f
    :cond_5f
    if-nez p1, :cond_2e

    #@61
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    #@63
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    #@65
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    #@67
    invoke-direct {v2, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@6a
    invoke-direct {v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    #@6d
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    #@70
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    #@72
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    #@74
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    #@76
    invoke-direct {v2, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@79
    invoke-direct {v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    #@7c
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    #@7f
    goto :goto_2e
.end method

.method public endAnimations()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    #@6
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    #@8
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    #@b
    return-void
.end method

.method public getStyle()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/NavigationBar;->mStyle:I

    #@2
    return v0
.end method

.method public getTintColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/NavigationBar;->mTint:I

    #@2
    return v0
.end method

.method public removeAllItems()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    #@5
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mCenterItems:Landroid/widget/LinearLayout;

    #@7
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    #@a
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    #@c
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    #@f
    return-void
.end method

.method public removeLeftItems()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    #@5
    return-void
.end method

.method public removeRightItems()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    #@5
    return-void
.end method

.method public setStyle(I)V
    .registers 5

    #@0
    iput p1, p0, Lcom/apportable/ui/NavigationBar;->mStyle:I

    #@2
    packed-switch p1, :pswitch_data_2c

    #@5
    :goto_5
    return-void

    #@6
    :pswitch_6
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@8
    sget v1, Lcom/apportable/ui/NavigationBar;->DEFAULT_COLOR:I

    #@a
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@d
    invoke-virtual {p0, v0}, Lcom/apportable/ui/NavigationBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@10
    goto :goto_5

    #@11
    :pswitch_11
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    #@13
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@15
    sget-object v2, Lcom/apportable/ui/NavigationBar;->BLACK_OPAQUE_COLORS:[I

    #@17
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    #@1a
    invoke-virtual {p0, v0}, Lcom/apportable/ui/NavigationBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1d
    goto :goto_5

    #@1e
    :pswitch_1e
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    #@20
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@22
    sget-object v2, Lcom/apportable/ui/NavigationBar;->BLACK_TRANSLUCENT_COLORS:[I

    #@24
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    #@27
    invoke-virtual {p0, v0}, Lcom/apportable/ui/NavigationBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@2a
    goto :goto_5

    #@2b
    nop

    #@2c
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_11
        :pswitch_1e
    .end packed-switch
.end method

.method public setTintColor(I)V
    .registers 3

    #@0
    iput p1, p0, Lcom/apportable/ui/NavigationBar;->mTint:I

    #@2
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mNavigationBar:Landroid/widget/RelativeLayout;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    #@7
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 6

    #@0
    const/4 v3, -0x2

    #@1
    iput-object p1, p0, Lcom/apportable/ui/NavigationBar;->mTitle:Ljava/lang/String;

    #@3
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mCenterItems:Landroid/widget/LinearLayout;

    #@5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    #@8
    new-instance v0, Landroid/widget/TextView;

    #@a
    invoke-virtual {p0}, Lcom/apportable/ui/NavigationBar;->getContext()Landroid/content/Context;

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@11
    const/high16 v1, 0x41c00000    # 24.0f

    #@13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    #@16
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    #@18
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    #@1b
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1e
    const v1, -0x22111112

    #@21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    #@24
    iget-object v1, p0, Lcom/apportable/ui/NavigationBar;->mCenterItems:Landroid/widget/LinearLayout;

    #@26
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    #@28
    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@2b
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@2e
    return-void
.end method

.method public setTitleView(Lcom/apportable/ui/View;)V
    .registers 2

    #@0
    return-void
.end method
