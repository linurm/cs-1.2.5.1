.class public Lcom/apportable/net/Reachability;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static final AUTHENTICATING:I = 0x1

.field public static final AVAILABLE:I = 0x10

.field public static final BLOCKED:I = 0x2

.field public static final CAPTIVE_PORTAL_CHECK:I = 0x3

.field public static final CONNECTED:I = 0x4

.field public static final CONNECTING:I = 0x5

.field public static final DISCONNECTED:I = 0x6

.field public static final DISCONNECTING:I = 0x7

.field public static final FAILED:I = 0x8

.field public static final FAILOVER:I = 0x20

.field public static final IDLE:I = 0x9

.field public static final OBTAINING_IPADDR:I = 0xa

.field public static final ROAMING:I = 0x40

.field public static final SCANNING:I = 0xb

.field public static final STATE_MASK:I = 0xf0

.field public static final STATUS_MASK:I = 0xf

.field public static final SUSPENDED:I = 0xc

.field public static final VERIFYING_POOR_LINK:I = 0xd


# instance fields
.field private mContext:Landroid/content/Context;

.field private mState:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    const/16 v0, 0x14

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Lcom/apportable/net/Reachability;->mState:[I

    #@9
    iput-object p1, p0, Lcom/apportable/net/Reachability;->mContext:Landroid/content/Context;

    #@b
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/net/Reachability;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/net/Reachability;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/net/Reachability;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/apportable/net/Reachability;->didStart()V

    #@3
    return-void
.end method

.method private native didStart()V
.end method

.method private getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 3

    #@0
    const-string v0, "connectivity"

    #@2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/net/ConnectivityManager;

    #@8
    return-object v0
.end method

.method private getState(Landroid/net/NetworkInfo;)I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_d

    #@7
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_f

    #@d
    :cond_d
    const/16 v0, 0x10

    #@f
    :cond_f
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_17

    #@15
    or-int/lit8 v0, v0, 0x20

    #@17
    :cond_17
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1a} :catch_8e

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1f

    #@1d
    or-int/lit8 v0, v0, 0x40

    #@1f
    :cond_1f
    :goto_1f
    :try_start_1f
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@22
    move-result-object v1

    #@23
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_25} :catch_90

    #@25
    if-ne v1, v2, :cond_29

    #@27
    or-int/lit8 v0, v0, 0x1

    #@29
    :cond_29
    :goto_29
    :try_start_29
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@2c
    move-result-object v1

    #@2d
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_2f} :catch_92

    #@2f
    if-ne v1, v2, :cond_33

    #@31
    or-int/lit8 v0, v0, 0x4

    #@33
    :cond_33
    :goto_33
    :try_start_33
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@36
    move-result-object v1

    #@37
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_39} :catch_94

    #@39
    if-ne v1, v2, :cond_3d

    #@3b
    or-int/lit8 v0, v0, 0x5

    #@3d
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@40
    move-result-object v1

    #@41
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_43} :catch_96

    #@43
    if-ne v1, v2, :cond_47

    #@45
    or-int/lit8 v0, v0, 0x6

    #@47
    :cond_47
    :goto_47
    :try_start_47
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@4a
    move-result-object v1

    #@4b
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_4d} :catch_98

    #@4d
    if-ne v1, v2, :cond_51

    #@4f
    or-int/lit8 v0, v0, 0x7

    #@51
    :cond_51
    :goto_51
    :try_start_51
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@54
    move-result-object v1

    #@55
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_57} :catch_9a

    #@57
    if-ne v1, v2, :cond_5b

    #@59
    or-int/lit8 v0, v0, 0x8

    #@5b
    :cond_5b
    :goto_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@5e
    move-result-object v1

    #@5f
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_61} :catch_9c

    #@61
    if-ne v1, v2, :cond_65

    #@63
    or-int/lit8 v0, v0, 0x9

    #@65
    :cond_65
    :goto_65
    :try_start_65
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@68
    move-result-object v1

    #@69
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6b} :catch_9e

    #@6b
    if-ne v1, v2, :cond_6f

    #@6d
    or-int/lit8 v0, v0, 0xa

    #@6f
    :cond_6f
    :goto_6f
    :try_start_6f
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@72
    move-result-object v1

    #@73
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_75} :catch_a0

    #@75
    if-ne v1, v2, :cond_79

    #@77
    or-int/lit8 v0, v0, 0xb

    #@79
    :cond_79
    :goto_79
    :try_start_79
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@7c
    move-result-object v1

    #@7d
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_7f} :catch_a2

    #@7f
    if-ne v1, v2, :cond_83

    #@81
    or-int/lit8 v0, v0, 0xc

    #@83
    :cond_83
    :goto_83
    :try_start_83
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@86
    move-result-object v1

    #@87
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_89} :catch_a4

    #@89
    if-ne v1, v2, :cond_8d

    #@8b
    or-int/lit8 v0, v0, 0xd

    #@8d
    :cond_8d
    :goto_8d
    return v0

    #@8e
    :catch_8e
    move-exception v1

    #@8f
    goto :goto_1f

    #@90
    :catch_90
    move-exception v1

    #@91
    goto :goto_29

    #@92
    :catch_92
    move-exception v1

    #@93
    goto :goto_33

    #@94
    :catch_94
    move-exception v1

    #@95
    goto :goto_3d

    #@96
    :catch_96
    move-exception v1

    #@97
    goto :goto_47

    #@98
    :catch_98
    move-exception v1

    #@99
    goto :goto_51

    #@9a
    :catch_9a
    move-exception v1

    #@9b
    goto :goto_5b

    #@9c
    :catch_9c
    move-exception v1

    #@9d
    goto :goto_65

    #@9e
    :catch_9e
    move-exception v1

    #@9f
    goto :goto_6f

    #@a0
    :catch_a0
    move-exception v1

    #@a1
    goto :goto_79

    #@a2
    :catch_a2
    move-exception v1

    #@a3
    goto :goto_83

    #@a4
    :catch_a4
    move-exception v1

    #@a5
    goto :goto_8d
.end method

.method private native stateChangeFinished()V
.end method

.method private native stateChanged(III)V
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    #@0
    invoke-direct {p0, p1}, Lcom/apportable/net/Reachability;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    #@7
    move-result-object v1

    #@8
    array-length v2, v1

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    if-ge v0, v2, :cond_32

    #@c
    aget-object v3, v1, v0

    #@e
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    #@11
    move-result v4

    #@12
    invoke-direct {p0, v3}, Lcom/apportable/net/Reachability;->getState(Landroid/net/NetworkInfo;)I

    #@15
    move-result v3

    #@16
    const/4 v5, -0x1

    #@17
    if-eq v3, v5, :cond_1d

    #@19
    const/16 v5, 0x14

    #@1b
    if-lt v4, v5, :cond_20

    #@1d
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_a

    #@20
    :cond_20
    iget-object v5, p0, Lcom/apportable/net/Reachability;->mState:[I

    #@22
    aget v5, v5, v4

    #@24
    if-eq v5, v3, :cond_1d

    #@26
    iget-object v5, p0, Lcom/apportable/net/Reachability;->mState:[I

    #@28
    aget v5, v5, v4

    #@2a
    invoke-direct {p0, v4, v5, v3}, Lcom/apportable/net/Reachability;->stateChanged(III)V

    #@2d
    iget-object v5, p0, Lcom/apportable/net/Reachability;->mState:[I

    #@2f
    aput v3, v5, v4

    #@31
    goto :goto_1d

    #@32
    :cond_32
    invoke-direct {p0}, Lcom/apportable/net/Reachability;->stateChangeFinished()V

    #@35
    return-void
.end method

.method public start()V
    .registers 2

    #@0
    new-instance v0, Lcom/apportable/net/Reachability$1;

    #@2
    invoke-direct {v0, p0}, Lcom/apportable/net/Reachability$1;-><init>(Lcom/apportable/net/Reachability;)V

    #@5
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method
