.class Lcom/apportable/ui/PickerView;
.super Lcom/apportable/ui/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/PickerView$PickerAdapter;
    }
.end annotation


# instance fields
.field private isInitialized:Z

.field private mNumberOfComponents:I

.field private mNumberOfRowsByComponent:[I

.field private mPickerView:Landroid/widget/LinearLayout;

.field private mRowHeightByComponent:[I

.field private mWidthByComponent:[I


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    #@3
    new-instance v0, Landroid/widget/LinearLayout;

    #@5
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/apportable/ui/PickerView;->mPickerView:Landroid/widget/LinearLayout;

    #@a
    iget-object v0, p0, Lcom/apportable/ui/PickerView;->mPickerView:Landroid/widget/LinearLayout;

    #@c
    invoke-virtual {p0, v0}, Lcom/apportable/ui/PickerView;->setContentView(Landroid/view/View;)V

    #@f
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@3
    new-instance v0, Landroid/widget/LinearLayout;

    #@5
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/apportable/ui/PickerView;->mPickerView:Landroid/widget/LinearLayout;

    #@a
    iget-object v0, p0, Lcom/apportable/ui/PickerView;->mPickerView:Landroid/widget/LinearLayout;

    #@c
    invoke-virtual {p0, v0}, Lcom/apportable/ui/PickerView;->setContentView(Landroid/view/View;)V

    #@f
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/PickerView;)[I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/PickerView;->mRowHeightByComponent:[I

    #@2
    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/PickerView;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/PickerView;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/PickerView;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/PickerView;
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/ui/PickerView;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/PickerView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    #@5
    return-object v0
.end method

.method private initComponents()V
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    iget-boolean v0, p0, Lcom/apportable/ui/PickerView;->isInitialized:Z

    #@3
    if-nez v0, :cond_14

    #@5
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Lcom/apportable/ui/PickerView;->isInitialized:Z

    #@8
    iget-object v0, p0, Lcom/apportable/ui/PickerView;->mNumberOfRowsByComponent:[I

    #@a
    if-eqz v0, :cond_14

    #@c
    iget-object v0, p0, Lcom/apportable/ui/PickerView;->mWidthByComponent:[I

    #@e
    if-eqz v0, :cond_14

    #@10
    iget-object v0, p0, Lcom/apportable/ui/PickerView;->mRowHeightByComponent:[I

    #@12
    if-nez v0, :cond_15

    #@14
    :cond_14
    return-void

    #@15
    :cond_15
    iget-object v0, p0, Lcom/apportable/ui/PickerView;->mPickerView:Landroid/widget/LinearLayout;

    #@17
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    #@1a
    move v0, v1

    #@1b
    :goto_1b
    iget v2, p0, Lcom/apportable/ui/PickerView;->mNumberOfComponents:I

    #@1d
    if-ge v0, v2, :cond_14

    #@1f
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    #@21
    iget-object v3, p0, Lcom/apportable/ui/PickerView;->mWidthByComponent:[I

    #@23
    aget v3, v3, v0

    #@25
    const/4 v4, -0x1

    #@26
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    #@29
    new-instance v3, Landroid/widget/ListView;

    #@2b
    invoke-virtual {p0}, Lcom/apportable/ui/PickerView;->getContext()Landroid/content/Context;

    #@2e
    move-result-object v4

    #@2f
    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    #@32
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    #@35
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    #@38
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setHorizontalScrollBarEnabled(Z)V

    #@3b
    new-instance v4, Lcom/apportable/ui/PickerView$PickerAdapter;

    #@3d
    invoke-direct {v4, p0, p0, v0}, Lcom/apportable/ui/PickerView$PickerAdapter;-><init>(Lcom/apportable/ui/PickerView;Lcom/apportable/ui/PickerView;I)V

    #@40
    iget-object v5, p0, Lcom/apportable/ui/PickerView;->mNumberOfRowsByComponent:[I

    #@42
    aget v5, v5, v0

    #@44
    invoke-virtual {v4, v5}, Lcom/apportable/ui/PickerView$PickerAdapter;->setNumberOfRowsInComponent(I)V

    #@47
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@4a
    iget-object v4, p0, Lcom/apportable/ui/PickerView;->mPickerView:Landroid/widget/LinearLayout;

    #@4c
    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@4f
    add-int/lit8 v0, v0, 0x1

    #@51
    goto :goto_1b
.end method


# virtual methods
.method public native numberOfComponents(I)I
.end method

.method public native numberOfRowsInComponent(II)I
.end method

.method protected onAttachedToWindow()V
    .registers 1

    #@0
    invoke-super {p0}, Lcom/apportable/ui/View;->onAttachedToWindow()V

    #@3
    invoke-direct {p0}, Lcom/apportable/ui/PickerView;->initComponents()V

    #@6
    return-void
.end method

.method public reloadData()V
    .registers 4

    #@0
    iget v0, p0, Lcom/apportable/ui/PickerView;->mObject:I

    #@2
    invoke-virtual {p0, v0}, Lcom/apportable/ui/PickerView;->numberOfComponents(I)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Lcom/apportable/ui/PickerView;->mNumberOfComponents:I

    #@8
    iget v0, p0, Lcom/apportable/ui/PickerView;->mNumberOfComponents:I

    #@a
    new-array v0, v0, [I

    #@c
    iput-object v0, p0, Lcom/apportable/ui/PickerView;->mNumberOfRowsByComponent:[I

    #@e
    iget v0, p0, Lcom/apportable/ui/PickerView;->mNumberOfComponents:I

    #@10
    new-array v0, v0, [I

    #@12
    iput-object v0, p0, Lcom/apportable/ui/PickerView;->mWidthByComponent:[I

    #@14
    iget v0, p0, Lcom/apportable/ui/PickerView;->mNumberOfComponents:I

    #@16
    new-array v0, v0, [I

    #@18
    iput-object v0, p0, Lcom/apportable/ui/PickerView;->mRowHeightByComponent:[I

    #@1a
    const/4 v0, 0x0

    #@1b
    :goto_1b
    iget v1, p0, Lcom/apportable/ui/PickerView;->mNumberOfComponents:I

    #@1d
    if-ge v0, v1, :cond_40

    #@1f
    iget-object v1, p0, Lcom/apportable/ui/PickerView;->mNumberOfRowsByComponent:[I

    #@21
    iget v2, p0, Lcom/apportable/ui/PickerView;->mObject:I

    #@23
    invoke-virtual {p0, v2, v0}, Lcom/apportable/ui/PickerView;->numberOfRowsInComponent(II)I

    #@26
    move-result v2

    #@27
    aput v2, v1, v0

    #@29
    iget-object v1, p0, Lcom/apportable/ui/PickerView;->mWidthByComponent:[I

    #@2b
    iget v2, p0, Lcom/apportable/ui/PickerView;->mObject:I

    #@2d
    invoke-virtual {p0, v2, v0}, Lcom/apportable/ui/PickerView;->widthForComponent(II)I

    #@30
    move-result v2

    #@31
    aput v2, v1, v0

    #@33
    iget-object v1, p0, Lcom/apportable/ui/PickerView;->mRowHeightByComponent:[I

    #@35
    iget v2, p0, Lcom/apportable/ui/PickerView;->mObject:I

    #@37
    invoke-virtual {p0, v2, v0}, Lcom/apportable/ui/PickerView;->rowHeightForComponent(II)I

    #@3a
    move-result v2

    #@3b
    aput v2, v1, v0

    #@3d
    add-int/lit8 v0, v0, 0x1

    #@3f
    goto :goto_1b

    #@40
    :cond_40
    return-void
.end method

.method public native rowHeightForComponent(II)I
.end method

.method public native widthForComponent(II)I
.end method
