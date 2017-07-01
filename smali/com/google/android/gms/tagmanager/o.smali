.class Lcom/google/android/gms/tagmanager/o;
.super Lcom/google/android/gms/common/api/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/o$a;,
        Lcom/google/android/gms/tagmanager/o$b;,
        Lcom/google/android/gms/tagmanager/o$c;,
        Lcom/google/android/gms/tagmanager/o$d;,
        Lcom/google/android/gms/tagmanager/o$e;,
        Lcom/google/android/gms/tagmanager/o$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$a",
        "<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final DF:Landroid/os/Looper;

.field private final aeF:Lcom/google/android/gms/tagmanager/TagManager;

.field private final aeI:Lcom/google/android/gms/tagmanager/o$d;

.field private final aeJ:Lcom/google/android/gms/tagmanager/cf;

.field private final aeK:I

.field private aeL:Lcom/google/android/gms/tagmanager/o$f;

.field private volatile aeM:Lcom/google/android/gms/tagmanager/n;

.field private volatile aeN:Z

.field private aeO:Lcom/google/android/gms/internal/c$j;

.field private aeP:Ljava/lang/String;

.field private aeQ:Lcom/google/android/gms/tagmanager/o$e;

.field private aeR:Lcom/google/android/gms/tagmanager/o$a;

.field private final aef:Lcom/google/android/gms/internal/ij;

.field private final aet:Ljava/lang/String;

.field private aey:J

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/o$f;Lcom/google/android/gms/tagmanager/o$e;Lcom/google/android/gms/internal/ij;Lcom/google/android/gms/tagmanager/cf;)V
    .registers 12

    #@0
    if-nez p3, :cond_42

    #@2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@5
    move-result-object v0

    #@6
    :goto_6
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;-><init>(Landroid/os/Looper;)V

    #@9
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o;->mContext:Landroid/content/Context;

    #@b
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/o;->aeF:Lcom/google/android/gms/tagmanager/TagManager;

    #@d
    if-nez p3, :cond_13

    #@f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@12
    move-result-object p3

    #@13
    :cond_13
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/o;->DF:Landroid/os/Looper;

    #@15
    iput-object p4, p0, Lcom/google/android/gms/tagmanager/o;->aet:Ljava/lang/String;

    #@17
    iput p5, p0, Lcom/google/android/gms/tagmanager/o;->aeK:I

    #@19
    iput-object p6, p0, Lcom/google/android/gms/tagmanager/o;->aeL:Lcom/google/android/gms/tagmanager/o$f;

    #@1b
    iput-object p7, p0, Lcom/google/android/gms/tagmanager/o;->aeQ:Lcom/google/android/gms/tagmanager/o$e;

    #@1d
    new-instance v0, Lcom/google/android/gms/tagmanager/o$d;

    #@1f
    const/4 v1, 0x0

    #@20
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/tagmanager/o$d;-><init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V

    #@23
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeI:Lcom/google/android/gms/tagmanager/o$d;

    #@25
    new-instance v0, Lcom/google/android/gms/internal/c$j;

    #@27
    invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V

    #@2a
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeO:Lcom/google/android/gms/internal/c$j;

    #@2c
    iput-object p8, p0, Lcom/google/android/gms/tagmanager/o;->aef:Lcom/google/android/gms/internal/ij;

    #@2e
    iput-object p9, p0, Lcom/google/android/gms/tagmanager/o;->aeJ:Lcom/google/android/gms/tagmanager/cf;

    #@30
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/o;->lu()Z

    #@33
    move-result v0

    #@34
    if-eqz v0, :cond_41

    #@36
    invoke-static {}, Lcom/google/android/gms/tagmanager/cd;->md()Lcom/google/android/gms/tagmanager/cd;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cd;->mf()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/o;->bJ(Ljava/lang/String;)V

    #@41
    :cond_41
    return-void

    #@42
    :cond_42
    move-object v0, p3

    #@43
    goto :goto_6
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/r;)V
    .registers 20

    #@0
    new-instance v12, Lcom/google/android/gms/tagmanager/cp;

    #@2
    move-object/from16 v0, p4

    #@4
    invoke-direct {v12, p1, v0}, Lcom/google/android/gms/tagmanager/cp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@7
    new-instance v10, Lcom/google/android/gms/tagmanager/co;

    #@9
    move-object/from16 v0, p4

    #@b
    move-object/from16 v1, p6

    #@d
    invoke-direct {v10, p1, v0, v1}, Lcom/google/android/gms/tagmanager/co;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;)V

    #@10
    invoke-static {}, Lcom/google/android/gms/internal/il;->gb()Lcom/google/android/gms/internal/ij;

    #@13
    move-result-object v11

    #@14
    new-instance v2, Lcom/google/android/gms/tagmanager/bf;

    #@16
    const/16 v3, 0x1e

    #@18
    const-wide/32 v4, 0xdbba0

    #@1b
    const-wide/16 v6, 0x1388

    #@1d
    const-string v8, "refreshing"

    #@1f
    invoke-static {}, Lcom/google/android/gms/internal/il;->gb()Lcom/google/android/gms/internal/ij;

    #@22
    move-result-object v9

    #@23
    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/tagmanager/bf;-><init>(IJJLjava/lang/String;Lcom/google/android/gms/internal/ij;)V

    #@26
    move-object v3, p0

    #@27
    move-object v4, p1

    #@28
    move-object v5, p2

    #@29
    move-object/from16 v6, p3

    #@2b
    move-object/from16 v7, p4

    #@2d
    move/from16 v8, p5

    #@2f
    move-object v9, v12

    #@30
    move-object v12, v2

    #@31
    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/tagmanager/o;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Ljava/lang/String;ILcom/google/android/gms/tagmanager/o$f;Lcom/google/android/gms/tagmanager/o$e;Lcom/google/android/gms/internal/ij;Lcom/google/android/gms/tagmanager/cf;)V

    #@34
    return-void
.end method

.method private H(Z)V
    .registers 12

    #@0
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x0

    #@3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeL:Lcom/google/android/gms/tagmanager/o$f;

    #@5
    new-instance v1, Lcom/google/android/gms/tagmanager/o$b;

    #@7
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/o$b;-><init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V

    #@a
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/o$f;->a(Lcom/google/android/gms/tagmanager/bg;)V

    #@d
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeQ:Lcom/google/android/gms/tagmanager/o$e;

    #@f
    new-instance v1, Lcom/google/android/gms/tagmanager/o$c;

    #@11
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/tagmanager/o$c;-><init>(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/tagmanager/o$1;)V

    #@14
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/o$e;->a(Lcom/google/android/gms/tagmanager/bg;)V

    #@17
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeL:Lcom/google/android/gms/tagmanager/o$f;

    #@19
    iget v1, p0, Lcom/google/android/gms/tagmanager/o;->aeK:I

    #@1b
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/o$f;->dn(I)Lcom/google/android/gms/tagmanager/cq$c;

    #@1e
    move-result-object v6

    #@1f
    if-eqz v6, :cond_3d

    #@21
    new-instance v7, Lcom/google/android/gms/tagmanager/n;

    #@23
    iget-object v8, p0, Lcom/google/android/gms/tagmanager/o;->aeF:Lcom/google/android/gms/tagmanager/TagManager;

    #@25
    iget-object v9, p0, Lcom/google/android/gms/tagmanager/o;->DF:Landroid/os/Looper;

    #@27
    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    #@29
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->mContext:Landroid/content/Context;

    #@2b
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o;->aeF:Lcom/google/android/gms/tagmanager/TagManager;

    #@2d
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    #@30
    move-result-object v2

    #@31
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/o;->aet:Ljava/lang/String;

    #@33
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/tagmanager/cq$c;)V

    #@36
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->aeI:Lcom/google/android/gms/tagmanager/o$d;

    #@38
    invoke-direct {v7, v8, v9, v0, v1}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/n$a;)V

    #@3b
    iput-object v7, p0, Lcom/google/android/gms/tagmanager/o;->aeM:Lcom/google/android/gms/tagmanager/n;

    #@3d
    :cond_3d
    new-instance v0, Lcom/google/android/gms/tagmanager/o$2;

    #@3f
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/tagmanager/o$2;-><init>(Lcom/google/android/gms/tagmanager/o;Z)V

    #@42
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeR:Lcom/google/android/gms/tagmanager/o$a;

    #@44
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/o;->lu()Z

    #@47
    move-result v0

    #@48
    if-eqz v0, :cond_52

    #@4a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeQ:Lcom/google/android/gms/tagmanager/o$e;

    #@4c
    const-string v1, ""

    #@4e
    invoke-interface {v0, v4, v5, v1}, Lcom/google/android/gms/tagmanager/o$e;->e(JLjava/lang/String;)V

    #@51
    :goto_51
    return-void

    #@52
    :cond_52
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeL:Lcom/google/android/gms/tagmanager/o$f;

    #@54
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/o$f;->lw()V

    #@57
    goto :goto_51
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/internal/ij;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aef:Lcom/google/android/gms/internal/ij;

    #@2
    return-object v0
.end method

.method private a(Lcom/google/android/gms/internal/c$j;)V
    .registers 6

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeL:Lcom/google/android/gms/tagmanager/o$f;

    #@3
    if-eqz v0, :cond_1c

    #@5
    new-instance v0, Lcom/google/android/gms/internal/le$a;

    #@7
    invoke-direct {v0}, Lcom/google/android/gms/internal/le$a;-><init>()V

    #@a
    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/o;->aey:J

    #@c
    iput-wide v2, v0, Lcom/google/android/gms/internal/le$a;->aiG:J

    #@e
    new-instance v1, Lcom/google/android/gms/internal/c$f;

    #@10
    invoke-direct {v1}, Lcom/google/android/gms/internal/c$f;-><init>()V

    #@13
    iput-object v1, v0, Lcom/google/android/gms/internal/le$a;->fK:Lcom/google/android/gms/internal/c$f;

    #@15
    iput-object p1, v0, Lcom/google/android/gms/internal/le$a;->aiH:Lcom/google/android/gms/internal/c$j;

    #@17
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->aeL:Lcom/google/android/gms/tagmanager/o$f;

    #@19
    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/o$f;->b(Lcom/google/android/gms/internal/le$a;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    #@1c
    :cond_1c
    monitor-exit p0

    #@1d
    return-void

    #@1e
    :catchall_1e
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method private a(Lcom/google/android/gms/internal/c$j;JZ)V
    .registers 13

    #@0
    const-wide/32 v6, 0x2932e00

    #@3
    monitor-enter p0

    #@4
    if-eqz p4, :cond_c

    #@6
    :try_start_6
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/o;->aeN:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_6a

    #@8
    if-eqz v0, :cond_c

    #@a
    :cond_a
    :goto_a
    monitor-exit p0

    #@b
    return-void

    #@c
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/o;->isReady()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_16

    #@12
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeM:Lcom/google/android/gms/tagmanager/n;

    #@14
    if-nez v0, :cond_16

    #@16
    :cond_16
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o;->aeO:Lcom/google/android/gms/internal/c$j;

    #@18
    iput-wide p2, p0, Lcom/google/android/gms/tagmanager/o;->aey:J

    #@1a
    const-wide/16 v0, 0x0

    #@1c
    const-wide/32 v2, 0x2932e00

    #@1f
    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/o;->aey:J

    #@21
    add-long/2addr v4, v6

    #@22
    iget-object v6, p0, Lcom/google/android/gms/tagmanager/o;->aef:Lcom/google/android/gms/internal/ij;

    #@24
    invoke-interface {v6}, Lcom/google/android/gms/internal/ij;->currentTimeMillis()J

    #@27
    move-result-wide v6

    #@28
    sub-long/2addr v4, v6

    #@29
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@2c
    move-result-wide v2

    #@2d
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    #@30
    move-result-wide v0

    #@31
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/o;->w(J)V

    #@34
    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    #@36
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->mContext:Landroid/content/Context;

    #@38
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o;->aeF:Lcom/google/android/gms/tagmanager/TagManager;

    #@3a
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    #@3d
    move-result-object v2

    #@3e
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/o;->aet:Ljava/lang/String;

    #@40
    move-wide v4, p2

    #@41
    move-object v6, p1

    #@42
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/c$j;)V

    #@45
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->aeM:Lcom/google/android/gms/tagmanager/n;

    #@47
    if-nez v1, :cond_6d

    #@49
    new-instance v1, Lcom/google/android/gms/tagmanager/n;

    #@4b
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o;->aeF:Lcom/google/android/gms/tagmanager/TagManager;

    #@4d
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/o;->DF:Landroid/os/Looper;

    #@4f
    iget-object v4, p0, Lcom/google/android/gms/tagmanager/o;->aeI:Lcom/google/android/gms/tagmanager/o$d;

    #@51
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/n$a;)V

    #@54
    iput-object v1, p0, Lcom/google/android/gms/tagmanager/o;->aeM:Lcom/google/android/gms/tagmanager/n;

    #@56
    :goto_56
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/o;->isReady()Z

    #@59
    move-result v1

    #@5a
    if-nez v1, :cond_a

    #@5c
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->aeR:Lcom/google/android/gms/tagmanager/o$a;

    #@5e
    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/o$a;->b(Lcom/google/android/gms/tagmanager/Container;)Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_a

    #@64
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeM:Lcom/google/android/gms/tagmanager/n;

    #@66
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/o;->b(Lcom/google/android/gms/common/api/Result;)V
    :try_end_69
    .catchall {:try_start_c .. :try_end_69} :catchall_6a

    #@69
    goto :goto_a

    #@6a
    :catchall_6a
    move-exception v0

    #@6b
    monitor-exit p0

    #@6c
    throw v0

    #@6d
    :cond_6d
    :try_start_6d
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->aeM:Lcom/google/android/gms/tagmanager/n;

    #@6f
    invoke-virtual {v1, v0}, Lcom/google/android/gms/tagmanager/n;->a(Lcom/google/android/gms/tagmanager/Container;)V
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_6a

    #@72
    goto :goto_56
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/o;J)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/o;->w(J)V

    #@3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/internal/c$j;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/internal/c$j;)V

    #@3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/o;Lcom/google/android/gms/internal/c$j;JZ)V
    .registers 5

    #@0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/internal/c$j;JZ)V

    #@3
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/o;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/o;->aeN:Z

    #@2
    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/internal/c$j;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeO:Lcom/google/android/gms/internal/c$j;

    #@2
    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/tagmanager/o;)J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/o;->aey:J

    #@2
    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/gms/tagmanager/o;)Z
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/o;->lu()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/tagmanager/n;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeM:Lcom/google/android/gms/tagmanager/n;

    #@2
    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/tagmanager/cf;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeJ:Lcom/google/android/gms/tagmanager/cf;

    #@2
    return-object v0
.end method

.method private lu()Z
    .registers 4

    #@0
    invoke-static {}, Lcom/google/android/gms/tagmanager/cd;->md()Lcom/google/android/gms/tagmanager/cd;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cd;->me()Lcom/google/android/gms/tagmanager/cd$a;

    #@7
    move-result-object v1

    #@8
    sget-object v2, Lcom/google/android/gms/tagmanager/cd$a;->agC:Lcom/google/android/gms/tagmanager/cd$a;

    #@a
    if-eq v1, v2, :cond_14

    #@c
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cd;->me()Lcom/google/android/gms/tagmanager/cd$a;

    #@f
    move-result-object v1

    #@10
    sget-object v2, Lcom/google/android/gms/tagmanager/cd$a;->agD:Lcom/google/android/gms/tagmanager/cd$a;

    #@12
    if-ne v1, v2, :cond_22

    #@14
    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->aet:Ljava/lang/String;

    #@16
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cd;->getContainerId()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_22

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

.method private w(J)V
    .registers 6

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeQ:Lcom/google/android/gms/tagmanager/o$e;

    #@3
    if-nez v0, :cond_c

    #@5
    const-string v0, "Refresh requested, but no network load scheduler."

    #@7
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    #@a
    :goto_a
    monitor-exit p0

    #@b
    return-void

    #@c
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeQ:Lcom/google/android/gms/tagmanager/o$e;

    #@e
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->aeO:Lcom/google/android/gms/internal/c$j;

    #@10
    iget-object v1, v1, Lcom/google/android/gms/internal/c$j;->fL:Ljava/lang/String;

    #@12
    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/tagmanager/o$e;->e(JLjava/lang/String;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    #@15
    goto :goto_a

    #@16
    :catchall_16
    move-exception v0

    #@17
    monitor-exit p0

    #@18
    throw v0
.end method


# virtual methods
.method protected ap(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeM:Lcom/google/android/gms/tagmanager/n;

    #@2
    if-eqz v0, :cond_7

    #@4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeM:Lcom/google/android/gms/tagmanager/n;

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    sget-object v0, Lcom/google/android/gms/common/api/Status;->Eq:Lcom/google/android/gms/common/api/Status;

    #@9
    if-ne p1, v0, :cond_10

    #@b
    const-string v0, "timer expired: setting result to failure"

    #@d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@10
    :cond_10
    new-instance v0, Lcom/google/android/gms/tagmanager/n;

    #@12
    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/common/api/Status;)V

    #@15
    goto :goto_6
.end method

.method bJ(Ljava/lang/String;)V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o;->aeP:Ljava/lang/String;

    #@3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeQ:Lcom/google/android/gms/tagmanager/o$e;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeQ:Lcom/google/android/gms/tagmanager/o$e;

    #@9
    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/o$e;->bM(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    #@c
    :cond_c
    monitor-exit p0

    #@d
    return-void

    #@e
    :catchall_e
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method protected synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/o;->ap(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method lo()Ljava/lang/String;
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeP:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public lr()V
    .registers 9

    #@0
    const/4 v7, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/o;->aeL:Lcom/google/android/gms/tagmanager/o$f;

    #@3
    iget v1, p0, Lcom/google/android/gms/tagmanager/o;->aeK:I

    #@5
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/o$f;->dn(I)Lcom/google/android/gms/tagmanager/cq$c;

    #@8
    move-result-object v6

    #@9
    if-eqz v6, :cond_32

    #@b
    new-instance v0, Lcom/google/android/gms/tagmanager/Container;

    #@d
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/o;->mContext:Landroid/content/Context;

    #@f
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o;->aeF:Lcom/google/android/gms/tagmanager/TagManager;

    #@11
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    #@14
    move-result-object v2

    #@15
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/o;->aet:Ljava/lang/String;

    #@17
    const-wide/16 v4, 0x0

    #@19
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/Container;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/tagmanager/cq$c;)V

    #@1c
    new-instance v1, Lcom/google/android/gms/tagmanager/n;

    #@1e
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/o;->aeF:Lcom/google/android/gms/tagmanager/TagManager;

    #@20
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/o;->DF:Landroid/os/Looper;

    #@22
    new-instance v4, Lcom/google/android/gms/tagmanager/o$1;

    #@24
    invoke-direct {v4, p0}, Lcom/google/android/gms/tagmanager/o$1;-><init>(Lcom/google/android/gms/tagmanager/o;)V

    #@27
    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/tagmanager/n;-><init>(Lcom/google/android/gms/tagmanager/TagManager;Landroid/os/Looper;Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/n$a;)V

    #@2a
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/o;->b(Lcom/google/android/gms/common/api/Result;)V

    #@2d
    :goto_2d
    iput-object v7, p0, Lcom/google/android/gms/tagmanager/o;->aeQ:Lcom/google/android/gms/tagmanager/o$e;

    #@2f
    iput-object v7, p0, Lcom/google/android/gms/tagmanager/o;->aeL:Lcom/google/android/gms/tagmanager/o$f;

    #@31
    return-void

    #@32
    :cond_32
    const-string v0, "Default was requested, but no default container was found"

    #@34
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@37
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@39
    const/16 v1, 0xa

    #@3b
    const-string v2, "Default was requested, but no default container was found"

    #@3d
    invoke-direct {v0, v1, v2, v7}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    #@40
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/o;->ap(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/tagmanager/ContainerHolder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/o;->b(Lcom/google/android/gms/common/api/Result;)V

    #@47
    goto :goto_2d
.end method

.method public ls()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/o;->H(Z)V

    #@4
    return-void
.end method

.method public lt()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/o;->H(Z)V

    #@4
    return-void
.end method
