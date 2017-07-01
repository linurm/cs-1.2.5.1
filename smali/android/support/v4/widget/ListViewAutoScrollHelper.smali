.class public Landroid/support/v4/widget/ListViewAutoScrollHelper;
.super Landroid/support/v4/widget/AutoScrollHelper;


# instance fields
.field private final mTarget:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper;-><init>(Landroid/view/View;)V

    #@3
    iput-object p1, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    #@5
    return-void
.end method


# virtual methods
.method public canTargetScrollHorizontally(I)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public canTargetScrollVertically(I)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    #@3
    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_a

    #@9
    :cond_9
    :goto_9
    return v0

    #@a
    :cond_a
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    #@d
    move-result v3

    #@e
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    #@11
    move-result v4

    #@12
    if-lez p1, :cond_29

    #@14
    add-int/2addr v4, v3

    #@15
    if-lt v4, v2, :cond_27

    #@17
    add-int/lit8 v2, v3, -0x1

    #@19
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    #@20
    move-result v2

    #@21
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    #@24
    move-result v1

    #@25
    if-le v2, v1, :cond_9

    #@27
    :cond_27
    const/4 v0, 0x1

    #@28
    goto :goto_9

    #@29
    :cond_29
    if-gez p1, :cond_9

    #@2b
    if-gtz v4, :cond_27

    #@2d
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@34
    move-result v1

    #@35
    if-ltz v1, :cond_27

    #@37
    goto :goto_9
.end method

.method public scrollTargetBy(II)V
    .registers 6

    #@0
    iget-object v0, p0, Landroid/support/v4/widget/ListViewAutoScrollHelper;->mTarget:Landroid/widget/ListView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    #@5
    move-result v1

    #@6
    const/4 v2, -0x1

    #@7
    if-ne v1, v2, :cond_a

    #@9
    :cond_9
    :goto_9
    return-void

    #@a
    :cond_a
    const/4 v2, 0x0

    #@b
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@e
    move-result-object v2

    #@f
    if-eqz v2, :cond_9

    #@11
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    #@14
    move-result v2

    #@15
    sub-int/2addr v2, p2

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    #@19
    goto :goto_9
.end method
