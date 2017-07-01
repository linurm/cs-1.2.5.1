.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final HONEYCOMB:Z

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mActivity:Landroid/support/v4/app/FragmentActivity;

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAvailIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroid/support/v4/app/FragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroid/support/v4/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpActions:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/high16 v4, 0x40200000    # 2.5f

    #@3
    const/high16 v3, 0x3fc00000    # 1.5f

    #@5
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@9
    const/16 v2, 0xb

    #@b
    if-lt v1, v2, :cond_e

    #@d
    const/4 v0, 0x1

    #@e
    :cond_e
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    #@10
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@12
    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #@15
    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    #@17
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    #@19
    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    #@1c
    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    #@1e
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #@20
    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    #@23
    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    #@25
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    #@27
    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    #@2a
    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    #@2c
    return-void
.end method

.method constructor <init>()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V

    #@4
    const/4 v0, 0x0

    #@5
    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@7
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@9
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@b
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$1;

    #@d
    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    #@10
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    #@12
    return-void
.end method

.method private checkStateLoss()V
    .registers 4

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "Can not perform this action after onSaveInstanceState"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@e
    if-eqz v0, :cond_2b

    #@10
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "Can not perform this action inside of "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    :cond_2b
    return-void
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .registers 7

    #@0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@5
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    #@7
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@a
    const-wide/16 v2, 0xdc

    #@c
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    #@f
    return-object v0
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .registers 15

    #@0
    new-instance v9, Landroid/view/animation/AnimationSet;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    #@6
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    #@8
    const/4 v5, 0x1

    #@9
    const/high16 v6, 0x3f000000    # 0.5f

    #@b
    const/4 v7, 0x1

    #@c
    const/high16 v8, 0x3f000000    # 0.5f

    #@e
    move v1, p1

    #@f
    move v2, p2

    #@10
    move v3, p1

    #@11
    move v4, p2

    #@12
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    #@15
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    #@17
    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@1a
    const-wide/16 v2, 0xdc

    #@1c
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    #@1f
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@22
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    #@24
    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    #@27
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    #@29
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    #@2c
    const-wide/16 v2, 0xdc

    #@2e
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    #@31
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    #@34
    return-object v9
.end method

.method public static reverseTransit(I)I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    sparse-switch p0, :sswitch_data_e

    #@4
    :goto_4
    return v0

    #@5
    :sswitch_5
    const/16 v0, 0x2002

    #@7
    goto :goto_4

    #@8
    :sswitch_8
    const/16 v0, 0x1001

    #@a
    goto :goto_4

    #@b
    :sswitch_b
    const/16 v0, 0x1003

    #@d
    goto :goto_4

    #@e
    :sswitch_data_e
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_b
        0x2002 -> :sswitch_8
    .end sparse-switch
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .registers 7

    #@0
    const-string v0, "FragmentManager"

    #@2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    const-string v0, "FragmentManager"

    #@b
    const-string v1, "Activity state:"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    new-instance v0, Ljava/io/PrintWriter;

    #@12
    new-instance v1, Landroid/support/v4/util/LogWriter;

    #@14
    const-string v2, "FragmentManager"

    #@16
    invoke-direct {v1, v2}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    #@19
    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@1c
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@1e
    if-eqz v1, :cond_35

    #@20
    :try_start_20
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@22
    const-string v2, "  "

    #@24
    const/4 v3, 0x0

    #@25
    const/4 v4, 0x0

    #@26
    new-array v4, v4, [Ljava/lang/String;

    #@28
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/support/v4/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_2c

    #@2b
    :goto_2b
    throw p1

    #@2c
    :catch_2c
    move-exception v0

    #@2d
    const-string v1, "FragmentManager"

    #@2f
    const-string v2, "Failed dumping state"

    #@31
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@34
    goto :goto_2b

    #@35
    :cond_35
    :try_start_35
    const-string v1, "  "

    #@37
    const/4 v2, 0x0

    #@38
    const/4 v3, 0x0

    #@39
    new-array v3, v3, [Ljava/lang/String;

    #@3b
    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_3f

    #@3e
    goto :goto_2b

    #@3f
    :catch_3f
    move-exception v0

    #@40
    const-string v1, "FragmentManager"

    #@42
    const-string v2, "Failed dumping state"

    #@44
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    goto :goto_2b
.end method

.method public static transitToStyleIndex(IZ)I
    .registers 3

    #@0
    const/4 v0, -0x1

    #@1
    sparse-switch p0, :sswitch_data_18

    #@4
    :goto_4
    return v0

    #@5
    :sswitch_5
    if-eqz p1, :cond_9

    #@7
    const/4 v0, 0x1

    #@8
    goto :goto_4

    #@9
    :cond_9
    const/4 v0, 0x2

    #@a
    goto :goto_4

    #@b
    :sswitch_b
    if-eqz p1, :cond_f

    #@d
    const/4 v0, 0x3

    #@e
    goto :goto_4

    #@f
    :cond_f
    const/4 v0, 0x4

    #@10
    goto :goto_4

    #@11
    :sswitch_11
    if-eqz p1, :cond_15

    #@13
    const/4 v0, 0x5

    #@14
    goto :goto_4

    #@15
    :cond_15
    const/4 v0, 0x6

    #@16
    goto :goto_4

    #@17
    nop

    #@18
    :sswitch_data_18
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_11
        0x2002 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@b
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    #@13
    return-void
.end method

.method public addFragment(Landroid/support/v4/app/Fragment;Z)V
    .registers 7

    #@0
    const/4 v3, 0x1

    #@1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_c

    #@5
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@c
    :cond_c
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@e
    if-eqz v0, :cond_28

    #@10
    const-string v0, "FragmentManager"

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "add: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    :cond_28
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V

    #@2b
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@2d
    if-nez v0, :cond_69

    #@2f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_50

    #@37
    new-instance v0, Ljava/lang/IllegalStateException;

    #@39
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string v2, "Fragment already added: "

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v0

    #@50
    :cond_50
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@55
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@57
    const/4 v0, 0x0

    #@58
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    #@5a
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@5c
    if-eqz v0, :cond_64

    #@5e
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@60
    if-eqz v0, :cond_64

    #@62
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@64
    :cond_64
    if-eqz p2, :cond_69

    #@66
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    #@69
    :cond_69
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@b
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    return-void
.end method

.method public allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
    .registers 6

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@3
    if-eqz v0, :cond_d

    #@5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    if-gtz v0, :cond_4b

    #@d
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@f
    if-nez v0, :cond_18

    #@11
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@18
    :cond_18
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v0

    #@1e
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@20
    if-eqz v1, :cond_44

    #@22
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string v2, "FragmentManager"

    #@29
    const-string v3, "Setting back stack index "

    #@2b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    const-string v3, " to "

    #@35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@44
    :cond_44
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@49
    monitor-exit p0

    #@4a
    :goto_4a
    return v0

    #@4b
    :cond_4b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@4d
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@52
    move-result v1

    #@53
    add-int/lit8 v1, v1, -0x1

    #@55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@58
    move-result-object v0

    #@59
    check-cast v0, Ljava/lang/Integer;

    #@5b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@5e
    move-result v0

    #@5f
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@61
    if-eqz v1, :cond_85

    #@63
    new-instance v1, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string v2, "FragmentManager"

    #@6a
    const-string v3, "Adding back stack index "

    #@6c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    const-string v3, " with "

    #@76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v1

    #@82
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@85
    :cond_85
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@87
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@8a
    monitor-exit p0

    #@8b
    goto :goto_4a

    #@8c
    :catchall_8c
    move-exception v0

    #@8d
    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_1 .. :try_end_8e} :catchall_8c

    #@8e
    throw v0
.end method

.method public attachActivity(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
    .registers 6

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "Already attached"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@e
    iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    #@10
    iput-object p3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@12
    return-void
.end method

.method public attachFragment(Landroid/support/v4/app/Fragment;II)V
    .registers 10

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@4
    if-eqz v0, :cond_1e

    #@6
    const-string v0, "FragmentManager"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "attach: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    :cond_1e
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@20
    if-eqz v0, :cond_8a

    #@22
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@24
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@26
    if-nez v0, :cond_8a

    #@28
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2a
    if-nez v0, :cond_33

    #@2c
    new-instance v0, Ljava/util/ArrayList;

    #@2e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@31
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@33
    :cond_33
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_54

    #@3b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@3d
    new-instance v1, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string v2, "Fragment already added: "

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@53
    throw v0

    #@54
    :cond_54
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@56
    if-eqz v0, :cond_70

    #@58
    const-string v0, "FragmentManager"

    #@5a
    new-instance v1, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string v2, "add from attach: "

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    :cond_70
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@75
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@77
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@79
    if-eqz v0, :cond_81

    #@7b
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@7d
    if-eqz v0, :cond_81

    #@7f
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@81
    :cond_81
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@83
    move-object v0, p0

    #@84
    move-object v1, p1

    #@85
    move v3, p2

    #@86
    move v4, p3

    #@87
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@8a
    :cond_8a
    return-void
.end method

.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    .registers 2

    #@0
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    #@5
    return-object v0
.end method

.method public detachFragment(Landroid/support/v4/app/Fragment;II)V
    .registers 10

    #@0
    const/4 v5, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@4
    if-eqz v0, :cond_1e

    #@6
    const-string v0, "FragmentManager"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v3, "detach: "

    #@f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    :cond_1e
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@20
    if-nez v0, :cond_60

    #@22
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@24
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@26
    if-eqz v0, :cond_60

    #@28
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2a
    if-eqz v0, :cond_4d

    #@2c
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@2e
    if-eqz v0, :cond_48

    #@30
    const-string v0, "FragmentManager"

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string v3, "remove from detach: "

    #@39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    :cond_48
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@4d
    :cond_4d
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@4f
    if-eqz v0, :cond_57

    #@51
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@53
    if-eqz v0, :cond_57

    #@55
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@57
    :cond_57
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@59
    move-object v0, p0

    #@5a
    move-object v1, p1

    #@5b
    move v3, p2

    #@5c
    move v4, p3

    #@5d
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@60
    :cond_60
    return-void
.end method

.method public dispatchActivityCreated()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    const/4 v0, 0x2

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_1f

    #@4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    if-ge v1, v0, :cond_1f

    #@e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@16
    if-eqz v0, :cond_1b

    #@18
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    #@1b
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    #@1d
    move v1, v0

    #@1e
    goto :goto_6

    #@1f
    :cond_1f
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-eqz v0, :cond_1f

    #@5
    move v1, v2

    #@6
    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    if-ge v1, v0, :cond_1f

    #@e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@16
    if-eqz v0, :cond_20

    #@18
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_20

    #@1e
    const/4 v2, 0x1

    #@1f
    :cond_1f
    return v2

    #@20
    :cond_20
    add-int/lit8 v0, v1, 0x1

    #@22
    move v1, v0

    #@23
    goto :goto_6
.end method

.method public dispatchCreate()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@4
    if-eqz v1, :cond_34

    #@6
    move-object v1, v0

    #@7
    move v2, v3

    #@8
    move v4, v3

    #@9
    :goto_9
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    if-ge v4, v0, :cond_36

    #@11
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@19
    if-eqz v0, :cond_2c

    #@1b
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_2c

    #@21
    const/4 v2, 0x1

    #@22
    if-nez v1, :cond_29

    #@24
    new-instance v1, Ljava/util/ArrayList;

    #@26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@29
    :cond_29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    :cond_2c
    move-object v0, v1

    #@2d
    move v1, v2

    #@2e
    add-int/lit8 v2, v4, 0x1

    #@30
    move v4, v2

    #@31
    move v2, v1

    #@32
    move-object v1, v0

    #@33
    goto :goto_9

    #@34
    :cond_34
    move-object v1, v0

    #@35
    move v2, v3

    #@36
    :cond_36
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@38
    if-eqz v0, :cond_58

    #@3a
    :goto_3a
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@3f
    move-result v0

    #@40
    if-ge v3, v0, :cond_58

    #@42
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@4a
    if-eqz v1, :cond_52

    #@4c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@4f
    move-result v4

    #@50
    if-nez v4, :cond_55

    #@52
    :cond_52
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    #@55
    :cond_55
    add-int/lit8 v3, v3, 0x1

    #@57
    goto :goto_3a

    #@58
    :cond_58
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@5a
    return v2
.end method

.method public dispatchDestroy()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    #@5
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    #@8
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@b
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@d
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    #@f
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@11
    return-void
.end method

.method public dispatchDestroyView()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@5
    return-void
.end method

.method public dispatchLowMemory()V
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_1f

    #@4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    if-ge v1, v0, :cond_1f

    #@e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@16
    if-eqz v0, :cond_1b

    #@18
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performLowMemory()V

    #@1b
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    #@1d
    move v1, v0

    #@1e
    goto :goto_6

    #@1f
    :cond_1f
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-eqz v0, :cond_1f

    #@5
    move v1, v2

    #@6
    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    if-ge v1, v0, :cond_1f

    #@e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@16
    if-eqz v0, :cond_20

    #@18
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_20

    #@1e
    const/4 v2, 0x1

    #@1f
    :cond_1f
    return v2

    #@20
    :cond_20
    add-int/lit8 v0, v1, 0x1

    #@22
    move v1, v0

    #@23
    goto :goto_6
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_1f

    #@4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    if-ge v1, v0, :cond_1f

    #@e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@16
    if-eqz v0, :cond_1b

    #@18
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    #@1b
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    #@1d
    move v1, v0

    #@1e
    goto :goto_6

    #@1f
    :cond_1f
    return-void
.end method

.method public dispatchPause()V
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@5
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_26

    #@5
    move v1, v0

    #@6
    move v2, v0

    #@7
    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    if-ge v2, v0, :cond_27

    #@f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@17
    if-eqz v0, :cond_28

    #@19
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_28

    #@1f
    const/4 v1, 0x1

    #@20
    move v0, v1

    #@21
    :goto_21
    add-int/lit8 v1, v2, 0x1

    #@23
    move v2, v1

    #@24
    move v1, v0

    #@25
    goto :goto_7

    #@26
    :cond_26
    move v1, v0

    #@27
    :cond_27
    return v1

    #@28
    :cond_28
    move v0, v1

    #@29
    goto :goto_21
.end method

.method public dispatchReallyStop()V
    .registers 3

    #@0
    const/4 v0, 0x2

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@5
    return-void
.end method

.method public dispatchResume()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    const/4 v0, 0x5

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    return-void
.end method

.method public dispatchStart()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    const/4 v0, 0x4

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@7
    return-void
.end method

.method public dispatchStop()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    const/4 v0, 0x3

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    #@8
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9
    move-result-object v0

    #@a
    const-string v2, "    "

    #@c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@16
    if-eqz v0, :cond_5f

    #@18
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v4

    #@1e
    if-lez v4, :cond_5f

    #@20
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@23
    const-string v0, "Active Fragments in "

    #@25
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@2b
    move-result v0

    #@2c
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@33
    const-string v0, ":"

    #@35
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@38
    move v2, v1

    #@39
    :goto_39
    if-ge v2, v4, :cond_5f

    #@3b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@43
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@46
    const-string v5, "  #"

    #@48
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    #@4e
    const-string v5, ": "

    #@50
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@53
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@56
    if-eqz v0, :cond_5b

    #@58
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5b
    :cond_5b
    add-int/lit8 v0, v2, 0x1

    #@5d
    move v2, v0

    #@5e
    goto :goto_39

    #@5f
    :cond_5f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@61
    if-eqz v0, :cond_99

    #@63
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@68
    move-result v4

    #@69
    if-lez v4, :cond_99

    #@6b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e
    const-string v0, "Added Fragments:"

    #@70
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@73
    move v2, v1

    #@74
    :goto_74
    if-ge v2, v4, :cond_99

    #@76
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7b
    move-result-object v0

    #@7c
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@7e
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    const-string v5, "  #"

    #@83
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@86
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    #@89
    const-string v5, ": "

    #@8b
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8e
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    #@91
    move-result-object v0

    #@92
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@95
    add-int/lit8 v0, v2, 0x1

    #@97
    move v2, v0

    #@98
    goto :goto_74

    #@99
    :cond_99
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@9b
    if-eqz v0, :cond_d3

    #@9d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@9f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a2
    move-result v4

    #@a3
    if-lez v4, :cond_d3

    #@a5
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    const-string v0, "Fragments Created Menus:"

    #@aa
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ad
    move v2, v1

    #@ae
    :goto_ae
    if-ge v2, v4, :cond_d3

    #@b0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    #@b2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b5
    move-result-object v0

    #@b6
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@b8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bb
    const-string v5, "  #"

    #@bd
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c0
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    #@c3
    const-string v5, ": "

    #@c5
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c8
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    #@cb
    move-result-object v0

    #@cc
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@cf
    add-int/lit8 v0, v2, 0x1

    #@d1
    move v2, v0

    #@d2
    goto :goto_ae

    #@d3
    :cond_d3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@d5
    if-eqz v0, :cond_110

    #@d7
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@d9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@dc
    move-result v4

    #@dd
    if-lez v4, :cond_110

    #@df
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2
    const-string v0, "Back Stack:"

    #@e4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e7
    move v2, v1

    #@e8
    :goto_e8
    if-ge v2, v4, :cond_110

    #@ea
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@ec
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ef
    move-result-object v0

    #@f0
    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    #@f2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f5
    const-string v5, "  #"

    #@f7
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fa
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    #@fd
    const-string v5, ": "

    #@ff
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@102
    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->toString()Ljava/lang/String;

    #@105
    move-result-object v5

    #@106
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@109
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@10c
    add-int/lit8 v0, v2, 0x1

    #@10e
    move v2, v0

    #@10f
    goto :goto_e8

    #@110
    :cond_110
    monitor-enter p0

    #@111
    :try_start_111
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@113
    if-eqz v0, :cond_147

    #@115
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@117
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@11a
    move-result v3

    #@11b
    if-lez v3, :cond_147

    #@11d
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@120
    const-string v0, "Back Stack Indices:"

    #@122
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@125
    move v2, v1

    #@126
    :goto_126
    if-ge v2, v3, :cond_147

    #@128
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@12a
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12d
    move-result-object v0

    #@12e
    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    #@130
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@133
    const-string v4, "  #"

    #@135
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@138
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    #@13b
    const-string v4, ": "

    #@13d
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@140
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@143
    add-int/lit8 v0, v2, 0x1

    #@145
    move v2, v0

    #@146
    goto :goto_126

    #@147
    :cond_147
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@149
    if-eqz v0, :cond_168

    #@14b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@14d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@150
    move-result v0

    #@151
    if-lez v0, :cond_168

    #@153
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@156
    const-string v0, "mAvailBackStackIndices: "

    #@158
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@15d
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@160
    move-result-object v0

    #@161
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@164
    move-result-object v0

    #@165
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@168
    :cond_168
    monitor-exit p0
    :try_end_169
    .catchall {:try_start_111 .. :try_end_169} :catchall_19e

    #@169
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@16b
    if-eqz v0, :cond_1a1

    #@16d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@16f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@172
    move-result v2

    #@173
    if-lez v2, :cond_1a1

    #@175
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@178
    const-string v0, "Pending Actions:"

    #@17a
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17d
    :goto_17d
    if-ge v1, v2, :cond_1a1

    #@17f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@181
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@184
    move-result-object v0

    #@185
    check-cast v0, Ljava/lang/Runnable;

    #@187
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18a
    const-string v3, "  #"

    #@18c
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18f
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    #@192
    const-string v3, ": "

    #@194
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@197
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@19a
    add-int/lit8 v0, v1, 0x1

    #@19c
    move v1, v0

    #@19d
    goto :goto_17d

    #@19e
    :catchall_19e
    move-exception v0

    #@19f
    :try_start_19f
    monitor-exit p0
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_19e

    #@1a0
    throw v0

    #@1a1
    :cond_1a1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a4
    const-string v0, "FragmentManager misc state:"

    #@1a6
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1a9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ac
    const-string v0, "  mActivity="

    #@1ae
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@1b3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1b6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b9
    const-string v0, "  mContainer="

    #@1bb
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1be
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    #@1c0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1c3
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@1c5
    if-eqz v0, :cond_1d4

    #@1c7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ca
    const-string v0, "  mParent="

    #@1cc
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1cf
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@1d1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1d4
    :cond_1d4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1d7
    const-string v0, "  mCurState="

    #@1d9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1dc
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@1de
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1e1
    const-string v0, " mStateSaved="

    #@1e3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e6
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@1e8
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@1eb
    const-string v0, " mDestroyed="

    #@1ed
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f0
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    #@1f2
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1f5
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@1f7
    if-eqz v0, :cond_206

    #@1f9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1fc
    const-string v0, "  mNeedMenuInvalidate="

    #@1fe
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@201
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@203
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@206
    :cond_206
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@208
    if-eqz v0, :cond_217

    #@20a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@20d
    const-string v0, "  mNoTransactionsBecause="

    #@20f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@212
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    #@214
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@217
    :cond_217
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@219
    if-eqz v0, :cond_238

    #@21b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@21d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@220
    move-result v0

    #@221
    if-lez v0, :cond_238

    #@223
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@226
    const-string v0, "  mAvailIndices: "

    #@228
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@22b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@22d
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@230
    move-result-object v0

    #@231
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@234
    move-result-object v0

    #@235
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@238
    :cond_238
    return-void
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .registers 5

    #@0
    if-nez p2, :cond_5

    #@2
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    #@5
    :cond_5
    monitor-enter p0

    #@6
    :try_start_6
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    #@8
    if-nez v0, :cond_e

    #@a
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@c
    if-nez v0, :cond_19

    #@e
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    const-string v1, "Activity has been destroyed"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    :catchall_16
    move-exception v0

    #@17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    #@18
    throw v0

    #@19
    :cond_19
    :try_start_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@1b
    if-nez v0, :cond_24

    #@1d
    new-instance v0, Ljava/util/ArrayList;

    #@1f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@22
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@24
    :cond_24
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v0

    #@2f
    const/4 v1, 0x1

    #@30
    if-ne v0, v1, :cond_44

    #@32
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@34
    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@36
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    #@38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@3b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@3d
    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@3f
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    #@41
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@44
    :cond_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_19 .. :try_end_45} :catchall_16

    #@45
    return-void
.end method

.method public execPendingActions()Z
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    #@4
    if-eqz v1, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "Recursive entry to executePendingTransactions"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@11
    move-result-object v1

    #@12
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@14
    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@16
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@19
    move-result-object v3

    #@1a
    if-eq v1, v3, :cond_24

    #@1c
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1e
    const-string v1, "Must be called from main thread of process"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    :cond_24
    move v1, v2

    #@25
    :goto_25
    monitor-enter p0

    #@26
    :try_start_26
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@28
    if-eqz v3, :cond_32

    #@2a
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@2f
    move-result v3

    #@30
    if-nez v3, :cond_5c

    #@32
    :cond_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_99

    #@33
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    #@35
    if-eqz v0, :cond_a7

    #@37
    move v3, v2

    #@38
    move v4, v2

    #@39
    :goto_39
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@3e
    move-result v0

    #@3f
    if-ge v4, v0, :cond_a0

    #@41
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@43
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@49
    if-eqz v0, :cond_a8

    #@4b
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@4d
    if-eqz v5, :cond_a8

    #@4f
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@51
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    #@54
    move-result v0

    #@55
    or-int/2addr v3, v0

    #@56
    move v0, v3

    #@57
    :goto_57
    add-int/lit8 v3, v4, 0x1

    #@59
    move v4, v3

    #@5a
    move v3, v0

    #@5b
    goto :goto_39

    #@5c
    :cond_5c
    :try_start_5c
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@5e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@61
    move-result v3

    #@62
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@64
    if-eqz v1, :cond_6b

    #@66
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@68
    array-length v1, v1

    #@69
    if-ge v1, v3, :cond_6f

    #@6b
    :cond_6b
    new-array v1, v3, [Ljava/lang/Runnable;

    #@6d
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@6f
    :cond_6f
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@71
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@73
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@76
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@7b
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@7d
    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@7f
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    #@81
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@84
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_5c .. :try_end_85} :catchall_99

    #@85
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    #@87
    move v1, v2

    #@88
    :goto_88
    if-ge v1, v3, :cond_9c

    #@8a
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@8c
    aget-object v4, v4, v1

    #@8e
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    #@91
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    #@93
    const/4 v5, 0x0

    #@94
    aput-object v5, v4, v1

    #@96
    add-int/lit8 v1, v1, 0x1

    #@98
    goto :goto_88

    #@99
    :catchall_99
    move-exception v0

    #@9a
    :try_start_9a
    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    #@9b
    throw v0

    #@9c
    :cond_9c
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    #@9e
    move v1, v0

    #@9f
    goto :goto_25

    #@a0
    :cond_a0
    if-nez v3, :cond_a7

    #@a2
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    #@a4
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    #@a7
    :cond_a7
    return v1

    #@a8
    :cond_a8
    move v0, v3

    #@a9
    goto :goto_57
.end method

.method public executePendingTransactions()Z
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_22

    #@4
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    move v1, v0

    #@d
    :goto_d
    if-ltz v1, :cond_22

    #@f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@17
    if-eqz v0, :cond_1e

    #@19
    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@1b
    if-ne v2, p1, :cond_1e

    #@1d
    :cond_1d
    :goto_1d
    return-object v0

    #@1e
    :cond_1e
    add-int/lit8 v0, v1, -0x1

    #@20
    move v1, v0

    #@21
    goto :goto_d

    #@22
    :cond_22
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@24
    if-eqz v0, :cond_43

    #@26
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2b
    move-result v0

    #@2c
    add-int/lit8 v0, v0, -0x1

    #@2e
    move v1, v0

    #@2f
    :goto_2f
    if-ltz v1, :cond_43

    #@31
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@39
    if-eqz v0, :cond_3f

    #@3b
    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@3d
    if-eq v2, p1, :cond_1d

    #@3f
    :cond_3f
    add-int/lit8 v0, v1, -0x1

    #@41
    move v1, v0

    #@42
    goto :goto_2f

    #@43
    :cond_43
    const/4 v0, 0x0

    #@44
    goto :goto_1d
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_28

    #@4
    if-eqz p1, :cond_28

    #@6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    move v1, v0

    #@f
    :goto_f
    if-ltz v1, :cond_28

    #@11
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@19
    if-eqz v0, :cond_24

    #@1b
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@1d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_24

    #@23
    :cond_23
    :goto_23
    return-object v0

    #@24
    :cond_24
    add-int/lit8 v0, v1, -0x1

    #@26
    move v1, v0

    #@27
    goto :goto_f

    #@28
    :cond_28
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@2a
    if-eqz v0, :cond_4f

    #@2c
    if-eqz p1, :cond_4f

    #@2e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v0

    #@34
    add-int/lit8 v0, v0, -0x1

    #@36
    move v1, v0

    #@37
    :goto_37
    if-ltz v1, :cond_4f

    #@39
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@41
    if-eqz v0, :cond_4b

    #@43
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@45
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v2

    #@49
    if-nez v2, :cond_23

    #@4b
    :cond_4b
    add-int/lit8 v0, v1, -0x1

    #@4d
    move v1, v0

    #@4e
    goto :goto_37

    #@4f
    :cond_4f
    const/4 v0, 0x0

    #@50
    goto :goto_23
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_26

    #@4
    if-eqz p1, :cond_26

    #@6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    move v1, v0

    #@f
    :goto_f
    if-ltz v1, :cond_26

    #@11
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@19
    if-eqz v0, :cond_22

    #@1b
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    #@1e
    move-result-object v0

    #@1f
    if-eqz v0, :cond_22

    #@21
    :goto_21
    return-object v0

    #@22
    :cond_22
    add-int/lit8 v0, v1, -0x1

    #@24
    move v1, v0

    #@25
    goto :goto_f

    #@26
    :cond_26
    const/4 v0, 0x0

    #@27
    goto :goto_21
.end method

.method public freeBackStackIndex(I)V
    .registers 5

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@7
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@9
    if-nez v0, :cond_12

    #@b
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@12
    :cond_12
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@14
    if-eqz v0, :cond_2e

    #@16
    new-instance v0, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string v1, "FragmentManager"

    #@1d
    const-string v2, "Freeing back stack index "

    #@1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    :cond_2e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    monitor-exit p0

    #@38
    return-void

    #@39
    :catchall_39
    move-exception v0

    #@3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_39

    #@3b
    throw v0
.end method

.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    #@8
    return-object v0
.end method

.method public getBackStackEntryCount()I
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_b

    #@4
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_a
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 8

    #@0
    const/4 v0, -0x1

    #@1
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_9

    #@7
    const/4 v0, 0x0

    #@8
    :cond_8
    :goto_8
    return-object v0

    #@9
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    if-lt v1, v0, :cond_36

    #@11
    new-instance v0, Ljava/lang/IllegalStateException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string v3, "Fragment no longer exists for key "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string v3, ": index "

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@33
    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@36
    :cond_36
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@3e
    if-nez v0, :cond_8

    #@40
    new-instance v2, Ljava/lang/IllegalStateException;

    #@42
    new-instance v3, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string v4, "Fragment no longer exists for key "

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    const-string v4, ": index "

    #@53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@62
    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@65
    goto :goto_8
.end method

.method public getFragments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;II)V
    .registers 8

    #@0
    const/4 v3, 0x1

    #@1
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@3
    if-eqz v0, :cond_1d

    #@5
    const-string v0, "FragmentManager"

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v2, "hide: "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    :cond_1d
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@1f
    if-nez v0, :cond_4b

    #@21
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@23
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@25
    if-eqz v0, :cond_3a

    #@27
    const/4 v0, 0x0

    #@28
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    #@2b
    move-result-object v0

    #@2c
    if-eqz v0, :cond_33

    #@2e
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@30
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@33
    :cond_33
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@35
    const/16 v1, 0x8

    #@37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@3a
    :cond_3a
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@3c
    if-eqz v0, :cond_48

    #@3e
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@40
    if-eqz v0, :cond_48

    #@42
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@44
    if-eqz v0, :cond_48

    #@46
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@48
    :cond_48
    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    #@4b
    :cond_4b
    return-void
.end method

.method public isDestroyed()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    #@2
    return v0
.end method

.method loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .registers 11

    #@0
    const v5, 0x3f79999a    # 0.975f

    #@3
    const/4 v1, 0x0

    #@4
    const/4 v4, 0x0

    #@5
    const/high16 v3, 0x3f800000    # 1.0f

    #@7
    iget v0, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@9
    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_10

    #@f
    :cond_f
    :goto_f
    return-object v0

    #@10
    :cond_10
    iget v0, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@12
    if-eqz v0, :cond_1e

    #@14
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@16
    iget v2, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@18
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    #@1b
    move-result-object v0

    #@1c
    if-nez v0, :cond_f

    #@1e
    :cond_1e
    if-nez p2, :cond_22

    #@20
    move-object v0, v1

    #@21
    goto :goto_f

    #@22
    :cond_22
    invoke-static {p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    #@25
    move-result v0

    #@26
    if-gez v0, :cond_2a

    #@28
    move-object v0, v1

    #@29
    goto :goto_f

    #@2a
    :cond_2a
    packed-switch v0, :pswitch_data_78

    #@2d
    if-nez p4, :cond_43

    #@2f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@31
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    #@34
    move-result-object v0

    #@35
    if-eqz v0, :cond_43

    #@37
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@39
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@40
    move-result-object v0

    #@41
    iget p4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@43
    :cond_43
    if-nez p4, :cond_76

    #@45
    move-object v0, v1

    #@46
    goto :goto_f

    #@47
    :pswitch_47
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@49
    const/high16 v1, 0x3f900000    # 1.125f

    #@4b
    invoke-static {v0, v1, v3, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    #@4e
    move-result-object v0

    #@4f
    goto :goto_f

    #@50
    :pswitch_50
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@52
    invoke-static {v0, v3, v5, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    #@55
    move-result-object v0

    #@56
    goto :goto_f

    #@57
    :pswitch_57
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@59
    invoke-static {v0, v5, v3, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    #@5c
    move-result-object v0

    #@5d
    goto :goto_f

    #@5e
    :pswitch_5e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@60
    const v1, 0x3f89999a    # 1.075f

    #@63
    invoke-static {v0, v3, v1, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    #@66
    move-result-object v0

    #@67
    goto :goto_f

    #@68
    :pswitch_68
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@6a
    invoke-static {v0, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    #@6d
    move-result-object v0

    #@6e
    goto :goto_f

    #@6f
    :pswitch_6f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@71
    invoke-static {v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    #@74
    move-result-object v0

    #@75
    goto :goto_f

    #@76
    :cond_76
    move-object v0, v1

    #@77
    goto :goto_f

    #@78
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_47
        :pswitch_50
        :pswitch_57
        :pswitch_5e
        :pswitch_68
        :pswitch_6f
    .end packed-switch
.end method

.method makeActive(Landroid/support/v4/app/Fragment;)V
    .registers 5

    #@0
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@2
    if-ltz v0, :cond_5

    #@4
    :cond_4
    :goto_4
    return-void

    #@5
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@7
    if-eqz v0, :cond_11

    #@9
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    if-gtz v0, :cond_49

    #@11
    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@13
    if-nez v0, :cond_1c

    #@15
    new-instance v0, Ljava/util/ArrayList;

    #@17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1a
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1c
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v0

    #@22
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@24
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    #@27
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    :goto_2c
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@2e
    if-eqz v0, :cond_4

    #@30
    const-string v0, "FragmentManager"

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string v2, "Allocated fragment index "

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    goto :goto_4

    #@49
    :cond_49
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@4b
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@50
    move-result v1

    #@51
    add-int/lit8 v1, v1, -0x1

    #@53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    check-cast v0, Ljava/lang/Integer;

    #@59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@5c
    move-result v0

    #@5d
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@5f
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    #@62
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@64
    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@66
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@69
    goto :goto_2c
.end method

.method makeInactive(Landroid/support/v4/app/Fragment;)V
    .registers 5

    #@0
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@2
    if-gez v0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@7
    if-eqz v0, :cond_21

    #@9
    const-string v0, "FragmentManager"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v2, "Freeing fragment index "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    :cond_21
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@23
    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@25
    const/4 v2, 0x0

    #@26
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@29
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@2b
    if-nez v0, :cond_34

    #@2d
    new-instance v0, Ljava/util/ArrayList;

    #@2f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@32
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@34
    :cond_34
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@36
    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@41
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@43
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->invalidateSupportFragment(Ljava/lang/String;)V

    #@46
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->initState()V

    #@49
    goto :goto_4
.end method

.method moveToState(IIIZ)V
    .registers 13

    #@0
    const/4 v5, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@3
    if-nez v0, :cond_f

    #@5
    if-eqz p1, :cond_f

    #@7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string v1, "No activity"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    if-nez p4, :cond_16

    #@11
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@13
    if-ne v0, p1, :cond_16

    #@15
    :cond_15
    :goto_15
    return-void

    #@16
    :cond_16
    iput p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@18
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1a
    if-eqz v0, :cond_15

    #@1c
    move v6, v5

    #@1d
    move v7, v5

    #@1e
    :goto_1e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v0

    #@24
    if-ge v7, v0, :cond_48

    #@26
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Landroid/support/v4/app/Fragment;

    #@2e
    if-eqz v1, :cond_62

    #@30
    move-object v0, p0

    #@31
    move v2, p1

    #@32
    move v3, p2

    #@33
    move v4, p3

    #@34
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@37
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@39
    if-eqz v0, :cond_62

    #@3b
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@3d
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    #@40
    move-result v0

    #@41
    or-int/2addr v6, v0

    #@42
    move v0, v6

    #@43
    :goto_43
    add-int/lit8 v1, v7, 0x1

    #@45
    move v6, v0

    #@46
    move v7, v1

    #@47
    goto :goto_1e

    #@48
    :cond_48
    if-nez v6, :cond_4d

    #@4a
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    #@4d
    :cond_4d
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@4f
    if-eqz v0, :cond_15

    #@51
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@53
    if-eqz v0, :cond_15

    #@55
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@57
    const/4 v1, 0x5

    #@58
    if-ne v0, v1, :cond_15

    #@5a
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@5c
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    #@5f
    iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@61
    goto :goto_15

    #@62
    :cond_62
    move v0, v6

    #@63
    goto :goto_43
.end method

.method moveToState(IZ)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    #@4
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;)V
    .registers 8

    #@0
    const/4 v3, 0x0

    #@1
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move v4, v3

    #@6
    move v5, v3

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@a
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
    .registers 15

    #@0
    const/4 v8, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v7, 0x0

    #@5
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@7
    if-eqz v0, :cond_d

    #@9
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@b
    if-eqz v0, :cond_10

    #@d
    :cond_d
    if-le p2, v5, :cond_10

    #@f
    move p2, v5

    #@10
    :cond_10
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    #@12
    if-eqz v0, :cond_1a

    #@14
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@16
    if-le p2, v0, :cond_1a

    #@18
    iget p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@1a
    :cond_1a
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    #@1c
    if-eqz v0, :cond_25

    #@1e
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@20
    if-ge v0, v8, :cond_25

    #@22
    if-le p2, v6, :cond_25

    #@24
    move p2, v6

    #@25
    :cond_25
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@27
    if-ge v0, p2, :cond_240

    #@29
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    #@2b
    if-eqz v0, :cond_32

    #@2d
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@2f
    if-nez v0, :cond_32

    #@31
    :goto_31
    return-void

    #@32
    :cond_32
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@34
    if-eqz v0, :cond_40

    #@36
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@38
    iget v2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    #@3a
    move-object v0, p0

    #@3b
    move-object v1, p1

    #@3c
    move v4, v3

    #@3d
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@40
    :cond_40
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@42
    packed-switch v0, :pswitch_data_39e

    #@45
    :cond_45
    :goto_45
    iput p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@47
    goto :goto_31

    #@48
    :pswitch_48
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@4a
    if-eqz v0, :cond_64

    #@4c
    const-string v0, "FragmentManager"

    #@4e
    new-instance v1, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string v2, "moveto CREATED: "

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@64
    :cond_64
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@66
    if-eqz v0, :cond_9d

    #@68
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@6a
    const-string v1, "android:view_state"

    #@6c
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@6f
    move-result-object v0

    #@70
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@72
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@74
    const-string v1, "android:target_state"

    #@76
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    #@79
    move-result-object v0

    #@7a
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@7c
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@7e
    if-eqz v0, :cond_8a

    #@80
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@82
    const-string v1, "android:target_req_state"

    #@84
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@87
    move-result v0

    #@88
    iput v0, p1, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    #@8a
    :cond_8a
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@8c
    const-string v1, "android:user_visible_hint"

    #@8e
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@91
    move-result v0

    #@92
    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@94
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@96
    if-nez v0, :cond_9d

    #@98
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    #@9a
    if-le p2, v6, :cond_9d

    #@9c
    move p2, v6

    #@9d
    :cond_9d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@9f
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@a1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@a3
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    #@a5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@a7
    if-eqz v0, :cond_d9

    #@a9
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@ab
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@ad
    :goto_ad
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@af
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@b1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@b3
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    #@b6
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@b8
    if-nez v0, :cond_de

    #@ba
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    #@bc
    new-instance v1, Ljava/lang/StringBuilder;

    #@be
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c1
    const-string v2, "Fragment "

    #@c3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v1

    #@c7
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v1

    #@cb
    const-string v2, " did not call through to super.onAttach()"

    #@cd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v1

    #@d1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v1

    #@d5
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@d8
    throw v0

    #@d9
    :cond_d9
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@db
    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@dd
    goto :goto_ad

    #@de
    :cond_de
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    #@e0
    if-nez v0, :cond_e7

    #@e2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@e4
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    #@e7
    :cond_e7
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@e9
    if-nez v0, :cond_f0

    #@eb
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@ed
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    #@f0
    :cond_f0
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@f2
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    #@f4
    if-eqz v0, :cond_126

    #@f6
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@f8
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@fb
    move-result-object v0

    #@fc
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@fe
    invoke-virtual {p1, v0, v7, v1}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    #@101
    move-result-object v0

    #@102
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@104
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@106
    if-eqz v0, :cond_239

    #@108
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@10a
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@10c
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@10e
    invoke-static {v0}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    #@111
    move-result-object v0

    #@112
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@114
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@116
    if-eqz v0, :cond_11f

    #@118
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@11a
    const/16 v1, 0x8

    #@11c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@11f
    :cond_11f
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@121
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@123
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #@126
    :cond_126
    :goto_126
    :pswitch_126
    if-le p2, v5, :cond_1ef

    #@128
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@12a
    if-eqz v0, :cond_144

    #@12c
    const-string v0, "FragmentManager"

    #@12e
    new-instance v1, Ljava/lang/StringBuilder;

    #@130
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@133
    const-string v2, "moveto ACTIVITY_CREATED: "

    #@135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@138
    move-result-object v1

    #@139
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v1

    #@13d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@140
    move-result-object v1

    #@141
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@144
    :cond_144
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    #@146
    if-nez v0, :cond_1df

    #@148
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@14a
    if-eqz v0, :cond_39b

    #@14c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;

    #@14e
    iget v1, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@150
    invoke-interface {v0, v1}, Landroid/support/v4/app/FragmentContainer;->findViewById(I)Landroid/view/View;

    #@153
    move-result-object v0

    #@154
    check-cast v0, Landroid/view/ViewGroup;

    #@156
    if-nez v0, :cond_19b

    #@158
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRestored:Z

    #@15a
    if-nez v1, :cond_19b

    #@15c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@15e
    new-instance v2, Ljava/lang/StringBuilder;

    #@160
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string v3, "No view found for id 0x"

    #@165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v2

    #@169
    iget v3, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@16b
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@16e
    move-result-object v3

    #@16f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@172
    move-result-object v2

    #@173
    const-string v3, " ("

    #@175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v2

    #@179
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@17c
    move-result-object v3

    #@17d
    iget v4, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@17f
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@182
    move-result-object v3

    #@183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v2

    #@187
    const-string v3, ") for fragment "

    #@189
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    move-result-object v2

    #@18d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v2

    #@191
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@194
    move-result-object v2

    #@195
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@198
    invoke-direct {p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@19b
    :cond_19b
    :goto_19b
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@19d
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@19f
    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    #@1a2
    move-result-object v1

    #@1a3
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1a5
    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    #@1a8
    move-result-object v1

    #@1a9
    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1ab
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1ad
    if-eqz v1, :cond_23d

    #@1af
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1b1
    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@1b3
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1b5
    invoke-static {v1}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    #@1b8
    move-result-object v1

    #@1b9
    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1bb
    if-eqz v0, :cond_1cd

    #@1bd
    invoke-virtual {p0, p1, p3, v5, p4}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    #@1c0
    move-result-object v1

    #@1c1
    if-eqz v1, :cond_1c8

    #@1c3
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1c5
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@1c8
    :cond_1c8
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1ca
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@1cd
    :cond_1cd
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@1cf
    if-eqz v0, :cond_1d8

    #@1d1
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1d3
    const/16 v1, 0x8

    #@1d5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    #@1d8
    :cond_1d8
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1da
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1dc
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    #@1df
    :cond_1df
    :goto_1df
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1e1
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    #@1e4
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1e6
    if-eqz v0, :cond_1ed

    #@1e8
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1ea
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    #@1ed
    :cond_1ed
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@1ef
    :cond_1ef
    :pswitch_1ef
    if-le p2, v6, :cond_210

    #@1f1
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@1f3
    if-eqz v0, :cond_20d

    #@1f5
    const-string v0, "FragmentManager"

    #@1f7
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1fc
    const-string v2, "moveto STARTED: "

    #@1fe
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v1

    #@202
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@205
    move-result-object v1

    #@206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@209
    move-result-object v1

    #@20a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20d
    :cond_20d
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStart()V

    #@210
    :cond_210
    :pswitch_210
    if-le p2, v8, :cond_45

    #@212
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@214
    if-eqz v0, :cond_22e

    #@216
    const-string v0, "FragmentManager"

    #@218
    new-instance v1, Ljava/lang/StringBuilder;

    #@21a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21d
    const-string v2, "moveto RESUMED: "

    #@21f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@222
    move-result-object v1

    #@223
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@226
    move-result-object v1

    #@227
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22a
    move-result-object v1

    #@22b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@22e
    :cond_22e
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mResumed:Z

    #@230
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performResume()V

    #@233
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@235
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@237
    goto/16 :goto_45

    #@239
    :cond_239
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@23b
    goto/16 :goto_126

    #@23d
    :cond_23d
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@23f
    goto :goto_1df

    #@240
    :cond_240
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@242
    if-le v0, p2, :cond_45

    #@244
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@246
    packed-switch v0, :pswitch_data_3ac

    #@249
    goto/16 :goto_45

    #@24b
    :cond_24b
    :goto_24b
    :pswitch_24b
    if-ge p2, v5, :cond_45

    #@24d
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    #@24f
    if-eqz v0, :cond_25c

    #@251
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@253
    if-eqz v0, :cond_25c

    #@255
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@257
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@259
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    #@25c
    :cond_25c
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@25e
    if-eqz v0, :cond_338

    #@260
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    #@262
    move p2, v5

    #@263
    goto/16 :goto_45

    #@265
    :pswitch_265
    const/4 v0, 0x5

    #@266
    if-ge p2, v0, :cond_289

    #@268
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@26a
    if-eqz v0, :cond_284

    #@26c
    const-string v0, "FragmentManager"

    #@26e
    new-instance v1, Ljava/lang/StringBuilder;

    #@270
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@273
    const-string v2, "movefrom RESUMED: "

    #@275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@278
    move-result-object v1

    #@279
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27c
    move-result-object v1

    #@27d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@280
    move-result-object v1

    #@281
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@284
    :cond_284
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performPause()V

    #@287
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mResumed:Z

    #@289
    :cond_289
    :pswitch_289
    if-ge p2, v8, :cond_2aa

    #@28b
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@28d
    if-eqz v0, :cond_2a7

    #@28f
    const-string v0, "FragmentManager"

    #@291
    new-instance v1, Ljava/lang/StringBuilder;

    #@293
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@296
    const-string v2, "movefrom STARTED: "

    #@298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29b
    move-result-object v1

    #@29c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29f
    move-result-object v1

    #@2a0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a3
    move-result-object v1

    #@2a4
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a7
    :cond_2a7
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStop()V

    #@2aa
    :cond_2aa
    :pswitch_2aa
    if-ge p2, v6, :cond_2cb

    #@2ac
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@2ae
    if-eqz v0, :cond_2c8

    #@2b0
    const-string v0, "FragmentManager"

    #@2b2
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b7
    const-string v2, "movefrom STOPPED: "

    #@2b9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bc
    move-result-object v1

    #@2bd
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c0
    move-result-object v1

    #@2c1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c4
    move-result-object v1

    #@2c5
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2c8
    :cond_2c8
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performReallyStop()V

    #@2cb
    :cond_2cb
    :pswitch_2cb
    const/4 v0, 0x2

    #@2cc
    if-ge p2, v0, :cond_24b

    #@2ce
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@2d0
    if-eqz v0, :cond_2ea

    #@2d2
    const-string v0, "FragmentManager"

    #@2d4
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d9
    const-string v2, "movefrom ACTIVITY_CREATED: "

    #@2db
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2de
    move-result-object v1

    #@2df
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e2
    move-result-object v1

    #@2e3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e6
    move-result-object v1

    #@2e7
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2ea
    :cond_2ea
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@2ec
    if-eqz v0, :cond_2fd

    #@2ee
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@2f0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    #@2f3
    move-result v0

    #@2f4
    if-nez v0, :cond_2fd

    #@2f6
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@2f8
    if-nez v0, :cond_2fd

    #@2fa
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    #@2fd
    :cond_2fd
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    #@300
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@302
    if-eqz v0, :cond_330

    #@304
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@306
    if-eqz v0, :cond_330

    #@308
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@30a
    if-lez v0, :cond_398

    #@30c
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    #@30e
    if-nez v0, :cond_398

    #@310
    invoke-virtual {p0, p1, p3, v3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    #@313
    move-result-object v0

    #@314
    :goto_314
    if-eqz v0, :cond_329

    #@316
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@318
    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@31a
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    #@31c
    new-instance v1, Landroid/support/v4/app/FragmentManagerImpl$5;

    #@31e
    invoke-direct {v1, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl$5;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/Fragment;)V

    #@321
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    #@324
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@326
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@329
    :cond_329
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@32b
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@32d
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@330
    :cond_330
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@332
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@334
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@336
    goto/16 :goto_24b

    #@338
    :cond_338
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@33a
    if-eqz v0, :cond_354

    #@33c
    const-string v0, "FragmentManager"

    #@33e
    new-instance v1, Ljava/lang/StringBuilder;

    #@340
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@343
    const-string v2, "movefrom CREATED: "

    #@345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@348
    move-result-object v1

    #@349
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34c
    move-result-object v1

    #@34d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@350
    move-result-object v1

    #@351
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@354
    :cond_354
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@356
    if-nez v0, :cond_35b

    #@358
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroy()V

    #@35b
    :cond_35b
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@35d
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDetach()V

    #@360
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@362
    if-nez v0, :cond_383

    #@364
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    #@366
    new-instance v1, Ljava/lang/StringBuilder;

    #@368
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36b
    const-string v2, "Fragment "

    #@36d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@370
    move-result-object v1

    #@371
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@374
    move-result-object v1

    #@375
    const-string v2, " did not call through to super.onDetach()"

    #@377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37a
    move-result-object v1

    #@37b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37e
    move-result-object v1

    #@37f
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@382
    throw v0

    #@383
    :cond_383
    if-nez p5, :cond_45

    #@385
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@387
    if-nez v0, :cond_38e

    #@389
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeInactive(Landroid/support/v4/app/Fragment;)V

    #@38c
    goto/16 :goto_45

    #@38e
    :cond_38e
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@390
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    #@392
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@394
    iput-object v7, p1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@396
    goto/16 :goto_45

    #@398
    :cond_398
    move-object v0, v7

    #@399
    goto/16 :goto_314

    #@39b
    :cond_39b
    move-object v0, v7

    #@39c
    goto/16 :goto_19b

    #@39e
    :pswitch_data_39e
    .packed-switch 0x0
        :pswitch_48
        :pswitch_126
        :pswitch_1ef
        :pswitch_1ef
        :pswitch_210
    .end packed-switch

    #@3ac
    :pswitch_data_3ac
    .packed-switch 0x1
        :pswitch_24b
        :pswitch_2cb
        :pswitch_2aa
        :pswitch_289
        :pswitch_265
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@3
    return-void
.end method

.method public performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
    .registers 8

    #@0
    const/4 v3, 0x0

    #@1
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    #@3
    if-eqz v0, :cond_c

    #@5
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    #@7
    if-eqz v0, :cond_d

    #@9
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    #@c
    :cond_c
    :goto_c
    return-void

    #@d
    :cond_d
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    #@f
    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@11
    move-object v0, p0

    #@12
    move-object v1, p1

    #@13
    move v4, v3

    #@14
    move v5, v3

    #@15
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@18
    goto :goto_c
.end method

.method public popBackStack()V
    .registers 3

    #@0
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$2;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@9
    return-void
.end method

.method public popBackStack(II)V
    .registers 6

    #@0
    if-gez p1, :cond_1b

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string v2, "Bad id: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :cond_1b
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$4;

    #@1d
    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$4;-><init>(Landroid/support/v4/app/FragmentManagerImpl;II)V

    #@20
    const/4 v1, 0x0

    #@21
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@24
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .registers 5

    #@0
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$3;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$3;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;I)V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@9
    return-void
.end method

.method public popBackStackImmediate()Z
    .registers 5

    #@0
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    #@3
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    #@6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@8
    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@a
    const/4 v1, 0x0

    #@b
    const/4 v2, -0x1

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public popBackStackImmediate(II)Z
    .registers 6

    #@0
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    #@3
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    #@6
    if-gez p1, :cond_21

    #@8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v2, "Bad id: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@23
    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@25
    const/4 v1, 0x0

    #@26
    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    #@29
    move-result v0

    #@2a
    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .registers 5

    #@0
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    #@3
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    #@6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@8
    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@a
    const/4 v1, -0x1

    #@b
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .registers 13

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@4
    if-nez v0, :cond_7

    #@6
    :cond_6
    :goto_6
    return v3

    #@7
    :cond_7
    if-nez p2, :cond_29

    #@9
    if-gez p3, :cond_29

    #@b
    and-int/lit8 v0, p4, 0x1

    #@d
    if-nez v0, :cond_29

    #@f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v0

    #@15
    add-int/lit8 v0, v0, -0x1

    #@17
    if-ltz v0, :cond_6

    #@19
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    #@21
    invoke-virtual {v0, v2}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(Z)V

    #@24
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    #@27
    :goto_27
    move v3, v2

    #@28
    goto :goto_6

    #@29
    :cond_29
    const/4 v0, -0x1

    #@2a
    if-nez p2, :cond_2e

    #@2c
    if-ltz p3, :cond_7d

    #@2e
    :cond_2e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v0

    #@34
    add-int/lit8 v1, v0, -0x1

    #@36
    :goto_36
    if-ltz v1, :cond_4c

    #@38
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    #@40
    if-eqz p2, :cond_73

    #@42
    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v4

    #@4a
    if-eqz v4, :cond_73

    #@4c
    :cond_4c
    if-ltz v1, :cond_6

    #@4e
    and-int/lit8 v0, p4, 0x1

    #@50
    if-eqz v0, :cond_7c

    #@52
    add-int/lit8 v1, v1, -0x1

    #@54
    :goto_54
    if-ltz v1, :cond_7c

    #@56
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v0

    #@5c
    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    #@5e
    if-eqz p2, :cond_6a

    #@60
    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v4

    #@68
    if-nez v4, :cond_70

    #@6a
    :cond_6a
    if-ltz p3, :cond_7c

    #@6c
    iget v0, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@6e
    if-ne p3, v0, :cond_7c

    #@70
    :cond_70
    add-int/lit8 v1, v1, -0x1

    #@72
    goto :goto_54

    #@73
    :cond_73
    if-ltz p3, :cond_79

    #@75
    iget v0, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@77
    if-eq p3, v0, :cond_4c

    #@79
    :cond_79
    add-int/lit8 v1, v1, -0x1

    #@7b
    goto :goto_36

    #@7c
    :cond_7c
    move v0, v1

    #@7d
    :cond_7d
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@7f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@82
    move-result v1

    #@83
    add-int/lit8 v1, v1, -0x1

    #@85
    if-eq v0, v1, :cond_6

    #@87
    new-instance v5, Ljava/util/ArrayList;

    #@89
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@8c
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@8e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@91
    move-result v1

    #@92
    add-int/lit8 v1, v1, -0x1

    #@94
    :goto_94
    if-le v1, v0, :cond_a2

    #@96
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@98
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@9b
    move-result-object v4

    #@9c
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9f
    add-int/lit8 v1, v1, -0x1

    #@a1
    goto :goto_94

    #@a2
    :cond_a2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@a5
    move-result v0

    #@a6
    add-int/lit8 v6, v0, -0x1

    #@a8
    move v4, v3

    #@a9
    :goto_a9
    if-gt v4, v6, :cond_dd

    #@ab
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@ad
    if-eqz v0, :cond_cb

    #@af
    const-string v0, "FragmentManager"

    #@b1
    new-instance v1, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string v7, "Popping back stack state: "

    #@b8
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v1

    #@bc
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@bf
    move-result-object v7

    #@c0
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v1

    #@c4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v1

    #@c8
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@cb
    :cond_cb
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ce
    move-result-object v0

    #@cf
    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    #@d1
    if-ne v4, v6, :cond_db

    #@d3
    move v1, v2

    #@d4
    :goto_d4
    invoke-virtual {v0, v1}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(Z)V

    #@d7
    add-int/lit8 v0, v4, 0x1

    #@d9
    move v4, v0

    #@da
    goto :goto_a9

    #@db
    :cond_db
    move v1, v3

    #@dc
    goto :goto_d4

    #@dd
    :cond_dd
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    #@e0
    goto/16 :goto_27
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .registers 7

    #@0
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    #@2
    if-gez v0, :cond_25

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v2, "Fragment "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string v2, " is not currently in the FragmentManager"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@25
    :cond_25
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    #@27
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2a
    return-void
.end method

.method public removeFragment(Landroid/support/v4/app/Fragment;II)V
    .registers 10

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@4
    if-eqz v0, :cond_2a

    #@6
    const-string v0, "FragmentManager"

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v3, "remove: "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string v3, " nesting="

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    iget v3, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    :cond_2a
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    #@2d
    move-result v0

    #@2e
    if-nez v0, :cond_59

    #@30
    move v0, v1

    #@31
    :goto_31
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@33
    if-eqz v2, :cond_37

    #@35
    if-eqz v0, :cond_58

    #@37
    :cond_37
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@39
    if-eqz v2, :cond_40

    #@3b
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@40
    :cond_40
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@42
    if-eqz v2, :cond_4a

    #@44
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@46
    if-eqz v2, :cond_4a

    #@48
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@4a
    :cond_4a
    iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@4c
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    #@4e
    if-eqz v0, :cond_5b

    #@50
    move v2, v5

    #@51
    :goto_51
    move-object v0, p0

    #@52
    move-object v1, p1

    #@53
    move v3, p2

    #@54
    move v4, p3

    #@55
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V

    #@58
    :cond_58
    return-void

    #@59
    :cond_59
    move v0, v5

    #@5a
    goto :goto_31

    #@5b
    :cond_5b
    move v2, v1

    #@5c
    goto :goto_51
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@9
    :cond_9
    return-void
.end method

.method reportBackStackChanged()V
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_1d

    #@4
    const/4 v0, 0x0

    #@5
    move v1, v0

    #@6
    :goto_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    if-ge v1, v0, :cond_1d

    #@e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    #@16
    invoke-interface {v0}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    #@19
    add-int/lit8 v0, v1, 0x1

    #@1b
    move v1, v0

    #@1c
    goto :goto_6

    #@1d
    :cond_1d
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    if-nez p1, :cond_5

    #@4
    :cond_4
    :goto_4
    return-void

    #@5
    :cond_5
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    #@7
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    #@9
    if-eqz v0, :cond_4

    #@b
    if-eqz p2, :cond_65

    #@d
    move v1, v2

    #@e
    :goto_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v0

    #@12
    if-ge v1, v0, :cond_65

    #@14
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@1a
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@1c
    if-eqz v3, :cond_36

    #@1e
    const-string v3, "FragmentManager"

    #@20
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string v5, "restoreAllState: re-attaching retained "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    :cond_36
    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    #@38
    iget v4, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@3a
    aget-object v3, v3, v4

    #@3c
    iput-object v0, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@3e
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@40
    iput v2, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@42
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@44
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@46
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@48
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@4a
    if-eqz v4, :cond_61

    #@4c
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@4e
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@50
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@57
    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@59
    const-string v4, "android:view_state"

    #@5b
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@5e
    move-result-object v3

    #@5f
    iput-object v3, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@61
    :cond_61
    add-int/lit8 v0, v1, 0x1

    #@63
    move v1, v0

    #@64
    goto :goto_e

    #@65
    :cond_65
    new-instance v0, Ljava/util/ArrayList;

    #@67
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    #@69
    array-length v1, v1

    #@6a
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@6d
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@6f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@71
    if-eqz v0, :cond_78

    #@73
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@75
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@78
    :cond_78
    move v0, v2

    #@79
    :goto_79
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    #@7b
    array-length v1, v1

    #@7c
    if-ge v0, v1, :cond_f2

    #@7e
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    #@80
    aget-object v1, v1, v0

    #@82
    if-eqz v1, :cond_bc

    #@84
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@86
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@88
    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/FragmentState;->instantiate(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    #@8b
    move-result-object v3

    #@8c
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@8e
    if-eqz v4, :cond_b2

    #@90
    const-string v4, "FragmentManager"

    #@92
    new-instance v5, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string v6, "restoreAllState: active #"

    #@99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v5

    #@9d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v5

    #@a1
    const-string v6, ": "

    #@a3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v5

    #@a7
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v5

    #@ab
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v5

    #@af
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b2
    :cond_b2
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@b4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b7
    iput-object v7, v1, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    #@b9
    :goto_b9
    add-int/lit8 v0, v0, 0x1

    #@bb
    goto :goto_79

    #@bc
    :cond_bc
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@be
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@c3
    if-nez v1, :cond_cc

    #@c5
    new-instance v1, Ljava/util/ArrayList;

    #@c7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@ca
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@cc
    :cond_cc
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@ce
    if-eqz v1, :cond_e8

    #@d0
    const-string v1, "FragmentManager"

    #@d2
    new-instance v3, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const-string v4, "restoreAllState: avail #"

    #@d9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v3

    #@dd
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v3

    #@e1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e4
    move-result-object v3

    #@e5
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e8
    :cond_e8
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    #@ea
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ed
    move-result-object v3

    #@ee
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f1
    goto :goto_b9

    #@f2
    :cond_f2
    if-eqz p2, :cond_146

    #@f4
    move v3, v2

    #@f5
    :goto_f5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    #@f8
    move-result v0

    #@f9
    if-ge v3, v0, :cond_146

    #@fb
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@fe
    move-result-object v0

    #@ff
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@101
    iget v1, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    #@103
    if-ltz v1, :cond_11b

    #@105
    iget v1, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    #@107
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@109
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@10c
    move-result v4

    #@10d
    if-ge v1, v4, :cond_11f

    #@10f
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@111
    iget v4, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    #@113
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@116
    move-result-object v1

    #@117
    check-cast v1, Landroid/support/v4/app/Fragment;

    #@119
    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@11b
    :cond_11b
    :goto_11b
    add-int/lit8 v0, v3, 0x1

    #@11d
    move v3, v0

    #@11e
    goto :goto_f5

    #@11f
    :cond_11f
    const-string v1, "FragmentManager"

    #@121
    new-instance v4, Ljava/lang/StringBuilder;

    #@123
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@126
    const-string v5, "Re-attaching retained fragment "

    #@128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v4

    #@12c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12f
    move-result-object v4

    #@130
    const-string v5, " target no longer exists: "

    #@132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@135
    move-result-object v4

    #@136
    iget v5, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    #@138
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v4

    #@13c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13f
    move-result-object v4

    #@140
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@143
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@145
    goto :goto_11b

    #@146
    :cond_146
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    #@148
    if-eqz v0, :cond_1c9

    #@14a
    new-instance v0, Ljava/util/ArrayList;

    #@14c
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    #@14e
    array-length v1, v1

    #@14f
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@152
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@154
    move v1, v2

    #@155
    :goto_155
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    #@157
    array-length v0, v0

    #@158
    if-ge v1, v0, :cond_1cb

    #@15a
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@15c
    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    #@15e
    aget v3, v3, v1

    #@160
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@163
    move-result-object v0

    #@164
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@166
    if-nez v0, :cond_187

    #@168
    new-instance v3, Ljava/lang/IllegalStateException;

    #@16a
    new-instance v4, Ljava/lang/StringBuilder;

    #@16c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16f
    const-string v5, "No instantiated fragment for index #"

    #@171
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v4

    #@175
    iget-object v5, p1, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    #@177
    aget v5, v5, v1

    #@179
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v4

    #@17d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@180
    move-result-object v4

    #@181
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@184
    invoke-direct {p0, v3}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@187
    :cond_187
    const/4 v3, 0x1

    #@188
    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@18a
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@18c
    if-eqz v3, :cond_1b0

    #@18e
    const-string v3, "FragmentManager"

    #@190
    new-instance v4, Ljava/lang/StringBuilder;

    #@192
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@195
    const-string v5, "restoreAllState: added #"

    #@197
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    move-result-object v4

    #@19b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v4

    #@19f
    const-string v5, ": "

    #@1a1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v4

    #@1a5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v4

    #@1a9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ac
    move-result-object v4

    #@1ad
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1b0
    :cond_1b0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@1b2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1b5
    move-result v3

    #@1b6
    if-eqz v3, :cond_1c0

    #@1b8
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1ba
    const-string v1, "Already added!"

    #@1bc
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1bf
    throw v0

    #@1c0
    :cond_1c0
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@1c2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1c5
    add-int/lit8 v0, v1, 0x1

    #@1c7
    move v1, v0

    #@1c8
    goto :goto_155

    #@1c9
    :cond_1c9
    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@1cb
    :cond_1cb
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    #@1cd
    if-eqz v0, :cond_23b

    #@1cf
    new-instance v0, Ljava/util/ArrayList;

    #@1d1
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    #@1d3
    array-length v1, v1

    #@1d4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@1d7
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@1d9
    move v0, v2

    #@1da
    :goto_1da
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    #@1dc
    array-length v1, v1

    #@1dd
    if-ge v0, v1, :cond_4

    #@1df
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    #@1e1
    aget-object v1, v1, v0

    #@1e3
    invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackState;->instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;

    #@1e6
    move-result-object v1

    #@1e7
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@1e9
    if-eqz v3, :cond_22a

    #@1eb
    const-string v3, "FragmentManager"

    #@1ed
    new-instance v4, Ljava/lang/StringBuilder;

    #@1ef
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f2
    const-string v5, "restoreAllState: back stack #"

    #@1f4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v4

    #@1f8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1fb
    move-result-object v4

    #@1fc
    const-string v5, " (index "

    #@1fe
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v4

    #@202
    iget v5, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@204
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@207
    move-result-object v4

    #@208
    const-string v5, "): "

    #@20a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20d
    move-result-object v4

    #@20e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v4

    #@212
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@215
    move-result-object v4

    #@216
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@219
    const-string v3, "  "

    #@21b
    new-instance v4, Ljava/io/PrintWriter;

    #@21d
    new-instance v5, Landroid/support/v4/util/LogWriter;

    #@21f
    const-string v6, "FragmentManager"

    #@221
    invoke-direct {v5, v6}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    #@224
    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@227
    invoke-virtual {v1, v3, v4, v2}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    #@22a
    :cond_22a
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@22c
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22f
    iget v3, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@231
    if-ltz v3, :cond_238

    #@233
    iget v3, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@235
    invoke-virtual {p0, v3, v1}, Landroid/support/v4/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V

    #@238
    :cond_238
    add-int/lit8 v0, v0, 0x1

    #@23a
    goto :goto_1da

    #@23b
    :cond_23b
    iput-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@23d
    goto/16 :goto_4
.end method

.method retainNonConfig()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3
    if-eqz v1, :cond_59

    #@5
    const/4 v1, 0x0

    #@6
    move v2, v1

    #@7
    move-object v1, v0

    #@8
    :goto_8
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v0

    #@e
    if-ge v2, v0, :cond_5a

    #@10
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@18
    if-eqz v0, :cond_5b

    #@1a
    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    #@1c
    if-eqz v3, :cond_5b

    #@1e
    if-nez v1, :cond_25

    #@20
    new-instance v1, Ljava/util/ArrayList;

    #@22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@25
    :cond_25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    const/4 v3, 0x1

    #@29
    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@2b
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@2d
    if-eqz v3, :cond_57

    #@2f
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@31
    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    #@33
    :goto_33
    iput v3, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    #@35
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@37
    if-eqz v3, :cond_5b

    #@39
    const-string v3, "FragmentManager"

    #@3b
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string v5, "retainNonConfig: keeping retained "

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@51
    move-object v0, v1

    #@52
    :goto_52
    add-int/lit8 v1, v2, 0x1

    #@54
    move v2, v1

    #@55
    move-object v1, v0

    #@56
    goto :goto_8

    #@57
    :cond_57
    const/4 v3, -0x1

    #@58
    goto :goto_33

    #@59
    :cond_59
    move-object v1, v0

    #@5a
    :cond_5a
    return-object v1

    #@5b
    :cond_5b
    move-object v0, v1

    #@5c
    goto :goto_52
.end method

.method saveAllState()Landroid/os/Parcelable;
    .registers 12

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    #@6
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    #@8
    if-eqz v0, :cond_c

    #@a
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    #@c
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@e
    if-eqz v0, :cond_18

    #@10
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v0

    #@16
    if-gtz v0, :cond_19

    #@18
    :cond_18
    :goto_18
    return-object v3

    #@19
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v6

    #@1f
    new-array v7, v6, [Landroid/support/v4/app/FragmentState;

    #@21
    move v2, v4

    #@22
    move v5, v4

    #@23
    :goto_23
    if-ge v5, v6, :cond_f5

    #@25
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@2d
    if-eqz v0, :cond_1e1

    #@2f
    iget v2, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@31
    if-gez v2, :cond_5a

    #@33
    new-instance v2, Ljava/lang/IllegalStateException;

    #@35
    new-instance v8, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string v9, "Failure saving state: active "

    #@3c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v8

    #@44
    const-string v9, " has cleared index: "

    #@46
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v8

    #@4a
    iget v9, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@4c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v8

    #@50
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v8

    #@54
    invoke-direct {v2, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@57
    invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@5a
    :cond_5a
    new-instance v2, Landroid/support/v4/app/FragmentState;

    #@5c
    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    #@5f
    aput-object v2, v7, v5

    #@61
    iget v8, v0, Landroid/support/v4/app/Fragment;->mState:I

    #@63
    if-lez v8, :cond_f0

    #@65
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@67
    if-nez v8, :cond_f0

    #@69
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    #@6c
    move-result-object v8

    #@6d
    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@6f
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@71
    if-eqz v8, :cond_c1

    #@73
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@75
    iget v8, v8, Landroid/support/v4/app/Fragment;->mIndex:I

    #@77
    if-gez v8, :cond_a0

    #@79
    new-instance v8, Ljava/lang/IllegalStateException;

    #@7b
    new-instance v9, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string v10, "Failure saving state: "

    #@82
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v9

    #@86
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v9

    #@8a
    const-string v10, " has target not in fragment manager: "

    #@8c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v9

    #@90
    iget-object v10, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@92
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v9

    #@96
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v9

    #@9a
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@9d
    invoke-direct {p0, v8}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@a0
    :cond_a0
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@a2
    if-nez v8, :cond_ab

    #@a4
    new-instance v8, Landroid/os/Bundle;

    #@a6
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    #@a9
    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@ab
    :cond_ab
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@ad
    const-string v9, "android:target_state"

    #@af
    iget-object v10, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@b1
    invoke-virtual {p0, v8, v9, v10}, Landroid/support/v4/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    #@b4
    iget v8, v0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    #@b6
    if-eqz v8, :cond_c1

    #@b8
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@ba
    const-string v9, "android:target_req_state"

    #@bc
    iget v10, v0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    #@be
    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@c1
    :cond_c1
    :goto_c1
    sget-boolean v8, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@c3
    if-eqz v8, :cond_1e4

    #@c5
    const-string v8, "FragmentManager"

    #@c7
    new-instance v9, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string v10, "Saved state of "

    #@ce
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v9

    #@d2
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    const-string v9, ": "

    #@d8
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v0

    #@dc
    iget-object v2, v2, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@de
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v0

    #@e2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e5
    move-result-object v0

    #@e6
    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e9
    move v0, v1

    #@ea
    :goto_ea
    add-int/lit8 v2, v5, 0x1

    #@ec
    move v5, v2

    #@ed
    move v2, v0

    #@ee
    goto/16 :goto_23

    #@f0
    :cond_f0
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@f2
    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    #@f4
    goto :goto_c1

    #@f5
    :cond_f5
    if-nez v2, :cond_104

    #@f7
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@f9
    if-eqz v0, :cond_18

    #@fb
    const-string v0, "FragmentManager"

    #@fd
    const-string v1, "saveAllState: no fragments!"

    #@ff
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@102
    goto/16 :goto_18

    #@104
    :cond_104
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@106
    if-eqz v0, :cond_182

    #@108
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@10a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10d
    move-result v5

    #@10e
    if-lez v5, :cond_182

    #@110
    new-array v1, v5, [I

    #@112
    move v2, v4

    #@113
    :goto_113
    if-ge v2, v5, :cond_183

    #@115
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@117
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11a
    move-result-object v0

    #@11b
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@11d
    iget v0, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@11f
    aput v0, v1, v2

    #@121
    aget v0, v1, v2

    #@123
    if-gez v0, :cond_152

    #@125
    new-instance v0, Ljava/lang/IllegalStateException;

    #@127
    new-instance v6, Ljava/lang/StringBuilder;

    #@129
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@12c
    const-string v8, "Failure saving state: active "

    #@12e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v6

    #@132
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@134
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@137
    move-result-object v8

    #@138
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v6

    #@13c
    const-string v8, " has cleared index: "

    #@13e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v6

    #@142
    aget v8, v1, v2

    #@144
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@147
    move-result-object v6

    #@148
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v6

    #@14c
    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14f
    invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@152
    :cond_152
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@154
    if-eqz v0, :cond_17e

    #@156
    const-string v0, "FragmentManager"

    #@158
    new-instance v6, Ljava/lang/StringBuilder;

    #@15a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@15d
    const-string v8, "saveAllState: adding fragment #"

    #@15f
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v6

    #@163
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@166
    move-result-object v6

    #@167
    const-string v8, ": "

    #@169
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16c
    move-result-object v6

    #@16d
    iget-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@16f
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@172
    move-result-object v8

    #@173
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v6

    #@177
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17a
    move-result-object v6

    #@17b
    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@17e
    :cond_17e
    add-int/lit8 v0, v2, 0x1

    #@180
    move v2, v0

    #@181
    goto :goto_113

    #@182
    :cond_182
    move-object v1, v3

    #@183
    :cond_183
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@185
    if-eqz v0, :cond_1d3

    #@187
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@189
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@18c
    move-result v5

    #@18d
    if-lez v5, :cond_1d3

    #@18f
    new-array v3, v5, [Landroid/support/v4/app/BackStackState;

    #@191
    move v2, v4

    #@192
    :goto_192
    if-ge v2, v5, :cond_1d3

    #@194
    new-instance v4, Landroid/support/v4/app/BackStackState;

    #@196
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@198
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19b
    move-result-object v0

    #@19c
    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    #@19e
    invoke-direct {v4, p0, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;)V

    #@1a1
    aput-object v4, v3, v2

    #@1a3
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@1a5
    if-eqz v0, :cond_1cf

    #@1a7
    const-string v0, "FragmentManager"

    #@1a9
    new-instance v4, Ljava/lang/StringBuilder;

    #@1ab
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1ae
    const-string v6, "saveAllState: adding back stack #"

    #@1b0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v4

    #@1b4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v4

    #@1b8
    const-string v6, ": "

    #@1ba
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v4

    #@1be
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    #@1c0
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c3
    move-result-object v6

    #@1c4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c7
    move-result-object v4

    #@1c8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cb
    move-result-object v4

    #@1cc
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1cf
    :cond_1cf
    add-int/lit8 v0, v2, 0x1

    #@1d1
    move v2, v0

    #@1d2
    goto :goto_192

    #@1d3
    :cond_1d3
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    #@1d5
    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    #@1d8
    iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    #@1da
    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    #@1dc
    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    #@1de
    move-object v3, v0

    #@1df
    goto/16 :goto_18

    #@1e1
    :cond_1e1
    move v0, v2

    #@1e2
    goto/16 :goto_ea

    #@1e4
    :cond_1e4
    move v0, v1

    #@1e5
    goto/16 :goto_ea
.end method

.method saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@3
    if-nez v0, :cond_c

    #@5
    new-instance v0, Landroid/os/Bundle;

    #@7
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@a
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@c
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@e
    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    #@11
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@13
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_49

    #@19
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@1b
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    #@1d
    :goto_1d
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1f
    if-eqz v1, :cond_24

    #@21
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    #@24
    :cond_24
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@26
    if-eqz v1, :cond_36

    #@28
    if-nez v0, :cond_2f

    #@2a
    new-instance v0, Landroid/os/Bundle;

    #@2c
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@2f
    :cond_2f
    const-string v1, "android:view_state"

    #@31
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@33
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@36
    :cond_36
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@38
    if-nez v1, :cond_48

    #@3a
    if-nez v0, :cond_41

    #@3c
    new-instance v0, Landroid/os/Bundle;

    #@3e
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@41
    :cond_41
    const-string v1, "android:user_visible_hint"

    #@43
    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@45
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@48
    :cond_48
    return-object v0

    #@49
    :cond_49
    move-object v0, v1

    #@4a
    goto :goto_1d
.end method

.method public saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@3
    if-gez v1, :cond_26

    #@5
    new-instance v1, Ljava/lang/IllegalStateException;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v3, "Fragment "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string v3, " is not currently in the FragmentManager"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@23
    invoke-direct {p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    #@26
    :cond_26
    iget v1, p1, Landroid/support/v4/app/Fragment;->mState:I

    #@28
    if-lez v1, :cond_35

    #@2a
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    #@2d
    move-result-object v1

    #@2e
    if-eqz v1, :cond_35

    #@30
    new-instance v0, Landroid/support/v4/app/Fragment$SavedState;

    #@32
    invoke-direct {v0, v1}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    #@35
    :cond_35
    return-object v0
.end method

.method saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
    .registers 4

    #@0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@2
    if-nez v0, :cond_5

    #@4
    :cond_4
    :goto_4
    return-void

    #@5
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@7
    if-nez v0, :cond_27

    #@9
    new-instance v0, Landroid/util/SparseArray;

    #@b
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@e
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@10
    :goto_10
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@12
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@14
    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    #@17
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@19
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@1c
    move-result v0

    #@1d
    if-lez v0, :cond_4

    #@1f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@21
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@23
    const/4 v0, 0x0

    #@24
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@26
    goto :goto_4

    #@27
    :cond_27
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    #@29
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    #@2c
    goto :goto_10
.end method

.method public setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
    .registers 7

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_c

    #@5
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@c
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v0

    #@12
    if-ge p1, v0, :cond_41

    #@14
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@16
    if-eqz v0, :cond_3a

    #@18
    new-instance v0, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string v1, "FragmentManager"

    #@1f
    const-string v2, "Setting back stack index "

    #@21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string v2, " to "

    #@2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    :cond_3a
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@3f
    :goto_3f
    monitor-exit p0

    #@40
    return-void

    #@41
    :cond_41
    :goto_41
    if-ge v0, p1, :cond_7c

    #@43
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@45
    const/4 v2, 0x0

    #@46
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@49
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@4b
    if-nez v1, :cond_54

    #@4d
    new-instance v1, Ljava/util/ArrayList;

    #@4f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@52
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@54
    :cond_54
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@56
    if-eqz v1, :cond_70

    #@58
    new-instance v1, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string v2, "FragmentManager"

    #@5f
    const-string v3, "Adding available back stack index "

    #@61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@70
    :cond_70
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    #@72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@79
    add-int/lit8 v0, v0, 0x1

    #@7b
    goto :goto_41

    #@7c
    :cond_7c
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@7e
    if-eqz v0, :cond_a2

    #@80
    new-instance v0, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    const-string v1, "FragmentManager"

    #@87
    const-string v2, "Adding back stack index "

    #@89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v0

    #@8d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    const-string v2, " with "

    #@93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v0

    #@97
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v0

    #@9b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v0

    #@9f
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a2
    :cond_a2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    #@a4
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a7
    goto :goto_3f

    #@a8
    :catchall_a8
    move-exception v0

    #@a9
    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_a8

    #@aa
    throw v0
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;II)V
    .registers 9

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@4
    if-eqz v0, :cond_1e

    #@6
    const-string v0, "FragmentManager"

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "show: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    :cond_1e
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@20
    if-eqz v0, :cond_49

    #@22
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@24
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@26
    if-eqz v0, :cond_38

    #@28
    invoke-virtual {p0, p1, p2, v4, p3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    #@2b
    move-result-object v0

    #@2c
    if-eqz v0, :cond_33

    #@2e
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@30
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    #@33
    :cond_33
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@35
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    #@38
    :cond_38
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@3a
    if-eqz v0, :cond_46

    #@3c
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@3e
    if-eqz v0, :cond_46

    #@40
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@42
    if-eqz v0, :cond_46

    #@44
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    #@46
    :cond_46
    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    #@49
    :cond_49
    return-void
.end method

.method startPendingDeferredFragments()V
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_5

    #@4
    :cond_4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    move v1, v0

    #@7
    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    if-ge v1, v0, :cond_4

    #@f
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@17
    if-eqz v0, :cond_1c

    #@19
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V

    #@1c
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    #@1e
    move v1, v0

    #@1f
    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const/16 v1, 0x80

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    const-string v1, "FragmentManager{"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    const-string v1, " in "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@1e
    if-eqz v1, :cond_2f

    #@20
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;

    #@22
    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@25
    :goto_25
    const-string v1, "}}"

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0

    #@2f
    :cond_2f
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@31
    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@34
    goto :goto_25
.end method
