.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentActivity$FragmentTag;,
        Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# static fields
.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field private static final HONEYCOMB:I = 0xb

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManagerImpl;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedForLoaderManager:Z

.field final mContainer:Landroid/support/v4/app/FragmentContainer;

.field mCreated:Z

.field final mFragments:Landroid/support/v4/app/FragmentManagerImpl;

.field final mHandler:Landroid/os/Handler;

.field mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mOptionsMenuInvalidated:Z

.field mReallyStopped:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    new-instance v0, Landroid/support/v4/app/FragmentActivity$1;

    #@5
    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    #@8
    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@a
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    #@c
    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    #@f
    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@11
    new-instance v0, Landroid/support/v4/app/FragmentActivity$2;

    #@13
    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$2;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    #@16
    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mContainer:Landroid/support/v4/app/FragmentContainer;

    #@18
    return-void
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .registers 8

    #@0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    if-nez p3, :cond_b

    #@5
    const-string v0, "null"

    #@7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    :cond_a
    return-void

    #@b
    :cond_b
    invoke-static {p3}, Landroid/support/v4/app/FragmentActivity;->viewToString(Landroid/view/View;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    instance-of v0, p3, Landroid/view/ViewGroup;

    #@14
    if-eqz v0, :cond_a

    #@16
    check-cast p3, Landroid/view/ViewGroup;

    #@18
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    #@1b
    move-result v1

    #@1c
    if-lez v1, :cond_a

    #@1e
    new-instance v0, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string v2, "  "

    #@29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    const/4 v0, 0x0

    #@32
    :goto_32
    if-ge v0, v1, :cond_a

    #@34
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@37
    move-result-object v3

    #@38
    invoke-direct {p0, v2, p2, v3}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    #@3b
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_32
.end method

.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
    .registers 8

    #@0
    const/16 v3, 0x56

    #@2
    const/16 v1, 0x46

    #@4
    const/16 v6, 0x2c

    #@6
    const/16 v5, 0x20

    #@8
    const/16 v2, 0x2e

    #@a
    new-instance v4, Ljava/lang/StringBuilder;

    #@c
    const/16 v0, 0x80

    #@e
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    const/16 v0, 0x7b

    #@1e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@21
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@24
    move-result v0

    #@25
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    #@32
    move-result v0

    #@33
    sparse-switch v0, :sswitch_data_156

    #@36
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    :goto_39
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_131

    #@3f
    move v0, v1

    #@40
    :goto_40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_134

    #@49
    const/16 v0, 0x45

    #@4b
    :goto_4b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4e
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    #@51
    move-result v0

    #@52
    if-eqz v0, :cond_137

    #@54
    move v0, v2

    #@55
    :goto_55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@58
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_13b

    #@5e
    const/16 v0, 0x48

    #@60
    :goto_60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@63
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    #@66
    move-result v0

    #@67
    if-eqz v0, :cond_13e

    #@69
    move v0, v3

    #@6a
    :goto_6a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6d
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    #@70
    move-result v0

    #@71
    if-eqz v0, :cond_141

    #@73
    const/16 v0, 0x43

    #@75
    :goto_75
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@78
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    #@7b
    move-result v0

    #@7c
    if-eqz v0, :cond_144

    #@7e
    const/16 v0, 0x4c

    #@80
    :goto_80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@86
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    #@89
    move-result v0

    #@8a
    if-eqz v0, :cond_147

    #@8c
    :goto_8c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8f
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    #@92
    move-result v0

    #@93
    if-eqz v0, :cond_14a

    #@95
    const/16 v0, 0x53

    #@97
    :goto_97
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9a
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    #@9d
    move-result v0

    #@9e
    if-eqz v0, :cond_a2

    #@a0
    const/16 v2, 0x50

    #@a2
    :cond_a2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a8
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    #@ab
    move-result v0

    #@ac
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b2
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    #@b5
    move-result v0

    #@b6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b9
    const/16 v0, 0x2d

    #@bb
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@be
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    #@c1
    move-result v0

    #@c2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c8
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    #@cb
    move-result v0

    #@cc
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cf
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    #@d2
    move-result v1

    #@d3
    const/4 v0, -0x1

    #@d4
    if-eq v1, v0, :cond_114

    #@d6
    const-string v0, " #"

    #@d8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@de
    move-result-object v0

    #@df
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    #@e5
    move-result-object v2

    #@e6
    if-eqz v1, :cond_114

    #@e8
    if-eqz v2, :cond_114

    #@ea
    const/high16 v0, -0x1000000

    #@ec
    and-int/2addr v0, v1

    #@ed
    sparse-switch v0, :sswitch_data_164

    #@f0
    :try_start_f0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    #@f3
    move-result-object v0

    #@f4
    :goto_f4
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    #@f7
    move-result-object v3

    #@f8
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@fb
    move-result-object v1

    #@fc
    const-string v2, " "

    #@fe
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@104
    const-string v0, ":"

    #@106
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    const-string v0, "/"

    #@10e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_114
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f0 .. :try_end_114} :catch_153

    #@114
    :cond_114
    :goto_114
    const-string v0, "}"

    #@116
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v0

    #@11d
    return-object v0

    #@11e
    :sswitch_11e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@121
    goto/16 :goto_39

    #@123
    :sswitch_123
    const/16 v0, 0x49

    #@125
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@128
    goto/16 :goto_39

    #@12a
    :sswitch_12a
    const/16 v0, 0x47

    #@12c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12f
    goto/16 :goto_39

    #@131
    :cond_131
    move v0, v2

    #@132
    goto/16 :goto_40

    #@134
    :cond_134
    move v0, v2

    #@135
    goto/16 :goto_4b

    #@137
    :cond_137
    const/16 v0, 0x44

    #@139
    goto/16 :goto_55

    #@13b
    :cond_13b
    move v0, v2

    #@13c
    goto/16 :goto_60

    #@13e
    :cond_13e
    move v0, v2

    #@13f
    goto/16 :goto_6a

    #@141
    :cond_141
    move v0, v2

    #@142
    goto/16 :goto_75

    #@144
    :cond_144
    move v0, v2

    #@145
    goto/16 :goto_80

    #@147
    :cond_147
    move v1, v2

    #@148
    goto/16 :goto_8c

    #@14a
    :cond_14a
    move v0, v2

    #@14b
    goto/16 :goto_97

    #@14d
    :sswitch_14d
    const-string v0, "app"

    #@14f
    goto :goto_f4

    #@150
    :sswitch_150
    const-string v0, "android"

    #@152
    goto :goto_f4

    #@153
    :catch_153
    move-exception v0

    #@154
    goto :goto_114

    #@155
    nop

    #@156
    :sswitch_data_156
    .sparse-switch
        0x0 -> :sswitch_11e
        0x4 -> :sswitch_123
        0x8 -> :sswitch_12a
    .end sparse-switch

    #@164
    :sswitch_data_164
    .sparse-switch
        0x1000000 -> :sswitch_150
        0x7f000000 -> :sswitch_14d
    .end sparse-switch
.end method


# virtual methods
.method doReallyStop(Z)V
    .registers 4

    #@0
    const/4 v1, 0x1

    #@1
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    #@3
    if-nez v0, :cond_11

    #@5
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    #@7
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    #@9
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@e
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onReallyStop()V

    #@11
    :cond_11
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xb

    #@4
    if-lt v0, v1, :cond_6

    #@6
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    const-string v0, "Local FragmentActivity "

    #@b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@11
    move-result v0

    #@12
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@19
    const-string v0, " State:"

    #@1b
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    new-instance v0, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string v1, "  "

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    const-string v1, "mCreated="

    #@36
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@39
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    #@3b
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@3e
    const-string v1, "mResumed="

    #@40
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    #@45
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@48
    const-string v1, " mStopped="

    #@4a
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4d
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    #@4f
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    #@52
    const-string v1, " mReallyStopped="

    #@54
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    #@59
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    #@5c
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f
    const-string v0, "mLoadersStarted="

    #@61
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@64
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    #@66
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@69
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@6b
    if-eqz v0, :cond_9f

    #@6d
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70
    const-string v0, "Loader Manager "

    #@72
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@75
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@77
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@7a
    move-result v0

    #@7b
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@7e
    move-result-object v0

    #@7f
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@82
    const-string v0, ":"

    #@84
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@87
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@89
    new-instance v1, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v1

    #@92
    const-string v2, "  "

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@9f
    :cond_9f
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@a1
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@a4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a7
    const-string v0, "View Hierarchy:"

    #@a9
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ac
    new-instance v0, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v0

    #@b5
    const-string v1, "  "

    #@b7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v0

    #@bb
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v0

    #@bf
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    #@c2
    move-result-object v1

    #@c3
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@c6
    move-result-object v1

    #@c7
    invoke-direct {p0, v0, p3, v1}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    #@ca
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    #@6
    if-eqz v0, :cond_b

    #@8
    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_a
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
    .registers 6

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    #@6
    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    #@9
    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@b
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@d
    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    #@13
    if-nez v0, :cond_22

    #@15
    if-eqz p3, :cond_21

    #@17
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;

    #@19
    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Z)V

    #@1c
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@1e
    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    :cond_21
    :goto_21
    return-object v0

    #@22
    :cond_22
    invoke-virtual {v0, p0}, Landroid/support/v4/app/LoaderManagerImpl;->updateActivity(Landroid/support/v4/app/FragmentActivity;)V

    #@25
    goto :goto_21
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .registers 4

    #@0
    const/4 v2, 0x1

    #@1
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@3
    if-eqz v0, :cond_8

    #@5
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z

    #@a
    const-string v0, "(root)"

    #@c
    iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    #@e
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@14
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@16
    goto :goto_7
.end method

.method invalidateSupportFragment(Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@2
    if-eqz v0, :cond_1a

    #@4
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@6
    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    #@c
    if-eqz v0, :cond_1a

    #@e
    iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    #@10
    if-nez v1, :cond_1a

    #@12
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    #@15
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@17
    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    :cond_1a
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@5
    shr-int/lit8 v0, p1, 0x10

    #@7
    if-eqz v0, :cond_6b

    #@9
    add-int/lit8 v0, v0, -0x1

    #@b
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@d
    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@f
    if-eqz v1, :cond_1d

    #@11
    if-ltz v0, :cond_1d

    #@13
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@15
    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v1

    #@1b
    if-lt v0, v1, :cond_3a

    #@1d
    :cond_1d
    const-string v0, "FragmentActivity"

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string v2, "Activity result fragment index out of range: 0x"

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    :goto_39
    return-void

    #@3a
    :cond_3a
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@3c
    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Landroid/support/v4/app/Fragment;

    #@44
    if-nez v0, :cond_63

    #@46
    const-string v0, "FragmentActivity"

    #@48
    new-instance v1, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string v2, "Activity result no fragment exists for index: 0x"

    #@4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    goto :goto_39

    #@63
    :cond_63
    const v1, 0xffff

    #@66
    and-int/2addr v1, p1

    #@67
    invoke-virtual {v0, v1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    #@6a
    goto :goto_39

    #@6b
    :cond_6b
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    #@6e
    goto :goto_39
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 2

    #@0
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackImmediate()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_b

    #@8
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    #@b
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@5
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    #@8
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@3
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mContainer:Landroid/support/v4/app/FragmentContainer;

    #@5
    invoke-virtual {v0, p0, v2, v1}, Landroid/support/v4/app/FragmentManagerImpl;->attachActivity(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V

    #@8
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    #@f
    move-result-object v0

    #@10
    if-nez v0, :cond_19

    #@12
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    #@19
    :cond_19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@1c
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    #@22
    if-eqz v0, :cond_28

    #@24
    iget-object v2, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;

    #@26
    iput-object v2, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@28
    :cond_28
    if-eqz p1, :cond_39

    #@2a
    const-string v2, "android:support:fragments"

    #@2c
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@2f
    move-result-object v2

    #@30
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@32
    if-eqz v0, :cond_3f

    #@34
    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/ArrayList;

    #@36
    :goto_36
    invoke-virtual {v3, v2, v0}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    #@39
    :cond_39
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@3b
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    #@3e
    return-void

    #@3f
    :cond_3f
    move-object v0, v1

    #@40
    goto :goto_36
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 6

    #@0
    if-nez p1, :cond_1a

    #@2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@8
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    #@f
    move-result v1

    #@10
    or-int/2addr v0, v1

    #@11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@13
    const/16 v2, 0xb

    #@15
    if-lt v1, v2, :cond_18

    #@17
    :goto_17
    return v0

    #@18
    :cond_18
    const/4 v0, 0x1

    #@19
    goto :goto_17

    #@1a
    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    #@1d
    move-result v0

    #@1e
    goto :goto_17
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 13
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    const-string v0, "fragment"

    #@6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_11

    #@c
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    :goto_10
    return-object v0

    #@11
    :cond_11
    const-string v0, "class"

    #@13
    invoke-interface {p3, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    sget-object v2, Landroid/support/v4/app/FragmentActivity$FragmentTag;->Fragment:[I

    #@19
    invoke-virtual {p2, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1c
    move-result-object v4

    #@1d
    if-nez v0, :cond_23

    #@1f
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    :cond_23
    invoke-virtual {v4, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@26
    move-result v2

    #@27
    const/4 v5, 0x2

    #@28
    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    #@2f
    invoke-static {p0, v0}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z

    #@32
    move-result v4

    #@33
    if-nez v4, :cond_3a

    #@35
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@38
    move-result-object v0

    #@39
    goto :goto_10

    #@3a
    :cond_3a
    if-eq v2, v6, :cond_42

    #@3c
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@3e
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    #@41
    move-result-object v1

    #@42
    :cond_42
    if-nez v1, :cond_4c

    #@44
    if-eqz v5, :cond_4c

    #@46
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@48
    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    #@4b
    move-result-object v1

    #@4c
    :cond_4c
    if-nez v1, :cond_54

    #@4e
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@50
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    #@53
    move-result-object v1

    #@54
    :cond_54
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    #@56
    if-eqz v4, :cond_88

    #@58
    const-string v4, "FragmentActivity"

    #@5a
    new-instance v6, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string v7, "onCreateView: id=0x"

    #@61
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@68
    move-result-object v7

    #@69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    const-string v7, " fname="

    #@6f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v6

    #@77
    const-string v7, " existing="

    #@79
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v6

    #@7d
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v6

    #@81
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    :cond_88
    if-nez v1, :cond_cf

    #@8a
    invoke-static {p0, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    #@8d
    move-result-object v4

    #@8e
    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    #@90
    if-eqz v2, :cond_cd

    #@92
    move v1, v2

    #@93
    :goto_93
    iput v1, v4, Landroid/support/v4/app/Fragment;->mFragmentId:I

    #@95
    iput v3, v4, Landroid/support/v4/app/Fragment;->mContainerId:I

    #@97
    iput-object v5, v4, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    #@99
    iput-boolean v8, v4, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@9b
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@9d
    iput-object v1, v4, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    #@9f
    iget-object v1, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@a1
    invoke-virtual {v4, p0, p3, v1}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@a4
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@a6
    invoke-virtual {v1, v4, v8}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    #@a9
    move-object v1, v4

    #@aa
    :goto_aa
    iget-object v3, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@ac
    if-nez v3, :cond_12b

    #@ae
    new-instance v1, Ljava/lang/IllegalStateException;

    #@b0
    new-instance v2, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string v3, "Fragment "

    #@b7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v2

    #@bb
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v0

    #@bf
    const-string v2, " did not create a view."

    #@c1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v0

    #@c5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v0

    #@c9
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@cc
    throw v1

    #@cd
    :cond_cd
    move v1, v3

    #@ce
    goto :goto_93

    #@cf
    :cond_cf
    iget-boolean v4, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@d1
    if-eqz v4, :cond_11a

    #@d3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d5
    new-instance v4, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@dd
    move-result-object v6

    #@de
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v4

    #@e2
    const-string v6, ": Duplicate id 0x"

    #@e4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v4

    #@e8
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@eb
    move-result-object v2

    #@ec
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v2

    #@f0
    const-string v4, ", tag "

    #@f2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v2

    #@f6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v2

    #@fa
    const-string v4, ", or parent id 0x"

    #@fc
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v2

    #@100
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@103
    move-result-object v3

    #@104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v2

    #@108
    const-string v3, " with another fragment for "

    #@10a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v2

    #@10e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v0

    #@112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@115
    move-result-object v0

    #@116
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@119
    throw v1

    #@11a
    :cond_11a
    iput-boolean v8, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    #@11c
    iget-boolean v3, v1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    #@11e
    if-nez v3, :cond_125

    #@120
    iget-object v3, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    #@122
    invoke-virtual {v1, p0, p3, v3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@125
    :cond_125
    iget-object v3, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@127
    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    #@12a
    goto :goto_aa

    #@12b
    :cond_12b
    if-eqz v2, :cond_132

    #@12d
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@12f
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    #@132
    :cond_132
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@134
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    #@137
    move-result-object v0

    #@138
    if-nez v0, :cond_13f

    #@13a
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@13c
    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    #@13f
    :cond_13f
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    #@141
    goto/16 :goto_10
.end method

.method protected onDestroy()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    #@3
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    #@7
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    #@c
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@e
    if-eqz v0, :cond_15

    #@10
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@12
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    #@15
    :cond_15
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/4 v1, 0x5

    #@3
    if-ge v0, v1, :cond_13

    #@5
    const/4 v0, 0x4

    #@6
    if-ne p1, v0, :cond_13

    #@8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_13

    #@e
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    #@11
    const/4 v0, 0x1

    #@12
    :goto_12
    return v0

    #@13
    :cond_13
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@16
    move-result v0

    #@17
    goto :goto_12
.end method

.method public onLowMemory()V
    .registers 2

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@5
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V

    #@8
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    #@0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    sparse-switch p1, :sswitch_data_1c

    #@b
    const/4 v0, 0x0

    #@c
    goto :goto_7

    #@d
    :sswitch_d
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@f
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    #@12
    move-result v0

    #@13
    goto :goto_7

    #@14
    :sswitch_14
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@16
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    #@19
    move-result v0

    #@1a
    goto :goto_7

    #@1b
    nop

    #@1c
    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x6 -> :sswitch_14
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@5
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@8
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    #@0
    packed-switch p1, :pswitch_data_e

    #@3
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    #@6
    return-void

    #@7
    :pswitch_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@9
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    #@c
    goto :goto_3

    #@d
    nop

    #@e
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    #@0
    const/4 v1, 0x2

    #@1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    #@4
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    #@7
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_17

    #@f
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@14
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    #@17
    :cond_17
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@19
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V

    #@1c
    return-void
.end method

.method protected onPostResume()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@5
    const/4 v1, 0x2

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@9
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    #@c
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@e
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    #@11
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 6

    #@0
    if-nez p1, :cond_1d

    #@2
    if-eqz p3, :cond_1d

    #@4
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    #@6
    if-eqz v0, :cond_11

    #@8
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    #@b
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    #@e
    invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    #@11
    :cond_11
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    #@14
    move-result v0

    #@15
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@17
    invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    #@1a
    move-result v1

    #@1b
    or-int/2addr v0, v1

    #@1c
    :goto_1c
    return v0

    #@1d
    :cond_1d
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    #@20
    move-result v0

    #@21
    goto :goto_1c
.end method

.method onReallyStop()V
    .registers 2

    #@0
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    #@2
    if-eqz v0, :cond_14

    #@4
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    #@7
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@9
    if-eqz v0, :cond_14

    #@b
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    #@d
    if-nez v0, :cond_1a

    #@f
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@11
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    #@14
    :cond_14
    :goto_14
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@16
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V

    #@19
    return-void

    #@1a
    :cond_1a
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@1c
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    #@1f
    goto :goto_14
.end method

.method protected onResume()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@5
    const/4 v1, 0x2

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@9
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    #@c
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@e
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    #@11
    return-void
.end method

.method protected onResumeFragments()V
    .registers 2

    #@0
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    #@5
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 11

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    #@5
    if-eqz v0, :cond_a

    #@7
    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    #@a
    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    #@d
    move-result-object v5

    #@e
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@10
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->retainNonConfig()Ljava/util/ArrayList;

    #@13
    move-result-object v6

    #@14
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@16
    if-eqz v0, :cond_4b

    #@18
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@1a
    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    #@1d
    move-result v7

    #@1e
    new-array v8, v7, [Landroid/support/v4/app/LoaderManagerImpl;

    #@20
    add-int/lit8 v0, v7, -0x1

    #@22
    move v4, v0

    #@23
    :goto_23
    if-ltz v4, :cond_33

    #@25
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@27
    invoke-virtual {v0, v4}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    #@2d
    aput-object v0, v8, v4

    #@2f
    add-int/lit8 v0, v4, -0x1

    #@31
    move v4, v0

    #@32
    goto :goto_23

    #@33
    :cond_33
    move v0, v3

    #@34
    :goto_34
    if-ge v3, v7, :cond_4c

    #@36
    aget-object v4, v8, v3

    #@38
    iget-boolean v9, v4, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    #@3a
    if-eqz v9, :cond_40

    #@3c
    move v0, v1

    #@3d
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    #@3f
    goto :goto_34

    #@40
    :cond_40
    invoke-virtual {v4}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    #@43
    iget-object v9, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@45
    iget-object v4, v4, Landroid/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    #@47
    invoke-virtual {v9, v4}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    goto :goto_3d

    #@4b
    :cond_4b
    move v0, v3

    #@4c
    :cond_4c
    if-nez v6, :cond_54

    #@4e
    if-nez v0, :cond_54

    #@50
    if-nez v5, :cond_54

    #@52
    move-object v0, v2

    #@53
    :goto_53
    return-object v0

    #@54
    :cond_54
    new-instance v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    #@56
    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    #@59
    iput-object v2, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->activity:Ljava/lang/Object;

    #@5b
    iput-object v5, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    #@5d
    iput-object v2, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->children:Landroid/support/v4/util/SimpleArrayMap;

    #@5f
    iput-object v6, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/ArrayList;

    #@61
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@63
    iput-object v1, v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;

    #@65
    goto :goto_53
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@3
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@5
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    #@8
    move-result-object v0

    #@9
    if-eqz v0, :cond_10

    #@b
    const-string v1, "android:support:fragments"

    #@d
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@10
    :cond_10
    return-void
.end method

.method protected onStart()V
    .registers 6

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    #@5
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    #@7
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    #@9
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    #@e
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    #@10
    if-nez v0, :cond_19

    #@12
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    #@14
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@16
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    #@19
    :cond_19
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@1b
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    #@1e
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@20
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    #@23
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    #@25
    if-nez v0, :cond_34

    #@27
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    #@29
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@2b
    if-eqz v0, :cond_58

    #@2d
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@2f
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    #@32
    :cond_32
    :goto_32
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z

    #@34
    :cond_34
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@36
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    #@39
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@3b
    if-eqz v0, :cond_84

    #@3d
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@3f
    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    #@42
    move-result v3

    #@43
    new-array v4, v3, [Landroid/support/v4/app/LoaderManagerImpl;

    #@45
    add-int/lit8 v0, v3, -0x1

    #@47
    move v2, v0

    #@48
    :goto_48
    if-ltz v2, :cond_76

    #@4a
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    #@4c
    invoke-virtual {v0, v2}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl;

    #@52
    aput-object v0, v4, v2

    #@54
    add-int/lit8 v0, v2, -0x1

    #@56
    move v2, v0

    #@57
    goto :goto_48

    #@58
    :cond_58
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z

    #@5a
    if-nez v0, :cond_32

    #@5c
    const-string v0, "(root)"

    #@5e
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z

    #@60
    invoke-virtual {p0, v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    #@63
    move-result-object v0

    #@64
    iput-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@66
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@68
    if-eqz v0, :cond_32

    #@6a
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@6c
    iget-boolean v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    #@6e
    if-nez v0, :cond_32

    #@70
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    #@72
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    #@75
    goto :goto_32

    #@76
    :cond_76
    move v0, v1

    #@77
    :goto_77
    if-ge v0, v3, :cond_84

    #@79
    aget-object v1, v4, v0

    #@7b
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->finishRetain()V

    #@7e
    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    #@81
    add-int/lit8 v0, v0, 0x1

    #@83
    goto :goto_77

    #@84
    :cond_84
    return-void
.end method

.method protected onStop()V
    .registers 3

    #@0
    const/4 v1, 0x1

    #@1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    #@4
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    #@6
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@b
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    #@d
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V

    #@10
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p2, v0, :cond_10

    #@3
    const/high16 v0, -0x10000

    #@5
    and-int/2addr v0, p2

    #@6
    if-eqz v0, :cond_10

    #@8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string v1, "Can only use lower 16 bits for requestCode"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@13
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 6

    #@0
    const/4 v0, -0x1

    #@1
    if-ne p3, v0, :cond_7

    #@3
    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@6
    :goto_6
    return-void

    #@7
    :cond_7
    const/high16 v0, -0x10000

    #@9
    and-int/2addr v0, p3

    #@a
    if-eqz v0, :cond_14

    #@c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string v1, "Can only use lower 16 bits for requestCode"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    :cond_14
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    #@16
    add-int/lit8 v0, v0, 0x1

    #@18
    shl-int/lit8 v0, v0, 0x10

    #@1a
    const v1, 0xffff

    #@1d
    and-int/2addr v1, p3

    #@1e
    add-int/2addr v0, v1

    #@1f
    invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    #@22
    goto :goto_6
.end method

.method public supportInvalidateOptionsMenu()V
    .registers 3

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xb

    #@4
    if-lt v0, v1, :cond_a

    #@6
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    #@d
    goto :goto_9
.end method
