.class Lcom/apportable/ui/PickerViewCell;
.super Lcom/apportable/ui/Cell;


# instance fields
.field private mComponent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIFI)V
    .registers 6

    #@0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apportable/ui/Cell;-><init>(Landroid/content/Context;IIF)V

    #@3
    iput p5, p0, Lcom/apportable/ui/PickerViewCell;->mComponent:I

    #@5
    return-void
.end method

.method private native cellAttached(III)V
.end method

.method private native cellDetached(III)V
.end method

.method private native cellForRowInComponent(III)Lcom/apportable/ui/View;
.end method


# virtual methods
.method public getCellView(II)Lcom/apportable/ui/View;
    .registers 4

    #@0
    iget v0, p0, Lcom/apportable/ui/PickerViewCell;->mComponent:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/apportable/ui/PickerViewCell;->cellForRowInComponent(III)Lcom/apportable/ui/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onCellAttached(II)V
    .registers 4

    #@0
    iget v0, p0, Lcom/apportable/ui/PickerViewCell;->mComponent:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/apportable/ui/PickerViewCell;->cellAttached(III)V

    #@5
    return-void
.end method

.method public onCellDetached(II)V
    .registers 4

    #@0
    iget v0, p0, Lcom/apportable/ui/PickerViewCell;->mComponent:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/apportable/ui/PickerViewCell;->cellDetached(III)V

    #@5
    return-void
.end method
