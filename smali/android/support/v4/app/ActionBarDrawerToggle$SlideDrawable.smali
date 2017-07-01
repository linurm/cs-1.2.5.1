.class Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
.super Landroid/graphics/drawable/InsetDrawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideDrawable"
.end annotation


# instance fields
.field private final mHasMirroring:Z

.field private mOffset:F

.field private mPosition:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v4/app/ActionBarDrawerToggle;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    #@3
    invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    #@6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@8
    const/16 v2, 0x12

    #@a
    if-le v1, v2, :cond_d

    #@c
    const/4 v0, 0x1

    #@d
    :cond_d
    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    #@f
    new-instance v0, Landroid/graphics/Rect;

    #@11
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@14
    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@16
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;Landroid/support/v4/app/ActionBarDrawerToggle$1;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    #@0
    const/4 v5, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@4
    invoke-virtual {p0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->copyBounds(Landroid/graphics/Rect;)V

    #@7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@a
    iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    #@c
    # getter for: Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->access$400(Landroid/support/v4/app/ActionBarDrawerToggle;)Landroid/app/Activity;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@17
    move-result-object v1

    #@18
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@1b
    move-result v1

    #@1c
    if-ne v1, v0, :cond_4d

    #@1e
    move v1, v0

    #@1f
    :goto_1f
    if-eqz v1, :cond_22

    #@21
    const/4 v0, -0x1

    #@22
    :cond_22
    iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    #@24
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    #@27
    move-result v2

    #@28
    iget v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    #@2a
    neg-float v3, v3

    #@2b
    int-to-float v4, v2

    #@2c
    mul-float/2addr v3, v4

    #@2d
    iget v4, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    #@2f
    mul-float/2addr v3, v4

    #@30
    int-to-float v0, v0

    #@31
    mul-float/2addr v0, v3

    #@32
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@35
    if-eqz v1, :cond_46

    #@37
    iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    #@39
    if-nez v0, :cond_46

    #@3b
    int-to-float v0, v2

    #@3c
    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@3f
    const/high16 v0, -0x40800000    # -1.0f

    #@41
    const/high16 v1, 0x3f800000    # 1.0f

    #@43
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    #@46
    :cond_46
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    #@49
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@4c
    return-void

    #@4d
    :cond_4d
    const/4 v1, 0x0

    #@4e
    goto :goto_1f
.end method

.method public getPosition()F
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    #@2
    return v0
.end method

.method public setOffset(F)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    #@2
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    #@5
    return-void
.end method

.method public setPosition(F)V
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    #@2
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    #@5
    return-void
.end method
