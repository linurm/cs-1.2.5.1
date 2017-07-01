.class final Lcom/apportable/utils/ClipColorDrawable$ColorState;
.super Landroid/graphics/drawable/Drawable$ConstantState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/utils/ClipColorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorState"
.end annotation


# instance fields
.field mBaseColor:I

.field mChangingConfigurations:I

.field mUseColor:I


# direct methods
.method constructor <init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;)V
    .registers 3

    #@0
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    #@3
    if-eqz p1, :cond_d

    #@5
    iget v0, p1, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mBaseColor:I

    #@7
    iput v0, p0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mBaseColor:I

    #@9
    iget v0, p1, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    #@b
    iput v0, p0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    #@d
    :cond_d
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mChangingConfigurations:I

    #@2
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/utils/ClipColorDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/apportable/utils/ClipColorDrawable;-><init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;Lcom/apportable/utils/ClipColorDrawable$1;)V

    #@6
    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/utils/ClipColorDrawable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/apportable/utils/ClipColorDrawable;-><init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;Lcom/apportable/utils/ClipColorDrawable$1;)V

    #@6
    return-object v0
.end method
