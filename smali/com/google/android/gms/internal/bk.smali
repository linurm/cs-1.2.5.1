.class public final Lcom/google/android/gms/internal/bk;
.super Ljava/lang/Object;


# instance fields
.field private final kB:Lcom/google/android/gms/internal/bt;

.field private final ls:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final ne:Lcom/google/android/gms/internal/ds;

.field private final nf:Lcom/google/android/gms/internal/bm;

.field private ng:Z

.field private nh:Lcom/google/android/gms/internal/bp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/bt;Lcom/google/android/gms/internal/bm;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/bk;->ls:Ljava/lang/Object;

    #@a
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Lcom/google/android/gms/internal/bk;->ng:Z

    #@d
    iput-object p1, p0, Lcom/google/android/gms/internal/bk;->mContext:Landroid/content/Context;

    #@f
    iput-object p2, p0, Lcom/google/android/gms/internal/bk;->ne:Lcom/google/android/gms/internal/ds;

    #@11
    iput-object p3, p0, Lcom/google/android/gms/internal/bk;->kB:Lcom/google/android/gms/internal/bt;

    #@13
    iput-object p4, p0, Lcom/google/android/gms/internal/bk;->nf:Lcom/google/android/gms/internal/bm;

    #@15
    return-void
.end method


# virtual methods
.method public a(JJ)Lcom/google/android/gms/internal/bq;
    .registers 22

    #@0
    const-string v4, "Starting mediation."

    #@2
    invoke-static {v4}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5
    move-object/from16 v0, p0

    #@7
    iget-object v4, v0, Lcom/google/android/gms/internal/bk;->nf:Lcom/google/android/gms/internal/bm;

    #@9
    iget-object v4, v4, Lcom/google/android/gms/internal/bm;->nr:Ljava/util/List;

    #@b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v13

    #@f
    :cond_f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_aa

    #@15
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v9

    #@19
    check-cast v9, Lcom/google/android/gms/internal/bl;

    #@1b
    new-instance v4, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string v5, "Trying mediation network: "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    iget-object v5, v9, Lcom/google/android/gms/internal/bl;->nl:Ljava/lang/String;

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-static {v4}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@33
    iget-object v4, v9, Lcom/google/android/gms/internal/bl;->nm:Ljava/util/List;

    #@35
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v14

    #@39
    :cond_39
    :goto_39
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_f

    #@3f
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v6

    #@43
    check-cast v6, Ljava/lang/String;

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v15, v0, Lcom/google/android/gms/internal/bk;->ls:Ljava/lang/Object;

    #@49
    monitor-enter v15

    #@4a
    :try_start_4a
    move-object/from16 v0, p0

    #@4c
    iget-boolean v4, v0, Lcom/google/android/gms/internal/bk;->ng:Z

    #@4e
    if-eqz v4, :cond_58

    #@50
    new-instance v4, Lcom/google/android/gms/internal/bq;

    #@52
    const/4 v5, -0x1

    #@53
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/bq;-><init>(I)V

    #@56
    monitor-exit v15

    #@57
    :goto_57
    return-object v4

    #@58
    :cond_58
    new-instance v4, Lcom/google/android/gms/internal/bp;

    #@5a
    move-object/from16 v0, p0

    #@5c
    iget-object v5, v0, Lcom/google/android/gms/internal/bk;->mContext:Landroid/content/Context;

    #@5e
    move-object/from16 v0, p0

    #@60
    iget-object v7, v0, Lcom/google/android/gms/internal/bk;->kB:Lcom/google/android/gms/internal/bt;

    #@62
    move-object/from16 v0, p0

    #@64
    iget-object v8, v0, Lcom/google/android/gms/internal/bk;->nf:Lcom/google/android/gms/internal/bm;

    #@66
    move-object/from16 v0, p0

    #@68
    iget-object v10, v0, Lcom/google/android/gms/internal/bk;->ne:Lcom/google/android/gms/internal/ds;

    #@6a
    iget-object v10, v10, Lcom/google/android/gms/internal/ds;->pX:Lcom/google/android/gms/internal/ai;

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget-object v11, v0, Lcom/google/android/gms/internal/bk;->ne:Lcom/google/android/gms/internal/ds;

    #@70
    iget-object v11, v11, Lcom/google/android/gms/internal/ds;->kT:Lcom/google/android/gms/internal/al;

    #@72
    move-object/from16 v0, p0

    #@74
    iget-object v12, v0, Lcom/google/android/gms/internal/bk;->ne:Lcom/google/android/gms/internal/ds;

    #@76
    iget-object v12, v12, Lcom/google/android/gms/internal/ds;->kQ:Lcom/google/android/gms/internal/ev;

    #@78
    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/bp;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/bt;Lcom/google/android/gms/internal/bm;Lcom/google/android/gms/internal/bl;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/ev;)V

    #@7b
    move-object/from16 v0, p0

    #@7d
    iput-object v4, v0, Lcom/google/android/gms/internal/bk;->nh:Lcom/google/android/gms/internal/bp;

    #@7f
    monitor-exit v15
    :try_end_80
    .catchall {:try_start_4a .. :try_end_80} :catchall_96

    #@80
    move-object/from16 v0, p0

    #@82
    iget-object v4, v0, Lcom/google/android/gms/internal/bk;->nh:Lcom/google/android/gms/internal/bp;

    #@84
    move-wide/from16 v0, p1

    #@86
    move-wide/from16 v2, p3

    #@88
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/bp;->b(JJ)Lcom/google/android/gms/internal/bq;

    #@8b
    move-result-object v4

    #@8c
    iget v5, v4, Lcom/google/android/gms/internal/bq;->nL:I

    #@8e
    if-nez v5, :cond_99

    #@90
    const-string v5, "Adapter succeeded."

    #@92
    invoke-static {v5}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@95
    goto :goto_57

    #@96
    :catchall_96
    move-exception v4

    #@97
    :try_start_97
    monitor-exit v15
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    #@98
    throw v4

    #@99
    :cond_99
    iget-object v5, v4, Lcom/google/android/gms/internal/bq;->nN:Lcom/google/android/gms/internal/bu;

    #@9b
    if-eqz v5, :cond_39

    #@9d
    sget-object v5, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@9f
    new-instance v6, Lcom/google/android/gms/internal/bk$1;

    #@a1
    move-object/from16 v0, p0

    #@a3
    invoke-direct {v6, v0, v4}, Lcom/google/android/gms/internal/bk$1;-><init>(Lcom/google/android/gms/internal/bk;Lcom/google/android/gms/internal/bq;)V

    #@a6
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a9
    goto :goto_39

    #@aa
    :cond_aa
    new-instance v4, Lcom/google/android/gms/internal/bq;

    #@ac
    const/4 v5, 0x1

    #@ad
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/bq;-><init>(I)V

    #@b0
    goto :goto_57
.end method

.method public cancel()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/bk;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    const/4 v0, 0x1

    #@4
    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/bk;->ng:Z

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->nh:Lcom/google/android/gms/internal/bp;

    #@8
    if-eqz v0, :cond_f

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/bk;->nh:Lcom/google/android/gms/internal/bp;

    #@c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/bp;->cancel()V

    #@f
    :cond_f
    monitor-exit v1

    #@10
    return-void

    #@11
    :catchall_11
    move-exception v0

    #@12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    #@13
    throw v0
.end method
