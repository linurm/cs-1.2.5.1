.class public Lcom/apportable/ui/Toolbar;
.super Lcom/apportable/ui/View;


# static fields
.field private static final BLACK_OPAQUE_COLORS:[I

.field public static final BLACK_OPAQUE_STYLE:I = 0x1

.field public static final BLACK_STYLE:I = 0x1

.field private static final BLACK_TRANSLUCENT_COLORS:[I

.field public static final BLACK_TRANSLUCENT_STYLE:I = 0x2

.field private static DEFAULT_COLOR:I

.field public static final DEFAULT_STYLE:I


# instance fields
.field private mStyle:I

.field private mTint:I

.field private mToolbar:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v1, 0x2

    #@1
    const v0, -0xeeeeef

    #@4
    sput v0, Lcom/apportable/ui/Toolbar;->DEFAULT_COLOR:I

    #@6
    new-array v0, v1, [I

    #@8
    fill-array-data v0, :array_16

    #@b
    sput-object v0, Lcom/apportable/ui/Toolbar;->BLACK_OPAQUE_COLORS:[I

    #@d
    new-array v0, v1, [I

    #@f
    fill-array-data v0, :array_1e

    #@12
    sput-object v0, Lcom/apportable/ui/Toolbar;->BLACK_TRANSLUCENT_COLORS:[I

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
    iput v0, p0, Lcom/apportable/ui/Toolbar;->mStyle:I

    #@6
    iput v0, p0, Lcom/apportable/ui/Toolbar;->mTint:I

    #@8
    invoke-direct {p0}, Lcom/apportable/ui/Toolbar;->init()V

    #@b
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@4
    iput v0, p0, Lcom/apportable/ui/Toolbar;->mStyle:I

    #@6
    iput v0, p0, Lcom/apportable/ui/Toolbar;->mTint:I

    #@8
    invoke-direct {p0}, Lcom/apportable/ui/Toolbar;->init()V

    #@b
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/Toolbar;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/Toolbar;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Toolbar;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/Toolbar;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/Toolbar;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/Toolbar;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private init()V
    .registers 3

    #@0
    new-instance v0, Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {p0}, Lcom/apportable/ui/Toolbar;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@9
    iput-object v0, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    #@b
    iget-object v0, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@11
    iget-object v0, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    #@13
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Toolbar;->setContentView(Landroid/view/View;)V

    #@16
    return-void
.end method


# virtual methods
.method public addItem(Lcom/apportable/ui/BarItem;)V
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
    iget-object v2, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    #@11
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@14
    goto :goto_2
.end method

.method public beginAnimations()V
    .registers 6

    #@0
    const/4 v4, 0x0

    #@1
    iget-object v0, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    #@3
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    #@5
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    #@7
    invoke-static {p0}, Lcom/apportable/ui/Toolbar;->getLayoutWidth(Lcom/apportable/ui/View;)I

    #@a
    move-result v3

    #@b
    int-to-float v3, v3

    #@c
    invoke-direct {v2, v3, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@f
    invoke-direct {v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    #@15
    return-void
.end method

.method public endAnimations()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    #@6
    return-void
.end method

.method public getStyle()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/Toolbar;->mStyle:I

    #@2
    return v0
.end method

.method public getTintColor()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/Toolbar;->mTint:I

    #@2
    return v0
.end method

.method public removeAllItems()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    #@5
    return-void
.end method

.method public setStyle(I)V
    .registers 5

    #@0
    iput p1, p0, Lcom/apportable/ui/Toolbar;->mStyle:I

    #@2
    packed-switch p1, :pswitch_data_2c

    #@5
    :goto_5
    return-void

    #@6
    :pswitch_6
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@8
    sget v1, Lcom/apportable/ui/Toolbar;->DEFAULT_COLOR:I

    #@a
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    #@d
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@10
    goto :goto_5

    #@11
    :pswitch_11
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    #@13
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@15
    sget-object v2, Lcom/apportable/ui/Toolbar;->BLACK_OPAQUE_COLORS:[I

    #@17
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    #@1a
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1d
    goto :goto_5

    #@1e
    :pswitch_1e
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    #@20
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    #@22
    sget-object v2, Lcom/apportable/ui/Toolbar;->BLACK_TRANSLUCENT_COLORS:[I

    #@24
    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    #@27
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

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
    iput p1, p0, Lcom/apportable/ui/Toolbar;->mTint:I

    #@2
    iget-object v0, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    #@4
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    #@7
    return-void
.end method
