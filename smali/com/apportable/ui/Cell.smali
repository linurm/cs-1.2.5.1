.class public abstract Lcom/apportable/ui/Cell;
.super Landroid/widget/AbsoluteLayout;


# instance fields
.field private mContainer:I

.field private mObject:I

.field private mRow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIF)V
    .registers 8

    #@0
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    #@3
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    #@5
    const/4 v1, -0x1

    #@6
    float-to-int v2, p4

    #@7
    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    #@a
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Cell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@d
    iput p2, p0, Lcom/apportable/ui/Cell;->mRow:I

    #@f
    iput p3, p0, Lcom/apportable/ui/Cell;->mContainer:I

    #@11
    return-void
.end method


# virtual methods
.method public abstract getCellView(II)Lcom/apportable/ui/View;
.end method

.method public loadView()V
    .registers 5

    #@0
    const/4 v3, -0x1

    #@1
    iget v0, p0, Lcom/apportable/ui/Cell;->mContainer:I

    #@3
    iget v1, p0, Lcom/apportable/ui/Cell;->mRow:I

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/apportable/ui/Cell;->getCellView(II)Lcom/apportable/ui/View;

    #@8
    move-result-object v1

    #@9
    if-nez v1, :cond_c

    #@b
    :goto_b
    return-void

    #@c
    :cond_c
    iget v0, v1, Lcom/apportable/ui/View;->mObject:I

    #@e
    iput v0, p0, Lcom/apportable/ui/Cell;->mObject:I

    #@10
    iget v0, p0, Lcom/apportable/ui/Cell;->mContainer:I

    #@12
    iget v2, v1, Lcom/apportable/ui/View;->mObject:I

    #@14
    invoke-virtual {p0, v0, v2}, Lcom/apportable/ui/Cell;->onCellAttached(II)V

    #@17
    invoke-virtual {v1}, Lcom/apportable/ui/View;->getParent()Landroid/view/ViewParent;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/view/ViewGroup;

    #@1d
    if-eqz v0, :cond_22

    #@1f
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@22
    :cond_22
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@24
    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@27
    invoke-virtual {p0, v1, v0}, Lcom/apportable/ui/Cell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@2a
    goto :goto_b
.end method

.method public abstract onCellAttached(II)V
.end method

.method public abstract onCellDetached(II)V
.end method

.method public prepareForReuse(IF)V
    .registers 6

    #@0
    iget v0, p0, Lcom/apportable/ui/Cell;->mContainer:I

    #@2
    iget v1, p0, Lcom/apportable/ui/Cell;->mObject:I

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/apportable/ui/Cell;->onCellDetached(II)V

    #@7
    iput p1, p0, Lcom/apportable/ui/Cell;->mRow:I

    #@9
    const/4 v0, 0x0

    #@a
    iput v0, p0, Lcom/apportable/ui/Cell;->mObject:I

    #@c
    invoke-virtual {p0}, Lcom/apportable/ui/Cell;->removeAllViews()V

    #@f
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    #@11
    const/4 v1, -0x1

    #@12
    float-to-int v2, p2

    #@13
    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    #@16
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Cell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@19
    return-void
.end method
