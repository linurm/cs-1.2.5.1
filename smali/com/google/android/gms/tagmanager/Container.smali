.class public Lcom/google/android/gms/tagmanager/Container;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;,
        Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;,
        Lcom/google/android/gms/tagmanager/Container$a;,
        Lcom/google/android/gms/tagmanager/Container$b;
    }
.end annotation


# instance fields
.field private final aet:Ljava/lang/String;

.field private final aeu:Lcom/google/android/gms/tagmanager/DataLayer;

.field private aev:Lcom/google/android/gms/tagmanager/cs;

.field private aew:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;",
            ">;"
        }
    .end annotation
.end field

.field private aex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile aey:J

.field private volatile aez:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/c$j;)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aew:Ljava/util/Map;

    #@a
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aex:Ljava/util/Map;

    #@11
    const-string v0, ""

    #@13
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aez:Ljava/lang/String;

    #@15
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->mContext:Landroid/content/Context;

    #@17
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/Container;->aeu:Lcom/google/android/gms/tagmanager/DataLayer;

    #@19
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/Container;->aet:Ljava/lang/String;

    #@1b
    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/Container;->aey:J

    #@1d
    iget-object v0, p6, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@1f
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->a(Lcom/google/android/gms/internal/c$f;)V

    #@22
    iget-object v0, p6, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@24
    if-eqz v0, :cond_2b

    #@26
    iget-object v0, p6, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@28
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->a([Lcom/google/android/gms/internal/c$i;)V

    #@2b
    :cond_2b
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/tagmanager/cq$c;)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aew:Ljava/util/Map;

    #@a
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aex:Ljava/util/Map;

    #@11
    const-string v0, ""

    #@13
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aez:Ljava/lang/String;

    #@15
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->mContext:Landroid/content/Context;

    #@17
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/Container;->aeu:Lcom/google/android/gms/tagmanager/DataLayer;

    #@19
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/Container;->aet:Ljava/lang/String;

    #@1b
    iput-wide p4, p0, Lcom/google/android/gms/tagmanager/Container;->aey:J

    #@1d
    invoke-direct {p0, p6}, Lcom/google/android/gms/tagmanager/Container;->a(Lcom/google/android/gms/tagmanager/cq$c;)V

    #@20
    return-void
.end method

.method private a(Lcom/google/android/gms/internal/c$f;)V
    .registers 5

    #@0
    if-nez p1, :cond_8

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    :cond_8
    :try_start_8
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/cq;->b(Lcom/google/android/gms/internal/c$f;)Lcom/google/android/gms/tagmanager/cq$c;
    :try_end_b
    .catch Lcom/google/android/gms/tagmanager/cq$g; {:try_start_8 .. :try_end_b} :catch_10

    #@b
    move-result-object v0

    #@c
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->a(Lcom/google/android/gms/tagmanager/cq$c;)V

    #@f
    :goto_f
    return-void

    #@10
    :catch_10
    move-exception v0

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string v2, "Not loading resource: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string v2, " because it is invalid: "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cq$g;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@35
    goto :goto_f
.end method

.method private a(Lcom/google/android/gms/tagmanager/cq$c;)V
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$c;->getVersion()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aez:Ljava/lang/String;

    #@7
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aez:Ljava/lang/String;

    #@9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->bI(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/ag;

    #@c
    move-result-object v6

    #@d
    new-instance v0, Lcom/google/android/gms/tagmanager/cs;

    #@f
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->mContext:Landroid/content/Context;

    #@11
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/Container;->aeu:Lcom/google/android/gms/tagmanager/DataLayer;

    #@13
    new-instance v4, Lcom/google/android/gms/tagmanager/Container$a;

    #@15
    invoke-direct {v4, p0, v2}, Lcom/google/android/gms/tagmanager/Container$a;-><init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/Container$1;)V

    #@18
    new-instance v5, Lcom/google/android/gms/tagmanager/Container$b;

    #@1a
    invoke-direct {v5, p0, v2}, Lcom/google/android/gms/tagmanager/Container$b;-><init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/Container$1;)V

    #@1d
    move-object v2, p1

    #@1e
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/cs;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/cq$c;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/s$a;Lcom/google/android/gms/tagmanager/s$a;Lcom/google/android/gms/tagmanager/ag;)V

    #@21
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->a(Lcom/google/android/gms/tagmanager/cs;)V

    #@24
    return-void
.end method

.method private a(Lcom/google/android/gms/tagmanager/cs;)V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->aev:Lcom/google/android/gms/tagmanager/cs;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    #@3
    monitor-exit p0

    #@4
    return-void

    #@5
    :catchall_5
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method private a([Lcom/google/android/gms/internal/c$i;)V
    .registers 6

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    array-length v2, p1

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    if-ge v0, v2, :cond_11

    #@9
    aget-object v3, p1, v0

    #@b
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_7

    #@11
    :cond_11
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->ln()Lcom/google/android/gms/tagmanager/cs;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cs;->h(Ljava/util/List;)V

    #@18
    return-void
.end method

.method private ln()Lcom/google/android/gms/tagmanager/cs;
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aev:Lcom/google/android/gms/tagmanager/cs;
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


# virtual methods
.method bF(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->aew:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aew:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    :catchall_d
    move-exception v0

    #@e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    #@f
    throw v0
.end method

.method bG(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->aex:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aex:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    :catchall_d
    move-exception v0

    #@e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    #@f
    throw v0
.end method

.method bH(Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->ln()Lcom/google/android/gms/tagmanager/cs;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cs;->bH(Ljava/lang/String;)V

    #@7
    return-void
.end method

.method bI(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/ag;
    .registers 4

    #@0
    invoke-static {}, Lcom/google/android/gms/tagmanager/cd;->md()Lcom/google/android/gms/tagmanager/cd;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cd;->me()Lcom/google/android/gms/tagmanager/cd$a;

    #@7
    move-result-object v0

    #@8
    sget-object v1, Lcom/google/android/gms/tagmanager/cd$a;->agD:Lcom/google/android/gms/tagmanager/cd$a;

    #@a
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cd$a;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_10

    #@10
    :cond_10
    new-instance v0, Lcom/google/android/gms/tagmanager/bq;

    #@12
    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/bq;-><init>()V

    #@15
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 5

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->ln()Lcom/google/android/gms/tagmanager/cs;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_14

    #@6
    const-string v0, "getBoolean called for closed container."

    #@8
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@b
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->na()Ljava/lang/Boolean;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@12
    move-result v0

    #@13
    :goto_13
    return v0

    #@14
    :cond_14
    :try_start_14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cs;->cj(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/by;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@1e
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->n(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Boolean;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_27

    #@25
    move-result v0

    #@26
    goto :goto_13

    #@27
    :catch_27
    move-exception v0

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string v2, "Calling getBoolean() threw an exception: "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    const-string v1, " Returning default value."

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@48
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->na()Ljava/lang/Boolean;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@4f
    move-result v0

    #@50
    goto :goto_13
.end method

.method public getContainerId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aet:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 5

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->ln()Lcom/google/android/gms/tagmanager/cs;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_14

    #@6
    const-string v0, "getDouble called for closed container."

    #@8
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@b
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->mZ()Ljava/lang/Double;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@12
    move-result-wide v0

    #@13
    :goto_13
    return-wide v0

    #@14
    :cond_14
    :try_start_14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cs;->cj(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/by;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@1e
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->m(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Double;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_27

    #@25
    move-result-wide v0

    #@26
    goto :goto_13

    #@27
    :catch_27
    move-exception v0

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string v2, "Calling getDouble() threw an exception: "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    const-string v1, " Returning default value."

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@48
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->mZ()Ljava/lang/Double;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@4f
    move-result-wide v0

    #@50
    goto :goto_13
.end method

.method public getLastRefreshTime()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/Container;->aey:J

    #@2
    return-wide v0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 5

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->ln()Lcom/google/android/gms/tagmanager/cs;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_14

    #@6
    const-string v0, "getLong called for closed container."

    #@8
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@b
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->mY()Ljava/lang/Long;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@12
    move-result-wide v0

    #@13
    :goto_13
    return-wide v0

    #@14
    :cond_14
    :try_start_14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cs;->cj(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/by;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@1e
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->l(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Long;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_27

    #@25
    move-result-wide v0

    #@26
    goto :goto_13

    #@27
    :catch_27
    move-exception v0

    #@28
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string v2, "Calling getLong() threw an exception: "

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    const-string v1, " Returning default value."

    #@3d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@48
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->mY()Ljava/lang/Long;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@4f
    move-result-wide v0

    #@50
    goto :goto_13
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->ln()Lcom/google/android/gms/tagmanager/cs;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_10

    #@6
    const-string v0, "getString called for closed container."

    #@8
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@b
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nc()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    :goto_f
    return-object v0

    #@10
    :cond_10
    :try_start_10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/cs;->cj(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/by;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1f

    #@1d
    move-result-object v0

    #@1e
    goto :goto_f

    #@1f
    :catch_1f
    move-exception v0

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string v2, "Calling getString() threw an exception: "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    const-string v1, " Returning default value."

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@40
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nc()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    goto :goto_f
.end method

.method public isDefault()Z
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method

.method lm()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aez:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public registerFunctionCallMacroCallback(Ljava/lang/String;Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;)V
    .registers 5

    #@0
    if-nez p2, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "Macro handler must be non-null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->aew:Ljava/util/Map;

    #@c
    monitor-enter v1

    #@d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aew:Ljava/util/Map;

    #@f
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public registerFunctionCallTagCallback(Ljava/lang/String;Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;)V
    .registers 5

    #@0
    if-nez p2, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "Tag callback must be non-null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->aex:Ljava/util/Map;

    #@c
    monitor-enter v1

    #@d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aex:Ljava/util/Map;

    #@f
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method release()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aev:Lcom/google/android/gms/tagmanager/cs;

    #@3
    return-void
.end method

.method public unregisterFunctionCallMacroCallback(Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->aew:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aew:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    monitor-exit v1

    #@9
    return-void

    #@a
    :catchall_a
    move-exception v0

    #@b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    #@c
    throw v0
.end method

.method public unregisterFunctionCallTagCallback(Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->aex:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->aex:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    monitor-exit v1

    #@9
    return-void

    #@a
    :catchall_a
    move-exception v0

    #@b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    #@c
    throw v0
.end method
