.class public Lcom/facebook/widget/FriendPickerFragment;
.super Lcom/facebook/widget/PickerFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment",
        "<",
        "Lcom/facebook/model/GraphUser;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field public static final MULTI_SELECT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.FriendPickerFragment.MultiSelect"

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final USER_ID_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.FriendPickerFragment.UserId"


# instance fields
.field private multiSelect:Z

.field private preSelectedFriendIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;-><init>(Landroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    #@0
    const-class v0, Lcom/facebook/model/GraphUser;

    #@2
    const/high16 v1, 0x7f030000

    #@4
    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/widget/PickerFragment;-><init>(Ljava/lang/Class;ILandroid/os/Bundle;)V

    #@7
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    #@a
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/facebook/widget/FriendPickerFragment;->preSelectedFriendIds:Ljava/util/List;

    #@11
    invoke-direct {p0, p1}, Lcom/facebook/widget/FriendPickerFragment;->setFriendPickerSettingsFromBundle(Landroid/os/Bundle;)V

    #@14
    return-void
.end method

.method private createRequest(Ljava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session;",
            ")",
            "Lcom/facebook/Request;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string v1, "/friends"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    const/4 v1, 0x0

    #@14
    invoke-static {p3, v0, v1}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    #@17
    move-result-object v0

    #@18
    new-instance v1, Ljava/util/HashSet;

    #@1a
    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@1d
    const/4 v2, 0x2

    #@1e
    new-array v2, v2, [Ljava/lang/String;

    #@20
    const/4 v3, 0x0

    #@21
    const-string v4, "id"

    #@23
    aput-object v4, v2, v3

    #@25
    const/4 v3, 0x1

    #@26
    const-string v4, "name"

    #@28
    aput-object v4, v2, v3

    #@2a
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@2d
    move-result-object v2

    #@2e
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@31
    iget-object v2, p0, Lcom/facebook/widget/FriendPickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@33
    invoke-virtual {v2}, Lcom/facebook/widget/GraphObjectAdapter;->getPictureFieldSpecifier()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    if-eqz v2, :cond_3c

    #@39
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3c
    :cond_3c
    invoke-virtual {v0}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    #@3f
    move-result-object v2

    #@40
    const-string v3, "fields"

    #@42
    const-string v4, ","

    #@44
    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@4b
    invoke-virtual {v0, v2}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    #@4e
    return-object v0
.end method

.method private setFriendPickerSettingsFromBundle(Landroid/os/Bundle;)V
    .registers 4

    #@0
    if-eqz p1, :cond_1e

    #@2
    const-string v0, "com.facebook.widget.FriendPickerFragment.UserId"

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_13

    #@a
    const-string v0, "com.facebook.widget.FriendPickerFragment.UserId"

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;->setUserId(Ljava/lang/String;)V

    #@13
    :cond_13
    const-string v0, "com.facebook.widget.FriendPickerFragment.MultiSelect"

    #@15
    iget-boolean v1, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    #@17
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@1a
    move-result v0

    #@1b
    invoke-virtual {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;->setMultiSelect(Z)V

    #@1e
    :cond_1e
    return-void
.end method


# virtual methods
.method createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">.PickerFragmentAdapter<",
            "Lcom/facebook/model/GraphUser;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v2, 0x1

    #@1
    new-instance v0, Lcom/facebook/widget/FriendPickerFragment$1;

    #@3
    invoke-virtual {p0}, Lcom/facebook/widget/FriendPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@6
    move-result-object v1

    #@7
    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/FriendPickerFragment$1;-><init>(Lcom/facebook/widget/FriendPickerFragment;Landroid/content/Context;)V

    #@a
    invoke-virtual {v0, v2}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->setShowCheckbox(Z)V

    #@d
    invoke-virtual {p0}, Lcom/facebook/widget/FriendPickerFragment;->getShowPictures()Z

    #@10
    move-result v1

    #@11
    invoke-virtual {v0, v1}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->setShowPicture(Z)V

    #@14
    new-array v1, v2, [Ljava/lang/String;

    #@16
    const/4 v2, 0x0

    #@17
    const-string v3, "name"

    #@19
    aput-object v3, v1, v2

    #@1b
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->setSortFields(Ljava/util/List;)V

    #@22
    const-string v1, "name"

    #@24
    invoke-virtual {v0, v1}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->setGroupByField(Ljava/lang/String;)V

    #@27
    return-object v0
.end method

.method createLoadingStrategy()Lcom/facebook/widget/PickerFragment$LoadingStrategy;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">.",
            "LoadingStrategy;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;-><init>(Lcom/facebook/widget/FriendPickerFragment;Lcom/facebook/widget/FriendPickerFragment$1;)V

    #@6
    return-object v0
.end method

.method createSelectionStrategy()Lcom/facebook/widget/PickerFragment$SelectionStrategy;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">.SelectionStrategy;"
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    #@2
    if-eqz v0, :cond_a

    #@4
    new-instance v0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;

    #@6
    invoke-direct {v0, p0}, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    new-instance v0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;

    #@c
    invoke-direct {v0, p0}, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    #@f
    goto :goto_9
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .registers 2

    #@0
    const v0, 0x7f07000f

    #@3
    invoke-virtual {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;->getString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getMultiSelect()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    #@2
    return v0
.end method

.method getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Lcom/facebook/FacebookException;

    #@6
    const-string v1, "Can\'t issue requests until Fragment has been created."

    #@8
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment;->userId:Ljava/lang/String;

    #@e
    if-eqz v0, :cond_19

    #@10
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment;->userId:Ljava/lang/String;

    #@12
    :goto_12
    iget-object v1, p0, Lcom/facebook/widget/FriendPickerFragment;->extraFields:Ljava/util/HashSet;

    #@14
    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/widget/FriendPickerFragment;->createRequest(Ljava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    :cond_19
    const-string v0, "me"

    #@1b
    goto :goto_12
.end method

.method public getSelection()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/FriendPickerFragment;->getSelectedGraphObjects()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment;->userId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public loadData(Z)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->loadData(Z)V

    #@3
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment;->preSelectedFriendIds:Ljava/util/List;

    #@5
    invoke-virtual {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;->setSelectedGraphObjects(Ljava/util/List;)V

    #@8
    return-void
.end method

.method logAppEvents(Z)V
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/FriendPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/facebook/widget/FriendPickerFragment;->getSession()Lcom/facebook/Session;

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;

    #@b
    move-result-object v1

    #@c
    new-instance v2, Landroid/os/Bundle;

    #@e
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@11
    if-eqz p1, :cond_2e

    #@13
    const-string v0, "Completed"

    #@15
    :goto_15
    const-string v3, "fb_dialog_outcome"

    #@17
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    const-string v0, "num_friends_picked"

    #@1c
    invoke-virtual {p0}, Lcom/facebook/widget/FriendPickerFragment;->getSelection()Ljava/util/List;

    #@1f
    move-result-object v3

    #@20
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@23
    move-result v3

    #@24
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@27
    const-string v0, "fb_friend_picker_usage"

    #@29
    const/4 v3, 0x0

    #@2a
    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    #@2d
    return-void

    #@2e
    :cond_2e
    const-string v0, "Unknown"

    #@30
    goto :goto_15
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 7

    #@0
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/widget/PickerFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@3
    sget-object v0, Lcom/facebook/android/R$styleable;->com_facebook_friend_picker_fragment:[I

    #@5
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x0

    #@a
    iget-boolean v2, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Lcom/facebook/widget/FriendPickerFragment;->setMultiSelect(Z)V

    #@13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@16
    return-void
.end method

.method saveSettingsToBundle(Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    #@3
    const-string v0, "com.facebook.widget.FriendPickerFragment.UserId"

    #@5
    iget-object v1, p0, Lcom/facebook/widget/FriendPickerFragment;->userId:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    const-string v0, "com.facebook.widget.FriendPickerFragment.MultiSelect"

    #@c
    iget-boolean v1, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    #@e
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@11
    return-void
.end method

.method public setMultiSelect(Z)V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    #@2
    if-eq v0, p1, :cond_d

    #@4
    iput-boolean p1, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    #@6
    invoke-virtual {p0}, Lcom/facebook/widget/FriendPickerFragment;->createSelectionStrategy()Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;->setSelectionStrategy(Lcom/facebook/widget/PickerFragment$SelectionStrategy;)V

    #@d
    :cond_d
    return-void
.end method

.method public setSelection(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">;)V"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1d

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/facebook/model/GraphUser;

    #@15
    invoke-interface {v0}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1c
    goto :goto_9

    #@1d
    :cond_1d
    invoke-virtual {p0, v1}, Lcom/facebook/widget/FriendPickerFragment;->setSelectionByIds(Ljava/util/List;)V

    #@20
    return-void
.end method

.method public varargs setSelection([Lcom/facebook/model/GraphUser;)V
    .registers 3

    #@0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;->setSelection(Ljava/util/List;)V

    #@7
    return-void
.end method

.method public setSelectionByIds(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment;->preSelectedFriendIds:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@5
    return-void
.end method

.method public varargs setSelectionByIds([Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;->setSelectionByIds(Ljava/util/List;)V

    #@7
    return-void
.end method

.method public setSettingsFromBundle(Landroid/os/Bundle;)V
    .registers 2

    #@0
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    #@3
    invoke-direct {p0, p1}, Lcom/facebook/widget/FriendPickerFragment;->setFriendPickerSettingsFromBundle(Landroid/os/Bundle;)V

    #@6
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/FriendPickerFragment;->userId:Ljava/lang/String;

    #@2
    return-void
.end method
