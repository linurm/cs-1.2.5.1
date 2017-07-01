.class public Lcom/facebook/widget/PlacePickerFragment;
.super Lcom/facebook/widget/PickerFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;,
        Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment",
        "<",
        "Lcom/facebook/model/GraphPlace;",
        ">;"
    }
.end annotation


# static fields
.field private static final CATEGORY:Ljava/lang/String; = "category"

.field public static final DEFAULT_RADIUS_IN_METERS:I = 0x3e8

.field public static final DEFAULT_RESULTS_LIMIT:I = 0x64

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field public static final LOCATION_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.Location"

.field private static final NAME:Ljava/lang/String; = "name"

.field public static final RADIUS_IN_METERS_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

.field public static final RESULTS_LIMIT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.ResultsLimit"

.field public static final SEARCH_TEXT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.SearchText"

.field public static final SHOW_SEARCH_BOX_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

.field private static final TAG:Ljava/lang/String; = "PlacePickerFragment"

.field private static final WERE_HERE_COUNT:Ljava/lang/String; = "were_here_count"

.field private static final searchTextTimerDelayInMilliseconds:I = 0x7d0


# instance fields
.field private hasSearchTextChangedSinceLastQuery:Z

.field private location:Landroid/location/Location;

.field private radiusInMeters:I

.field private resultsLimit:I

.field private searchBox:Landroid/widget/EditText;

.field private searchText:Ljava/lang/String;

.field private searchTextTimer:Ljava/util/Timer;

.field private showSearchBox:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;-><init>(Landroid/os/Bundle;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    #@0
    const-class v0, Lcom/facebook/model/GraphPlace;

    #@2
    const v1, 0x7f03000a

    #@5
    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/widget/PickerFragment;-><init>(Ljava/lang/Class;ILandroid/os/Bundle;)V

    #@8
    const/16 v0, 0x3e8

    #@a
    iput v0, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    #@c
    const/16 v0, 0x64

    #@e
    iput v0, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    #@10
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    #@13
    invoke-direct {p0, p1}, Lcom/facebook/widget/PlacePickerFragment;->setPlacePickerSettingsFromBundle(Landroid/os/Bundle;)V

    #@16
    return-void
.end method

.method static synthetic access$200(Lcom/facebook/widget/PlacePickerFragment;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/facebook/widget/PlacePickerFragment;->onSearchTextTimerTriggered()V

    #@3
    return-void
.end method

.method private createRequest(Landroid/location/Location;IILjava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "II",
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
    const/4 v5, 0x0

    #@1
    move-object v0, p6

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-static/range {v0 .. v5}, Lcom/facebook/Request;->newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;

    #@9
    move-result-object v0

    #@a
    new-instance v1, Ljava/util/HashSet;

    #@c
    invoke-direct {v1, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@f
    const/4 v2, 0x5

    #@10
    new-array v2, v2, [Ljava/lang/String;

    #@12
    const/4 v3, 0x0

    #@13
    const-string v4, "id"

    #@15
    aput-object v4, v2, v3

    #@17
    const/4 v3, 0x1

    #@18
    const-string v4, "name"

    #@1a
    aput-object v4, v2, v3

    #@1c
    const/4 v3, 0x2

    #@1d
    const-string v4, "location"

    #@1f
    aput-object v4, v2, v3

    #@21
    const/4 v3, 0x3

    #@22
    const-string v4, "category"

    #@24
    aput-object v4, v2, v3

    #@26
    const/4 v3, 0x4

    #@27
    const-string v4, "were_here_count"

    #@29
    aput-object v4, v2, v3

    #@2b
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@32
    iget-object v2, p0, Lcom/facebook/widget/PlacePickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@34
    invoke-virtual {v2}, Lcom/facebook/widget/GraphObjectAdapter;->getPictureFieldSpecifier()Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    if-eqz v2, :cond_3d

    #@3a
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@3d
    :cond_3d
    invoke-virtual {v0}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    #@40
    move-result-object v2

    #@41
    const-string v3, "fields"

    #@43
    const-string v4, ","

    #@45
    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@4c
    invoke-virtual {v0, v2}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    #@4f
    return-object v0
.end method

.method private createSearchTextTimer()Ljava/util/Timer;
    .registers 7

    #@0
    new-instance v0, Ljava/util/Timer;

    #@2
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    #@5
    new-instance v1, Lcom/facebook/widget/PlacePickerFragment$2;

    #@7
    invoke-direct {v1, p0}, Lcom/facebook/widget/PlacePickerFragment$2;-><init>(Lcom/facebook/widget/PlacePickerFragment;)V

    #@a
    const-wide/16 v2, 0x0

    #@c
    const-wide/16 v4, 0x7d0

    #@e
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    #@11
    return-object v0
.end method

.method private onSearchTextTimerTriggered()V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    #@2
    if-eqz v0, :cond_16

    #@4
    new-instance v0, Landroid/os/Handler;

    #@6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@d
    new-instance v1, Lcom/facebook/widget/PlacePickerFragment$3;

    #@f
    invoke-direct {v1, p0}, Lcom/facebook/widget/PlacePickerFragment$3;-><init>(Lcom/facebook/widget/PlacePickerFragment;)V

    #@12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@15
    :goto_15
    return-void

    #@16
    :cond_16
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    #@18
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    #@1b
    const/4 v0, 0x0

    #@1c
    iput-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    #@1e
    goto :goto_15
.end method

.method private setPlacePickerSettingsFromBundle(Landroid/os/Bundle;)V
    .registers 4

    #@0
    if-eqz p1, :cond_46

    #@2
    const-string v0, "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

    #@4
    iget v1, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    #@6
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;->setRadiusInMeters(I)V

    #@d
    const-string v0, "com.facebook.widget.PlacePickerFragment.ResultsLimit"

    #@f
    iget v1, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@14
    move-result v0

    #@15
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;->setResultsLimit(I)V

    #@18
    const-string v0, "com.facebook.widget.PlacePickerFragment.SearchText"

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_29

    #@20
    const-string v0, "com.facebook.widget.PlacePickerFragment.SearchText"

    #@22
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;->setSearchText(Ljava/lang/String;)V

    #@29
    :cond_29
    const-string v0, "com.facebook.widget.PlacePickerFragment.Location"

    #@2b
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_3c

    #@31
    const-string v0, "com.facebook.widget.PlacePickerFragment.Location"

    #@33
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Landroid/location/Location;

    #@39
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;->setLocation(Landroid/location/Location;)V

    #@3c
    :cond_3c
    const-string v0, "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

    #@3e
    iget-boolean v1, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    #@40
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@43
    move-result v0

    #@44
    iput-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    #@46
    :cond_46
    return-void
.end method


# virtual methods
.method createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<",
            "Lcom/facebook/model/GraphPlace;",
            ">.PickerFragmentAdapter<",
            "Lcom/facebook/model/GraphPlace;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/widget/PlacePickerFragment$1;

    #@2
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/PlacePickerFragment$1;-><init>(Lcom/facebook/widget/PlacePickerFragment;Landroid/content/Context;)V

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->setShowCheckbox(Z)V

    #@d
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getShowPictures()Z

    #@10
    move-result v1

    #@11
    invoke-virtual {v0, v1}, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->setShowPicture(Z)V

    #@14
    return-object v0
.end method

.method createLoadingStrategy()Lcom/facebook/widget/PickerFragment$LoadingStrategy;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<",
            "Lcom/facebook/model/GraphPlace;",
            ">.",
            "LoadingStrategy;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;-><init>(Lcom/facebook/widget/PlacePickerFragment;Lcom/facebook/widget/PlacePickerFragment$1;)V

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
            "Lcom/facebook/model/GraphPlace;",
            ">.SelectionStrategy;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;

    #@2
    invoke-direct {v0, p0}, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    #@5
    return-object v0
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .registers 2

    #@0
    const v0, 0x7f070010

    #@3
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;->getString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->location:Landroid/location/Location;

    #@2
    return-object v0
.end method

.method public getRadiusInMeters()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    #@2
    return v0
.end method

.method getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;
    .registers 9

    #@0
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->location:Landroid/location/Location;

    #@2
    iget v2, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    #@4
    iget v3, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    #@6
    iget-object v4, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    #@8
    iget-object v5, p0, Lcom/facebook/widget/PlacePickerFragment;->extraFields:Ljava/util/HashSet;

    #@a
    move-object v0, p0

    #@b
    move-object v6, p1

    #@c
    invoke-direct/range {v0 .. v6}, Lcom/facebook/widget/PlacePickerFragment;->createRequest(Landroid/location/Location;IILjava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public getResultsLimit()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    #@2
    return v0
.end method

.method public getSearchText()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSelection()Lcom/facebook/model/GraphPlace;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getSelectedGraphObjects()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_17

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_17

    #@c
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/facebook/model/GraphPlace;

    #@16
    :goto_16
    return-object v0

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    goto :goto_16
.end method

.method logAppEvents(Z)V
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getSession()Lcom/facebook/Session;

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
    if-eqz p1, :cond_2d

    #@13
    const-string v0, "Completed"

    #@15
    :goto_15
    const-string v3, "fb_dialog_outcome"

    #@17
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getSelection()Lcom/facebook/model/GraphPlace;

    #@1d
    move-result-object v0

    #@1e
    if-eqz v0, :cond_30

    #@20
    const/4 v0, 0x1

    #@21
    :goto_21
    const-string v3, "num_places_picked"

    #@23
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@26
    const-string v0, "fb_place_picker_usage"

    #@28
    const/4 v3, 0x0

    #@29
    invoke-virtual {v1, v0, v3, v2}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    #@2c
    return-void

    #@2d
    :cond_2d
    const-string v0, "Unknown"

    #@2f
    goto :goto_15

    #@30
    :cond_30
    const/4 v0, 0x0

    #@31
    goto :goto_21
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5

    #@0
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->onAttach(Landroid/app/Activity;)V

    #@3
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    #@5
    if-eqz v0, :cond_19

    #@7
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@a
    move-result-object v0

    #@b
    const-string v1, "input_method"

    #@d
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@13
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    #@15
    const/4 v2, 0x1

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    #@19
    :cond_19
    return-void
.end method

.method public onDetach()V
    .registers 4

    #@0
    invoke-super {p0}, Lcom/facebook/widget/PickerFragment;->onDetach()V

    #@3
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    #@5
    if-eqz v0, :cond_1d

    #@7
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@a
    move-result-object v0

    #@b
    const-string v1, "input_method"

    #@d
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@13
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    #@15
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    #@18
    move-result-object v1

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    #@1d
    :cond_1d
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 8

    #@0
    const/4 v3, 0x1

    #@1
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/widget/PickerFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@4
    sget-object v0, Lcom/facebook/android/R$styleable;->com_facebook_place_picker_fragment:[I

    #@6
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    const/4 v1, 0x0

    #@b
    iget v2, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@10
    move-result v1

    #@11
    invoke-virtual {p0, v1}, Lcom/facebook/widget/PlacePickerFragment;->setRadiusInMeters(I)V

    #@14
    iget v1, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    #@16
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@19
    move-result v1

    #@1a
    invoke-virtual {p0, v1}, Lcom/facebook/widget/PlacePickerFragment;->setResultsLimit(I)V

    #@1d
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_2b

    #@23
    const/4 v1, 0x2

    #@24
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {p0, v1}, Lcom/facebook/widget/PlacePickerFragment;->setSearchText(Ljava/lang/String;)V

    #@2b
    :cond_2b
    const/4 v1, 0x3

    #@2c
    iget-boolean v2, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    #@2e
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@31
    move-result v1

    #@32
    iput-boolean v1, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    #@34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@37
    return-void
.end method

.method onLoadingData()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    #@3
    return-void
.end method

.method public onSearchBoxTextChanged(Ljava/lang/String;Z)V
    .registers 4

    #@0
    if-nez p2, :cond_b

    #@2
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    #@4
    invoke-static {v0, p1}, Lcom/facebook/internal/Utility;->stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    :cond_a
    :goto_a
    return-void

    #@b
    :cond_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_12

    #@11
    const/4 p1, 0x0

    #@12
    :cond_12
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    #@14
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    #@17
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    #@19
    if-nez v0, :cond_a

    #@1b
    invoke-direct {p0}, Lcom/facebook/widget/PlacePickerFragment;->createSearchTextTimer()Ljava/util/Timer;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    #@21
    goto :goto_a
.end method

.method saveSettingsToBundle(Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    #@3
    const-string v0, "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

    #@5
    iget v1, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@a
    const-string v0, "com.facebook.widget.PlacePickerFragment.ResultsLimit"

    #@c
    iget v1, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    #@e
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@11
    const-string v0, "com.facebook.widget.PlacePickerFragment.SearchText"

    #@13
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    const-string v0, "com.facebook.widget.PlacePickerFragment.Location"

    #@1a
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->location:Landroid/location/Location;

    #@1c
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@1f
    const-string v0, "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

    #@21
    iget-boolean v1, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    #@23
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@26
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->location:Landroid/location/Location;

    #@2
    return-void
.end method

.method public setRadiusInMeters(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    #@2
    return-void
.end method

.method public setResultsLimit(I)V
    .registers 2

    #@0
    iput p1, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    #@2
    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_7

    #@6
    const/4 p1, 0x0

    #@7
    :cond_7
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    #@9
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    #@b
    if-eqz v0, :cond_12

    #@d
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    #@f
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@12
    :cond_12
    return-void
.end method

.method public setSettingsFromBundle(Landroid/os/Bundle;)V
    .registers 2

    #@0
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    #@3
    invoke-direct {p0, p1}, Lcom/facebook/widget/PlacePickerFragment;->setPlacePickerSettingsFromBundle(Landroid/os/Bundle;)V

    #@6
    return-void
.end method

.method setupViews(Landroid/view/ViewGroup;)V
    .registers 7

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    iget-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    #@4
    if-eqz v0, :cond_45

    #@6
    const v0, 0x7f040016

    #@9
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/widget/ListView;

    #@f
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@16
    move-result-object v1

    #@17
    const v2, 0x7f030007

    #@1a
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1, v4, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    #@21
    const v0, 0x7f040027

    #@24
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Landroid/widget/EditText;

    #@2a
    iput-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    #@2c
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    #@2e
    new-instance v1, Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;

    #@30
    invoke-direct {v1, p0, v4}, Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;-><init>(Lcom/facebook/widget/PlacePickerFragment;Lcom/facebook/widget/PlacePickerFragment$1;)V

    #@33
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@36
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    #@38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3b
    move-result v0

    #@3c
    if-nez v0, :cond_45

    #@3e
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    #@40
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    #@42
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@45
    :cond_45
    return-void
.end method
