.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Landroid/support/v4/app/BackStackState$1;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/BackStackState$1;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    #@f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    #@15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    #@1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    #@21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    #@27
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@29
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Ljava/lang/CharSequence;

    #@2f
    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    #@37
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@39
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Ljava/lang/CharSequence;

    #@3f
    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@41
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;)V
    .registers 10

    #@0
    const/4 v3, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iget-object v0, p2, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@6
    move-object v1, v0

    #@7
    move v0, v3

    #@8
    :goto_8
    if-eqz v1, :cond_18

    #@a
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@c
    if-eqz v2, :cond_15

    #@e
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v2

    #@14
    add-int/2addr v0, v2

    #@15
    :cond_15
    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    #@17
    goto :goto_8

    #@18
    :cond_18
    iget v1, p2, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    #@1a
    mul-int/lit8 v1, v1, 0x7

    #@1c
    add-int/2addr v0, v1

    #@1d
    new-array v0, v0, [I

    #@1f
    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@21
    iget-boolean v0, p2, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@23
    if-nez v0, :cond_2d

    #@25
    new-instance v0, Ljava/lang/IllegalStateException;

    #@27
    const-string v1, "Not on back stack"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    :cond_2d
    iget-object v0, p2, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    #@2f
    move-object v4, v0

    #@30
    move v0, v3

    #@31
    :goto_31
    if-eqz v4, :cond_9c

    #@33
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@35
    add-int/lit8 v2, v0, 0x1

    #@37
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@39
    aput v5, v1, v0

    #@3b
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@3d
    add-int/lit8 v5, v2, 0x1

    #@3f
    iget-object v0, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@41
    if-eqz v0, :cond_90

    #@43
    iget-object v0, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@45
    iget v0, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@47
    :goto_47
    aput v0, v1, v2

    #@49
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@4b
    add-int/lit8 v1, v5, 0x1

    #@4d
    iget v2, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    #@4f
    aput v2, v0, v5

    #@51
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@53
    add-int/lit8 v2, v1, 0x1

    #@55
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    #@57
    aput v5, v0, v1

    #@59
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@5b
    add-int/lit8 v1, v2, 0x1

    #@5d
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    #@5f
    aput v5, v0, v2

    #@61
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@63
    add-int/lit8 v2, v1, 0x1

    #@65
    iget v5, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    #@67
    aput v5, v0, v1

    #@69
    iget-object v0, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@6b
    if-eqz v0, :cond_92

    #@6d
    iget-object v0, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@6f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@72
    move-result v5

    #@73
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@75
    aput v5, v0, v2

    #@77
    add-int/lit8 v1, v2, 0x1

    #@79
    move v2, v3

    #@7a
    :goto_7a
    if-ge v2, v5, :cond_bd

    #@7c
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@7e
    iget-object v0, v4, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@80
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@83
    move-result-object v0

    #@84
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@86
    iget v0, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    #@88
    aput v0, v6, v1

    #@8a
    add-int/lit8 v0, v2, 0x1

    #@8c
    add-int/lit8 v1, v1, 0x1

    #@8e
    move v2, v0

    #@8f
    goto :goto_7a

    #@90
    :cond_90
    const/4 v0, -0x1

    #@91
    goto :goto_47

    #@92
    :cond_92
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@94
    add-int/lit8 v0, v2, 0x1

    #@96
    aput v3, v1, v2

    #@98
    :goto_98
    iget-object v1, v4, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    #@9a
    move-object v4, v1

    #@9b
    goto :goto_31

    #@9c
    :cond_9c
    iget v0, p2, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@9e
    iput v0, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    #@a0
    iget v0, p2, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@a2
    iput v0, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    #@a4
    iget-object v0, p2, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    #@a6
    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    #@a8
    iget v0, p2, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@aa
    iput v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    #@ac
    iget v0, p2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@ae
    iput v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    #@b0
    iget-object v0, p2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@b2
    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@b4
    iget v0, p2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@b6
    iput v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    #@b8
    iget-object v0, p2, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@ba
    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@bc
    return-void

    #@bd
    :cond_bd
    move v0, v1

    #@be
    goto :goto_98
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;
    .registers 13

    #@0
    const/4 v10, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    new-instance v5, Landroid/support/v4/app/BackStackRecord;

    #@4
    invoke-direct {v5, p1}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    #@7
    move v1, v2

    #@8
    move v0, v2

    #@9
    :goto_9
    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@b
    array-length v3, v3

    #@c
    if-ge v0, v3, :cond_e1

    #@e
    new-instance v6, Landroid/support/v4/app/BackStackRecord$Op;

    #@10
    invoke-direct {v6}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    #@13
    iget-object v3, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@15
    add-int/lit8 v4, v0, 0x1

    #@17
    aget v0, v3, v0

    #@19
    iput v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    #@1b
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@1d
    if-eqz v0, :cond_4f

    #@1f
    const-string v0, "FragmentManager"

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string v7, "Instantiate "

    #@28
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    const-string v7, " op #"

    #@32
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    const-string v7, " base fragment #"

    #@3c
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@42
    aget v7, v7, v4

    #@44
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    :cond_4f
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@51
    add-int/lit8 v3, v4, 0x1

    #@53
    aget v0, v0, v4

    #@55
    if-ltz v0, :cond_d4

    #@57
    iget-object v4, p1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@59
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5c
    move-result-object v0

    #@5d
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@5f
    iput-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@61
    :goto_61
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@63
    add-int/lit8 v4, v3, 0x1

    #@65
    aget v0, v0, v3

    #@67
    iput v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    #@69
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@6b
    add-int/lit8 v3, v4, 0x1

    #@6d
    aget v0, v0, v4

    #@6f
    iput v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    #@71
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@73
    add-int/lit8 v4, v3, 0x1

    #@75
    aget v0, v0, v3

    #@77
    iput v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    #@79
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@7b
    add-int/lit8 v7, v4, 0x1

    #@7d
    aget v0, v0, v4

    #@7f
    iput v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    #@81
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@83
    add-int/lit8 v3, v7, 0x1

    #@85
    aget v7, v0, v7

    #@87
    if-lez v7, :cond_d8

    #@89
    new-instance v0, Ljava/util/ArrayList;

    #@8b
    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    #@8e
    iput-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@90
    move v4, v2

    #@91
    :goto_91
    if-ge v4, v7, :cond_d8

    #@93
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@95
    if-eqz v0, :cond_bd

    #@97
    const-string v0, "FragmentManager"

    #@99
    new-instance v8, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string v9, "Instantiate "

    #@a0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v8

    #@a4
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v8

    #@a8
    const-string v9, " set remove fragment #"

    #@aa
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v8

    #@ae
    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@b0
    aget v9, v9, v3

    #@b2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v8

    #@b6
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v8

    #@ba
    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@bd
    :cond_bd
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@bf
    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@c1
    aget v8, v8, v3

    #@c3
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c6
    move-result-object v0

    #@c7
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@c9
    iget-object v8, v6, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    #@cb
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ce
    add-int/lit8 v0, v4, 0x1

    #@d0
    add-int/lit8 v3, v3, 0x1

    #@d2
    move v4, v0

    #@d3
    goto :goto_91

    #@d4
    :cond_d4
    const/4 v0, 0x0

    #@d5
    iput-object v0, v6, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    #@d7
    goto :goto_61

    #@d8
    :cond_d8
    invoke-virtual {v5, v6}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    #@db
    add-int/lit8 v0, v1, 0x1

    #@dd
    move v1, v0

    #@de
    move v0, v3

    #@df
    goto/16 :goto_9

    #@e1
    :cond_e1
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    #@e3
    iput v0, v5, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    #@e5
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    #@e7
    iput v0, v5, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    #@e9
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    #@eb
    iput-object v0, v5, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    #@ed
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    #@ef
    iput v0, v5, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    #@f1
    iput-boolean v10, v5, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    #@f3
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    #@f5
    iput v0, v5, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    #@f7
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@f9
    iput-object v0, v5, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@fb
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    #@fd
    iput v0, v5, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    #@ff
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@101
    iput-object v0, v5, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@103
    invoke-virtual {v5, v10}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    #@106
    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@6
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    #@8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@15
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    #@21
    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@24
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    #@26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    #@2b
    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@2e
    return-void
.end method
