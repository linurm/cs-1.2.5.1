.class public Landroid/support/v4/app/ListFragment;
.super Landroid/support/v4/app/Fragment;


# static fields
.field static final INTERNAL_EMPTY_ID:I = 0xff0001

.field static final INTERNAL_LIST_CONTAINER_ID:I = 0xff0003

.field static final INTERNAL_PROGRESS_CONTAINER_ID:I = 0xff0002


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Landroid/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    #@3
    new-instance v0, Landroid/os/Handler;

    #@5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@8
    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    #@a
    new-instance v0, Landroid/support/v4/app/ListFragment$1;

    #@c
    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$1;-><init>(Landroid/support/v4/app/ListFragment;)V

    #@f
    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@11
    new-instance v0, Landroid/support/v4/app/ListFragment$2;

    #@13
    invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$2;-><init>(Landroid/support/v4/app/ListFragment;)V

    #@16
    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@18
    return-void
.end method

.method private ensureList()V
    .registers 5

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@3
    if-eqz v0, :cond_6

    #@5
    :goto_5
    return-void

    #@6
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_14

    #@c
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    const-string v1, "Content view not yet created"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    :cond_14
    instance-of v1, v0, Landroid/widget/ListView;

    #@16
    if-eqz v1, :cond_3a

    #@18
    check-cast v0, Landroid/widget/ListView;

    #@1a
    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@1c
    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    #@1d
    iput-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    #@1f
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@21
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@23
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #@26
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@28
    if-eqz v0, :cond_ad

    #@2a
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@2c
    const/4 v1, 0x0

    #@2d
    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@2f
    invoke-virtual {p0, v0}, Landroid/support/v4/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    #@32
    :cond_32
    :goto_32
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    #@34
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@39
    goto :goto_5

    #@3a
    :cond_3a
    const v1, 0xff0001

    #@3d
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@40
    move-result-object v1

    #@41
    check-cast v1, Landroid/widget/TextView;

    #@43
    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@45
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@47
    if-nez v1, :cond_79

    #@49
    const v1, 0x1020004

    #@4c
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@4f
    move-result-object v1

    #@50
    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    #@52
    :goto_52
    const v1, 0xff0002

    #@55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@58
    move-result-object v1

    #@59
    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@5b
    const v1, 0xff0003

    #@5e
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@61
    move-result-object v1

    #@62
    iput-object v1, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    #@64
    const v1, 0x102000a

    #@67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6a
    move-result-object v0

    #@6b
    instance-of v1, v0, Landroid/widget/ListView;

    #@6d
    if-nez v1, :cond_89

    #@6f
    if-nez v0, :cond_81

    #@71
    new-instance v0, Ljava/lang/RuntimeException;

    #@73
    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    #@75
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@78
    throw v0

    #@79
    :cond_79
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@7b
    const/16 v2, 0x8

    #@7d
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    #@80
    goto :goto_52

    #@81
    :cond_81
    new-instance v0, Ljava/lang/RuntimeException;

    #@83
    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    #@85
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@88
    throw v0

    #@89
    :cond_89
    check-cast v0, Landroid/widget/ListView;

    #@8b
    iput-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@8d
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    #@8f
    if-eqz v0, :cond_99

    #@91
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@93
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    #@95
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    #@98
    goto :goto_1c

    #@99
    :cond_99
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    #@9b
    if-eqz v0, :cond_1c

    #@9d
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@9f
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    #@a1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@a4
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@a6
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@a8
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    #@ab
    goto/16 :goto_1c

    #@ad
    :cond_ad
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@af
    if-eqz v0, :cond_32

    #@b1
    invoke-direct {p0, v3, v3}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    #@b4
    goto/16 :goto_32
.end method

.method private setListShown(ZZ)V
    .registers 9

    #@0
    const v5, 0x10a0001

    #@3
    const/high16 v4, 0x10a0000

    #@5
    const/16 v3, 0x8

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    #@b
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@d
    if-nez v0, :cond_17

    #@f
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string v1, "Can\'t be used with a custom content view"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    iget-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    #@19
    if-ne v0, p1, :cond_1c

    #@1b
    :goto_1b
    return-void

    #@1c
    :cond_1c
    iput-boolean p1, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    #@1e
    if-eqz p1, :cond_52

    #@20
    if-eqz p2, :cond_47

    #@22
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@24
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@27
    move-result-object v1

    #@28
    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@2f
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    #@31
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@34
    move-result-object v1

    #@35
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@3c
    :goto_3c
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@3e
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    #@41
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    #@43
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    #@46
    goto :goto_1b

    #@47
    :cond_47
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@49
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@4c
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    #@4e
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@51
    goto :goto_3c

    #@52
    :cond_52
    if-eqz p2, :cond_79

    #@54
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@56
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@59
    move-result-object v1

    #@5a
    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@61
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    #@63
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@66
    move-result-object v1

    #@67
    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@6a
    move-result-object v1

    #@6b
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@6e
    :goto_6e
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@70
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    #@73
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    #@75
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    #@78
    goto :goto_1b

    #@79
    :cond_79
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@7b
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@7e
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    #@80
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@83
    goto :goto_6e
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@2
    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@5
    return-object v0
.end method

.method public getSelectedItemId()J
    .registers 3

    #@0
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@5
    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@5
    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13

    #@0
    const/16 v8, 0x11

    #@2
    const/4 v7, -0x2

    #@3
    const/4 v6, -0x1

    #@4
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@7
    move-result-object v0

    #@8
    new-instance v1, Landroid/widget/FrameLayout;

    #@a
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@d
    new-instance v2, Landroid/widget/LinearLayout;

    #@f
    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@12
    const v3, 0xff0002

    #@15
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setId(I)V

    #@18
    const/4 v3, 0x1

    #@19
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@1c
    const/16 v3, 0x8

    #@1e
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    #@21
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    #@24
    new-instance v3, Landroid/widget/ProgressBar;

    #@26
    const/4 v4, 0x0

    #@27
    const v5, 0x101007a

    #@2a
    invoke-direct {v3, v0, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@2d
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    #@2f
    invoke-direct {v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@32
    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@35
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    #@37
    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@3a
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@3d
    new-instance v2, Landroid/widget/FrameLayout;

    #@3f
    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@42
    const v0, 0xff0003

    #@45
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setId(I)V

    #@48
    new-instance v0, Landroid/widget/TextView;

    #@4a
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@4d
    move-result-object v3

    #@4e
    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@51
    const v3, 0xff0001

    #@54
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    #@57
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setGravity(I)V

    #@5a
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    #@5c
    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@5f
    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@62
    new-instance v0, Landroid/widget/ListView;

    #@64
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@67
    move-result-object v3

    #@68
    invoke-direct {v0, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    #@6b
    const v3, 0x102000a

    #@6e
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setId(I)V

    #@71
    const/4 v3, 0x0

    #@72
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    #@75
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    #@77
    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@7a
    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7d
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@7f
    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@82
    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@85
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@87
    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@8a
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@8d
    return-object v1
.end method

.method public onDestroyView()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mHandler:Landroid/os/Handler;

    #@3
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    #@5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@8
    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@a
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    #@d
    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mListContainer:Landroid/view/View;

    #@f
    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mProgressContainer:Landroid/view/View;

    #@11
    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mEmptyView:Landroid/view/View;

    #@13
    iput-object v2, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@15
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    #@18
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6

    #@0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    #@0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #@3
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    #@6
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .registers 4

    #@0
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@5
    if-nez v0, :cond_f

    #@7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string v1, "Can\'t be used with a custom content view"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@14
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    #@16
    if-nez v0, :cond_1f

    #@18
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@1a
    iget-object v1, p0, Landroid/support/v4/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    #@1c
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    #@1f
    :cond_1f
    iput-object p1, p0, Landroid/support/v4/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    #@21
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@4
    if-eqz v0, :cond_27

    #@6
    move v0, v1

    #@7
    :goto_7
    iput-object p1, p0, Landroid/support/v4/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    #@9
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@b
    if-eqz v3, :cond_26

    #@d
    iget-object v3, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@f
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@12
    iget-boolean v3, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z

    #@14
    if-nez v3, :cond_26

    #@16
    if-nez v0, :cond_26

    #@18
    invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@1f
    move-result-object v0

    #@20
    if-eqz v0, :cond_23

    #@22
    move v2, v1

    #@23
    :cond_23
    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    #@26
    :cond_26
    return-void

    #@27
    :cond_27
    move v0, v2

    #@28
    goto :goto_7
.end method

.method public setListShown(Z)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    #@4
    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V

    #@4
    return-void
.end method

.method public setSelection(I)V
    .registers 3

    #@0
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;

    #@5
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    #@8
    return-void
.end method
