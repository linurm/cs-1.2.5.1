.class Lcom/apportable/ui/View$TransformAnimation;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformAnimation"
.end annotation


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/apportable/ui/View;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/View;Landroid/graphics/Matrix;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/apportable/ui/View$TransformAnimation;->this$0:Lcom/apportable/ui/View;

    #@2
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@5
    iput-object p2, p0, Lcom/apportable/ui/View$TransformAnimation;->mMatrix:Landroid/graphics/Matrix;

    #@7
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5

    #@0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/apportable/ui/View$TransformAnimation;->mMatrix:Landroid/graphics/Matrix;

    #@6
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@9
    return-void
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/View$TransformAnimation;->mMatrix:Landroid/graphics/Matrix;

    #@2
    return-object v0
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/ui/View$TransformAnimation;->mMatrix:Landroid/graphics/Matrix;

    #@2
    return-void
.end method
