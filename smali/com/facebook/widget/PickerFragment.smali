.class public abstract Lcom/facebook/widget/PickerFragment;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/PickerFragment$GraphObjectFilter;,
        Lcom/facebook/widget/PickerFragment$LoadingStrategy;,
        Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;,
        Lcom/facebook/widget/PickerFragment$OnDataChangedListener;,
        Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;,
        Lcom/facebook/widget/PickerFragment$OnErrorListener;,
        Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;,
        Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;,
        Lcom/facebook/widget/PickerFragment$SelectionStrategy;,
        Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/model/GraphObject;",
        ">",
        "Landroid/support/v4/app/Fragment;"
    }
.end annotation


# static fields
.field private static final ACTIVITY_CIRCLE_SHOW_KEY:Ljava/lang/String; = "com.facebook.android.PickerFragment.ActivityCircleShown"

.field public static final DONE_BUTTON_TEXT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PickerFragment.DoneButtonText"

.field public static final EXTRA_FIELDS_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PickerFragment.ExtraFields"

.field private static final PROFILE_PICTURE_PREFETCH_BUFFER:I = 0x5

.field private static final SELECTION_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.android.PickerFragment.Selection"

.field public static final SHOW_PICTURES_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PickerFragment.ShowPictures"

.field public static final SHOW_TITLE_BAR_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PickerFragment.ShowTitleBar"

.field public static final TITLE_TEXT_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.widget.PickerFragment.TitleText"


# instance fields
.field private activityCircle:Landroid/widget/ProgressBar;

.field adapter:Lcom/facebook/widget/GraphObjectAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/GraphObjectAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private appEventsLogged:Z

.field private doneButton:Landroid/widget/Button;

.field private doneButtonBackground:Landroid/graphics/drawable/Drawable;

.field private doneButtonText:Ljava/lang/String;

.field extraFields:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lcom/facebook/widget/PickerFragment$GraphObjectFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/PickerFragment$GraphObjectFilter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final graphObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final layout:I

.field private listView:Landroid/widget/ListView;

.field private loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/PickerFragment",
            "<TT;>.",
            "LoadingStrategy;"
        }
    .end annotation
.end field

.field private onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

.field private onDoneButtonClickedListener:Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;

.field private onErrorListener:Lcom/facebook/widget/PickerFragment$OnErrorListener;

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

.field private selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/PickerFragment",
            "<TT;>.SelectionStrategy;"
        }
    .end annotation
.end field

.field private sessionTracker:Lcom/facebook/internal/SessionTracker;

.field private showPictures:Z

.field private showTitleBar:Z

.field private titleBarBackground:Landroid/graphics/drawable/Drawable;

.field private titleText:Ljava/lang/String;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    #@4
    iput-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    #@6
    iput-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    #@8
    new-instance v0, Ljava/util/HashSet;

    #@a
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@d
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    #@f
    new-instance v0, Lcom/facebook/widget/PickerFragment$6;

    #@11
    invoke-direct {v0, p0}, Lcom/facebook/widget/PickerFragment$6;-><init>(Lcom/facebook/widget/PickerFragment;)V

    #@14
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    #@16
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->graphObjectClass:Ljava/lang/Class;

    #@18
    iput p2, p0, Lcom/facebook/widget/PickerFragment;->layout:I

    #@1a
    invoke-direct {p0, p3}, Lcom/facebook/widget/PickerFragment;->setPickerFragmentSettingsFromBundle(Landroid/os/Bundle;)V

    #@1d
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/PickerFragment;Landroid/widget/ListView;Landroid/view/View;I)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/PickerFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;I)V

    #@3
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/widget/PickerFragment;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/facebook/widget/PickerFragment;->clearResults()V

    #@3
    return-void
.end method

.method static synthetic access$202(Lcom/facebook/widget/PickerFragment;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/widget/PickerFragment;->appEventsLogged:Z

    #@2
    return p1
.end method

.method static synthetic access$300(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onDoneButtonClickedListener:Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;

    #@2
    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/widget/PickerFragment;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/facebook/widget/PickerFragment;->reprioritizeDownloads()V

    #@3
    return-void
.end method

.method static synthetic access$500(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$OnErrorListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onErrorListener:Lcom/facebook/widget/PickerFragment$OnErrorListener;

    #@2
    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/widget/PickerFragment;)Ljava/lang/Class;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->graphObjectClass:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$SelectionStrategy;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    #@2
    return-object v0
.end method

.method private clearResults()V
    .registers 5

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@4
    if-eqz v0, :cond_3d

    #@6
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    #@8
    invoke-virtual {v0}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->isEmpty()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_3e

    #@e
    move v0, v1

    #@f
    :goto_f
    iget-object v3, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@11
    invoke-virtual {v3}, Lcom/facebook/widget/GraphObjectAdapter;->isEmpty()Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_18

    #@17
    move v2, v1

    #@18
    :cond_18
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    #@1a
    invoke-virtual {v1}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->clearResults()V

    #@1d
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    #@1f
    invoke-virtual {v1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->clear()V

    #@22
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@24
    invoke-virtual {v1}, Lcom/facebook/widget/GraphObjectAdapter;->notifyDataSetChanged()V

    #@27
    if-eqz v2, :cond_32

    #@29
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

    #@2b
    if-eqz v1, :cond_32

    #@2d
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

    #@2f
    invoke-interface {v1, p0}, Lcom/facebook/widget/PickerFragment$OnDataChangedListener;->onDataChanged(Lcom/facebook/widget/PickerFragment;)V

    #@32
    :cond_32
    if-eqz v0, :cond_3d

    #@34
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

    #@36
    if-eqz v0, :cond_3d

    #@38
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

    #@3a
    invoke-interface {v0, p0}, Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;->onSelectionChanged(Lcom/facebook/widget/PickerFragment;)V

    #@3d
    :cond_3d
    return-void

    #@3e
    :cond_3e
    move v0, v2

    #@3f
    goto :goto_f
.end method

.method private inflateTitleBar(Landroid/view/ViewGroup;)V
    .registers 6

    #@0
    const/4 v2, -0x1

    #@1
    const v0, 0x7f040023

    #@4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/view/ViewStub;

    #@a
    if-eqz v0, :cond_7b

    #@c
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    #@12
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    #@15
    const/4 v2, 0x3

    #@16
    const v3, 0x7f040024

    #@19
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    #@1c
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    #@1e
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@21
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->titleBarBackground:Landroid/graphics/drawable/Drawable;

    #@23
    if-eqz v1, :cond_2a

    #@25
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->titleBarBackground:Landroid/graphics/drawable/Drawable;

    #@27
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@2a
    :cond_2a
    const v0, 0x7f040021

    #@2d
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/widget/Button;

    #@33
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    #@35
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    #@37
    if-eqz v0, :cond_5d

    #@39
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    #@3b
    new-instance v1, Lcom/facebook/widget/PickerFragment$5;

    #@3d
    invoke-direct {v1, p0}, Lcom/facebook/widget/PickerFragment$5;-><init>(Lcom/facebook/widget/PickerFragment;)V

    #@40
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@43
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getDoneButtonText()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    if-eqz v0, :cond_52

    #@49
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    #@4b
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getDoneButtonText()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@52
    :cond_52
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButtonBackground:Landroid/graphics/drawable/Drawable;

    #@54
    if-eqz v0, :cond_5d

    #@56
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    #@58
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->doneButtonBackground:Landroid/graphics/drawable/Drawable;

    #@5a
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5d
    :cond_5d
    const v0, 0x7f04001d

    #@60
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@63
    move-result-object v0

    #@64
    check-cast v0, Landroid/widget/TextView;

    #@66
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleTextView:Landroid/widget/TextView;

    #@68
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleTextView:Landroid/widget/TextView;

    #@6a
    if-eqz v0, :cond_7b

    #@6c
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getTitleText()Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    if-eqz v0, :cond_7b

    #@72
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleTextView:Landroid/widget/TextView;

    #@74
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getTitleText()Ljava/lang/String;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@7b
    :cond_7b
    return-void
.end method

.method private loadDataSkippingRoundTripIfCached()V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/facebook/widget/PickerFragment;->clearResults()V

    #@3
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getSession()Lcom/facebook/Session;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PickerFragment;->getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_15

    #@d
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->onLoadingData()V

    #@10
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    #@12
    invoke-virtual {v1, v0}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->startLoading(Lcom/facebook/Request;)V

    #@15
    :cond_15
    return-void
.end method

.method private onListItemClick(Landroid/widget/ListView;Landroid/view/View;I)V
    .registers 6

    #@0
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/facebook/model/GraphObject;

    #@6
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@8
    invoke-virtual {v1, v0}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    #@e
    invoke-virtual {v1, v0}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->toggleSelection(Ljava/lang/String;)V

    #@11
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@13
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter;->notifyDataSetChanged()V

    #@16
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

    #@18
    if-eqz v0, :cond_1f

    #@1a
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

    #@1c
    invoke-interface {v0, p0}, Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;->onSelectionChanged(Lcom/facebook/widget/PickerFragment;)V

    #@1f
    :cond_1f
    return-void
.end method

.method private reprioritizeDownloads()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    #@2
    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    #@5
    move-result v0

    #@6
    if-ltz v0, :cond_14

    #@8
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    #@a
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    #@d
    move-result v1

    #@e
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@10
    const/4 v3, 0x5

    #@11
    invoke-virtual {v2, v1, v0, v3}, Lcom/facebook/widget/GraphObjectAdapter;->prioritizeViewRange(III)V

    #@14
    :cond_14
    return-void
.end method

.method private static setAlpha(Landroid/view/View;F)V
    .registers 6

    #@0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    #@2
    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@5
    const-wide/16 v2, 0x0

    #@7
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    #@a
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    #@e
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@11
    return-void
.end method

.method private setPickerFragmentSettingsFromBundle(Landroid/os/Bundle;)V
    .registers 4

    #@0
    if-eqz p1, :cond_55

    #@2
    const-string v0, "com.facebook.widget.PickerFragment.ShowPictures"

    #@4
    iget-boolean v1, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    #@6
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@9
    move-result v0

    #@a
    iput-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    #@c
    const-string v0, "com.facebook.widget.PickerFragment.ExtraFields"

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_21

    #@14
    const-string v1, ","

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PickerFragment;->setExtraFields(Ljava/util/Collection;)V

    #@21
    :cond_21
    const-string v0, "com.facebook.widget.PickerFragment.ShowTitleBar"

    #@23
    iget-boolean v1, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@28
    move-result v0

    #@29
    iput-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    #@2b
    const-string v0, "com.facebook.widget.PickerFragment.TitleText"

    #@2d
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    if-eqz v0, :cond_40

    #@33
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    #@35
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleTextView:Landroid/widget/TextView;

    #@37
    if-eqz v0, :cond_40

    #@39
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleTextView:Landroid/widget/TextView;

    #@3b
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    #@3d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@40
    :cond_40
    const-string v0, "com.facebook.widget.PickerFragment.DoneButtonText"

    #@42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    if-eqz v0, :cond_55

    #@48
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    #@4a
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    #@4c
    if-eqz v0, :cond_55

    #@4e
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    #@50
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    #@52
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    #@55
    :cond_55
    return-void
.end method


# virtual methods
.method abstract createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<TT;>.PickerFragmentAdapter<TT;>;"
        }
    .end annotation
.end method

.method abstract createLoadingStrategy()Lcom/facebook/widget/PickerFragment$LoadingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<TT;>.",
            "LoadingStrategy;"
        }
    .end annotation
.end method

.method abstract createSelectionStrategy()Lcom/facebook/widget/PickerFragment$SelectionStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment",
            "<TT;>.SelectionStrategy;"
        }
    .end annotation
.end method

.method displayActivityCircle()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_d

    #@4
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->layoutActivityCircle()V

    #@7
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@d
    :cond_d
    return-void
.end method

.method filterIncludesItem(Lcom/facebook/model/GraphObject;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->filter:Lcom/facebook/widget/PickerFragment$GraphObjectFilter;

    #@2
    if-eqz v0, :cond_b

    #@4
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->filter:Lcom/facebook/widget/PickerFragment$GraphObjectFilter;

    #@6
    invoke-interface {v0, p1}, Lcom/facebook/widget/PickerFragment$GraphObjectFilter;->includeItem(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    const/4 v0, 0x1

    #@c
    goto :goto_a
.end method

.method getDefaultDoneButtonText()Ljava/lang/String;
    .registers 2

    #@0
    const v0, 0x7f07000e

    #@3
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PickerFragment;->getString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDoneButtonText()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    #@2
    if-nez v0, :cond_a

    #@4
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getDefaultDoneButtonText()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    #@a
    :cond_a
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    #@c
    return-object v0
.end method

.method public getExtraFields()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/HashSet;

    #@2
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    #@4
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method public getFilter()Lcom/facebook/widget/PickerFragment$GraphObjectFilter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment$GraphObjectFilter",
            "<TT;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->filter:Lcom/facebook/widget/PickerFragment$GraphObjectFilter;

    #@2
    return-object v0
.end method

.method public getOnDataChangedListener()Lcom/facebook/widget/PickerFragment$OnDataChangedListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

    #@2
    return-object v0
.end method

.method public getOnDoneButtonClickedListener()Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onDoneButtonClickedListener:Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;

    #@2
    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/PickerFragment$OnErrorListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onErrorListener:Lcom/facebook/widget/PickerFragment$OnErrorListener;

    #@2
    return-object v0
.end method

.method public getOnSelectionChangedListener()Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

    #@2
    return-object v0
.end method

.method abstract getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;
.end method

.method getSelectedGraphObjects()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@2
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    #@4
    invoke-virtual {v1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->getSelectedIds()Ljava/util/Collection;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->getGraphObjectsById(Ljava/util/Collection;)Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getSession()Lcom/facebook/Session;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@2
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getShowPictures()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    #@2
    return v0
.end method

.method public getShowTitleBar()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    #@2
    return v0
.end method

.method public getTitleText()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    #@2
    if-nez v0, :cond_a

    #@4
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getDefaultTitleText()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    #@a
    :cond_a
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    #@c
    return-object v0
.end method

.method hideActivityCircle()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    #@2
    if-eqz v0, :cond_f

    #@4
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    #@6
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    #@9
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    #@b
    const/4 v1, 0x4

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    #@f
    :cond_f
    return-void
.end method

.method layoutActivityCircle()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@2
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_10

    #@8
    const/high16 v0, 0x3e800000    # 0.25f

    #@a
    :goto_a
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    #@c
    invoke-static {v1, v0}, Lcom/facebook/widget/PickerFragment;->setAlpha(Landroid/view/View;F)V

    #@f
    return-void

    #@10
    :cond_10
    const/high16 v0, 0x3f800000    # 1.0f

    #@12
    goto :goto_a
.end method

.method public loadData(Z)V
    .registers 3

    #@0
    if-nez p1, :cond_b

    #@2
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    #@4
    invoke-virtual {v0}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->isDataPresentOrLoading()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    :goto_a
    return-void

    #@b
    :cond_b
    invoke-direct {p0}, Lcom/facebook/widget/PickerFragment;->loadDataSkippingRoundTripIfCached()V

    #@e
    goto :goto_a
.end method

.method logAppEvents(Z)V
    .registers 2

    #@0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    #@0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@3
    new-instance v0, Lcom/facebook/internal/SessionTracker;

    #@5
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@8
    move-result-object v1

    #@9
    new-instance v2, Lcom/facebook/widget/PickerFragment$4;

    #@b
    invoke-direct {v2, p0}, Lcom/facebook/widget/PickerFragment$4;-><init>(Lcom/facebook/widget/PickerFragment;)V

    #@e
    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;)V

    #@11
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@13
    invoke-virtual {p0, p1}, Lcom/facebook/widget/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    #@16
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->createLoadingStrategy()Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    #@1c
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    #@1e
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@20
    invoke-virtual {v0, v1}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->attach(Lcom/facebook/widget/GraphObjectAdapter;)V

    #@23
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->createSelectionStrategy()Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    #@29
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    #@2b
    const-string v1, "com.facebook.android.PickerFragment.Selection"

    #@2d
    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->readSelectionFromBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    #@30
    iget-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    #@32
    if-eqz v0, :cond_3d

    #@34
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getView()Landroid/view/View;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Landroid/view/ViewGroup;

    #@3a
    invoke-direct {p0, v0}, Lcom/facebook/widget/PickerFragment;->inflateTitleBar(Landroid/view/ViewGroup;)V

    #@3d
    :cond_3d
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    #@3f
    if-eqz v0, :cond_4f

    #@41
    if-eqz p1, :cond_4f

    #@43
    const-string v0, "com.facebook.android.PickerFragment.ActivityCircleShown"

    #@45
    const/4 v1, 0x0

    #@46
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_50

    #@4c
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->displayActivityCircle()V

    #@4f
    :cond_4f
    :goto_4f
    return-void

    #@50
    :cond_50
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->hideActivityCircle()V

    #@53
    goto :goto_4f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@3
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@9
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@b
    new-instance v1, Lcom/facebook/widget/PickerFragment$1;

    #@d
    invoke-direct {v1, p0}, Lcom/facebook/widget/PickerFragment$1;-><init>(Lcom/facebook/widget/PickerFragment;)V

    #@10
    invoke-virtual {v0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->setFilter(Lcom/facebook/widget/GraphObjectAdapter$Filter;)V

    #@13
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    #@0
    iget v0, p0, Lcom/facebook/widget/PickerFragment;->layout:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/view/ViewGroup;

    #@9
    const v1, 0x7f040016

    #@c
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/widget/ListView;

    #@12
    iput-object v1, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    #@14
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    #@16
    new-instance v2, Lcom/facebook/widget/PickerFragment$2;

    #@18
    invoke-direct {v2, p0}, Lcom/facebook/widget/PickerFragment$2;-><init>(Lcom/facebook/widget/PickerFragment;)V

    #@1b
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@1e
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    #@20
    new-instance v2, Lcom/facebook/widget/PickerFragment$3;

    #@22
    invoke-direct {v2, p0}, Lcom/facebook/widget/PickerFragment$3;-><init>(Lcom/facebook/widget/PickerFragment;)V

    #@25
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@28
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    #@2a
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    #@2c
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    #@2f
    const v1, 0x7f040017

    #@32
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Landroid/widget/ProgressBar;

    #@38
    iput-object v1, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    #@3a
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PickerFragment;->setupViews(Landroid/view/ViewGroup;)V

    #@3d
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    #@3f
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@41
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@44
    return-object v0
.end method

.method public onDetach()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    #@4
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    #@6
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    #@9
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    #@b
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@e
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    #@10
    invoke-virtual {v0}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->detach()V

    #@13
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@15
    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->stopTracking()V

    #@18
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 7

    #@0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@3
    sget-object v0, Lcom/facebook/android/R$styleable;->com_facebook_picker_fragment:[I

    #@5
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x0

    #@a
    iget-boolean v2, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Lcom/facebook/widget/PickerFragment;->setShowPictures(Z)V

    #@13
    const/4 v1, 0x1

    #@14
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    if-eqz v1, :cond_27

    #@1a
    const-string v2, ","

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {p0, v1}, Lcom/facebook/widget/PickerFragment;->setExtraFields(Ljava/util/Collection;)V

    #@27
    :cond_27
    const/4 v1, 0x2

    #@28
    iget-boolean v2, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    #@2a
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2d
    move-result v1

    #@2e
    iput-boolean v1, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    #@30
    const/4 v1, 0x3

    #@31
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    iput-object v1, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    #@37
    const/4 v1, 0x4

    #@38
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    iput-object v1, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    #@3e
    const/4 v1, 0x5

    #@3f
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@42
    move-result-object v1

    #@43
    iput-object v1, p0, Lcom/facebook/widget/PickerFragment;->titleBarBackground:Landroid/graphics/drawable/Drawable;

    #@45
    const/4 v1, 0x6

    #@46
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@49
    move-result-object v1

    #@4a
    iput-object v1, p0, Lcom/facebook/widget/PickerFragment;->doneButtonBackground:Landroid/graphics/drawable/Drawable;

    #@4c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@4f
    return-void
.end method

.method onLoadingData()V
    .registers 1

    #@0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    invoke-virtual {p0, p1}, Lcom/facebook/widget/PickerFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    #@6
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    #@8
    const-string v1, "com.facebook.android.PickerFragment.Selection"

    #@a
    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->saveSelectionToBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    #@d
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    #@f
    if-eqz v0, :cond_1f

    #@11
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    #@13
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_20

    #@19
    const/4 v0, 0x1

    #@1a
    :goto_1a
    const-string v1, "com.facebook.android.PickerFragment.ActivityCircleShown"

    #@1c
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@1f
    :cond_1f
    return-void

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    goto :goto_1a
.end method

.method public onStop()V
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->appEventsLogged:Z

    #@2
    if-nez v0, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PickerFragment;->logAppEvents(Z)V

    #@8
    :cond_8
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    #@b
    return-void
.end method

.method saveSettingsToBundle(Landroid/os/Bundle;)V
    .registers 5

    #@0
    const-string v0, "com.facebook.widget.PickerFragment.ShowPictures"

    #@2
    iget-boolean v1, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@7
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    #@9
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1c

    #@f
    const-string v0, "com.facebook.widget.PickerFragment.ExtraFields"

    #@11
    const-string v1, ","

    #@13
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    #@15
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    :cond_1c
    const-string v0, "com.facebook.widget.PickerFragment.ShowTitleBar"

    #@1e
    iget-boolean v1, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    #@20
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@23
    const-string v0, "com.facebook.widget.PickerFragment.TitleText"

    #@25
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    #@27
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2a
    const-string v0, "com.facebook.widget.PickerFragment.DoneButtonText"

    #@2c
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    #@2e
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 2

    #@0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    #@3
    invoke-virtual {p0, p1}, Lcom/facebook/widget/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    #@6
    return-void
.end method

.method public setDoneButtonText(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    #@2
    return-void
.end method

.method public setExtraFields(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    #@7
    if-eqz p1, :cond_e

    #@9
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    #@e
    :cond_e
    return-void
.end method

.method public setFilter(Lcom/facebook/widget/PickerFragment$GraphObjectFilter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/PickerFragment$GraphObjectFilter",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->filter:Lcom/facebook/widget/PickerFragment$GraphObjectFilter;

    #@2
    return-void
.end method

.method public setOnDataChangedListener(Lcom/facebook/widget/PickerFragment$OnDataChangedListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

    #@2
    return-void
.end method

.method public setOnDoneButtonClickedListener(Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->onDoneButtonClickedListener:Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;

    #@2
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/PickerFragment$OnErrorListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->onErrorListener:Lcom/facebook/widget/PickerFragment$OnErrorListener;

    #@2
    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

    #@2
    return-void
.end method

.method setSelectedGraphObjects(Ljava/util/List;)V
    .registers 5
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
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1e

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/String;

    #@10
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    #@12
    invoke-virtual {v2, v0}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->isSelected(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_4

    #@18
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    #@1a
    invoke-virtual {v2, v0}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->toggleSelection(Ljava/lang/String;)V

    #@1d
    goto :goto_4

    #@1e
    :cond_1e
    return-void
.end method

.method setSelectionStrategy(Lcom/facebook/widget/PickerFragment$SelectionStrategy;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/PickerFragment",
            "<TT;>.SelectionStrategy;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    #@2
    if-eq p1, v0, :cond_f

    #@4
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    #@6
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@8
    if-eqz v0, :cond_f

    #@a
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@c
    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter;->notifyDataSetChanged()V

    #@f
    :cond_f
    return-void
.end method

.method public setSession(Lcom/facebook/Session;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    #@2
    invoke-virtual {v0, p1}, Lcom/facebook/internal/SessionTracker;->setSession(Lcom/facebook/Session;)V

    #@5
    return-void
.end method

.method public setSettingsFromBundle(Landroid/os/Bundle;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/widget/PickerFragment;->setPickerFragmentSettingsFromBundle(Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method public setShowPictures(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    #@2
    return-void
.end method

.method public setShowTitleBar(Z)V
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    #@2
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    #@2
    return-void
.end method

.method setupViews(Landroid/view/ViewGroup;)V
    .registers 2

    #@0
    return-void
.end method

.method updateAdapter(Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@2
    if-eqz v0, :cond_50

    #@4
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    #@d
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    #@10
    move-result v0

    #@11
    if-lez v0, :cond_15

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    :cond_15
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@17
    invoke-virtual {v2, v0}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    #@1a
    move-result-object v2

    #@1b
    if-eqz v1, :cond_51

    #@1d
    invoke-virtual {v2}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    #@20
    move-result-object v0

    #@21
    sget-object v3, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    #@23
    if-eq v0, v3, :cond_51

    #@25
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    #@28
    move-result v0

    #@29
    :goto_29
    iget-object v3, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@2b
    invoke-virtual {v3, p1}, Lcom/facebook/widget/GraphObjectAdapter;->changeCursor(Lcom/facebook/widget/GraphObjectCursor;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v1, :cond_45

    #@31
    if-eqz v2, :cond_45

    #@33
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    #@35
    iget-object v4, v2, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    #@37
    iget-object v2, v2, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    #@39
    invoke-virtual {v1, v4, v2}, Lcom/facebook/widget/GraphObjectAdapter;->getPosition(Ljava/lang/String;Lcom/facebook/model/GraphObject;)I

    #@3c
    move-result v1

    #@3d
    const/4 v2, -0x1

    #@3e
    if-eq v1, v2, :cond_45

    #@40
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    #@42
    invoke-virtual {v2, v1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    #@45
    :cond_45
    if-eqz v3, :cond_50

    #@47
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

    #@49
    if-eqz v0, :cond_50

    #@4b
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

    #@4d
    invoke-interface {v0, p0}, Lcom/facebook/widget/PickerFragment$OnDataChangedListener;->onDataChanged(Lcom/facebook/widget/PickerFragment;)V

    #@50
    :cond_50
    return-void

    #@51
    :cond_51
    const/4 v0, 0x0

    #@52
    goto :goto_29
.end method
