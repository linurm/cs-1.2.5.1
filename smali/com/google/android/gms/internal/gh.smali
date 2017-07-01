.class public final Lcom/google/android/gms/internal/gh;
.super Lcom/google/android/gms/internal/hb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gh$a;,
        Lcom/google/android/gms/internal/gh$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/internal/gl;",
        ">;"
    }
.end annotation


# static fields
.field private static final BG:Lcom/google/android/gms/internal/gn;

.field private static final Ca:Ljava/lang/Object;

.field private static final Cb:Ljava/lang/Object;


# instance fields
.field private AP:D

.field private AQ:Z

.field private final Ae:Lcom/google/android/gms/cast/Cast$Listener;

.field private BH:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private final BI:Lcom/google/android/gms/cast/CastDevice;

.field private final BJ:Lcom/google/android/gms/internal/gm;

.field private final BK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final BL:J

.field private BM:Ljava/lang/String;

.field private BN:Z

.field private BO:Z

.field private BP:Z

.field private BQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private BR:I

.field private final BS:Ljava/util/concurrent/atomic/AtomicLong;

.field private BT:Ljava/lang/String;

.field private BU:Ljava/lang/String;

.field private BV:Landroid/os/Bundle;

.field private BW:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;>;"
        }
    .end annotation
.end field

.field private BX:Lcom/google/android/gms/internal/gh$b;

.field private BY:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private BZ:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/internal/gn;

    #@2
    const-string v1, "CastClientImpl"

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gn;-><init>(Ljava/lang/String;)V

    #@7
    sput-object v0, Lcom/google/android/gms/internal/gh;->BG:Lcom/google/android/gms/internal/gn;

    #@9
    new-instance v0, Ljava/lang/Object;

    #@b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@e
    sput-object v0, Lcom/google/android/gms/internal/gh;->Ca:Ljava/lang/Object;

    #@10
    new-instance v0, Ljava/lang/Object;

    #@12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@15
    sput-object v0, Lcom/google/android/gms/internal/gh;->Cb:Ljava/lang/Object;

    #@17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 15

    #@0
    const/4 v5, 0x0

    #@1
    check-cast v5, [Ljava/lang/String;

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move-object v3, p7

    #@7
    move-object v4, p8

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    #@b
    iput-object p3, p0, Lcom/google/android/gms/internal/gh;->BI:Lcom/google/android/gms/cast/CastDevice;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/internal/gh;->Ae:Lcom/google/android/gms/cast/Cast$Listener;

    #@f
    iput-wide p4, p0, Lcom/google/android/gms/internal/gh;->BL:J

    #@11
    new-instance v0, Landroid/os/Handler;

    #@13
    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@16
    iput-object v0, p0, Lcom/google/android/gms/internal/gh;->mHandler:Landroid/os/Handler;

    #@18
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/internal/gh;->BK:Ljava/util/Map;

    #@1f
    const/4 v0, 0x0

    #@20
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gh;->BP:Z

    #@22
    const/4 v0, -0x1

    #@23
    iput v0, p0, Lcom/google/android/gms/internal/gh;->BR:I

    #@25
    const/4 v0, 0x0

    #@26
    iput-object v0, p0, Lcom/google/android/gms/internal/gh;->BH:Lcom/google/android/gms/cast/ApplicationMetadata;

    #@28
    const/4 v0, 0x0

    #@29
    iput-object v0, p0, Lcom/google/android/gms/internal/gh;->BM:Ljava/lang/String;

    #@2b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2d
    const/4 v1, 0x0

    #@2e
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@31
    iput-object v0, p0, Lcom/google/android/gms/internal/gh;->BQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@33
    const-wide/16 v0, 0x0

    #@35
    iput-wide v0, p0, Lcom/google/android/gms/internal/gh;->AP:D

    #@37
    const/4 v0, 0x0

    #@38
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gh;->AQ:Z

    #@3a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    #@3c
    const-wide/16 v2, 0x0

    #@3e
    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    #@41
    iput-object v0, p0, Lcom/google/android/gms/internal/gh;->BS:Ljava/util/concurrent/atomic/AtomicLong;

    #@43
    new-instance v0, Ljava/util/HashMap;

    #@45
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@48
    iput-object v0, p0, Lcom/google/android/gms/internal/gh;->BW:Ljava/util/Map;

    #@4a
    new-instance v0, Lcom/google/android/gms/internal/gh$b;

    #@4c
    const/4 v1, 0x0

    #@4d
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/gh$b;-><init>(Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/internal/gh$1;)V

    #@50
    iput-object v0, p0, Lcom/google/android/gms/internal/gh;->BX:Lcom/google/android/gms/internal/gh$b;

    #@52
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BX:Lcom/google/android/gms/internal/gh$b;

    #@54
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gh;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    #@57
    new-instance v0, Lcom/google/android/gms/internal/gh$1;

    #@59
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gh$1;-><init>(Lcom/google/android/gms/internal/gh;)V

    #@5c
    iput-object v0, p0, Lcom/google/android/gms/internal/gh;->BJ:Lcom/google/android/gms/internal/gm;

    #@5e
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/gh;->BH:Lcom/google/android/gms/cast/ApplicationMetadata;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$d;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/gh;->BY:Lcom/google/android/gms/common/api/a$d;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gh;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/gh;->BT:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method private a(Lcom/google/android/gms/internal/ge;)V
    .registers 9

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ge;->ec()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iget-object v3, p0, Lcom/google/android/gms/internal/gh;->BM:Ljava/lang/String;

    #@8
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-nez v3, :cond_3b

    #@e
    iput-object v0, p0, Lcom/google/android/gms/internal/gh;->BM:Ljava/lang/String;

    #@10
    move v0, v1

    #@11
    :goto_11
    sget-object v3, Lcom/google/android/gms/internal/gh;->BG:Lcom/google/android/gms/internal/gn;

    #@13
    const-string v4, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    #@15
    const/4 v5, 0x2

    #@16
    new-array v5, v5, [Ljava/lang/Object;

    #@18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1b
    move-result-object v6

    #@1c
    aput-object v6, v5, v2

    #@1e
    iget-boolean v6, p0, Lcom/google/android/gms/internal/gh;->BN:Z

    #@20
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@23
    move-result-object v6

    #@24
    aput-object v6, v5, v1

    #@26
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@29
    iget-object v1, p0, Lcom/google/android/gms/internal/gh;->Ae:Lcom/google/android/gms/cast/Cast$Listener;

    #@2b
    if-eqz v1, :cond_38

    #@2d
    if-nez v0, :cond_33

    #@2f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gh;->BN:Z

    #@31
    if-eqz v0, :cond_38

    #@33
    :cond_33
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->Ae:Lcom/google/android/gms/cast/Cast$Listener;

    #@35
    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationStatusChanged()V

    #@38
    :cond_38
    iput-boolean v2, p0, Lcom/google/android/gms/internal/gh;->BN:Z

    #@3a
    return-void

    #@3b
    :cond_3b
    move v0, v2

    #@3c
    goto :goto_11
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/internal/ge;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gh;->a(Lcom/google/android/gms/internal/ge;)V

    #@3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/internal/gj;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gh;->a(Lcom/google/android/gms/internal/gj;)V

    #@3
    return-void
.end method

.method private a(Lcom/google/android/gms/internal/gj;)V
    .registers 11

    #@0
    const/4 v8, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gj;->eh()D

    #@6
    move-result-wide v4

    #@7
    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    #@9
    cmpl-double v0, v4, v6

    #@b
    if-eqz v0, :cond_7f

    #@d
    iget-wide v6, p0, Lcom/google/android/gms/internal/gh;->AP:D

    #@f
    cmpl-double v0, v4, v6

    #@11
    if-eqz v0, :cond_7f

    #@13
    iput-wide v4, p0, Lcom/google/android/gms/internal/gh;->AP:D

    #@15
    move v0, v1

    #@16
    :goto_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gj;->en()Z

    #@19
    move-result v3

    #@1a
    iget-boolean v4, p0, Lcom/google/android/gms/internal/gh;->AQ:Z

    #@1c
    if-eq v3, v4, :cond_21

    #@1e
    iput-boolean v3, p0, Lcom/google/android/gms/internal/gh;->AQ:Z

    #@20
    move v0, v1

    #@21
    :cond_21
    sget-object v3, Lcom/google/android/gms/internal/gh;->BG:Lcom/google/android/gms/internal/gn;

    #@23
    const-string v4, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    #@25
    new-array v5, v8, [Ljava/lang/Object;

    #@27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2a
    move-result-object v6

    #@2b
    aput-object v6, v5, v2

    #@2d
    iget-boolean v6, p0, Lcom/google/android/gms/internal/gh;->BO:Z

    #@2f
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@32
    move-result-object v6

    #@33
    aput-object v6, v5, v1

    #@35
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@38
    iget-object v3, p0, Lcom/google/android/gms/internal/gh;->Ae:Lcom/google/android/gms/cast/Cast$Listener;

    #@3a
    if-eqz v3, :cond_47

    #@3c
    if-nez v0, :cond_42

    #@3e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gh;->BO:Z

    #@40
    if-eqz v0, :cond_47

    #@42
    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->Ae:Lcom/google/android/gms/cast/Cast$Listener;

    #@44
    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$Listener;->onVolumeChanged()V

    #@47
    :cond_47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gj;->eo()I

    #@4a
    move-result v0

    #@4b
    iget v3, p0, Lcom/google/android/gms/internal/gh;->BR:I

    #@4d
    if-eq v0, v3, :cond_7d

    #@4f
    iput v0, p0, Lcom/google/android/gms/internal/gh;->BR:I

    #@51
    move v0, v1

    #@52
    :goto_52
    sget-object v3, Lcom/google/android/gms/internal/gh;->BG:Lcom/google/android/gms/internal/gn;

    #@54
    const-string v4, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    #@56
    new-array v5, v8, [Ljava/lang/Object;

    #@58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5b
    move-result-object v6

    #@5c
    aput-object v6, v5, v2

    #@5e
    iget-boolean v6, p0, Lcom/google/android/gms/internal/gh;->BO:Z

    #@60
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@63
    move-result-object v6

    #@64
    aput-object v6, v5, v1

    #@66
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@69
    iget-object v1, p0, Lcom/google/android/gms/internal/gh;->Ae:Lcom/google/android/gms/cast/Cast$Listener;

    #@6b
    if-eqz v1, :cond_7a

    #@6d
    if-nez v0, :cond_73

    #@6f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gh;->BO:Z

    #@71
    if-eqz v0, :cond_7a

    #@73
    :cond_73
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->Ae:Lcom/google/android/gms/cast/Cast$Listener;

    #@75
    iget v1, p0, Lcom/google/android/gms/internal/gh;->BR:I

    #@77
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->O(I)V

    #@7a
    :cond_7a
    iput-boolean v2, p0, Lcom/google/android/gms/internal/gh;->BO:Z

    #@7c
    return-void

    #@7d
    :cond_7d
    move v0, v2

    #@7e
    goto :goto_52

    #@7f
    :cond_7f
    move v0, v2

    #@80
    goto :goto_16
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gh;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/gh;->BP:Z

    #@2
    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/gh;Lcom/google/android/gms/common/api/a$d;)Lcom/google/android/gms/common/api/a$d;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/gh;->BZ:Lcom/google/android/gms/common/api/a$d;

    #@2
    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/gh;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/gh;->BU:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/gh;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/common/api/a$d;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BY:Lcom/google/android/gms/common/api/a$d;

    #@2
    return-object v0
.end method

.method private c(Lcom/google/android/gms/common/api/a$d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    #@0
    sget-object v1, Lcom/google/android/gms/internal/gh;->Ca:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BY:Lcom/google/android/gms/common/api/a$d;

    #@5
    if-eqz v0, :cond_18

    #@7
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BY:Lcom/google/android/gms/common/api/a$d;

    #@9
    new-instance v2, Lcom/google/android/gms/internal/gh$a;

    #@b
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    #@d
    const/16 v4, 0x7d2

    #@f
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@12
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/gh$a;-><init>(Lcom/google/android/gms/common/api/Status;)V

    #@15
    invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@18
    :cond_18
    iput-object p1, p0, Lcom/google/android/gms/internal/gh;->BY:Lcom/google/android/gms/common/api/a$d;

    #@1a
    monitor-exit v1

    #@1b
    return-void

    #@1c
    :catchall_1c
    move-exception v0

    #@1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    #@1e
    throw v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/cast/Cast$Listener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->Ae:Lcom/google/android/gms/cast/Cast$Listener;

    #@2
    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/gh;)Landroid/os/Handler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method private e(Lcom/google/android/gms/common/api/a$d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    #@0
    sget-object v1, Lcom/google/android/gms/internal/gh;->Cb:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BZ:Lcom/google/android/gms/common/api/a$d;

    #@5
    if-eqz v0, :cond_13

    #@7
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@9
    const/16 v2, 0x7d1

    #@b
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@e
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@11
    monitor-exit v1

    #@12
    :goto_12
    return-void

    #@13
    :cond_13
    iput-object p1, p0, Lcom/google/android/gms/internal/gh;->BZ:Lcom/google/android/gms/common/api/a$d;

    #@15
    monitor-exit v1

    #@16
    goto :goto_12

    #@17
    :catchall_17
    move-exception v0

    #@18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    #@19
    throw v0
.end method

.method private ei()V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/gh;->BG:Lcom/google/android/gms/internal/gn;

    #@2
    const-string v1, "removing all MessageReceivedCallbacks"

    #@4
    const/4 v2, 0x0

    #@5
    new-array v2, v2, [Ljava/lang/Object;

    #@7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@a
    iget-object v1, p0, Lcom/google/android/gms/internal/gh;->BK:Ljava/util/Map;

    #@c
    monitor-enter v1

    #@d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BK:Ljava/util/Map;

    #@f
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@12
    monitor-exit v1

    #@13
    return-void

    #@14
    :catchall_14
    move-exception v0

    #@15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    #@16
    throw v0
.end method

.method private ej()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gh;->BP:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_14

    #@c
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    const-string v1, "Not connected to a device"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    :cond_14
    return-void
.end method

.method static synthetic ek()Lcom/google/android/gms/internal/gn;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/gh;->BG:Lcom/google/android/gms/internal/gn;

    #@2
    return-object v0
.end method

.method static synthetic el()Ljava/lang/Object;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/gh;->Ca:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic em()Ljava/lang/Object;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/gh;->Cb:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/gh;)Ljava/util/Map;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BK:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/cast/CastDevice;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BI:Lcom/google/android/gms/cast/CastDevice;

    #@2
    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/internal/gh;)Ljava/util/Map;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BW:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/common/api/a$d;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BZ:Lcom/google/android/gms/common/api/a$d;

    #@2
    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/gh;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gh;->ei()V

    #@3
    return-void
.end method


# virtual methods
.method protected G(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gl;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/gl$a;->H(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public a(D)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_c

    #@6
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_25

    #@c
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v2, "Volume cannot be "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->ft()Landroid/os/IInterface;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Lcom/google/android/gms/internal/gl;

    #@2b
    iget-wide v4, p0, Lcom/google/android/gms/internal/gh;->AP:D

    #@2d
    iget-boolean v6, p0, Lcom/google/android/gms/internal/gh;->AQ:Z

    #@2f
    move-wide v2, p1

    #@30
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/gl;->a(DDZ)V

    #@33
    return-void
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 11

    #@0
    const/16 v6, 0x3e9

    #@2
    const/4 v0, 0x0

    #@3
    const/4 v5, 0x1

    #@4
    sget-object v1, Lcom/google/android/gms/internal/gh;->BG:Lcom/google/android/gms/internal/gn;

    #@6
    const-string v2, "in onPostInitHandler; statusCode=%d"

    #@8
    new-array v3, v5, [Ljava/lang/Object;

    #@a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v4

    #@e
    aput-object v4, v3, v0

    #@10
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@13
    if-eqz p1, :cond_17

    #@15
    if-ne p1, v6, :cond_32

    #@17
    :cond_17
    iput-boolean v5, p0, Lcom/google/android/gms/internal/gh;->BP:Z

    #@19
    iput-boolean v5, p0, Lcom/google/android/gms/internal/gh;->BN:Z

    #@1b
    iput-boolean v5, p0, Lcom/google/android/gms/internal/gh;->BO:Z

    #@1d
    :goto_1d
    if-ne p1, v6, :cond_2e

    #@1f
    new-instance v1, Landroid/os/Bundle;

    #@21
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@24
    iput-object v1, p0, Lcom/google/android/gms/internal/gh;->BV:Landroid/os/Bundle;

    #@26
    iget-object v1, p0, Lcom/google/android/gms/internal/gh;->BV:Landroid/os/Bundle;

    #@28
    const-string v2, "com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING"

    #@2a
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@2d
    move p1, v0

    #@2e
    :cond_2e
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/hb;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    #@31
    return-void

    #@32
    :cond_32
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gh;->BP:Z

    #@34
    goto :goto_1d
.end method

.method protected a(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hb$e;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    new-instance v5, Landroid/os/Bundle;

    #@2
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@5
    sget-object v0, Lcom/google/android/gms/internal/gh;->BG:Lcom/google/android/gms/internal/gn;

    #@7
    const-string v1, "getServiceFromBroker(): mLastApplicationId=%s, mLastSessionId=%s"

    #@9
    const/4 v2, 0x2

    #@a
    new-array v2, v2, [Ljava/lang/Object;

    #@c
    const/4 v3, 0x0

    #@d
    iget-object v4, p0, Lcom/google/android/gms/internal/gh;->BT:Ljava/lang/String;

    #@f
    aput-object v4, v2, v3

    #@11
    const/4 v3, 0x1

    #@12
    iget-object v4, p0, Lcom/google/android/gms/internal/gh;->BU:Ljava/lang/String;

    #@14
    aput-object v4, v2, v3

    #@16
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@19
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BI:Lcom/google/android/gms/cast/CastDevice;

    #@1b
    invoke-virtual {v0, v5}, Lcom/google/android/gms/cast/CastDevice;->putInBundle(Landroid/os/Bundle;)V

    #@1e
    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_FLAGS"

    #@20
    iget-wide v2, p0, Lcom/google/android/gms/internal/gh;->BL:J

    #@22
    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@25
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BT:Ljava/lang/String;

    #@27
    if-eqz v0, :cond_3b

    #@29
    const-string v0, "last_application_id"

    #@2b
    iget-object v1, p0, Lcom/google/android/gms/internal/gh;->BT:Ljava/lang/String;

    #@2d
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@30
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BU:Ljava/lang/String;

    #@32
    if-eqz v0, :cond_3b

    #@34
    const-string v0, "last_session_id"

    #@36
    iget-object v1, p0, Lcom/google/android/gms/internal/gh;->BU:Ljava/lang/String;

    #@38
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    :cond_3b
    const v2, 0x4da6e8

    #@3e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->getContext()Landroid/content/Context;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BJ:Lcom/google/android/gms/internal/gm;

    #@48
    invoke-interface {v0}, Lcom/google/android/gms/internal/gm;->asBinder()Landroid/os/IBinder;

    #@4b
    move-result-object v4

    #@4c
    move-object v0, p1

    #@4d
    move-object v1, p2

    #@4e
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/hi;->a(Lcom/google/android/gms/internal/hh;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    #@51
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/gi;->ak(Ljava/lang/String;)V

    #@3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gh;->aj(Ljava/lang/String;)V

    #@6
    if-eqz p2, :cond_1a

    #@8
    iget-object v1, p0, Lcom/google/android/gms/internal/gh;->BK:Ljava/util/Map;

    #@a
    monitor-enter v1

    #@b
    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BK:Ljava/util/Map;

    #@d
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_1b

    #@11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->ft()Landroid/os/IInterface;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/google/android/gms/internal/gl;

    #@17
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gl;->an(Ljava/lang/String;)V

    #@1a
    :cond_1a
    return-void

    #@1b
    :catchall_1b
    move-exception v0

    #@1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    #@1d
    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/common/api/a$d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/LaunchOptions;",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/gh;->c(Lcom/google/android/gms/common/api/a$d;)V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->ft()Landroid/os/IInterface;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/internal/gl;

    #@9
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/gl;->a(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V

    #@c
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/common/api/a$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/gh;->e(Lcom/google/android/gms/common/api/a$d;)V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->ft()Landroid/os/IInterface;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/internal/gl;

    #@9
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gl;->am(Ljava/lang/String;)V

    #@c
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/a$d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "The message payload cannot be null or empty"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@11
    move-result v0

    #@12
    const/high16 v1, 0x10000

    #@14
    if-le v0, v1, :cond_1e

    #@16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string v1, "Message exceeds maximum size"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    :cond_1e
    invoke-static {p1}, Lcom/google/android/gms/internal/gi;->ak(Ljava/lang/String;)V

    #@21
    invoke-direct {p0}, Lcom/google/android/gms/internal/gh;->ej()V

    #@24
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BS:Ljava/util/concurrent/atomic/AtomicLong;

    #@26
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    #@29
    move-result-wide v2

    #@2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->ft()Landroid/os/IInterface;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Lcom/google/android/gms/internal/gl;

    #@30
    invoke-interface {v0, p1, p2, v2, v3}, Lcom/google/android/gms/internal/gl;->a(Ljava/lang/String;Ljava/lang/String;J)V

    #@33
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BW:Ljava/util/Map;

    #@35
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@38
    move-result-object v1

    #@39
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/google/android/gms/common/api/a$d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/gh;->c(Lcom/google/android/gms/common/api/a$d;)V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->ft()Landroid/os/IInterface;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/internal/gl;

    #@9
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/gl;->e(Ljava/lang/String;Z)V

    #@c
    return-void
.end method

.method public aj(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "Channel namespace cannot be null or empty"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/gh;->BK:Ljava/util/Map;

    #@10
    monitor-enter v1

    #@11
    :try_start_11
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BK:Ljava/util/Map;

    #@13
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;

    #@19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_26

    #@1a
    if-eqz v0, :cond_25

    #@1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->ft()Landroid/os/IInterface;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Lcom/google/android/gms/internal/gl;

    #@22
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gl;->ao(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_25} :catch_29

    #@25
    :cond_25
    :goto_25
    return-void

    #@26
    :catchall_26
    move-exception v0

    #@27
    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    #@28
    throw v0

    #@29
    :catch_29
    move-exception v0

    #@2a
    sget-object v1, Lcom/google/android/gms/internal/gh;->BG:Lcom/google/android/gms/internal/gn;

    #@2c
    const-string v2, "Error unregistering namespace (%s): %s"

    #@2e
    const/4 v3, 0x2

    #@2f
    new-array v3, v3, [Ljava/lang/Object;

    #@31
    const/4 v4, 0x0

    #@32
    aput-object p1, v3, v4

    #@34
    const/4 v4, 0x1

    #@35
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    aput-object v5, v3, v4

    #@3b
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/gn;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    #@3e
    goto :goto_25
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/a$d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/gh;->c(Lcom/google/android/gms/common/api/a$d;)V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->ft()Landroid/os/IInterface;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/internal/gl;

    #@9
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/gl;->h(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    return-void
.end method

.method protected bu()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE"

    #@2
    return-object v0
.end method

.method protected bv()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    #@2
    return-object v0
.end method

.method public d(Lcom/google/android/gms/common/api/a$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gh;->e(Lcom/google/android/gms/common/api/a$d;)V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->ft()Landroid/os/IInterface;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/gms/internal/gl;

    #@9
    invoke-interface {v0}, Lcom/google/android/gms/internal/gl;->ep()V

    #@c
    return-void
.end method

.method public disconnect()V
    .registers 7

    #@0
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    sget-object v0, Lcom/google/android/gms/internal/gh;->BG:Lcom/google/android/gms/internal/gn;

    #@4
    const-string v1, "disconnect(); mDisconnecting=%b, isConnected=%b"

    #@6
    const/4 v2, 0x2

    #@7
    new-array v2, v2, [Ljava/lang/Object;

    #@9
    iget-object v3, p0, Lcom/google/android/gms/internal/gh;->BQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@b
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@e
    move-result v3

    #@f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object v3

    #@13
    aput-object v3, v2, v4

    #@15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->isConnected()Z

    #@18
    move-result v3

    #@19
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1c
    move-result-object v3

    #@1d
    aput-object v3, v2, v5

    #@1f
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@22
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@24
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_34

    #@2a
    sget-object v0, Lcom/google/android/gms/internal/gh;->BG:Lcom/google/android/gms/internal/gn;

    #@2c
    const-string v1, "mDisconnecting is set, so short-circuiting"

    #@2e
    new-array v2, v4, [Ljava/lang/Object;

    #@30
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gn;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    #@33
    :goto_33
    return-void

    #@34
    :cond_34
    invoke-direct {p0}, Lcom/google/android/gms/internal/gh;->ei()V

    #@37
    :try_start_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->isConnected()Z

    #@3a
    move-result v0

    #@3b
    if-nez v0, :cond_43

    #@3d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->isConnecting()Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_4c

    #@43
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->ft()Landroid/os/IInterface;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Lcom/google/android/gms/internal/gl;

    #@49
    invoke-interface {v0}, Lcom/google/android/gms/internal/gl;->disconnect()V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_4c} :catch_50
    .catchall {:try_start_37 .. :try_end_4c} :catchall_66

    #@4c
    :cond_4c
    invoke-super {p0}, Lcom/google/android/gms/internal/hb;->disconnect()V

    #@4f
    goto :goto_33

    #@50
    :catch_50
    move-exception v0

    #@51
    :try_start_51
    sget-object v1, Lcom/google/android/gms/internal/gh;->BG:Lcom/google/android/gms/internal/gn;

    #@53
    const-string v2, "Error while disconnecting the controller interface: %s"

    #@55
    const/4 v3, 0x1

    #@56
    new-array v3, v3, [Ljava/lang/Object;

    #@58
    const/4 v4, 0x0

    #@59
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    aput-object v5, v3, v4

    #@5f
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/gn;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_62
    .catchall {:try_start_51 .. :try_end_62} :catchall_66

    #@62
    invoke-super {p0}, Lcom/google/android/gms/internal/hb;->disconnect()V

    #@65
    goto :goto_33

    #@66
    :catchall_66
    move-exception v0

    #@67
    invoke-super {p0}, Lcom/google/android/gms/internal/hb;->disconnect()V

    #@6a
    throw v0
.end method

.method public ef()Landroid/os/Bundle;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BV:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BV:Landroid/os/Bundle;

    #@6
    const/4 v1, 0x0

    #@7
    iput-object v1, p0, Lcom/google/android/gms/internal/gh;->BV:Landroid/os/Bundle;

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    invoke-super {p0}, Lcom/google/android/gms/internal/hb;->ef()Landroid/os/Bundle;

    #@d
    move-result-object v0

    #@e
    goto :goto_9
.end method

.method public eg()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/internal/gl;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/internal/gl;->eg()V

    #@9
    return-void
.end method

.method public eh()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gh;->ej()V

    #@3
    iget-wide v0, p0, Lcom/google/android/gms/internal/gh;->AP:D

    #@5
    return-wide v0
.end method

.method public getApplicationMetadata()Lcom/google/android/gms/cast/ApplicationMetadata;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gh;->ej()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BH:Lcom/google/android/gms/cast/ApplicationMetadata;

    #@5
    return-object v0
.end method

.method public getApplicationStatus()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gh;->ej()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/internal/gh;->BM:Ljava/lang/String;

    #@5
    return-object v0
.end method

.method public isMute()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gh;->ej()V

    #@3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gh;->AQ:Z

    #@5
    return v0
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gh;->G(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gl;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public y(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gh;->ft()Landroid/os/IInterface;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/internal/gl;

    #@6
    iget-wide v2, p0, Lcom/google/android/gms/internal/gh;->AP:D

    #@8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/gh;->AQ:Z

    #@a
    invoke-interface {v0, p1, v2, v3, v1}, Lcom/google/android/gms/internal/gl;->a(ZDZ)V

    #@d
    return-void
.end method
