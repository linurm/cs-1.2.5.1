.class Lcom/apportable/ui/ActivityIndicatorView;
.super Lcom/apportable/ui/View;


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    #@3
    invoke-direct {p0}, Lcom/apportable/ui/ActivityIndicatorView;->init()V

    #@6
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@3
    invoke-direct {p0}, Lcom/apportable/ui/ActivityIndicatorView;->init()V

    #@6
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/ActivityIndicatorView;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/ActivityIndicatorView;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/ActivityIndicatorView;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/ActivityIndicatorView;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/ActivityIndicatorView;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/ActivityIndicatorView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private init()V
    .registers 5

    #@0
    new-instance v0, Landroid/widget/ProgressBar;

    #@2
    invoke-virtual {p0}, Lcom/apportable/ui/ActivityIndicatorView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    const v3, 0x101007a

    #@a
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@d
    iput-object v0, p0, Lcom/apportable/ui/ActivityIndicatorView;->mProgressBar:Landroid/widget/ProgressBar;

    #@f
    iget-object v0, p0, Lcom/apportable/ui/ActivityIndicatorView;->mProgressBar:Landroid/widget/ProgressBar;

    #@11
    const/4 v1, 0x1

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    #@15
    iget-object v0, p0, Lcom/apportable/ui/ActivityIndicatorView;->mProgressBar:Landroid/widget/ProgressBar;

    #@17
    invoke-virtual {p0, v0}, Lcom/apportable/ui/ActivityIndicatorView;->setContentView(Landroid/view/View;)V

    #@1a
    return-void
.end method
