.class Landroid/support/v4/widget/EdgeEffectCompatIcs;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .registers 3

    #@0
    check-cast p0, Landroid/widget/EdgeEffect;

    #@2
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static finish(Ljava/lang/Object;)V
    .registers 1

    #@0
    check-cast p0, Landroid/widget/EdgeEffect;

    #@2
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    #@5
    return-void
.end method

.method public static isFinished(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/widget/EdgeEffect;

    #@2
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    #@0
    new-instance v0, Landroid/widget/EdgeEffect;

    #@2
    invoke-direct {v0, p0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method

.method public static onAbsorb(Ljava/lang/Object;I)Z
    .registers 3

    #@0
    check-cast p0, Landroid/widget/EdgeEffect;

    #@2
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    #@5
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public static onPull(Ljava/lang/Object;F)Z
    .registers 3

    #@0
    check-cast p0, Landroid/widget/EdgeEffect;

    #@2
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    #@5
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public static onRelease(Ljava/lang/Object;)Z
    .registers 2

    #@0
    check-cast p0, Landroid/widget/EdgeEffect;

    #@2
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->onRelease()V

    #@5
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public static setSize(Ljava/lang/Object;II)V
    .registers 3

    #@0
    check-cast p0, Landroid/widget/EdgeEffect;

    #@2
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    #@5
    return-void
.end method
