.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;

# interfaces
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/BackStackRecord$Op;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SHOW:I = 0x5

.field static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mHead:Landroid/support/v4/app/BackStackRecord$Op;

.field mIndex:I

.field final mManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mNumOp:I

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mTail:Landroid/support/v4/app/BackStackRecord$Op;

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .registers 3

    #@0
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    #@6
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@9
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@b
    return-void
.end method

.method private doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .registers 8

    #@0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    iput-object v0, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@4
    if-eqz p3, :cond_43

    #@6
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@8
    if-eqz v0, :cond_41

    #@a
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@c
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_41

    #@12
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string v2, "Can\'t change tag of fragment "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string v2, ": was "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget-object v2, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    const-string v2, " now "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0

    #@41
    :cond_41
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@43
    :cond_43
    if-eqz p1, :cond_80

    #@45
    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@47
    if-eqz v0, :cond_7c

    #@49
    iget v0, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@4b
    if-eq v0, p1, :cond_7c

    #@4d
    new-instance v0, Ljava/lang/IllegalStateException;

    #@4f
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string v2, "Can\'t change container ID of fragment "

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    const-string v2, ": was "

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    iget v2, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@69
    move-result-object v1

    #@6a
    const-string v2, " now "

    #@6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v1

    #@78
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v0

    #@7c
    :cond_7c
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@7e
    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@80
    :cond_80
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    #@82
    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    #@85
    iput p4, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@87
    iput-object p2, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@89
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    #@8c
    return-void
.end method


# virtual methods
.method public add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    #@5
    return-object p0
.end method

.method public add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    #@4
    return-object p0
.end method

.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    #@5
    return-object p0
.end method

.method addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
    .registers 3

    #@0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@2
    if-nez v0, :cond_1f

    #@4
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    #@6
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@8
    :goto_8
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    #@a
    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    #@c
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    #@e
    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    #@10
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    #@12
    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    #@14
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    #@16
    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    #@18
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    #@1e
    return-void

    #@1f
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    #@21
    iput-object v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    #@23
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    #@25
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    #@27
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    #@29
    goto :goto_8
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@f
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    #@11
    return-object p0
.end method

.method public attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4

    #@0
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    #@5
    const/4 v1, 0x7

    #@6
    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@8
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@a
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    #@d
    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .registers 8

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@2
    if-nez v0, :cond_5

    #@4
    :cond_4
    return-void

    #@5
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@7
    if-eqz v0, :cond_2b

    #@9
    const-string v0, "FragmentManager"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v2, "Bump nesting in "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string v2, " by "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    :cond_2b
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@2d
    move-object v2, v0

    #@2e
    :goto_2e
    if-eqz v2, :cond_4

    #@30
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@32
    if-eqz v0, :cond_67

    #@34
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@36
    iget v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@38
    add-int/2addr v1, p1

    #@39
    iput v1, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@3b
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@3d
    if-eqz v0, :cond_67

    #@3f
    const-string v0, "FragmentManager"

    #@41
    new-instance v1, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string v3, "Bump nesting of "

    #@48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    iget-object v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@4e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v1

    #@52
    const-string v3, " to "

    #@54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    iget-object v3, v2, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@5a
    iget v3, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@5c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    :cond_67
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@69
    if-eqz v0, :cond_af

    #@6b
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@6d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@70
    move-result v0

    #@71
    add-int/lit8 v0, v0, -0x1

    #@73
    move v1, v0

    #@74
    :goto_74
    if-ltz v1, :cond_af

    #@76
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@78
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@7b
    move-result-object v0

    #@7c
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@7e
    iget v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@80
    add-int/2addr v3, p1

    #@81
    iput v3, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@83
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@85
    if-eqz v3, :cond_ab

    #@87
    const-string v3, "FragmentManager"

    #@89
    new-instance v4, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string v5, "Bump nesting of "

    #@90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v4

    #@94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    const-string v5, " to "

    #@9a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v4

    #@9e
    iget v0, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@a0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v0

    #@a4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ab
    :cond_ab
    add-int/lit8 v0, v1, -0x1

    #@ad
    move v1, v0

    #@ae
    goto :goto_74

    #@af
    :cond_af
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    #@b1
    move-object v2, v0

    #@b2
    goto/16 :goto_2e
.end method

.method public commit()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public commitAllowingStateLoss()I
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method commitInternal(Z)I
    .registers 7

    #@0
    const/4 v4, 0x0

    #@1
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    #@3
    if-eqz v0, :cond_d

    #@5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string v1, "commit already called"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@f
    if-eqz v0, :cond_3a

    #@11
    const-string v0, "FragmentManager"

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string v2, "Commit: "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    const-string v0, "  "

    #@2b
    new-instance v1, Ljava/io/PrintWriter;

    #@2d
    new-instance v2, Landroid/support/v4/util/LogWriter;

    #@2f
    const-string v3, "FragmentManager"

    #@31
    invoke-direct {v2, v3}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    #@34
    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@37
    invoke-virtual {p0, v0, v4, v1, v4}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3a
    :cond_3a
    const/4 v0, 0x1

    #@3b
    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    #@3d
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@3f
    if-eqz v0, :cond_51

    #@41
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@43
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I

    #@46
    move-result v0

    #@47
    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@49
    :goto_49
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@4b
    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    #@4e
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@50
    return v0

    #@51
    :cond_51
    const/4 v0, -0x1

    #@52
    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@54
    goto :goto_49
.end method

.method public detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4

    #@0
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    #@5
    const/4 v1, 0x6

    #@6
    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@8
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@a
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    #@d
    return-object p0
.end method

.method public disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
    .registers 3

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "This transaction is already being added to the back stack"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    #@f
    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    #@4
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 11

    #@0
    const/4 v1, 0x0

    #@1
    if-eqz p3, :cond_db

    #@3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    const-string v0, "mName="

    #@8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    #@d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10
    const-string v0, " mIndex="

    #@12
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@15
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@17
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1a
    const-string v0, " mCommitted="

    #@1c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    #@21
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@24
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@26
    if-eqz v0, :cond_47

    #@28
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    const-string v0, "mTransition=#"

    #@2d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@30
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@32
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    const-string v0, " mTransitionStyle=#"

    #@3b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3e
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@40
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@47
    :cond_47
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    #@49
    if-nez v0, :cond_4f

    #@4b
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    #@4d
    if-eqz v0, :cond_6e

    #@4f
    :cond_4f
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@52
    const-string v0, "mEnterAnim=#"

    #@54
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    #@59
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@60
    const-string v0, " mExitAnim=#"

    #@62
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    #@67
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6e
    :cond_6e
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    #@70
    if-nez v0, :cond_76

    #@72
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    #@74
    if-eqz v0, :cond_95

    #@76
    :cond_76
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@79
    const-string v0, "mPopEnterAnim=#"

    #@7b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7e
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    #@80
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@83
    move-result-object v0

    #@84
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@87
    const-string v0, " mPopExitAnim=#"

    #@89
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8c
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    #@8e
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@91
    move-result-object v0

    #@92
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@95
    :cond_95
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@97
    if-nez v0, :cond_9d

    #@99
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@9b
    if-eqz v0, :cond_b8

    #@9d
    :cond_9d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a0
    const-string v0, "mBreadCrumbTitleRes=#"

    #@a2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a5
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@a7
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@aa
    move-result-object v0

    #@ab
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@ae
    const-string v0, " mBreadCrumbTitleText="

    #@b0
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b3
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@b5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@b8
    :cond_b8
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@ba
    if-nez v0, :cond_c0

    #@bc
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@be
    if-eqz v0, :cond_db

    #@c0
    :cond_c0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c3
    const-string v0, "mBreadCrumbShortTitleRes=#"

    #@c5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c8
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@ca
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@cd
    move-result-object v0

    #@ce
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d1
    const-string v0, " mBreadCrumbShortTitleText="

    #@d3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@d6
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@d8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@db
    :cond_db
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@dd
    if-eqz v0, :cond_1f9

    #@df
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2
    const-string v0, "Operations:"

    #@e4
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e7
    new-instance v0, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v0

    #@f0
    const-string v2, "    "

    #@f2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v0

    #@f6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v4

    #@fa
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@fc
    move-object v2, v0

    #@fd
    move v3, v1

    #@fe
    :goto_fe
    if-eqz v2, :cond_1f9

    #@100
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@102
    packed-switch v0, :pswitch_data_1fa

    #@105
    new-instance v0, Ljava/lang/StringBuilder;

    #@107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10a
    const-string v5, "cmd="

    #@10c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v0

    #@110
    iget v5, v2, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@112
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@115
    move-result-object v0

    #@116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v0

    #@11a
    :goto_11a
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11d
    const-string v5, "  Op #"

    #@11f
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@122
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    #@125
    const-string v5, ": "

    #@127
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@12d
    const-string v0, " "

    #@12f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@132
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@134
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@137
    if-eqz p3, :cond_187

    #@139
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    #@13b
    if-nez v0, :cond_141

    #@13d
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    #@13f
    if-eqz v0, :cond_160

    #@141
    :cond_141
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@144
    const-string v0, "enterAnim=#"

    #@146
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@149
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    #@14b
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@14e
    move-result-object v0

    #@14f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@152
    const-string v0, " exitAnim=#"

    #@154
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@157
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    #@159
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@15c
    move-result-object v0

    #@15d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@160
    :cond_160
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    #@162
    if-nez v0, :cond_168

    #@164
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    #@166
    if-eqz v0, :cond_187

    #@168
    :cond_168
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@16b
    const-string v0, "popEnterAnim=#"

    #@16d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@170
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    #@172
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@175
    move-result-object v0

    #@176
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@179
    const-string v0, " popExitAnim=#"

    #@17b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17e
    iget v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    #@180
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@183
    move-result-object v0

    #@184
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@187
    :cond_187
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@189
    if-eqz v0, :cond_1f1

    #@18b
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@18d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@190
    move-result v0

    #@191
    if-lez v0, :cond_1f1

    #@193
    move v0, v1

    #@194
    :goto_194
    iget-object v5, v2, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@196
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@199
    move-result v5

    #@19a
    if-ge v0, v5, :cond_1f1

    #@19c
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19f
    iget-object v5, v2, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@1a1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@1a4
    move-result v5

    #@1a5
    const/4 v6, 0x1

    #@1a6
    if-ne v5, v6, :cond_1d9

    #@1a8
    const-string v5, "Removed: "

    #@1aa
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1ad
    :goto_1ad
    iget-object v5, v2, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@1af
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b2
    move-result-object v5

    #@1b3
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@1b6
    add-int/lit8 v0, v0, 0x1

    #@1b8
    goto :goto_194

    #@1b9
    :pswitch_1b9
    const-string v0, "NULL"

    #@1bb
    goto/16 :goto_11a

    #@1bd
    :pswitch_1bd
    const-string v0, "ADD"

    #@1bf
    goto/16 :goto_11a

    #@1c1
    :pswitch_1c1
    const-string v0, "REPLACE"

    #@1c3
    goto/16 :goto_11a

    #@1c5
    :pswitch_1c5
    const-string v0, "REMOVE"

    #@1c7
    goto/16 :goto_11a

    #@1c9
    :pswitch_1c9
    const-string v0, "HIDE"

    #@1cb
    goto/16 :goto_11a

    #@1cd
    :pswitch_1cd
    const-string v0, "SHOW"

    #@1cf
    goto/16 :goto_11a

    #@1d1
    :pswitch_1d1
    const-string v0, "DETACH"

    #@1d3
    goto/16 :goto_11a

    #@1d5
    :pswitch_1d5
    const-string v0, "ATTACH"

    #@1d7
    goto/16 :goto_11a

    #@1d9
    :cond_1d9
    if-nez v0, :cond_1e0

    #@1db
    const-string v5, "Removed:"

    #@1dd
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e0
    :cond_1e0
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e3
    const-string v5, "  #"

    #@1e5
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1e8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    #@1eb
    const-string v5, ": "

    #@1ed
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f0
    goto :goto_1ad

    #@1f1
    :cond_1f1
    iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    #@1f3
    add-int/lit8 v2, v3, 0x1

    #@1f5
    move v3, v2

    #@1f6
    move-object v2, v0

    #@1f7
    goto/16 :goto_fe

    #@1f9
    :cond_1f9
    return-void

    #@1fa
    :pswitch_data_1fa
    .packed-switch 0x0
        :pswitch_1b9
        :pswitch_1bd
        :pswitch_1c1
        :pswitch_1c5
        :pswitch_1c9
        :pswitch_1cd
        :pswitch_1d1
        :pswitch_1d5
    .end packed-switch
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .registers 3

    #@0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@2
    if-eqz v0, :cond_f

    #@4
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@8
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@a
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@11
    goto :goto_e
.end method

.method public getBreadCrumbShortTitleRes()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@2
    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .registers 3

    #@0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@2
    if-eqz v0, :cond_f

    #@4
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6
    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    #@8
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@a
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@11
    goto :goto_e
.end method

.method public getBreadCrumbTitleRes()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@2
    return v0
.end method

.method public getId()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTransition()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@2
    return v0
.end method

.method public getTransitionStyle()I
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@2
    return v0
.end method

.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4

    #@0
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    #@5
    const/4 v1, 0x4

    #@6
    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@8
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@a
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    #@d
    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    #@2
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    #@2
    if-nez v0, :cond_6

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

.method public popFromBackStack(Z)V
    .registers 9

    #@0
    const/4 v5, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@5
    if-eqz v0, :cond_30

    #@7
    const-string v0, "FragmentManager"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string v3, "popFromBackStack: "

    #@10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    const-string v0, "  "

    #@21
    new-instance v1, Ljava/io/PrintWriter;

    #@23
    new-instance v3, Landroid/support/v4/util/LogWriter;

    #@25
    const-string v4, "FragmentManager"

    #@27
    invoke-direct {v3, v4}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    #@2a
    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    #@2d
    invoke-virtual {p0, v0, v5, v1, v5}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@30
    :cond_30
    invoke-virtual {p0, v6}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    #@33
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    #@35
    move-object v3, v0

    #@36
    :goto_36
    if-eqz v3, :cond_104

    #@38
    iget v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@3a
    packed-switch v0, :pswitch_data_126

    #@3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3f
    new-instance v1, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string v2, "Unknown cmd: "

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    iget v2, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@4c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v1

    #@54
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v0

    #@58
    :pswitch_58
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@5a
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    #@5c
    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@5e
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@60
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@62
    invoke-static {v4}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    #@65
    move-result v4

    #@66
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@68
    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    #@6b
    :cond_6b
    :goto_6b
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    #@6d
    move-object v3, v0

    #@6e
    goto :goto_36

    #@6f
    :pswitch_6f
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@71
    if-eqz v0, :cond_84

    #@73
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    #@75
    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@77
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@79
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@7b
    invoke-static {v4}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    #@7e
    move-result v4

    #@7f
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@81
    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    #@84
    :cond_84
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@86
    if-eqz v0, :cond_6b

    #@88
    move v1, v2

    #@89
    :goto_89
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@8b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8e
    move-result v0

    #@8f
    if-ge v1, v0, :cond_6b

    #@91
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@96
    move-result-object v0

    #@97
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@99
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    #@9b
    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@9d
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@9f
    invoke-virtual {v4, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    #@a2
    add-int/lit8 v0, v1, 0x1

    #@a4
    move v1, v0

    #@a5
    goto :goto_89

    #@a6
    :pswitch_a6
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@a8
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    #@aa
    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@ac
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@ae
    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    #@b1
    goto :goto_6b

    #@b2
    :pswitch_b2
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@b4
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    #@b6
    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@b8
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@ba
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@bc
    invoke-static {v4}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    #@bf
    move-result v4

    #@c0
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@c2
    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    #@c5
    goto :goto_6b

    #@c6
    :pswitch_c6
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@c8
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    #@ca
    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@cc
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@ce
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@d0
    invoke-static {v4}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    #@d3
    move-result v4

    #@d4
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@d6
    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    #@d9
    goto :goto_6b

    #@da
    :pswitch_da
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@dc
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    #@de
    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@e0
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@e2
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@e4
    invoke-static {v4}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    #@e7
    move-result v4

    #@e8
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@ea
    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    #@ed
    goto/16 :goto_6b

    #@ef
    :pswitch_ef
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@f1
    iget v1, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    #@f3
    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@f5
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@f7
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@f9
    invoke-static {v4}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    #@fc
    move-result v4

    #@fd
    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@ff
    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    #@102
    goto/16 :goto_6b

    #@104
    :cond_104
    if-eqz p1, :cond_118

    #@106
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@108
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@10a
    iget v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@10c
    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@10e
    invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    #@111
    move-result v2

    #@112
    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@114
    const/4 v4, 0x1

    #@115
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    #@118
    :cond_118
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@11a
    if-ltz v0, :cond_125

    #@11c
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@11e
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@120
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    #@123
    iput v6, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@125
    :cond_125
    return-void

    #@126
    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_58
        :pswitch_6f
        :pswitch_a6
        :pswitch_b2
        :pswitch_c6
        :pswitch_da
        :pswitch_ef
    .end packed-switch
.end method

.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4

    #@0
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    #@5
    const/4 v1, 0x3

    #@6
    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@8
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@a
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    #@d
    return-object p0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .registers 6

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "Must use non-zero containerViewId"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    const/4 v0, 0x2

    #@b
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    #@e
    return-object p0
.end method

.method public run()V
    .registers 11

    #@0
    const/4 v4, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@5
    if-eqz v0, :cond_1f

    #@7
    const-string v0, "FragmentManager"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string v2, "Run: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    :cond_1f
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@21
    if-eqz v0, :cond_2f

    #@23
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@25
    if-gez v0, :cond_2f

    #@27
    new-instance v0, Ljava/lang/IllegalStateException;

    #@29
    const-string v1, "addToBackStack() called after commit()"

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    :cond_2f
    invoke-virtual {p0, v9}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    #@32
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@34
    move-object v5, v0

    #@35
    :goto_35
    if-eqz v5, :cond_170

    #@37
    iget v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@39
    packed-switch v0, :pswitch_data_18a

    #@3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3e
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string v2, "Unknown cmd: "

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    iget v2, v5, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v1

    #@53
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v0

    #@57
    :pswitch_57
    iget-object v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@59
    iget v1, v5, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    #@5b
    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@5d
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@5f
    invoke-virtual {v1, v0, v3}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    #@62
    :cond_62
    :goto_62
    iget-object v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    #@64
    move-object v5, v0

    #@65
    goto :goto_35

    #@66
    :pswitch_66
    iget-object v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@68
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@6a
    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@6c
    if-eqz v1, :cond_10d

    #@6e
    move-object v1, v0

    #@6f
    move v2, v3

    #@70
    :goto_70
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@72
    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@77
    move-result v0

    #@78
    if-ge v2, v0, :cond_10e

    #@7a
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@7c
    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    #@7e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@81
    move-result-object v0

    #@82
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@84
    sget-boolean v6, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@86
    if-eqz v6, :cond_aa

    #@88
    const-string v6, "FragmentManager"

    #@8a
    new-instance v7, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string v8, "OP_REPLACE: adding="

    #@91
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v7

    #@95
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v7

    #@99
    const-string v8, " old="

    #@9b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v7

    #@9f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v7

    #@a3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v7

    #@a7
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@aa
    :cond_aa
    if-eqz v1, :cond_b2

    #@ac
    iget v6, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@ae
    iget v7, v1, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@b0
    if-ne v6, v7, :cond_187

    #@b2
    :cond_b2
    if-ne v0, v1, :cond_bc

    #@b4
    iput-object v4, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@b6
    move-object v0, v4

    #@b7
    :goto_b7
    add-int/lit8 v1, v2, 0x1

    #@b9
    move v2, v1

    #@ba
    move-object v1, v0

    #@bb
    goto :goto_70

    #@bc
    :cond_bc
    iget-object v6, v5, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@be
    if-nez v6, :cond_c7

    #@c0
    new-instance v6, Ljava/util/ArrayList;

    #@c2
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@c5
    iput-object v6, v5, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@c7
    :cond_c7
    iget-object v6, v5, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@c9
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@cc
    iget v6, v5, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    #@ce
    iput v6, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@d0
    iget-boolean v6, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@d2
    if-eqz v6, :cond_102

    #@d4
    iget v6, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@d6
    add-int/lit8 v6, v6, 0x1

    #@d8
    iput v6, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@da
    sget-boolean v6, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@dc
    if-eqz v6, :cond_102

    #@de
    const-string v6, "FragmentManager"

    #@e0
    new-instance v7, Ljava/lang/StringBuilder;

    #@e2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@e5
    const-string v8, "Bump nesting of "

    #@e7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v7

    #@eb
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v7

    #@ef
    const-string v8, " to "

    #@f1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v7

    #@f5
    iget v8, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    #@f7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v7

    #@fb
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v7

    #@ff
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@102
    :cond_102
    iget-object v6, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@104
    iget v7, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@106
    iget v8, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@108
    invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    #@10b
    move-object v0, v1

    #@10c
    goto :goto_b7

    #@10d
    :cond_10d
    move-object v1, v0

    #@10e
    :cond_10e
    if-eqz v1, :cond_62

    #@110
    iget v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    #@112
    iput v0, v1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@114
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@116
    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    #@119
    goto/16 :goto_62

    #@11b
    :pswitch_11b
    iget-object v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@11d
    iget v1, v5, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    #@11f
    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@121
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@123
    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@125
    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@127
    invoke-virtual {v1, v0, v2, v6}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    #@12a
    goto/16 :goto_62

    #@12c
    :pswitch_12c
    iget-object v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@12e
    iget v1, v5, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    #@130
    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@132
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@134
    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@136
    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@138
    invoke-virtual {v1, v0, v2, v6}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    #@13b
    goto/16 :goto_62

    #@13d
    :pswitch_13d
    iget-object v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@13f
    iget v1, v5, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    #@141
    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@143
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@145
    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@147
    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@149
    invoke-virtual {v1, v0, v2, v6}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    #@14c
    goto/16 :goto_62

    #@14e
    :pswitch_14e
    iget-object v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@150
    iget v1, v5, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    #@152
    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@154
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@156
    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@158
    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@15a
    invoke-virtual {v1, v0, v2, v6}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    #@15d
    goto/16 :goto_62

    #@15f
    :pswitch_15f
    iget-object v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@161
    iget v1, v5, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    #@163
    iput v1, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    #@165
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@167
    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@169
    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@16b
    invoke-virtual {v1, v0, v2, v6}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    #@16e
    goto/16 :goto_62

    #@170
    :cond_170
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@172
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@174
    iget v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    #@176
    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@178
    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@17a
    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    #@17d
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@17f
    if-eqz v0, :cond_186

    #@181
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@183
    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->addBackStackState(Landroid/support/v4/app/BackStackRecord;)V

    #@186
    :cond_186
    return-void

    #@187
    :cond_187
    move-object v0, v1

    #@188
    goto/16 :goto_b7

    #@18a
    :pswitch_data_18a
    .packed-switch 0x1
        :pswitch_57
        :pswitch_66
        :pswitch_11b
        :pswitch_12c
        :pswitch_13d
        :pswitch_14e
        :pswitch_15f
    .end packed-switch
.end method

.method public setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .registers 3

    #@0
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@2
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@5
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@3
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@5
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .registers 3

    #@0
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@2
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@5
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@3
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@5
    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v4/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
    .registers 5

    #@0
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    #@2
    iput p2, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    #@4
    iput p3, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    #@6
    iput p4, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    #@8
    return-object p0
.end method

.method public setTransition(I)Landroid/support/v4/app/FragmentTransaction;
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@2
    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
    .registers 2

    #@0
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@2
    return-object p0
.end method

.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4

    #@0
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    #@5
    const/4 v1, 0x5

    #@6
    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@8
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@a
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    #@d
    return-object p0
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
    const-string v1, "BackStackEntry{"

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
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@19
    if-ltz v1, :cond_25

    #@1b
    const-string v1, " #"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    :cond_25
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    #@27
    if-eqz v1, :cond_33

    #@29
    const-string v1, " "

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    :cond_33
    const-string v1, "}"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    return-object v0
.end method
