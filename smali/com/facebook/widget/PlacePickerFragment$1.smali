.class Lcom/facebook/widget/PlacePickerFragment$1;
.super Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/PlacePickerFragment;->createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment",
        "<",
        "Lcom/facebook/model/GraphPlace;",
        ">.PickerFragmentAdapter<",
        "Lcom/facebook/model/GraphPlace;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/PlacePickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PlacePickerFragment;Landroid/content/Context;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment$1;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    #@2
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;-><init>(Lcom/facebook/widget/PickerFragment;Landroid/content/Context;)V

    #@5
    return-void
.end method


# virtual methods
.method protected getDefaultPicture()I
    .registers 2

    #@0
    const v0, 0x7f020019

    #@3
    return v0
.end method

.method protected bridge synthetic getGraphObjectRowLayoutId(Lcom/facebook/model/GraphObject;)I
    .registers 3

    #@0
    check-cast p1, Lcom/facebook/model/GraphPlace;

    #@2
    invoke-virtual {p0, p1}, Lcom/facebook/widget/PlacePickerFragment$1;->getGraphObjectRowLayoutId(Lcom/facebook/model/GraphPlace;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected getGraphObjectRowLayoutId(Lcom/facebook/model/GraphPlace;)I
    .registers 3

    #@0
    const v0, 0x7f03000b

    #@3
    return v0
.end method

.method protected bridge synthetic getSubTitleOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/CharSequence;
    .registers 3

    #@0
    check-cast p1, Lcom/facebook/model/GraphPlace;

    #@2
    invoke-virtual {p0, p1}, Lcom/facebook/widget/PlacePickerFragment$1;->getSubTitleOfGraphObject(Lcom/facebook/model/GraphPlace;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected getSubTitleOfGraphObject(Lcom/facebook/model/GraphPlace;)Ljava/lang/CharSequence;
    .registers 9

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    invoke-interface {p1}, Lcom/facebook/model/GraphPlace;->getCategory()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    const-string v0, "were_here_count"

    #@8
    invoke-interface {p1, v0}, Lcom/facebook/model/GraphPlace;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;

    #@e
    if-eqz v1, :cond_23

    #@10
    if-eqz v0, :cond_23

    #@12
    iget-object v2, p0, Lcom/facebook/widget/PlacePickerFragment$1;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    #@14
    const v3, 0x7f07000b

    #@17
    const/4 v4, 0x2

    #@18
    new-array v4, v4, [Ljava/lang/Object;

    #@1a
    aput-object v1, v4, v5

    #@1c
    aput-object v0, v4, v6

    #@1e
    invoke-virtual {v2, v3, v4}, Lcom/facebook/widget/PlacePickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    :goto_22
    return-object v0

    #@23
    :cond_23
    if-nez v1, :cond_35

    #@25
    if-eqz v0, :cond_35

    #@27
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment$1;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    #@29
    const v2, 0x7f07000d

    #@2c
    new-array v3, v6, [Ljava/lang/Object;

    #@2e
    aput-object v0, v3, v5

    #@30
    invoke-virtual {v1, v2, v3}, Lcom/facebook/widget/PlacePickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    goto :goto_22

    #@35
    :cond_35
    if-eqz v1, :cond_47

    #@37
    if-nez v0, :cond_47

    #@39
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment$1;->this$0:Lcom/facebook/widget/PlacePickerFragment;

    #@3b
    const v2, 0x7f07000c

    #@3e
    new-array v3, v6, [Ljava/lang/Object;

    #@40
    aput-object v1, v3, v5

    #@42
    invoke-virtual {v0, v2, v3}, Lcom/facebook/widget/PlacePickerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    goto :goto_22

    #@47
    :cond_47
    const/4 v0, 0x0

    #@48
    goto :goto_22
.end method
