.class public Landroid/support/v4/content/LocalBroadcastManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;,
        Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Landroid/support/v4/content/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    #@7
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@a
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@11
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    #@18
    iput-object p1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    #@1a
    new-instance v0, Landroid/support/v4/content/LocalBroadcastManager$1;

    #@1c
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager$1;-><init>(Landroid/support/v4/content/LocalBroadcastManager;Landroid/os/Looper;)V

    #@23
    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    #@25
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/content/LocalBroadcastManager;)V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    #@3
    return-void
.end method

.method private executePendingBroadcasts()V
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    :cond_1
    iget-object v1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@3
    monitor-enter v1

    #@4
    :try_start_4
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    if-gtz v0, :cond_e

    #@c
    monitor-exit v1

    #@d
    return-void

    #@e
    :cond_e
    new-array v4, v0, [Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    #@10
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@15
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_3f

    #@1b
    move v3, v2

    #@1c
    :goto_1c
    array-length v0, v4

    #@1d
    if-ge v3, v0, :cond_1

    #@1f
    aget-object v5, v4, v3

    #@21
    move v1, v2

    #@22
    :goto_22
    iget-object v0, v5, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v0

    #@28
    if-ge v1, v0, :cond_42

    #@2a
    iget-object v0, v5, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    #@32
    iget-object v0, v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    #@34
    iget-object v6, p0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    #@36
    iget-object v7, v5, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    #@38
    invoke-virtual {v0, v6, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    #@3b
    add-int/lit8 v0, v1, 0x1

    #@3d
    move v1, v0

    #@3e
    goto :goto_22

    #@3f
    :catchall_3f
    move-exception v0

    #@40
    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    #@41
    throw v0

    #@42
    :cond_42
    add-int/lit8 v0, v3, 0x1

    #@44
    move v3, v0

    #@45
    goto :goto_1c
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    .registers 4

    #@0
    sget-object v1, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    #@5
    if-nez v0, :cond_12

    #@7
    new-instance v0, Landroid/support/v4/content/LocalBroadcastManager;

    #@9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    #@10
    sput-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    #@12
    :cond_12
    sget-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    :catchall_16
    move-exception v0

    #@17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    #@18
    throw v0
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 9

    #@0
    iget-object v2, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@2
    monitor-enter v2

    #@3
    :try_start_3
    new-instance v3, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    #@5
    invoke-direct {v3, p2, p1}, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    #@8
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/ArrayList;

    #@10
    if-nez v0, :cond_1d

    #@12
    new-instance v0, Ljava/util/ArrayList;

    #@14
    const/4 v1, 0x1

    #@15
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    iget-object v1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@1a
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    :cond_1d
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    const/4 v0, 0x0

    #@21
    move v1, v0

    #@22
    :goto_22
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    #@25
    move-result v0

    #@26
    if-ge v1, v0, :cond_48

    #@28
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@2e
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/util/ArrayList;

    #@34
    if-nez v0, :cond_41

    #@36
    new-instance v0, Ljava/util/ArrayList;

    #@38
    const/4 v5, 0x1

    #@39
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@3c
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@3e
    invoke-virtual {v5, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    :cond_41
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@44
    add-int/lit8 v0, v1, 0x1

    #@46
    move v1, v0

    #@47
    goto :goto_22

    #@48
    :cond_48
    monitor-exit v2

    #@49
    return-void

    #@4a
    :catchall_4a
    move-exception v0

    #@4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    #@4c
    throw v0
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .registers 18

    #@0
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@4
    monitor-enter v13

    #@5
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    move-object/from16 v0, p0

    #@b
    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    #@d
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@10
    move-result-object v1

    #@11
    move-object/from16 v0, p1

    #@13
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@1a
    move-result-object v5

    #@1b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@22
    move-result-object v6

    #@23
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    #@26
    move-result v1

    #@27
    and-int/lit8 v1, v1, 0x8

    #@29
    if-eqz v1, :cond_c9

    #@2b
    const/4 v1, 0x1

    #@2c
    move v12, v1

    #@2d
    :goto_2d
    if-eqz v12, :cond_5d

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string v7, "LocalBroadcastManager"

    #@36
    const-string v8, "Resolving type "

    #@38
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    const-string v8, " scheme "

    #@42
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    const-string v8, " of intent "

    #@4c
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    move-object/from16 v0, p1

    #@52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    :cond_5d
    move-object/from16 v0, p0

    #@5f
    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@61
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@64
    move-result-object v7

    #@65
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    move-result-object v1

    #@69
    move-object v0, v1

    #@6a
    check-cast v0, Ljava/util/ArrayList;

    #@6c
    move-object v8, v0

    #@6d
    if-eqz v8, :cond_16e

    #@6f
    if-eqz v12, :cond_89

    #@71
    new-instance v1, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string v7, "LocalBroadcastManager"

    #@78
    const-string v9, "Action list: "

    #@7a
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v1

    #@7e
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v1

    #@82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v1

    #@86
    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    :cond_89
    const/4 v10, 0x0

    #@8a
    const/4 v1, 0x0

    #@8b
    move v11, v1

    #@8c
    :goto_8c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@8f
    move-result v1

    #@90
    if-ge v11, v1, :cond_133

    #@92
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@95
    move-result-object v1

    #@96
    move-object v0, v1

    #@97
    check-cast v0, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    #@99
    move-object v9, v0

    #@9a
    if-eqz v12, :cond_b6

    #@9c
    new-instance v1, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string v7, "LocalBroadcastManager"

    #@a3
    const-string v14, "Matching against filter "

    #@a5
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    iget-object v14, v9, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    #@ab
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v1

    #@af
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b2
    move-result-object v1

    #@b3
    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@b6
    :cond_b6
    iget-boolean v1, v9, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    #@b8
    if-eqz v1, :cond_cd

    #@ba
    if-eqz v12, :cond_171

    #@bc
    const-string v1, "LocalBroadcastManager"

    #@be
    const-string v7, "  Filter\'s target already added"

    #@c0
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c3
    move-object v1, v10

    #@c4
    :goto_c4
    add-int/lit8 v7, v11, 0x1

    #@c6
    move-object v10, v1

    #@c7
    move v11, v7

    #@c8
    goto :goto_8c

    #@c9
    :cond_c9
    const/4 v1, 0x0

    #@ca
    move v12, v1

    #@cb
    goto/16 :goto_2d

    #@cd
    :cond_cd
    iget-object v1, v9, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    #@cf
    const-string v7, "LocalBroadcastManager"

    #@d1
    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    #@d4
    move-result v1

    #@d5
    if-ltz v1, :cond_106

    #@d7
    if-eqz v12, :cond_f5

    #@d9
    new-instance v7, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string v14, "LocalBroadcastManager"

    #@e0
    const-string v15, "  Filter matched!  match=0x"

    #@e2
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v7

    #@e6
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@e9
    move-result-object v1

    #@ea
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v1

    #@ee
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v1

    #@f2
    invoke-static {v14, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@f5
    :cond_f5
    if-nez v10, :cond_174

    #@f7
    new-instance v1, Ljava/util/ArrayList;

    #@f9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@fc
    :goto_fc
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ff
    const/4 v7, 0x1

    #@100
    iput-boolean v7, v9, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    #@102
    goto :goto_c4

    #@103
    :catchall_103
    move-exception v1

    #@104
    monitor-exit v13
    :try_end_105
    .catchall {:try_start_5 .. :try_end_105} :catchall_103

    #@105
    throw v1

    #@106
    :cond_106
    if-eqz v12, :cond_171

    #@108
    packed-switch v1, :pswitch_data_176

    #@10b
    const-string v1, "unknown reason"

    #@10d
    :goto_10d
    :try_start_10d
    new-instance v7, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    const-string v9, "LocalBroadcastManager"

    #@114
    const-string v14, "  Filter did not match: "

    #@116
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v7

    #@11a
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v1

    #@11e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v1

    #@122
    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_125
    .catchall {:try_start_10d .. :try_end_125} :catchall_103

    #@125
    move-object v1, v10

    #@126
    goto :goto_c4

    #@127
    :pswitch_127
    const-string v1, "action"

    #@129
    goto :goto_10d

    #@12a
    :pswitch_12a
    const-string v1, "category"

    #@12c
    goto :goto_10d

    #@12d
    :pswitch_12d
    const-string v1, "data"

    #@12f
    goto :goto_10d

    #@130
    :pswitch_130
    const-string v1, "type"

    #@132
    goto :goto_10d

    #@133
    :cond_133
    if-eqz v10, :cond_16e

    #@135
    const/4 v1, 0x0

    #@136
    move v2, v1

    #@137
    :goto_137
    :try_start_137
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@13a
    move-result v1

    #@13b
    if-ge v2, v1, :cond_14a

    #@13d
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@140
    move-result-object v1

    #@141
    check-cast v1, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    #@143
    const/4 v3, 0x0

    #@144
    iput-boolean v3, v1, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    #@146
    add-int/lit8 v1, v2, 0x1

    #@148
    move v2, v1

    #@149
    goto :goto_137

    #@14a
    :cond_14a
    move-object/from16 v0, p0

    #@14c
    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    #@14e
    new-instance v2, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    #@150
    move-object/from16 v0, p1

    #@152
    invoke-direct {v2, v0, v10}, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    #@155
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@158
    move-object/from16 v0, p0

    #@15a
    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    #@15c
    const/4 v2, 0x1

    #@15d
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    #@160
    move-result v1

    #@161
    if-nez v1, :cond_16b

    #@163
    move-object/from16 v0, p0

    #@165
    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    #@167
    const/4 v2, 0x1

    #@168
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@16b
    :cond_16b
    const/4 v1, 0x1

    #@16c
    monitor-exit v13

    #@16d
    :goto_16d
    return v1

    #@16e
    :cond_16e
    monitor-exit v13
    :try_end_16f
    .catchall {:try_start_137 .. :try_end_16f} :catchall_103

    #@16f
    const/4 v1, 0x0

    #@170
    goto :goto_16d

    #@171
    :cond_171
    move-object v1, v10

    #@172
    goto/16 :goto_c4

    #@174
    :cond_174
    move-object v1, v10

    #@175
    goto :goto_fc

    #@176
    :pswitch_data_176
    .packed-switch -0x4
        :pswitch_12a
        :pswitch_127
        :pswitch_12d
        :pswitch_130
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    #@9
    :cond_9
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 12

    #@0
    const/4 v5, 0x0

    #@1
    iget-object v8, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@3
    monitor-enter v8

    #@4
    :try_start_4
    iget-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/ArrayList;

    #@c
    if-nez v0, :cond_10

    #@e
    monitor-exit v8

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    move v7, v5

    #@11
    :goto_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v1

    #@15
    if-ge v7, v1, :cond_5e

    #@17
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/content/IntentFilter;

    #@1d
    move v6, v5

    #@1e
    :goto_1e
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    #@21
    move-result v2

    #@22
    if-ge v6, v2, :cond_5a

    #@24
    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    #@27
    move-result-object v9

    #@28
    iget-object v2, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@2a
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Ljava/util/ArrayList;

    #@30
    if-eqz v2, :cond_56

    #@32
    move v4, v5

    #@33
    :goto_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v3

    #@37
    if-ge v4, v3, :cond_4b

    #@39
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v3

    #@3d
    check-cast v3, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    #@3f
    iget-object v3, v3, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    #@41
    if-ne v3, p1, :cond_63

    #@43
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@46
    add-int/lit8 v3, v4, -0x1

    #@48
    :goto_48
    add-int/lit8 v4, v3, 0x1

    #@4a
    goto :goto_33

    #@4b
    :cond_4b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@4e
    move-result v2

    #@4f
    if-gtz v2, :cond_56

    #@51
    iget-object v2, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    #@53
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    :cond_56
    add-int/lit8 v2, v6, 0x1

    #@58
    move v6, v2

    #@59
    goto :goto_1e

    #@5a
    :cond_5a
    add-int/lit8 v1, v7, 0x1

    #@5c
    move v7, v1

    #@5d
    goto :goto_11

    #@5e
    :cond_5e
    monitor-exit v8

    #@5f
    goto :goto_f

    #@60
    :catchall_60
    move-exception v0

    #@61
    monitor-exit v8
    :try_end_62
    .catchall {:try_start_4 .. :try_end_62} :catchall_60

    #@62
    throw v0

    #@63
    :cond_63
    move v3, v4

    #@64
    goto :goto_48
.end method
