.class Lcom/apportable/utils/DimDrawable$State;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/utils/DimDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field private mChangingConfigurations:I

.field private mDimAmount:F

.field private mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;FI)V
    .registers 4

    #@0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@3
    iput-object p1, p0, Lcom/apportable/utils/DimDrawable$State;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    #@5
    iput p2, p0, Lcom/apportable/utils/DimDrawable$State;->mDimAmount:F

    #@7
    iput p3, p0, Lcom/apportable/utils/DimDrawable$State;->mChangingConfigurations:I

    #@9
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/utils/DimDrawable$State;->mChangingConfigurations:I

    #@2
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/utils/DimDrawable;

    #@2
    iget-object v1, p0, Lcom/apportable/utils/DimDrawable$State;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    #@4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v1

    #@8
    iget v2, p0, Lcom/apportable/utils/DimDrawable$State;->mDimAmount:F

    #@a
    invoke-direct {v0, v1, v2}, Lcom/apportable/utils/DimDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    #@d
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 5

    #@0
    new-instance v0, Lcom/apportable/utils/DimDrawable;

    #@2
    iget-object v1, p0, Lcom/apportable/utils/DimDrawable$State;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    #@4
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v1

    #@8
    iget v2, p0, Lcom/apportable/utils/DimDrawable$State;->mDimAmount:F

    #@a
    invoke-direct {v0, v1, v2}, Lcom/apportable/utils/DimDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    #@d
    return-object v0
.end method
