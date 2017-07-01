.class public Lcom/google/android/gms/internal/eh;
.super Ljava/lang/Object;


# static fields
.field private static final rP:Lcom/google/android/gms/internal/eh;

.field public static final rQ:Ljava/lang/String;


# instance fields
.field private final ls:Ljava/lang/Object;

.field public final rR:Ljava/lang/String;

.field private final rS:Lcom/google/android/gms/internal/ei;

.field private rT:Ljava/math/BigInteger;

.field private final rU:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/eg;",
            ">;"
        }
    .end annotation
.end field

.field private final rV:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ek;",
            ">;"
        }
    .end annotation
.end field

.field private rW:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/eh;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/eh;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/eh;->rP:Lcom/google/android/gms/internal/eh;

    #@7
    sget-object v0, Lcom/google/android/gms/internal/eh;->rP:Lcom/google/android/gms/internal/eh;

    #@9
    iget-object v0, v0, Lcom/google/android/gms/internal/eh;->rR:Ljava/lang/String;

    #@b
    sput-object v0, Lcom/google/android/gms/internal/eh;->rQ:Ljava/lang/String;

    #@d
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/eh;->ls:Ljava/lang/Object;

    #@a
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    #@c
    iput-object v0, p0, Lcom/google/android/gms/internal/eh;->rT:Ljava/math/BigInteger;

    #@e
    new-instance v0, Ljava/util/HashSet;

    #@10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@13
    iput-object v0, p0, Lcom/google/android/gms/internal/eh;->rU:Ljava/util/HashSet;

    #@15
    new-instance v0, Ljava/util/HashMap;

    #@17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/google/android/gms/internal/eh;->rV:Ljava/util/HashMap;

    #@1c
    const/4 v0, 0x0

    #@1d
    iput-boolean v0, p0, Lcom/google/android/gms/internal/eh;->rW:Z

    #@1f
    invoke-static {}, Lcom/google/android/gms/internal/eo;->bT()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/google/android/gms/internal/eh;->rR:Ljava/lang/String;

    #@25
    new-instance v0, Lcom/google/android/gms/internal/ei;

    #@27
    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->rR:Ljava/lang/String;

    #@29
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ei;-><init>(Ljava/lang/String;)V

    #@2c
    iput-object v0, p0, Lcom/google/android/gms/internal/eh;->rS:Lcom/google/android/gms/internal/ei;

    #@2e
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ej;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/eh;->rP:Lcom/google/android/gms/internal/eh;

    #@2
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/eh;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ej;Ljava/lang/String;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static b(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/eg;",
            ">;)V"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/internal/eh;->rP:Lcom/google/android/gms/internal/eh;

    #@2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/eh;->c(Ljava/util/HashSet;)V

    #@5
    return-void
.end method

.method public static bH()Lcom/google/android/gms/internal/eh;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/eh;->rP:Lcom/google/android/gms/internal/eh;

    #@2
    return-object v0
.end method

.method public static bI()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/eh;->rP:Lcom/google/android/gms/internal/eh;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/eh;->bJ()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static bK()Lcom/google/android/gms/internal/ei;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/eh;->rP:Lcom/google/android/gms/internal/eh;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/eh;->bL()Lcom/google/android/gms/internal/ei;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static bM()Z
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/eh;->rP:Lcom/google/android/gms/internal/eh;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/eh;->bN()Z

    #@5
    move-result v0

    #@6
    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/eg;)V
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rU:Ljava/util/HashSet;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

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

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/ek;)V
    .registers 5

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rV:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public b(Landroid/content/Context;Lcom/google/android/gms/internal/ej;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 11

    #@0
    iget-object v3, p0, Lcom/google/android/gms/internal/eh;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    :try_start_3
    new-instance v4, Landroid/os/Bundle;

    #@5
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@8
    const-string v1, "app"

    #@a
    iget-object v2, p0, Lcom/google/android/gms/internal/eh;->rS:Lcom/google/android/gms/internal/ei;

    #@c
    invoke-virtual {v2, p1, p3}, Lcom/google/android/gms/internal/ei;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@13
    new-instance v5, Landroid/os/Bundle;

    #@15
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@18
    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->rV:Ljava/util/HashMap;

    #@1a
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v6

    #@22
    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_43

    #@28
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    move-object v0, v1

    #@2d
    check-cast v0, Ljava/lang/String;

    #@2f
    move-object v2, v0

    #@30
    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->rV:Ljava/util/HashMap;

    #@32
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Lcom/google/android/gms/internal/ek;

    #@38
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ek;->toBundle()Landroid/os/Bundle;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3f
    goto :goto_22

    #@40
    :catchall_40
    move-exception v1

    #@41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    #@42
    throw v1

    #@43
    :cond_43
    :try_start_43
    const-string v1, "slots"

    #@45
    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@48
    new-instance v2, Ljava/util/ArrayList;

    #@4a
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@4d
    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->rU:Ljava/util/HashSet;

    #@4f
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@52
    move-result-object v5

    #@53
    :goto_53
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@56
    move-result v1

    #@57
    if-eqz v1, :cond_67

    #@59
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5c
    move-result-object v1

    #@5d
    check-cast v1, Lcom/google/android/gms/internal/eg;

    #@5f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/eg;->toBundle()Landroid/os/Bundle;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@66
    goto :goto_53

    #@67
    :cond_67
    const-string v1, "ads"

    #@69
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@6c
    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->rU:Ljava/util/HashSet;

    #@6e
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ej;->a(Ljava/util/HashSet;)V

    #@71
    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->rU:Ljava/util/HashSet;

    #@73
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    #@76
    monitor-exit v3
    :try_end_77
    .catchall {:try_start_43 .. :try_end_77} :catchall_40

    #@77
    return-object v4
.end method

.method public bJ()Ljava/lang/String;
    .registers 5

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rT:Ljava/math/BigInteger;

    #@5
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iget-object v2, p0, Lcom/google/android/gms/internal/eh;->rT:Ljava/math/BigInteger;

    #@b
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    #@d
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@10
    move-result-object v2

    #@11
    iput-object v2, p0, Lcom/google/android/gms/internal/eh;->rT:Ljava/math/BigInteger;

    #@13
    monitor-exit v1

    #@14
    return-object v0

    #@15
    :catchall_15
    move-exception v0

    #@16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    #@17
    throw v0
.end method

.method public bL()Lcom/google/android/gms/internal/ei;
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rS:Lcom/google/android/gms/internal/ei;

    #@5
    monitor-exit v1

    #@6
    return-object v0

    #@7
    :catchall_7
    move-exception v0

    #@8
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    #@9
    throw v0
.end method

.method public bN()Z
    .registers 4

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/eh;->rW:Z

    #@5
    const/4 v2, 0x1

    #@6
    iput-boolean v2, p0, Lcom/google/android/gms/internal/eh;->rW:Z

    #@8
    monitor-exit v1

    #@9
    return v0

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

.method public c(Ljava/util/HashSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/eg;",
            ">;)V"
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->rU:Ljava/util/HashSet;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

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
