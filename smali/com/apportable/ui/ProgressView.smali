.class Lcom/apportable/ui/ProgressView;
.super Lcom/apportable/ui/View;


# instance fields
.field private mProgress:F

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    #@3
    invoke-direct {p0}, Lcom/apportable/ui/ProgressView;->init()V

    #@6
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@3
    invoke-direct {p0}, Lcom/apportable/ui/ProgressView;->init()V

    #@6
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/ProgressView;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/ProgressView;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/ProgressView;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/ProgressView;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/ProgressView;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/ProgressView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private init()V
    .registers 5

    #@0
    new-instance v0, Landroid/widget/ProgressBar;

    #@2
    invoke-virtual {p0}, Lcom/apportable/ui/ProgressView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    const v3, 0x1010078

    #@a
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@d
    iput-object v0, p0, Lcom/apportable/ui/ProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    #@f
    iget-object v0, p0, Lcom/apportable/ui/ProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    #@11
    invoke-virtual {p0, v0}, Lcom/apportable/ui/ProgressView;->setContentView(Landroid/view/View;)V

    #@14
    return-void
.end method


# virtual methods
.method public getProgress()F
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/ProgressView;->mProgress:F

    #@2
    return v0
.end method

.method public setProgress(FZ)V
    .registers 5

    #@0
    iput p1, p0, Lcom/apportable/ui/ProgressView;->mProgress:F

    #@2
    iget-object v0, p0, Lcom/apportable/ui/ProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    #@4
    iget-object v1, p0, Lcom/apportable/ui/ProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    #@6
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    #@9
    move-result v1

    #@a
    int-to-float v1, v1

    #@b
    mul-float/2addr v1, p1

    #@c
    float-to-int v1, v1

    #@d
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    #@10
    return-void
.end method
