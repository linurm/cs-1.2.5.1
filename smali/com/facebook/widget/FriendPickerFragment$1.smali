.class Lcom/facebook/widget/FriendPickerFragment$1;
.super Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/FriendPickerFragment;->createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment",
        "<",
        "Lcom/facebook/model/GraphUser;",
        ">.PickerFragmentAdapter<",
        "Lcom/facebook/model/GraphUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/FriendPickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/FriendPickerFragment;Landroid/content/Context;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/facebook/widget/FriendPickerFragment$1;->this$0:Lcom/facebook/widget/FriendPickerFragment;

    #@2
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;-><init>(Lcom/facebook/widget/PickerFragment;Landroid/content/Context;)V

    #@5
    return-void
.end method


# virtual methods
.method protected getDefaultPicture()I
    .registers 2

    #@0
    const v0, 0x7f02001a

    #@3
    return v0
.end method

.method protected bridge synthetic getGraphObjectRowLayoutId(Lcom/facebook/model/GraphObject;)I
    .registers 3

    #@0
    check-cast p1, Lcom/facebook/model/GraphUser;

    #@2
    invoke-virtual {p0, p1}, Lcom/facebook/widget/FriendPickerFragment$1;->getGraphObjectRowLayoutId(Lcom/facebook/model/GraphUser;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected getGraphObjectRowLayoutId(Lcom/facebook/model/GraphUser;)I
    .registers 3

    #@0
    const v0, 0x7f030005

    #@3
    return v0
.end method
