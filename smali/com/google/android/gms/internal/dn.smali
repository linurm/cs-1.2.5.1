.class public Lcom/google/android/gms/internal/dn;
.super Lcom/google/android/gms/internal/em;

# interfaces
.implements Lcom/google/android/gms/internal/dp$a;
.implements Lcom/google/android/gms/internal/ey$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dn$a;
    }
.end annotation


# instance fields
.field private final kB:Lcom/google/android/gms/internal/bt;

.field private final lN:Lcom/google/android/gms/internal/ex;

.field private final ls:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private nf:Lcom/google/android/gms/internal/bm;

.field private final pA:Lcom/google/android/gms/internal/k;

.field private pB:Lcom/google/android/gms/internal/em;

.field private pC:Lcom/google/android/gms/internal/du;

.field private pD:Z

.field private pE:Lcom/google/android/gms/internal/bk;

.field private pF:Lcom/google/android/gms/internal/bq;

.field private final px:Lcom/google/android/gms/internal/dm$a;

.field private final py:Ljava/lang/Object;

.field private final pz:Lcom/google/android/gms/internal/ds$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds$a;Lcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/ex;Lcom/google/android/gms/internal/bt;Lcom/google/android/gms/internal/dm$a;)V
    .registers 8

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/em;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->py:Ljava/lang/Object;

    #@a
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->ls:Ljava/lang/Object;

    #@11
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/dn;->pD:Z

    #@14
    iput-object p5, p0, Lcom/google/android/gms/internal/dn;->kB:Lcom/google/android/gms/internal/bt;

    #@16
    iput-object p6, p0, Lcom/google/android/gms/internal/dn;->px:Lcom/google/android/gms/internal/dm$a;

    #@18
    iput-object p4, p0, Lcom/google/android/gms/internal/dn;->lN:Lcom/google/android/gms/internal/ex;

    #@1a
    iput-object p1, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    #@1c
    iput-object p2, p0, Lcom/google/android/gms/internal/dn;->pz:Lcom/google/android/gms/internal/ds$a;

    #@1e
    iput-object p3, p0, Lcom/google/android/gms/internal/dn;->pA:Lcom/google/android/gms/internal/k;

    #@20
    return-void
.end method

.method private a(Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/al;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/dn$a;
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@3
    iget-object v0, v0, Lcom/google/android/gms/internal/du;->qj:Ljava/lang/String;

    #@5
    if-nez v0, :cond_f

    #@7
    new-instance v0, Lcom/google/android/gms/internal/dn$a;

    #@9
    const-string v1, "The ad response must specify one of the supported ad sizes."

    #@b
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/dn$a;-><init>(Ljava/lang/String;I)V

    #@e
    throw v0

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@11
    iget-object v0, v0, Lcom/google/android/gms/internal/du;->qj:Ljava/lang/String;

    #@13
    const-string v1, "x"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    array-length v1, v0

    #@1a
    const/4 v3, 0x2

    #@1b
    if-eq v1, v3, :cond_3a

    #@1d
    new-instance v0, Lcom/google/android/gms/internal/dn$a;

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string v3, "Could not parse the ad size from the ad response: "

    #@26
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget-object v3, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@2c
    iget-object v3, v3, Lcom/google/android/gms/internal/du;->qj:Ljava/lang/String;

    #@2e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/dn$a;-><init>(Ljava/lang/String;I)V

    #@39
    throw v0

    #@3a
    :cond_3a
    const/4 v1, 0x0

    #@3b
    :try_start_3b
    aget-object v1, v0, v1

    #@3d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@40
    move-result v4

    #@41
    const/4 v1, 0x1

    #@42
    aget-object v0, v0, v1

    #@44
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_47} :catch_81

    #@47
    move-result v5

    #@48
    iget-object v0, p1, Lcom/google/android/gms/internal/ds;->kT:Lcom/google/android/gms/internal/al;

    #@4a
    iget-object v6, v0, Lcom/google/android/gms/internal/al;->mg:[Lcom/google/android/gms/internal/al;

    #@4c
    array-length v7, v6

    #@4d
    move v1, v2

    #@4e
    :goto_4e
    if-ge v1, v7, :cond_a9

    #@50
    aget-object v8, v6, v1

    #@52
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    #@54
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@5b
    move-result-object v0

    #@5c
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    #@5e
    iget v0, v8, Lcom/google/android/gms/internal/al;->width:I

    #@60
    const/4 v9, -0x1

    #@61
    if-ne v0, v9, :cond_9f

    #@63
    iget v0, v8, Lcom/google/android/gms/internal/al;->widthPixels:I

    #@65
    int-to-float v0, v0

    #@66
    div-float/2addr v0, v3

    #@67
    float-to-int v0, v0

    #@68
    :goto_68
    iget v9, v8, Lcom/google/android/gms/internal/al;->height:I

    #@6a
    const/4 v10, -0x2

    #@6b
    if-ne v9, v10, :cond_a2

    #@6d
    iget v9, v8, Lcom/google/android/gms/internal/al;->heightPixels:I

    #@6f
    int-to-float v9, v9

    #@70
    div-float v3, v9, v3

    #@72
    float-to-int v3, v3

    #@73
    :goto_73
    if-ne v4, v0, :cond_a5

    #@75
    if-ne v5, v3, :cond_a5

    #@77
    new-instance v0, Lcom/google/android/gms/internal/al;

    #@79
    iget-object v1, p1, Lcom/google/android/gms/internal/ds;->kT:Lcom/google/android/gms/internal/al;

    #@7b
    iget-object v1, v1, Lcom/google/android/gms/internal/al;->mg:[Lcom/google/android/gms/internal/al;

    #@7d
    invoke-direct {v0, v8, v1}, Lcom/google/android/gms/internal/al;-><init>(Lcom/google/android/gms/internal/al;[Lcom/google/android/gms/internal/al;)V

    #@80
    return-object v0

    #@81
    :catch_81
    move-exception v0

    #@82
    new-instance v0, Lcom/google/android/gms/internal/dn$a;

    #@84
    new-instance v1, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string v3, "Could not parse the ad size from the ad response: "

    #@8b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    iget-object v3, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@91
    iget-object v3, v3, Lcom/google/android/gms/internal/du;->qj:Ljava/lang/String;

    #@93
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v1

    #@97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v1

    #@9b
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/dn$a;-><init>(Ljava/lang/String;I)V

    #@9e
    throw v0

    #@9f
    :cond_9f
    iget v0, v8, Lcom/google/android/gms/internal/al;->width:I

    #@a1
    goto :goto_68

    #@a2
    :cond_a2
    iget v3, v8, Lcom/google/android/gms/internal/al;->height:I

    #@a4
    goto :goto_73

    #@a5
    :cond_a5
    add-int/lit8 v0, v1, 0x1

    #@a7
    move v1, v0

    #@a8
    goto :goto_4e

    #@a9
    :cond_a9
    new-instance v0, Lcom/google/android/gms/internal/dn$a;

    #@ab
    new-instance v1, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    const-string v3, "The ad size from the ad response was not one of the requested sizes: "

    #@b2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v1

    #@b6
    iget-object v3, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@b8
    iget-object v3, v3, Lcom/google/android/gms/internal/du;->qj:Ljava/lang/String;

    #@ba
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v1

    #@be
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v1

    #@c2
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/dn$a;-><init>(Ljava/lang/String;I)V

    #@c5
    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/dn;)Ljava/lang/Object;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->ls:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/ds;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/dn$a;
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->py:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/bk;

    #@5
    iget-object v2, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    #@7
    iget-object v3, p0, Lcom/google/android/gms/internal/dn;->kB:Lcom/google/android/gms/internal/bt;

    #@9
    iget-object v4, p0, Lcom/google/android/gms/internal/dn;->nf:Lcom/google/android/gms/internal/bm;

    #@b
    invoke-direct {v0, v2, p1, v3, v4}, Lcom/google/android/gms/internal/bk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/bt;Lcom/google/android/gms/internal/bm;)V

    #@e
    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->pE:Lcom/google/android/gms/internal/bk;

    #@10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_41

    #@11
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->pE:Lcom/google/android/gms/internal/bk;

    #@13
    const-wide/32 v2, 0xea60

    #@16
    invoke-virtual {v0, p2, p3, v2, v3}, Lcom/google/android/gms/internal/bk;->a(JJ)Lcom/google/android/gms/internal/bq;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->pF:Lcom/google/android/gms/internal/bq;

    #@1c
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->pF:Lcom/google/android/gms/internal/bq;

    #@1e
    iget v0, v0, Lcom/google/android/gms/internal/bq;->nL:I

    #@20
    packed-switch v0, :pswitch_data_4e

    #@23
    new-instance v0, Lcom/google/android/gms/internal/dn$a;

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string v2, "Unexpected mediation result: "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget-object v2, p0, Lcom/google/android/gms/internal/dn;->pF:Lcom/google/android/gms/internal/bq;

    #@32
    iget v2, v2, Lcom/google/android/gms/internal/bq;->nL:I

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    const/4 v2, 0x0

    #@3d
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/dn$a;-><init>(Ljava/lang/String;I)V

    #@40
    throw v0

    #@41
    :catchall_41
    move-exception v0

    #@42
    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    #@43
    throw v0

    #@44
    :pswitch_44
    new-instance v0, Lcom/google/android/gms/internal/dn$a;

    #@46
    const-string v1, "No fill from any mediation ad networks."

    #@48
    const/4 v2, 0x3

    #@49
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/dn$a;-><init>(Ljava/lang/String;I)V

    #@4c
    throw v0

    #@4d
    :pswitch_4d
    return-void

    #@4e
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_4d
        :pswitch_44
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/dm$a;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->px:Lcom/google/android/gms/internal/dm$a;

    #@2
    return-object v0
.end method

.method private bn()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/dn$a;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@2
    iget v0, v0, Lcom/google/android/gms/internal/du;->errorCode:I

    #@4
    const/4 v1, -0x3

    #@5
    if-ne v0, v1, :cond_8

    #@7
    :cond_7
    :goto_7
    return-void

    #@8
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@a
    iget-object v0, v0, Lcom/google/android/gms/internal/du;->qe:Ljava/lang/String;

    #@c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1b

    #@12
    new-instance v0, Lcom/google/android/gms/internal/dn$a;

    #@14
    const-string v1, "No fill from ad server."

    #@16
    const/4 v2, 0x3

    #@17
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/dn$a;-><init>(Ljava/lang/String;I)V

    #@1a
    throw v0

    #@1b
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@1d
    iget-boolean v0, v0, Lcom/google/android/gms/internal/du;->qg:Z

    #@1f
    if-eqz v0, :cond_7

    #@21
    :try_start_21
    new-instance v0, Lcom/google/android/gms/internal/bm;

    #@23
    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@25
    iget-object v1, v1, Lcom/google/android/gms/internal/du;->qe:Ljava/lang/String;

    #@27
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bm;-><init>(Ljava/lang/String;)V

    #@2a
    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->nf:Lcom/google/android/gms/internal/bm;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_2c} :catch_2d

    #@2c
    goto :goto_7

    #@2d
    :catch_2d
    move-exception v0

    #@2e
    new-instance v0, Lcom/google/android/gms/internal/dn$a;

    #@30
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string v2, "Could not parse mediation config: "

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    iget-object v2, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@3d
    iget-object v2, v2, Lcom/google/android/gms/internal/du;->qe:Ljava/lang/String;

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    const/4 v2, 0x0

    #@48
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/dn$a;-><init>(Ljava/lang/String;I)V

    #@4b
    throw v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/du;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@2
    return-object v0
.end method

.method private c(J)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/dn$a;
        }
    .end annotation

    #@0
    const-wide/32 v0, 0xea60

    #@3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6
    move-result-wide v2

    #@7
    sub-long/2addr v2, p1

    #@8
    sub-long/2addr v0, v2

    #@9
    const-wide/16 v2, 0x0

    #@b
    cmp-long v2, v0, v2

    #@d
    if-gtz v2, :cond_11

    #@f
    const/4 v0, 0x0

    #@10
    :goto_10
    return v0

    #@11
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/google/android/gms/internal/dn;->ls:Ljava/lang/Object;

    #@13
    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_18

    #@16
    const/4 v0, 0x1

    #@17
    goto :goto_10

    #@18
    :catch_18
    move-exception v0

    #@19
    new-instance v0, Lcom/google/android/gms/internal/dn$a;

    #@1b
    const-string v1, "Ad request cancelled."

    #@1d
    const/4 v2, -0x1

    #@1e
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/dn$a;-><init>(Ljava/lang/String;I)V

    #@21
    throw v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/ex;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    return-object v0
.end method

.method private e(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/dn$a;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@2
    new-instance v1, Lcom/google/android/gms/internal/dn$3;

    #@4
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/dn$3;-><init>(Lcom/google/android/gms/internal/dn;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/dn;->h(J)V

    #@d
    return-void
.end method

.method private g(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/dn$a;
        }
    .end annotation

    #@0
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/dn;->c(J)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_f

    #@6
    new-instance v0, Lcom/google/android/gms/internal/dn$a;

    #@8
    const-string v1, "Timed out waiting for ad response."

    #@a
    const/4 v2, 0x2

    #@b
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/dn$a;-><init>(Ljava/lang/String;I)V

    #@e
    throw v0

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@11
    if-eqz v0, :cond_0

    #@13
    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->py:Ljava/lang/Object;

    #@15
    monitor-enter v1

    #@16
    const/4 v0, 0x0

    #@17
    :try_start_17
    iput-object v0, p0, Lcom/google/android/gms/internal/dn;->pB:Lcom/google/android/gms/internal/em;

    #@19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_49

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@1c
    iget v0, v0, Lcom/google/android/gms/internal/du;->errorCode:I

    #@1e
    const/4 v1, -0x2

    #@1f
    if-eq v0, v1, :cond_4c

    #@21
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@23
    iget v0, v0, Lcom/google/android/gms/internal/du;->errorCode:I

    #@25
    const/4 v1, -0x3

    #@26
    if-eq v0, v1, :cond_4c

    #@28
    new-instance v0, Lcom/google/android/gms/internal/dn$a;

    #@2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string v2, "There was a problem getting an ad response. ErrorCode: "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    iget-object v2, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@37
    iget v2, v2, Lcom/google/android/gms/internal/du;->errorCode:I

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    iget-object v2, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@43
    iget v2, v2, Lcom/google/android/gms/internal/du;->errorCode:I

    #@45
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/dn$a;-><init>(Ljava/lang/String;I)V

    #@48
    throw v0

    #@49
    :catchall_49
    move-exception v0

    #@4a
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    #@4b
    throw v0

    #@4c
    :cond_4c
    return-void
.end method

.method private h(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/dn$a;
        }
    .end annotation

    #@0
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/dn;->c(J)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_f

    #@6
    new-instance v0, Lcom/google/android/gms/internal/dn$a;

    #@8
    const-string v1, "Timed out waiting for WebView to finish loading."

    #@a
    const/4 v2, 0x2

    #@b
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/dn$a;-><init>(Ljava/lang/String;I)V

    #@e
    throw v0

    #@f
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dn;->pD:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/du;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    const-string v0, "Received ad response."

    #@5
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@8
    iput-object p1, p0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->ls:Ljava/lang/Object;

    #@c
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    #@f
    monitor-exit v1

    #@10
    return-void

    #@11
    :catchall_11
    move-exception v0

    #@12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    #@13
    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/ex;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    const-string v0, "WebView finished loading."

    #@5
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@8
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/dn;->pD:Z

    #@b
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->ls:Ljava/lang/Object;

    #@d
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    #@10
    monitor-exit v1

    #@11
    return-void

    #@12
    :catchall_12
    move-exception v0

    #@13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    #@14
    throw v0
.end method

.method public bh()V
    .registers 33

    #@0
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/google/android/gms/internal/dn;->ls:Ljava/lang/Object;

    #@4
    move-object/from16 v30, v0

    #@6
    monitor-enter v30

    #@7
    :try_start_7
    const-string v2, "AdLoaderBackgroundTask started."

    #@9
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@c
    move-object/from16 v0, p0

    #@e
    iget-object v2, v0, Lcom/google/android/gms/internal/dn;->pA:Lcom/google/android/gms/internal/k;

    #@10
    invoke-virtual {v2}, Lcom/google/android/gms/internal/k;->z()Lcom/google/android/gms/internal/g;

    #@13
    move-result-object v2

    #@14
    move-object/from16 v0, p0

    #@16
    iget-object v3, v0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    #@18
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/g;->b(Landroid/content/Context;)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v4, v0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    #@20
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/g;->a(Landroid/content/Context;)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    new-instance v12, Lcom/google/android/gms/internal/ds;

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v4, v0, Lcom/google/android/gms/internal/dn;->pz:Lcom/google/android/gms/internal/ds$a;

    #@2a
    invoke-direct {v12, v4, v3, v2}, Lcom/google/android/gms/internal/ds;-><init>(Lcom/google/android/gms/internal/ds$a;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_19c

    #@2d
    const/4 v2, 0x0

    #@2e
    const/4 v3, 0x0

    #@2f
    const/4 v6, -0x2

    #@30
    const-wide/16 v4, -0x1

    #@32
    :try_start_32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@35
    move-result-wide v8

    #@36
    move-object/from16 v0, p0

    #@38
    iget-object v7, v0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    #@3a
    move-object/from16 v0, p0

    #@3c
    invoke-static {v7, v12, v0}, Lcom/google/android/gms/internal/dp;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/dp$a;)Lcom/google/android/gms/internal/em;

    #@3f
    move-result-object v7

    #@40
    move-object/from16 v0, p0

    #@42
    iget-object v10, v0, Lcom/google/android/gms/internal/dn;->py:Ljava/lang/Object;

    #@44
    monitor-enter v10
    :try_end_45
    .catch Lcom/google/android/gms/internal/dn$a; {:try_start_32 .. :try_end_45} :catch_5b
    .catchall {:try_start_32 .. :try_end_45} :catchall_19c

    #@45
    :try_start_45
    move-object/from16 v0, p0

    #@47
    iput-object v7, v0, Lcom/google/android/gms/internal/dn;->pB:Lcom/google/android/gms/internal/em;

    #@49
    move-object/from16 v0, p0

    #@4b
    iget-object v7, v0, Lcom/google/android/gms/internal/dn;->pB:Lcom/google/android/gms/internal/em;

    #@4d
    if-nez v7, :cond_15a

    #@4f
    new-instance v2, Lcom/google/android/gms/internal/dn$a;

    #@51
    const-string v6, "Could not start the ad request service."

    #@53
    const/4 v7, 0x0

    #@54
    invoke-direct {v2, v6, v7}, Lcom/google/android/gms/internal/dn$a;-><init>(Ljava/lang/String;I)V

    #@57
    throw v2

    #@58
    :catchall_58
    move-exception v2

    #@59
    monitor-exit v10
    :try_end_5a
    .catchall {:try_start_45 .. :try_end_5a} :catchall_58

    #@5a
    :try_start_5a
    throw v2
    :try_end_5b
    .catch Lcom/google/android/gms/internal/dn$a; {:try_start_5a .. :try_end_5b} :catch_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_19c

    #@5b
    :catch_5b
    move-exception v2

    #@5c
    :goto_5c
    :try_start_5c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/dn$a;->getErrorCode()I

    #@5f
    move-result v6

    #@60
    const/4 v7, 0x3

    #@61
    if-eq v6, v7, :cond_66

    #@63
    const/4 v7, -0x1

    #@64
    if-ne v6, v7, :cond_1a5

    #@66
    :cond_66
    invoke-virtual {v2}, Lcom/google/android/gms/internal/dn$a;->getMessage()Ljava/lang/String;

    #@69
    move-result-object v2

    #@6a
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@6d
    :goto_6d
    move-object/from16 v0, p0

    #@6f
    iget-object v2, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@71
    if-nez v2, :cond_1ae

    #@73
    new-instance v2, Lcom/google/android/gms/internal/du;

    #@75
    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/du;-><init>(I)V

    #@78
    move-object/from16 v0, p0

    #@7a
    iput-object v2, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@7c
    :goto_7c
    sget-object v2, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@7e
    new-instance v7, Lcom/google/android/gms/internal/dn$1;

    #@80
    move-object/from16 v0, p0

    #@82
    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/dn$1;-><init>(Lcom/google/android/gms/internal/dn;)V

    #@85
    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@88
    move-object/from16 v21, v3

    #@8a
    move-wide/from16 v24, v4

    #@8c
    :goto_8c
    move-object/from16 v0, p0

    #@8e
    iget-object v2, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@90
    iget-object v2, v2, Lcom/google/android/gms/internal/du;->qo:Ljava/lang/String;

    #@92
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_95
    .catchall {:try_start_5c .. :try_end_95} :catchall_19c

    #@95
    move-result v2

    #@96
    if-nez v2, :cond_1c5

    #@98
    :try_start_98
    new-instance v29, Lorg/json/JSONObject;

    #@9a
    move-object/from16 v0, p0

    #@9c
    iget-object v2, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@9e
    iget-object v2, v2, Lcom/google/android/gms/internal/du;->qo:Ljava/lang/String;

    #@a0
    move-object/from16 v0, v29

    #@a2
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a5} :catch_1bf
    .catchall {:try_start_98 .. :try_end_a5} :catchall_19c

    #@a5
    :goto_a5
    :try_start_a5
    new-instance v2, Lcom/google/android/gms/internal/ef;

    #@a7
    iget-object v3, v12, Lcom/google/android/gms/internal/ds;->pX:Lcom/google/android/gms/internal/ai;

    #@a9
    move-object/from16 v0, p0

    #@ab
    iget-object v4, v0, Lcom/google/android/gms/internal/dn;->lN:Lcom/google/android/gms/internal/ex;

    #@ad
    move-object/from16 v0, p0

    #@af
    iget-object v5, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@b1
    iget-object v5, v5, Lcom/google/android/gms/internal/du;->nt:Ljava/util/List;

    #@b3
    move-object/from16 v0, p0

    #@b5
    iget-object v7, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@b7
    iget-object v7, v7, Lcom/google/android/gms/internal/du;->nu:Ljava/util/List;

    #@b9
    move-object/from16 v0, p0

    #@bb
    iget-object v8, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@bd
    iget-object v8, v8, Lcom/google/android/gms/internal/du;->qi:Ljava/util/List;

    #@bf
    move-object/from16 v0, p0

    #@c1
    iget-object v9, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@c3
    iget v9, v9, Lcom/google/android/gms/internal/du;->orientation:I

    #@c5
    move-object/from16 v0, p0

    #@c7
    iget-object v10, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@c9
    iget-wide v10, v10, Lcom/google/android/gms/internal/du;->nx:J

    #@cb
    iget-object v12, v12, Lcom/google/android/gms/internal/ds;->qa:Ljava/lang/String;

    #@cd
    move-object/from16 v0, p0

    #@cf
    iget-object v13, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@d1
    iget-boolean v13, v13, Lcom/google/android/gms/internal/du;->qg:Z

    #@d3
    move-object/from16 v0, p0

    #@d5
    iget-object v14, v0, Lcom/google/android/gms/internal/dn;->pF:Lcom/google/android/gms/internal/bq;

    #@d7
    if-eqz v14, :cond_1c9

    #@d9
    move-object/from16 v0, p0

    #@db
    iget-object v14, v0, Lcom/google/android/gms/internal/dn;->pF:Lcom/google/android/gms/internal/bq;

    #@dd
    iget-object v14, v14, Lcom/google/android/gms/internal/bq;->nM:Lcom/google/android/gms/internal/bl;

    #@df
    :goto_df
    move-object/from16 v0, p0

    #@e1
    iget-object v15, v0, Lcom/google/android/gms/internal/dn;->pF:Lcom/google/android/gms/internal/bq;

    #@e3
    if-eqz v15, :cond_1cc

    #@e5
    move-object/from16 v0, p0

    #@e7
    iget-object v15, v0, Lcom/google/android/gms/internal/dn;->pF:Lcom/google/android/gms/internal/bq;

    #@e9
    iget-object v15, v15, Lcom/google/android/gms/internal/bq;->nN:Lcom/google/android/gms/internal/bu;

    #@eb
    :goto_eb
    move-object/from16 v0, p0

    #@ed
    iget-object v0, v0, Lcom/google/android/gms/internal/dn;->pF:Lcom/google/android/gms/internal/bq;

    #@ef
    move-object/from16 v16, v0

    #@f1
    if-eqz v16, :cond_1cf

    #@f3
    move-object/from16 v0, p0

    #@f5
    iget-object v0, v0, Lcom/google/android/gms/internal/dn;->pF:Lcom/google/android/gms/internal/bq;

    #@f7
    move-object/from16 v16, v0

    #@f9
    move-object/from16 v0, v16

    #@fb
    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->nO:Ljava/lang/String;

    #@fd
    move-object/from16 v16, v0

    #@ff
    :goto_ff
    move-object/from16 v0, p0

    #@101
    iget-object v0, v0, Lcom/google/android/gms/internal/dn;->nf:Lcom/google/android/gms/internal/bm;

    #@103
    move-object/from16 v17, v0

    #@105
    move-object/from16 v0, p0

    #@107
    iget-object v0, v0, Lcom/google/android/gms/internal/dn;->pF:Lcom/google/android/gms/internal/bq;

    #@109
    move-object/from16 v18, v0

    #@10b
    if-eqz v18, :cond_1d3

    #@10d
    move-object/from16 v0, p0

    #@10f
    iget-object v0, v0, Lcom/google/android/gms/internal/dn;->pF:Lcom/google/android/gms/internal/bq;

    #@111
    move-object/from16 v18, v0

    #@113
    move-object/from16 v0, v18

    #@115
    iget-object v0, v0, Lcom/google/android/gms/internal/bq;->nP:Lcom/google/android/gms/internal/bo;

    #@117
    move-object/from16 v18, v0

    #@119
    :goto_119
    move-object/from16 v0, p0

    #@11b
    iget-object v0, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@11d
    move-object/from16 v19, v0

    #@11f
    move-object/from16 v0, v19

    #@121
    iget-wide v0, v0, Lcom/google/android/gms/internal/du;->qh:J

    #@123
    move-wide/from16 v19, v0

    #@125
    move-object/from16 v0, p0

    #@127
    iget-object v0, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@129
    move-object/from16 v22, v0

    #@12b
    move-object/from16 v0, v22

    #@12d
    iget-wide v0, v0, Lcom/google/android/gms/internal/du;->qf:J

    #@12f
    move-wide/from16 v22, v0

    #@131
    move-object/from16 v0, p0

    #@133
    iget-object v0, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@135
    move-object/from16 v26, v0

    #@137
    move-object/from16 v0, v26

    #@139
    iget-wide v0, v0, Lcom/google/android/gms/internal/du;->qk:J

    #@13b
    move-wide/from16 v26, v0

    #@13d
    move-object/from16 v0, p0

    #@13f
    iget-object v0, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@141
    move-object/from16 v28, v0

    #@143
    move-object/from16 v0, v28

    #@145
    iget-object v0, v0, Lcom/google/android/gms/internal/du;->ql:Ljava/lang/String;

    #@147
    move-object/from16 v28, v0

    #@149
    invoke-direct/range {v2 .. v29}, Lcom/google/android/gms/internal/ef;-><init>(Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/ex;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/bl;Lcom/google/android/gms/internal/bu;Ljava/lang/String;Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bo;JLcom/google/android/gms/internal/al;JJJLjava/lang/String;Lorg/json/JSONObject;)V

    #@14c
    sget-object v3, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@14e
    new-instance v4, Lcom/google/android/gms/internal/dn$2;

    #@150
    move-object/from16 v0, p0

    #@152
    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/dn$2;-><init>(Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/ef;)V

    #@155
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@158
    monitor-exit v30
    :try_end_159
    .catchall {:try_start_a5 .. :try_end_159} :catchall_19c

    #@159
    return-void

    #@15a
    :cond_15a
    :try_start_15a
    monitor-exit v10
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_58

    #@15b
    :try_start_15b
    move-object/from16 v0, p0

    #@15d
    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/dn;->g(J)V

    #@160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@163
    move-result-wide v4

    #@164
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/dn;->bn()V

    #@167
    iget-object v7, v12, Lcom/google/android/gms/internal/ds;->kT:Lcom/google/android/gms/internal/al;

    #@169
    iget-object v7, v7, Lcom/google/android/gms/internal/al;->mg:[Lcom/google/android/gms/internal/al;

    #@16b
    if-eqz v7, :cond_173

    #@16d
    move-object/from16 v0, p0

    #@16f
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/dn;->a(Lcom/google/android/gms/internal/ds;)Lcom/google/android/gms/internal/al;
    :try_end_172
    .catch Lcom/google/android/gms/internal/dn$a; {:try_start_15b .. :try_end_172} :catch_5b
    .catchall {:try_start_15b .. :try_end_172} :catchall_19c

    #@172
    move-result-object v2

    #@173
    :cond_173
    :try_start_173
    move-object/from16 v0, p0

    #@175
    iget-object v3, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@177
    iget-boolean v3, v3, Lcom/google/android/gms/internal/du;->qg:Z

    #@179
    if-eqz v3, :cond_186

    #@17b
    move-object/from16 v0, p0

    #@17d
    invoke-direct {v0, v12, v8, v9}, Lcom/google/android/gms/internal/dn;->a(Lcom/google/android/gms/internal/ds;J)V

    #@180
    :goto_180
    move-object/from16 v21, v2

    #@182
    move-wide/from16 v24, v4

    #@184
    goto/16 :goto_8c

    #@186
    :cond_186
    move-object/from16 v0, p0

    #@188
    iget-object v3, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@18a
    iget-boolean v3, v3, Lcom/google/android/gms/internal/du;->qm:Z

    #@18c
    if-eqz v3, :cond_19f

    #@18e
    move-object/from16 v0, p0

    #@190
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/dn;->f(J)V
    :try_end_193
    .catch Lcom/google/android/gms/internal/dn$a; {:try_start_173 .. :try_end_193} :catch_194
    .catchall {:try_start_173 .. :try_end_193} :catchall_19c

    #@193
    goto :goto_180

    #@194
    :catch_194
    move-exception v3

    #@195
    move-object/from16 v31, v3

    #@197
    move-object v3, v2

    #@198
    move-object/from16 v2, v31

    #@19a
    goto/16 :goto_5c

    #@19c
    :catchall_19c
    move-exception v2

    #@19d
    :try_start_19d
    monitor-exit v30
    :try_end_19e
    .catchall {:try_start_19d .. :try_end_19e} :catchall_19c

    #@19e
    throw v2

    #@19f
    :cond_19f
    :try_start_19f
    move-object/from16 v0, p0

    #@1a1
    invoke-direct {v0, v8, v9}, Lcom/google/android/gms/internal/dn;->e(J)V
    :try_end_1a4
    .catch Lcom/google/android/gms/internal/dn$a; {:try_start_19f .. :try_end_1a4} :catch_194
    .catchall {:try_start_19f .. :try_end_1a4} :catchall_19c

    #@1a4
    goto :goto_180

    #@1a5
    :cond_1a5
    :try_start_1a5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/dn$a;->getMessage()Ljava/lang/String;

    #@1a8
    move-result-object v2

    #@1a9
    invoke-static {v2}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@1ac
    goto/16 :goto_6d

    #@1ae
    :cond_1ae
    new-instance v2, Lcom/google/android/gms/internal/du;

    #@1b0
    move-object/from16 v0, p0

    #@1b2
    iget-object v7, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@1b4
    iget-wide v8, v7, Lcom/google/android/gms/internal/du;->nx:J

    #@1b6
    invoke-direct {v2, v6, v8, v9}, Lcom/google/android/gms/internal/du;-><init>(IJ)V

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    iput-object v2, v0, Lcom/google/android/gms/internal/dn;->pC:Lcom/google/android/gms/internal/du;

    #@1bd
    goto/16 :goto_7c

    #@1bf
    :catch_1bf
    move-exception v2

    #@1c0
    const-string v3, "Error parsing the JSON for Active View."

    #@1c2
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/eu;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c5
    .catchall {:try_start_1a5 .. :try_end_1c5} :catchall_19c

    #@1c5
    :cond_1c5
    const/16 v29, 0x0

    #@1c7
    goto/16 :goto_a5

    #@1c9
    :cond_1c9
    const/4 v14, 0x0

    #@1ca
    goto/16 :goto_df

    #@1cc
    :cond_1cc
    const/4 v15, 0x0

    #@1cd
    goto/16 :goto_eb

    #@1cf
    :cond_1cf
    const/16 v16, 0x0

    #@1d1
    goto/16 :goto_ff

    #@1d3
    :cond_1d3
    const/16 v18, 0x0

    #@1d5
    goto/16 :goto_119
.end method

.method protected f(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/dn$a;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->V()Lcom/google/android/gms/internal/al;

    #@5
    move-result-object v0

    #@6
    iget-boolean v1, v0, Lcom/google/android/gms/internal/al;->mf:Z

    #@8
    if-eqz v1, :cond_4a

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@13
    move-result-object v0

    #@14
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    #@16
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->mContext:Landroid/content/Context;

    #@18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1f
    move-result-object v0

    #@20
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    #@22
    :goto_22
    new-instance v2, Lcom/google/android/gms/internal/do;

    #@24
    iget-object v3, p0, Lcom/google/android/gms/internal/dn;->lN:Lcom/google/android/gms/internal/ex;

    #@26
    invoke-direct {v2, p0, v3, v1, v0}, Lcom/google/android/gms/internal/do;-><init>(Lcom/google/android/gms/internal/ey$a;Lcom/google/android/gms/internal/ex;II)V

    #@29
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@2b
    new-instance v1, Lcom/google/android/gms/internal/dn$4;

    #@2d
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/dn$4;-><init>(Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/do;)V

    #@30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@33
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/dn;->h(J)V

    #@36
    invoke-virtual {v2}, Lcom/google/android/gms/internal/do;->bq()Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_4f

    #@3c
    const-string v0, "Ad-Network indicated no fill with passback URL."

    #@3e
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@41
    new-instance v0, Lcom/google/android/gms/internal/dn$a;

    #@43
    const-string v1, "AdNetwork sent passback url"

    #@45
    const/4 v2, 0x3

    #@46
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/dn$a;-><init>(Ljava/lang/String;I)V

    #@49
    throw v0

    #@4a
    :cond_4a
    iget v1, v0, Lcom/google/android/gms/internal/al;->widthPixels:I

    #@4c
    iget v0, v0, Lcom/google/android/gms/internal/al;->heightPixels:I

    #@4e
    goto :goto_22

    #@4f
    :cond_4f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/do;->br()Z

    #@52
    move-result v0

    #@53
    if-nez v0, :cond_5e

    #@55
    new-instance v0, Lcom/google/android/gms/internal/dn$a;

    #@57
    const-string v1, "AdNetwork timed out"

    #@59
    const/4 v2, 0x2

    #@5a
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/dn$a;-><init>(Ljava/lang/String;I)V

    #@5d
    throw v0

    #@5e
    :cond_5e
    return-void
.end method

.method public onStop()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/dn;->py:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->pB:Lcom/google/android/gms/internal/em;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->pB:Lcom/google/android/gms/internal/em;

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/em;->cancel()V

    #@c
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->lN:Lcom/google/android/gms/internal/ex;

    #@e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->stopLoading()V

    #@11
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->lN:Lcom/google/android/gms/internal/ex;

    #@13
    invoke-static {v0}, Lcom/google/android/gms/internal/eo;->a(Landroid/webkit/WebView;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->pE:Lcom/google/android/gms/internal/bk;

    #@18
    if-eqz v0, :cond_1f

    #@1a
    iget-object v0, p0, Lcom/google/android/gms/internal/dn;->pE:Lcom/google/android/gms/internal/bk;

    #@1c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/bk;->cancel()V

    #@1f
    :cond_1f
    monitor-exit v1

    #@20
    return-void

    #@21
    :catchall_21
    move-exception v0

    #@22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    #@23
    throw v0
.end method
