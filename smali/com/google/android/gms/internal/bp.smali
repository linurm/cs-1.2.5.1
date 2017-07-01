.class public final Lcom/google/android/gms/internal/bp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bq$a;


# instance fields
.field private final kB:Lcom/google/android/gms/internal/bt;

.field private final lh:Lcom/google/android/gms/internal/ai;

.field private final ls:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final nC:Ljava/lang/String;

.field private final nD:J

.field private final nE:Lcom/google/android/gms/internal/bl;

.field private final nF:Lcom/google/android/gms/internal/al;

.field private final nG:Lcom/google/android/gms/internal/ev;

.field private nH:Lcom/google/android/gms/internal/bu;

.field private nI:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bt;Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bl;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ev;)V
    .registers 13

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->ls:Ljava/lang/Object;

    #@a
    const/4 v0, -0x2

    #@b
    iput v0, p0, Lcom/google/android/gms/internal/bp;->nI:I

    #@d
    iput-object p1, p0, Lcom/google/android/gms/internal/bp;->mContext:Landroid/content/Context;

    #@f
    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    #@11
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_34

    #@17
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/bp;->b(Lcom/google/android/gms/internal/bl;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/google/android/gms/internal/bp;->nC:Ljava/lang/String;

    #@1d
    :goto_1d
    iput-object p3, p0, Lcom/google/android/gms/internal/bp;->kB:Lcom/google/android/gms/internal/bt;

    #@1f
    iget-wide v0, p4, Lcom/google/android/gms/internal/bm;->ns:J

    #@21
    const-wide/16 v2, -0x1

    #@23
    cmp-long v0, v0, v2

    #@25
    if-eqz v0, :cond_37

    #@27
    iget-wide v0, p4, Lcom/google/android/gms/internal/bm;->ns:J

    #@29
    :goto_29
    iput-wide v0, p0, Lcom/google/android/gms/internal/bp;->nD:J

    #@2b
    iput-object p5, p0, Lcom/google/android/gms/internal/bp;->nE:Lcom/google/android/gms/internal/bl;

    #@2d
    iput-object p6, p0, Lcom/google/android/gms/internal/bp;->lh:Lcom/google/android/gms/internal/ai;

    #@2f
    iput-object p7, p0, Lcom/google/android/gms/internal/bp;->nF:Lcom/google/android/gms/internal/al;

    #@31
    iput-object p8, p0, Lcom/google/android/gms/internal/bp;->nG:Lcom/google/android/gms/internal/ev;

    #@33
    return-void

    #@34
    :cond_34
    iput-object p2, p0, Lcom/google/android/gms/internal/bp;->nC:Ljava/lang/String;

    #@36
    goto :goto_1d

    #@37
    :cond_37
    const-wide/16 v0, 0x2710

    #@39
    goto :goto_29
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bu;)Lcom/google/android/gms/internal/bu;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/bp;->nH:Lcom/google/android/gms/internal/bu;

    #@2
    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bp;)Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ls:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method private a(JJJJ)V
    .registers 12

    #@0
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/bp;->nI:I

    #@2
    const/4 v1, -0x2

    #@3
    if-eq v0, v1, :cond_6

    #@5
    return-void

    #@6
    :cond_6
    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/bp;->b(JJJJ)V

    #@9
    goto :goto_0
.end method

.method private a(Lcom/google/android/gms/internal/bo;)V
    .registers 9

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->nG:Lcom/google/android/gms/internal/ev;

    #@2
    iget v0, v0, Lcom/google/android/gms/internal/ev;->sy:I

    #@4
    const v1, 0x3e8fa0

    #@7
    if-ge v0, v1, :cond_41

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->nF:Lcom/google/android/gms/internal/al;

    #@b
    iget-boolean v0, v0, Lcom/google/android/gms/internal/al;->mf:Z

    #@d
    if-eqz v0, :cond_21

    #@f
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->nH:Lcom/google/android/gms/internal/bu;

    #@11
    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->mContext:Landroid/content/Context;

    #@13
    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@16
    move-result-object v1

    #@17
    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->lh:Lcom/google/android/gms/internal/ai;

    #@19
    iget-object v3, p0, Lcom/google/android/gms/internal/bp;->nE:Lcom/google/android/gms/internal/bl;

    #@1b
    iget-object v3, v3, Lcom/google/android/gms/internal/bl;->nq:Ljava/lang/String;

    #@1d
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/bu;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V

    #@20
    :goto_20
    return-void

    #@21
    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->nH:Lcom/google/android/gms/internal/bu;

    #@23
    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->mContext:Landroid/content/Context;

    #@25
    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@28
    move-result-object v1

    #@29
    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->nF:Lcom/google/android/gms/internal/al;

    #@2b
    iget-object v3, p0, Lcom/google/android/gms/internal/bp;->lh:Lcom/google/android/gms/internal/ai;

    #@2d
    iget-object v4, p0, Lcom/google/android/gms/internal/bp;->nE:Lcom/google/android/gms/internal/bl;

    #@2f
    iget-object v4, v4, Lcom/google/android/gms/internal/bl;->nq:Ljava/lang/String;

    #@31
    move-object v5, p1

    #@32
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/bu;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_36

    #@35
    goto :goto_20

    #@36
    :catch_36
    move-exception v0

    #@37
    const-string v1, "Could not request ad from mediation adapter."

    #@39
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3c
    const/4 v0, 0x5

    #@3d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/bp;->g(I)V

    #@40
    goto :goto_20

    #@41
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->nF:Lcom/google/android/gms/internal/al;

    #@43
    iget-boolean v0, v0, Lcom/google/android/gms/internal/al;->mf:Z

    #@45
    if-eqz v0, :cond_5e

    #@47
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->nH:Lcom/google/android/gms/internal/bu;

    #@49
    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->mContext:Landroid/content/Context;

    #@4b
    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@4e
    move-result-object v1

    #@4f
    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->lh:Lcom/google/android/gms/internal/ai;

    #@51
    iget-object v3, p0, Lcom/google/android/gms/internal/bp;->nE:Lcom/google/android/gms/internal/bl;

    #@53
    iget-object v3, v3, Lcom/google/android/gms/internal/bl;->nq:Ljava/lang/String;

    #@55
    iget-object v4, p0, Lcom/google/android/gms/internal/bp;->nE:Lcom/google/android/gms/internal/bl;

    #@57
    iget-object v4, v4, Lcom/google/android/gms/internal/bl;->nk:Ljava/lang/String;

    #@59
    move-object v5, p1

    #@5a
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/bu;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V

    #@5d
    goto :goto_20

    #@5e
    :cond_5e
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->nH:Lcom/google/android/gms/internal/bu;

    #@60
    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->mContext:Landroid/content/Context;

    #@62
    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@65
    move-result-object v1

    #@66
    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->nF:Lcom/google/android/gms/internal/al;

    #@68
    iget-object v3, p0, Lcom/google/android/gms/internal/bp;->lh:Lcom/google/android/gms/internal/ai;

    #@6a
    iget-object v4, p0, Lcom/google/android/gms/internal/bp;->nE:Lcom/google/android/gms/internal/bl;

    #@6c
    iget-object v4, v4, Lcom/google/android/gms/internal/bl;->nq:Ljava/lang/String;

    #@6e
    iget-object v5, p0, Lcom/google/android/gms/internal/bp;->nE:Lcom/google/android/gms/internal/bl;

    #@70
    iget-object v5, v5, Lcom/google/android/gms/internal/bl;->nk:Ljava/lang/String;

    #@72
    move-object v6, p1

    #@73
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/bu;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ai;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bv;)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_76} :catch_36

    #@76
    goto :goto_20
.end method

.method static synthetic a(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bo;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/bo;)V

    #@3
    return-void
.end method

.method private aP()Lcom/google/android/gms/internal/bu;
    .registers 4

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "Instantiating mediation adapter: "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->nC:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->kB:Lcom/google/android/gms/internal/bt;

    #@1a
    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->nC:Ljava/lang/String;

    #@1c
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bt;->m(Ljava/lang/String;)Lcom/google/android/gms/internal/bu;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_21

    #@1f
    move-result-object v0

    #@20
    :goto_20
    return-object v0

    #@21
    :catch_21
    move-exception v0

    #@22
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string v2, "Could not instantiate mediation adapter: "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->nC:Ljava/lang/String;

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3a
    const/4 v0, 0x0

    #@3b
    goto :goto_20
.end method

.method static synthetic b(Lcom/google/android/gms/internal/bp;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/bp;->nI:I

    #@2
    return v0
.end method

.method private b(Lcom/google/android/gms/internal/bl;)Ljava/lang/String;
    .registers 6

    #@0
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/bl;->no:Ljava/lang/String;

    #@2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_26

    #@8
    const-class v0, Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;

    #@a
    iget-object v1, p1, Lcom/google/android/gms/internal/bl;->no:Ljava/lang/String;

    #@c
    const/4 v2, 0x0

    #@d
    const-class v3, Lcom/google/android/gms/internal/bp;

    #@f
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@12
    move-result-object v3

    #@13
    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1a} :catch_20

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_26

    #@1d
    const-string v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    #@1f
    :goto_1f
    return-object v0

    #@20
    :catch_20
    move-exception v0

    #@21
    const-string v0, "Could not create custom event adapter."

    #@23
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@26
    :cond_26
    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    #@28
    goto :goto_1f
.end method

.method private b(JJJJ)V
    .registers 16

    #@0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    sub-long v2, v0, p1

    #@6
    sub-long v2, p3, v2

    #@8
    sub-long/2addr v0, p5

    #@9
    sub-long v0, p7, v0

    #@b
    const-wide/16 v4, 0x0

    #@d
    cmp-long v4, v2, v4

    #@f
    if-lez v4, :cond_17

    #@11
    const-wide/16 v4, 0x0

    #@13
    cmp-long v4, v0, v4

    #@15
    if-gtz v4, :cond_20

    #@17
    :cond_17
    const-string v0, "Timed out waiting for adapter."

    #@19
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@1c
    const/4 v0, 0x3

    #@1d
    iput v0, p0, Lcom/google/android/gms/internal/bp;->nI:I

    #@1f
    :goto_1f
    return-void

    #@20
    :cond_20
    :try_start_20
    iget-object v4, p0, Lcom/google/android/gms/internal/bp;->ls:Ljava/lang/Object;

    #@22
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@25
    move-result-wide v0

    #@26
    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_29} :catch_2a

    #@29
    goto :goto_1f

    #@2a
    :catch_2a
    move-exception v0

    #@2b
    const/4 v0, -0x1

    #@2c
    iput v0, p0, Lcom/google/android/gms/internal/bp;->nI:I

    #@2e
    goto :goto_1f
.end method

.method static synthetic c(Lcom/google/android/gms/internal/bp;)Lcom/google/android/gms/internal/bu;
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/bp;->aP()Lcom/google/android/gms/internal/bu;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/bp;)Lcom/google/android/gms/internal/bu;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->nH:Lcom/google/android/gms/internal/bu;

    #@2
    return-object v0
.end method


# virtual methods
.method public b(JJ)Lcom/google/android/gms/internal/bq;
    .registers 18

    #@0
    iget-object v10, p0, Lcom/google/android/gms/internal/bp;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v10

    #@3
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6
    move-result-wide v2

    #@7
    new-instance v11, Lcom/google/android/gms/internal/bo;

    #@9
    invoke-direct {v11}, Lcom/google/android/gms/internal/bo;-><init>()V

    #@c
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@e
    new-instance v1, Lcom/google/android/gms/internal/bp$1;

    #@10
    invoke-direct {v1, p0, v11}, Lcom/google/android/gms/internal/bp$1;-><init>(Lcom/google/android/gms/internal/bp;Lcom/google/android/gms/internal/bo;)V

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@16
    iget-wide v4, p0, Lcom/google/android/gms/internal/bp;->nD:J

    #@18
    move-object v1, p0

    #@19
    move-wide v6, p1

    #@1a
    move-wide/from16 v8, p3

    #@1c
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/bp;->a(JJJJ)V

    #@1f
    new-instance v0, Lcom/google/android/gms/internal/bq;

    #@21
    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->nE:Lcom/google/android/gms/internal/bl;

    #@23
    iget-object v2, p0, Lcom/google/android/gms/internal/bp;->nH:Lcom/google/android/gms/internal/bu;

    #@25
    iget-object v3, p0, Lcom/google/android/gms/internal/bp;->nC:Ljava/lang/String;

    #@27
    iget v5, p0, Lcom/google/android/gms/internal/bp;->nI:I

    #@29
    move-object v4, v11

    #@2a
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/bq;-><init>(Lcom/google/android/gms/internal/bl;Lcom/google/android/gms/internal/bu;Ljava/lang/String;Lcom/google/android/gms/internal/bo;I)V

    #@2d
    monitor-exit v10

    #@2e
    return-object v0

    #@2f
    :catchall_2f
    move-exception v0

    #@30
    monitor-exit v10
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    #@31
    throw v0
.end method

.method public cancel()V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->nH:Lcom/google/android/gms/internal/bu;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->nH:Lcom/google/android/gms/internal/bu;

    #@9
    invoke-interface {v0}, Lcom/google/android/gms/internal/bu;->destroy()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_16
    .catchall {:try_start_3 .. :try_end_c} :catchall_1d

    #@c
    :cond_c
    :goto_c
    const/4 v0, -0x1

    #@d
    :try_start_d
    iput v0, p0, Lcom/google/android/gms/internal/bp;->nI:I

    #@f
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ls:Ljava/lang/Object;

    #@11
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    #@14
    monitor-exit v1

    #@15
    return-void

    #@16
    :catch_16
    move-exception v0

    #@17
    const-string v2, "Could not destroy mediation adapter."

    #@19
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1c
    goto :goto_c

    #@1d
    :catchall_1d
    move-exception v0

    #@1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1d

    #@1f
    throw v0
.end method

.method public g(I)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/bp;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/bp;->nI:I

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/bp;->ls:Ljava/lang/Object;

    #@7
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    #@a
    monitor-exit v1

    #@b
    return-void

    #@c
    :catchall_c
    move-exception v0

    #@d
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    #@e
    throw v0
.end method
