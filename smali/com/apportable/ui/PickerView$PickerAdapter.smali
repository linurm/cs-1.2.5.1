.class Lcom/apportable/ui/PickerView$PickerAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/PickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickerAdapter"
.end annotation


# instance fields
.field private mComponentNumber:I

.field private mNumberOfRowsInComponent:I

.field private mOwner:Lcom/apportable/ui/PickerView;

.field final synthetic this$0:Lcom/apportable/ui/PickerView;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/PickerView;Lcom/apportable/ui/PickerView;I)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->this$0:Lcom/apportable/ui/PickerView;

    #@2
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@5
    iput-object p2, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mOwner:Lcom/apportable/ui/PickerView;

    #@7
    iput p3, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mComponentNumber:I

    #@9
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/apportable/ui/PickerView$PickerAdapter;->getNumberOfRowsInComponent()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    #@0
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public getNumberOfRowsInComponent()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mNumberOfRowsInComponent:I

    #@2
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    #@0
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    #@2
    check-cast p2, Lcom/apportable/ui/PickerViewCell;

    #@4
    invoke-direct {v6, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    #@7
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    if-nez v0, :cond_3d

    #@d
    new-instance v0, Lcom/apportable/ui/PickerViewCell;

    #@f
    iget-object v1, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mOwner:Lcom/apportable/ui/PickerView;

    #@11
    invoke-virtual {v1}, Lcom/apportable/ui/PickerView;->getContext()Landroid/content/Context;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mOwner:Lcom/apportable/ui/PickerView;

    #@17
    iget v3, v2, Lcom/apportable/ui/PickerView;->mObject:I

    #@19
    iget-object v2, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mOwner:Lcom/apportable/ui/PickerView;

    #@1b
    # getter for: Lcom/apportable/ui/PickerView;->mRowHeightByComponent:[I
    invoke-static {v2}, Lcom/apportable/ui/PickerView;->access$000(Lcom/apportable/ui/PickerView;)[I

    #@1e
    move-result-object v2

    #@1f
    iget v4, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mComponentNumber:I

    #@21
    aget v2, v2, v4

    #@23
    int-to-float v4, v2

    #@24
    iget v5, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mComponentNumber:I

    #@26
    move v2, p1

    #@27
    invoke-direct/range {v0 .. v5}, Lcom/apportable/ui/PickerViewCell;-><init>(Landroid/content/Context;IIFI)V

    #@2a
    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    #@2d
    :goto_2d
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Lcom/apportable/ui/PickerViewCell;

    #@33
    invoke-virtual {v0}, Lcom/apportable/ui/PickerViewCell;->loadView()V

    #@36
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Landroid/view/View;

    #@3c
    return-object v0

    #@3d
    :cond_3d
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Lcom/apportable/ui/PickerViewCell;

    #@43
    iget-object v1, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mOwner:Lcom/apportable/ui/PickerView;

    #@45
    # getter for: Lcom/apportable/ui/PickerView;->mRowHeightByComponent:[I
    invoke-static {v1}, Lcom/apportable/ui/PickerView;->access$000(Lcom/apportable/ui/PickerView;)[I

    #@48
    move-result-object v1

    #@49
    iget v2, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mComponentNumber:I

    #@4b
    aget v1, v1, v2

    #@4d
    int-to-float v1, v1

    #@4e
    invoke-virtual {v0, p1, v1}, Lcom/apportable/ui/PickerViewCell;->prepareForReuse(IF)V

    #@51
    goto :goto_2d
.end method

.method public setNumberOfRowsInComponent(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mNumberOfRowsInComponent:I

    #@2
    return-void
.end method
