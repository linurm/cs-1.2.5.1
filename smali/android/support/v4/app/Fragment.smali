.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/Fragment$InstantiationException;,
        Landroid/support/v4/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field private static final sClassMap:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mActivity:Landroid/support/v4/app/FragmentActivity;

.field mAdded:Z

.field mAnimatingAway:Landroid/view/View;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mNextAnim:I

.field mParentFragment:Landroid/support/v4/app/Fragment;

.field mRemoving:Z

.field mRestored:Z

.field mResumed:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mStateAfterAnimating:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroid/support/v4/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    #@2
    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    #@8
    iput v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@a
    iput v1, p0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    #@c
    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@e
    iput-boolean v2, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@10
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .registers 7

    #@0
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Class;

    #@8
    if-nez v0, :cond_17

    #@a
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    sget-object v1, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    #@14
    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@1d
    if-eqz p2, :cond_2c

    #@1f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@2a
    iput-object p2, v0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;
    :try_end_2c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_2c} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2c} :catch_79

    #@2c
    :cond_2c
    return-object v0

    #@2d
    :catch_2d
    move-exception v0

    #@2e
    new-instance v1, Landroid/support/v4/app/Fragment$InstantiationException;

    #@30
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string v3, "Unable to instantiate fragment "

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    const-string v3, ": make sure class name exists, is public, and has an"

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    const-string v3, " empty constructor that is public"

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@52
    throw v1

    #@53
    :catch_53
    move-exception v0

    #@54
    new-instance v1, Landroid/support/v4/app/Fragment$InstantiationException;

    #@56
    new-instance v2, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string v3, "Unable to instantiate fragment "

    #@5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    const-string v3, ": make sure class name exists, is public, and has an"

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    const-string v3, " empty constructor that is public"

    #@6d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@78
    throw v1

    #@79
    :catch_79
    move-exception v0

    #@7a
    new-instance v1, Landroid/support/v4/app/Fragment$InstantiationException;

    #@7c
    new-instance v2, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    const-string v3, "Unable to instantiate fragment "

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    const-string v3, ": make sure class name exists, is public, and has an"

    #@8d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v2

    #@91
    const-string v3, " empty constructor that is public"

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v2

    #@9b
    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    #@9e
    throw v1
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    #@0
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Class;

    #@8
    if-nez v0, :cond_17

    #@a
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    sget-object v1, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    #@14
    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    :cond_17
    const-class v1, Landroid/support/v4/app/Fragment;

    #@19
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1c} :catch_1e

    #@1c
    move-result v0

    #@1d
    :goto_1d
    return v0

    #@1e
    :catch_1e
    move-exception v0

    #@1f
    const/4 v0, 0x0

    #@20
    goto :goto_1d
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    #@0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string v0, "mFragmentId=#"

    #@5
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8
    iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@a
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    const-string v0, " mContainerId=#"

    #@13
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16
    iget v0, p0, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@18
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    const-string v0, " mTag="

    #@21
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@24
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@26
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2c
    const-string v0, "mState="

    #@2e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    #@33
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@36
    const-string v0, " mIndex="

    #@38
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3b
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@3d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@40
    const-string v0, " mWho="

    #@42
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@47
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4a
    const-string v0, " mBackStackNesting="

    #@4c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4f
    iget v0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@51
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@54
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    const-string v0, "mAdded="

    #@59
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5c
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@5e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@61
    const-string v0, " mRemoving="

    #@63
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@66
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    #@68
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@6b
    const-string v0, " mResumed="

    #@6d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mResumed:Z

    #@72
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@75
    const-string v0, " mFromLayout="

    #@77
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7a
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    #@7c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@7f
    const-string v0, " mInLayout="

    #@81
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@84
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@86
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@89
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8c
    const-string v0, "mHidden="

    #@8e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@91
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@93
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@96
    const-string v0, " mDetached="

    #@98
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9b
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@9d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@a0
    const-string v0, " mMenuVisible="

    #@a2
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a5
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@a7
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@aa
    const-string v0, " mHasMenu="

    #@ac
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@af
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@b1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@b4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b7
    const-string v0, "mRetainInstance="

    #@b9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@bc
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    #@be
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@c1
    const-string v0, " mRetaining="

    #@c3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c6
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@c8
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@cb
    const-string v0, " mUserVisibleHint="

    #@cd
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@d2
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@d5
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@d7
    if-eqz v0, :cond_e6

    #@d9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@dc
    const-string v0, "mFragmentManager="

    #@de
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@e3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e6
    :cond_e6
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@e8
    if-eqz v0, :cond_f7

    #@ea
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ed
    const-string v0, "mActivity="

    #@ef
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@f2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@f4
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@f7
    :cond_f7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    #@f9
    if-eqz v0, :cond_108

    #@fb
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@fe
    const-string v0, "mParentFragment="

    #@100
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@103
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    #@105
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@108
    :cond_108
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@10a
    if-eqz v0, :cond_119

    #@10c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10f
    const-string v0, "mArguments="

    #@111
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@114
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@116
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@119
    :cond_119
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@11b
    if-eqz v0, :cond_12a

    #@11d
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@120
    const-string v0, "mSavedFragmentState="

    #@122
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@125
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@127
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@12a
    :cond_12a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@12c
    if-eqz v0, :cond_13b

    #@12e
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@131
    const-string v0, "mSavedViewState="

    #@133
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@136
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@138
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@13b
    :cond_13b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@13d
    if-eqz v0, :cond_156

    #@13f
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@142
    const-string v0, "mTarget="

    #@144
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@147
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@149
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    #@14c
    const-string v0, " mTargetRequestCode="

    #@14e
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@151
    iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    #@153
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@156
    :cond_156
    iget v0, p0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@158
    if-eqz v0, :cond_167

    #@15a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15d
    const-string v0, "mNextAnim="

    #@15f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@162
    iget v0, p0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@164
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@167
    :cond_167
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@169
    if-eqz v0, :cond_178

    #@16b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16e
    const-string v0, "mContainer="

    #@170
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@173
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    #@175
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@178
    :cond_178
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@17a
    if-eqz v0, :cond_189

    #@17c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17f
    const-string v0, "mView="

    #@181
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@184
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@186
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@189
    :cond_189
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@18b
    if-eqz v0, :cond_19a

    #@18d
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@190
    const-string v0, "mInnerView="

    #@192
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@195
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@197
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@19a
    :cond_19a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@19c
    if-eqz v0, :cond_1b8

    #@19e
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a1
    const-string v0, "mAnimatingAway="

    #@1a3
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a6
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    #@1a8
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1ab
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ae
    const-string v0, "mStateAfterAnimating="

    #@1b0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1b3
    iget v0, p0, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    #@1b5
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    #@1b8
    :cond_1b8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@1ba
    if-eqz v0, :cond_1dc

    #@1bc
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1bf
    const-string v0, "Loader Manager:"

    #@1c1
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1c4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@1c6
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1cb
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ce
    move-result-object v1

    #@1cf
    const-string v2, "  "

    #@1d1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    move-result-object v1

    #@1d5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d8
    move-result-object v1

    #@1d9
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@1dc
    :cond_1dc
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@1de
    if-eqz v0, :cond_219

    #@1e0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e3
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e8
    const-string v1, "Child "

    #@1ea
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ed
    move-result-object v0

    #@1ee
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@1f0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f3
    move-result-object v0

    #@1f4
    const-string v1, ":"

    #@1f6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    move-result-object v0

    #@1fa
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fd
    move-result-object v0

    #@1fe
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@201
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@203
    new-instance v1, Ljava/lang/StringBuilder;

    #@205
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@208
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20b
    move-result-object v1

    #@20c
    const-string v2, "  "

    #@20e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v1

    #@212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@215
    move-result-object v1

    #@216
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@219
    :cond_219
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    :goto_8
    return-object p0

    #@9
    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@b
    if-eqz v0, :cond_14

    #@d
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@f
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    #@12
    move-result-object p0

    #@13
    goto :goto_8

    #@14
    :cond_14
    const/4 p0, 0x0

    #@15
    goto :goto_8
.end method

.method public final getActivity()Landroid/support/v4/app/FragmentActivity;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@2
    return-object v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public final getChildFragmentManager()Landroid/support/v4/app/FragmentManager;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-nez v0, :cond_11

    #@4
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    #@7
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    #@9
    const/4 v1, 0x5

    #@a
    if-lt v0, v1, :cond_14

    #@c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@e
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    #@11
    :cond_11
    :goto_11
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@13
    return-object v0

    #@14
    :cond_14
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    #@16
    const/4 v1, 0x4

    #@17
    if-lt v0, v1, :cond_1f

    #@19
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@1b
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    #@1e
    goto :goto_11

    #@1f
    :cond_1f
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    #@21
    const/4 v1, 0x2

    #@22
    if-lt v0, v1, :cond_2a

    #@24
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@26
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    #@29
    goto :goto_11

    #@2a
    :cond_2a
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    #@2c
    const/4 v1, 0x1

    #@2d
    if-lt v0, v1, :cond_11

    #@2f
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@31
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    #@34
    goto :goto_11
.end method

.method public final getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    return-object v0
.end method

.method public final getId()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@2
    return v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLoaderManager()Landroid/support/v4/app/LoaderManager;
    .registers 5

    #@0
    const/4 v3, 0x1

    #@1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@3
    if-eqz v0, :cond_8

    #@5
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@a
    if-nez v0, :cond_2b

    #@c
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v2, "Fragment "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string v2, " not attached to Activity"

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
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@2d
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@2f
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@31
    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@33
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@39
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@3b
    goto :goto_7
.end method

.method public final getParentFragment()Landroid/support/v4/app/Fragment;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    #@2
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@2
    if-nez v0, :cond_23

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
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string v2, " not attached to Activity"

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
    throw v0

    #@23
    :cond_23
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@25
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method

.method public final getRetainInstance()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    #@2
    return v0
.end method

.method public final getString(I)Ljava/lang/String;
    .registers 3

    #@0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    #@0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getTargetFragment()Landroid/support/v4/app/Fragment;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@2
    return-object v0
.end method

.method public final getTargetRequestCode()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    #@2
    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .registers 3

    #@0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getUserVisibleHint()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@2
    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public final hasOptionsMenu()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@2
    return v0
.end method

.method public final hashCode()I
    .registers 2

    #@0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method initState()V
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v0, -0x1

    #@3
    iput v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@5
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@7
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@9
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    #@b
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mResumed:Z

    #@d
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    #@f
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@11
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRestored:Z

    #@13
    iput v1, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@15
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@17
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@19
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@1b
    iput v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@1d
    iput v1, p0, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@1f
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@21
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@23
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@25
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@27
    iput-object v2, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@29
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@2b
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@2d
    return-void
.end method

.method instantiateChildFragmentManager()V
    .registers 4

    #@0
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    #@5
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@9
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@b
    new-instance v2, Landroid/support/v4/app/Fragment$1;

    #@d
    invoke-direct {v2, p0}, Landroid/support/v4/app/Fragment$1;-><init>(Landroid/support/v4/app/Fragment;)V

    #@10
    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/FragmentManagerImpl;->attachActivity(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V

    #@13
    return-void
.end method

.method public final isAdded()Z
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public final isDetached()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    #@2
    return v0
.end method

.method public final isHidden()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@2
    return v0
.end method

.method final isInBackStack()Z
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@2
    if-lez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public final isInLayout()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@2
    return v0
.end method

.method public final isMenuVisible()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@2
    return v0
.end method

.method public final isRemoving()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    #@2
    return v0
.end method

.method public final isResumed()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mResumed:Z

    #@2
    return v0
.end method

.method public final isVisible()Z
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_22

    #@6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_22

    #@c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@e
    if-eqz v0, :cond_22

    #@10
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@12
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@15
    move-result-object v0

    #@16
    if-eqz v0, :cond_22

    #@18
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@1a
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_22

    #@20
    const/4 v0, 0x1

    #@21
    :goto_21
    return v0

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    goto :goto_21
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    #@0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    #@7
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3

    #@0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onDestroy()V
    .registers 5

    #@0
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@5
    if-nez v0, :cond_16

    #@7
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@9
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@b
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@d
    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@f
    const/4 v3, 0x0

    #@10
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@16
    :cond_16
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@18
    if-eqz v0, :cond_1f

    #@1a
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@1c
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    #@1f
    :cond_1f
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .registers 1

    #@0
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onDetach()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onHiddenChanged(Z)V
    .registers 2

    #@0
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onLowMemory()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2

    #@0
    return-void
.end method

.method public onPause()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    #@0
    return-void
.end method

.method public onResume()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    #@0
    return-void
.end method

.method public onStart()V
    .registers 5

    #@0
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@5
    if-nez v0, :cond_25

    #@7
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@9
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@b
    if-nez v0, :cond_1c

    #@d
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@f
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@11
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@13
    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@15
    const/4 v3, 0x0

    #@16
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@1c
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@1e
    if-eqz v0, :cond_25

    #@20
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@22
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    #@25
    :cond_25
    return-void
.end method

.method public onStop()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@3
    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@c
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    #@f
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_32

    #@13
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v2, "Fragment "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string v2, " did not call through to super.onActivityCreated()"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    :cond_32
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@34
    if-eqz v0, :cond_3b

    #@36
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@38
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    #@3b
    :cond_3b
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@c
    :cond_c
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@3
    if-nez v1, :cond_18

    #@5
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_c

    #@b
    :cond_b
    :goto_b
    return v0

    #@c
    :cond_c
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@e
    if-eqz v1, :cond_18

    #@10
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@12
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_b

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    goto :goto_b
.end method

.method performCreate(Landroid/os/Bundle;)V
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@c
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    #@f
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_32

    #@13
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v2, "Fragment "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string v2, " did not call through to super.onCreate()"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    :cond_32
    if-eqz p1, :cond_4e

    #@34
    const-string v0, "android:support:fragments"

    #@36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@39
    move-result-object v0

    #@3a
    if-eqz v0, :cond_4e

    #@3c
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@3e
    if-nez v1, :cond_43

    #@40
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    #@43
    :cond_43
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@45
    const/4 v2, 0x0

    #@46
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    #@49
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@4b
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    #@4e
    :cond_4e
    return-void
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@3
    if-nez v1, :cond_1c

    #@5
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@7
    if-eqz v1, :cond_11

    #@9
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@b
    if-eqz v1, :cond_11

    #@d
    const/4 v0, 0x1

    #@e
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    #@11
    :cond_11
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@13
    if-eqz v1, :cond_1c

    #@15
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@17
    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    #@1a
    move-result v1

    #@1b
    or-int/2addr v0, v1

    #@1c
    :cond_1c
    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method performDestroy()V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@c
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    #@f
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_32

    #@13
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v2, "Fragment "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string v2, " did not call through to super.onDestroy()"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    :cond_32
    return-void
.end method

.method performDestroyView()V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroyView()V

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@c
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    #@f
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_32

    #@13
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v2, "Fragment "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string v2, " did not call through to super.onDestroyView()"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    :cond_32
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@34
    if-eqz v0, :cond_3b

    #@36
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@38
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doReportNextStart()V

    #@3b
    :cond_3b
    return-void
.end method

.method performLowMemory()V
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V

    #@c
    :cond_c
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@3
    if-nez v1, :cond_20

    #@5
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@7
    if-eqz v1, :cond_14

    #@9
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@b
    if-eqz v1, :cond_14

    #@d
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_14

    #@13
    :cond_13
    :goto_13
    return v0

    #@14
    :cond_14
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@16
    if-eqz v1, :cond_20

    #@18
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@1a
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_13

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    goto :goto_13
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@2
    if-nez v0, :cond_18

    #@4
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@6
    if-eqz v0, :cond_f

    #@8
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@a
    if-eqz v0, :cond_f

    #@c
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    #@f
    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@11
    if-eqz v0, :cond_18

    #@13
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@15
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    #@18
    :cond_18
    return-void
.end method

.method performPause()V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@c
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    #@f
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_32

    #@13
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v2, "Fragment "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string v2, " did not call through to super.onPause()"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    :cond_32
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    #@3
    if-nez v1, :cond_1c

    #@5
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@7
    if-eqz v1, :cond_11

    #@9
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@b
    if-eqz v1, :cond_11

    #@d
    const/4 v0, 0x1

    #@e
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    #@11
    :cond_11
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@13
    if-eqz v1, :cond_1c

    #@15
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@17
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@1a
    move-result v1

    #@1b
    or-int/2addr v0, v1

    #@1c
    :cond_1c
    return v0
.end method

.method performReallyStop()V
    .registers 5

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@3
    if-eqz v0, :cond_a

    #@5
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@7
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V

    #@a
    :cond_a
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@c
    if-eqz v0, :cond_32

    #@e
    iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@10
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@12
    if-nez v0, :cond_23

    #@14
    const/4 v0, 0x1

    #@15
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    #@17
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@19
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@1b
    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    #@1d
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@23
    :cond_23
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@25
    if-eqz v0, :cond_32

    #@27
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@29
    iget-boolean v0, v0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    #@2b
    if-nez v0, :cond_33

    #@2d
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@2f
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    #@32
    :cond_32
    :goto_32
    return-void

    #@33
    :cond_33
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@35
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    #@38
    goto :goto_32
.end method

.method performResume()V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@b
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    #@14
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@16
    if-nez v0, :cond_37

    #@18
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string v2, "Fragment "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string v2, " did not call through to super.onResume()"

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    :cond_37
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@39
    if-eqz v0, :cond_45

    #@3b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@3d
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    #@40
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@42
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    #@45
    :cond_45
    return-void
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@5
    if-eqz v0, :cond_14

    #@7
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_14

    #@f
    const-string v1, "android:support:fragments"

    #@11
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@14
    :cond_14
    return-void
.end method

.method performStart()V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@9
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@b
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    #@14
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@16
    if-nez v0, :cond_37

    #@18
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string v2, "Fragment "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string v2, " did not call through to super.onStart()"

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    :cond_37
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@39
    if-eqz v0, :cond_40

    #@3b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@3d
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    #@40
    :cond_40
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@42
    if-eqz v0, :cond_49

    #@44
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@46
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    #@49
    :cond_49
    return-void
.end method

.method performStop()V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@c
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    #@f
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    if-nez v0, :cond_32

    #@13
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v2, "Fragment "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const-string v2, " did not call through to super.onStop()"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    :cond_32
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .registers 2

    #@0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@3
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    #@6
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@8
    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    #@b
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@11
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    #@14
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    #@16
    if-nez v0, :cond_37

    #@18
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string v2, "Fragment "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string v2, " did not call through to super.onViewStateRestored()"

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    :cond_37
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 4

    #@0
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@2
    if-ltz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "Fragment already active"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    #@e
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .registers 3

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@2
    if-eq v0, p1, :cond_17

    #@4
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_17

    #@c
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_17

    #@12
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@14
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    #@17
    :cond_17
    return-void
.end method

.method final setIndex(ILandroid/support/v4/app/Fragment;)V
    .registers 5

    #@0
    iput p1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@2
    if-eqz p2, :cond_22

    #@4
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, ":"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@21
    :goto_21
    return-void

    #@22
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string v1, "android:fragment:"

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    #@39
    goto :goto_21
.end method

.method public setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V
    .registers 4

    #@0
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@2
    if-ltz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "Fragment already active"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    if-eqz p1, :cond_17

    #@e
    iget-object v0, p1, Landroid/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@10
    if-eqz v0, :cond_17

    #@12
    iget-object v0, p1, Landroid/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    #@14
    :goto_14
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@16
    return-void

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    goto :goto_14
.end method

.method public setMenuVisibility(Z)V
    .registers 3

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@2
    if-eq v0, p1, :cond_1b

    #@4
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    #@6
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    #@8
    if-eqz v0, :cond_1b

    #@a
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1b

    #@10
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1b

    #@16
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@18
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    #@1b
    :cond_1b
    return-void
.end method

.method public setRetainInstance(Z)V
    .registers 4

    #@0
    if-eqz p1, :cond_e

    #@2
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    #@4
    if-eqz v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "Can\'t retain fragements that are nested in other fragments"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    #@10
    return-void
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)V
    .registers 3

    #@0
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    #@2
    iput p2, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    #@4
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 4

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@2
    if-nez v0, :cond_10

    #@4
    if-eqz p1, :cond_10

    #@6
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    #@8
    const/4 v1, 0x4

    #@9
    if-ge v0, v1, :cond_10

    #@b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@d
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V

    #@10
    :cond_10
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    #@12
    if-nez p1, :cond_18

    #@14
    const/4 v0, 0x1

    #@15
    :goto_15
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    #@17
    return-void

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    goto :goto_15
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 5

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@2
    if-nez v0, :cond_23

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
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string v2, " not attached to Activity"

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
    throw v0

    #@23
    :cond_23
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@25
    const/4 v1, -0x1

    #@26
    invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    #@29
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 6

    #@0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@2
    if-nez v0, :cond_23

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
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string v2, " not attached to Activity"

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
    throw v0

    #@23
    :cond_23
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@25
    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    #@28
    return-void
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
    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@a
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@c
    if-ltz v1, :cond_18

    #@e
    const-string v1, " #"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    :cond_18
    iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@1a
    if-eqz v1, :cond_2a

    #@1c
    const-string v1, " id=0x"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@23
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    :cond_2a
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@2c
    if-eqz v1, :cond_38

    #@2e
    const-string v1, " "

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    :cond_38
    const/16 v1, 0x7d

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    return-object v0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    #@4
    return-void
.end method
