.class public Lcom/google/android/gms/tagmanager/DataLayer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/DataLayer$a;,
        Lcom/google/android/gms/tagmanager/DataLayer$b;,
        Lcom/google/android/gms/tagmanager/DataLayer$c;,
        Lcom/google/android/gms/tagmanager/DataLayer$c$a;
    }
.end annotation


# static fields
.field public static final EVENT_KEY:Ljava/lang/String; = "event"

.field public static final OBJECT_NOT_PRESENT:Ljava/lang/Object;

.field static final aeY:[Ljava/lang/String;

.field private static final aeZ:Ljava/util/regex/Pattern;


# instance fields
.field private final afa:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/google/android/gms/tagmanager/DataLayer$b;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final afb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final afc:Ljava/util/concurrent/locks/ReentrantLock;

.field private final afd:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final afe:Lcom/google/android/gms/tagmanager/DataLayer$c;

.field private final aff:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/tagmanager/DataLayer;->OBJECT_NOT_PRESENT:Ljava/lang/Object;

    #@7
    const-string v0, "gtm.lifetime"

    #@9
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    const-string v1, "\\."

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Lcom/google/android/gms/tagmanager/DataLayer;->aeY:[Ljava/lang/String;

    #@15
    const-string v0, "(\\d+)\\s*([smhd]?)"

    #@17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@1a
    move-result-object v0

    #@1b
    sput-object v0, Lcom/google/android/gms/tagmanager/DataLayer;->aeZ:Ljava/util/regex/Pattern;

    #@1d
    return-void
.end method

.method constructor <init>()V
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/tagmanager/DataLayer$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/DataLayer$1;-><init>()V

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/DataLayer;-><init>(Lcom/google/android/gms/tagmanager/DataLayer$c;)V

    #@8
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/DataLayer$c;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afe:Lcom/google/android/gms/tagmanager/DataLayer$c;

    #@5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@7
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afa:Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    new-instance v0, Ljava/util/HashMap;

    #@e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@11
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afb:Ljava/util/Map;

    #@13
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@15
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@18
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afc:Ljava/util/concurrent/locks/ReentrantLock;

    #@1a
    new-instance v0, Ljava/util/LinkedList;

    #@1c
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@1f
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afd:Ljava/util/LinkedList;

    #@21
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@23
    const/4 v1, 0x1

    #@24
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@27
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->aff:Ljava/util/concurrent/CountDownLatch;

    #@29
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/DataLayer;->ly()V

    #@2c
    return-void
.end method

.method private A(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->B(Ljava/util/Map;)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    :goto_6
    return-void

    #@7
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->D(Ljava/util/Map;)Ljava/util/List;

    #@a
    move-result-object v1

    #@b
    const-string v2, "gtm.lifetime"

    #@d
    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@10
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afe:Lcom/google/android/gms/tagmanager/DataLayer$c;

    #@12
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@15
    move-result-wide v4

    #@16
    invoke-interface {v2, v1, v4, v5}, Lcom/google/android/gms/tagmanager/DataLayer$c;->a(Ljava/util/List;J)V

    #@19
    goto :goto_6
.end method

.method private B(Ljava/util/Map;)Ljava/lang/Long;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->C(Ljava/util/Map;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->bO(Ljava/lang/String;)Ljava/lang/Long;

    #@f
    move-result-object v0

    #@10
    goto :goto_7
.end method

.method private C(Ljava/util/Map;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    sget-object v2, Lcom/google/android/gms/tagmanager/DataLayer;->aeY:[Ljava/lang/String;

    #@2
    array-length v3, v2

    #@3
    const/4 v0, 0x0

    #@4
    move v1, v0

    #@5
    move-object v0, p1

    #@6
    :goto_6
    if-ge v1, v3, :cond_f

    #@8
    aget-object v4, v2, v1

    #@a
    instance-of v5, v0, Ljava/util/Map;

    #@c
    if-nez v5, :cond_10

    #@e
    const/4 v0, 0x0

    #@f
    :cond_f
    return-object v0

    #@10
    :cond_10
    check-cast v0, Ljava/util/Map;

    #@12
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object p1

    #@16
    add-int/lit8 v0, v1, 0x1

    #@18
    move v1, v0

    #@19
    move-object v0, p1

    #@1a
    goto :goto_6
.end method

.method private D(Ljava/util/Map;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/DataLayer$a;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    const-string v1, ""

    #@7
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V

    #@a
    return-object v0
.end method

.method private E(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afb:Ljava/util/Map;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@6
    move-result-object v0

    #@7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v2

    #@b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_28

    #@11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/tagmanager/DataLayer;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    #@1e
    move-result-object v0

    #@1f
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afb:Ljava/util/Map;

    #@21
    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Ljava/util/Map;Ljava/util/Map;)V

    #@24
    goto :goto_b

    #@25
    :catchall_25
    move-exception v0

    #@26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    #@27
    throw v0

    #@28
    :cond_28
    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_25

    #@29
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->F(Ljava/util/Map;)V

    #@2c
    return-void
.end method

.method private F(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afa:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1a

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/google/android/gms/tagmanager/DataLayer$b;

    #@16
    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/DataLayer$b;->x(Ljava/util/Map;)V

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/DataLayer;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->aff:Ljava/util/concurrent/CountDownLatch;

    #@2
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/DataLayer;Ljava/util/Map;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->z(Ljava/util/Map;)V

    #@3
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/tagmanager/DataLayer$a;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_61

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/util/Map$Entry;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@20
    move-result v1

    #@21
    if-nez v1, :cond_49

    #@23
    const-string v1, ""

    #@25
    :goto_25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Ljava/lang/String;

    #@2f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    instance-of v3, v3, Ljava/util/Map;

    #@3d
    if-eqz v3, :cond_4c

    #@3f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    check-cast v0, Ljava/util/Map;

    #@45
    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Ljava/util/Map;Ljava/lang/String;Ljava/util/Collection;)V

    #@48
    goto :goto_8

    #@49
    :cond_49
    const-string v1, "."

    #@4b
    goto :goto_25

    #@4c
    :cond_4c
    const-string v3, "gtm.lifetime"

    #@4e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v3

    #@52
    if-nez v3, :cond_8

    #@54
    new-instance v3, Lcom/google/android/gms/tagmanager/DataLayer$a;

    #@56
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@59
    move-result-object v0

    #@5a
    invoke-direct {v3, v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@5d
    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@60
    goto :goto_8

    #@61
    :cond_61
    return-void
.end method

.method static bO(Ljava/lang/String;)Ljava/lang/Long;
    .registers 11

    #@0
    const-wide/16 v4, 0x0

    #@2
    const-wide/16 v8, 0x3e8

    #@4
    const-wide/16 v6, 0x3c

    #@6
    const/4 v0, 0x0

    #@7
    sget-object v1, Lcom/google/android/gms/tagmanager/DataLayer;->aeZ:Ljava/util/regex/Pattern;

    #@9
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_2a

    #@13
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string v2, "unknown _lifetime: "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->B(Ljava/lang/String;)V

    #@29
    :goto_29
    return-object v0

    #@2a
    :cond_2a
    const/4 v2, 0x1

    #@2b
    :try_start_2b
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_32} :catch_4e

    #@32
    move-result-wide v2

    #@33
    :goto_33
    cmp-long v4, v2, v4

    #@35
    if-gtz v4, :cond_67

    #@37
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string v2, "non-positive _lifetime: "

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->B(Ljava/lang/String;)V

    #@4d
    goto :goto_29

    #@4e
    :catch_4e
    move-exception v2

    #@4f
    new-instance v2, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string v3, "illegal number in _lifetime value: "

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@65
    move-wide v2, v4

    #@66
    goto :goto_33

    #@67
    :cond_67
    const/4 v4, 0x2

    #@68
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@6f
    move-result v4

    #@70
    if-nez v4, :cond_77

    #@72
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@75
    move-result-object v0

    #@76
    goto :goto_29

    #@77
    :cond_77
    const/4 v4, 0x0

    #@78
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    #@7b
    move-result v1

    #@7c
    sparse-switch v1, :sswitch_data_bc

    #@7f
    new-instance v1, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string v2, "unknown units in _lifetime: "

    #@86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v1

    #@8e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v1

    #@92
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@95
    goto :goto_29

    #@96
    :sswitch_96
    mul-long v0, v2, v8

    #@98
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9b
    move-result-object v0

    #@9c
    goto :goto_29

    #@9d
    :sswitch_9d
    mul-long v0, v2, v8

    #@9f
    mul-long/2addr v0, v6

    #@a0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a3
    move-result-object v0

    #@a4
    goto :goto_29

    #@a5
    :sswitch_a5
    mul-long v0, v2, v8

    #@a7
    mul-long/2addr v0, v6

    #@a8
    mul-long/2addr v0, v6

    #@a9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@ac
    move-result-object v0

    #@ad
    goto/16 :goto_29

    #@af
    :sswitch_af
    mul-long v0, v2, v8

    #@b1
    mul-long/2addr v0, v6

    #@b2
    mul-long/2addr v0, v6

    #@b3
    const-wide/16 v2, 0x18

    #@b5
    mul-long/2addr v0, v2

    #@b6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b9
    move-result-object v0

    #@ba
    goto/16 :goto_29

    #@bc
    :sswitch_data_bc
    .sparse-switch
        0x64 -> :sswitch_af
        0x68 -> :sswitch_a5
        0x6d -> :sswitch_9d
        0x73 -> :sswitch_96
    .end sparse-switch
.end method

.method public static varargs listOf([Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    const/4 v0, 0x0

    #@6
    :goto_6
    array-length v2, p0

    #@7
    if-ge v0, v2, :cond_11

    #@9
    aget-object v2, p0, v0

    #@b
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_6

    #@11
    :cond_11
    return-object v1
.end method

.method private ly()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afe:Lcom/google/android/gms/tagmanager/DataLayer$c;

    #@2
    new-instance v1, Lcom/google/android/gms/tagmanager/DataLayer$2;

    #@4
    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/DataLayer$2;-><init>(Lcom/google/android/gms/tagmanager/DataLayer;)V

    #@7
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer$c;->a(Lcom/google/android/gms/tagmanager/DataLayer$c$a;)V

    #@a
    return-void
.end method

.method private lz()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afd:Ljava/util/LinkedList;

    #@4
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/util/Map;

    #@a
    if-eqz v0, :cond_24

    #@c
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->E(Ljava/util/Map;)V

    #@f
    add-int/lit8 v0, v1, 0x1

    #@11
    const/16 v1, 0x1f4

    #@13
    if-le v0, v1, :cond_22

    #@15
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afd:Ljava/util/LinkedList;

    #@17
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    #@1a
    new-instance v0, Ljava/lang/RuntimeException;

    #@1c
    const-string v1, "Seems like an infinite loop of pushing to the data layer"

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    :cond_22
    move v1, v0

    #@23
    goto :goto_2

    #@24
    :cond_24
    return-void
.end method

.method public static varargs mapOf([Ljava/lang/Object;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    array-length v0, p0

    #@1
    rem-int/lit8 v0, v0, 0x2

    #@3
    if-eqz v0, :cond_d

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "expected even number of key-value pairs"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    new-instance v2, Ljava/util/HashMap;

    #@f
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@12
    const/4 v0, 0x0

    #@13
    move v1, v0

    #@14
    :goto_14
    array-length v0, p0

    #@15
    if-ge v1, v0, :cond_47

    #@17
    aget-object v0, p0, v1

    #@19
    instance-of v0, v0, Ljava/lang/String;

    #@1b
    if-nez v0, :cond_38

    #@1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    new-instance v2, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string v3, "key is not a string: "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    aget-object v1, p0, v1

    #@2c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    :cond_38
    aget-object v0, p0, v1

    #@3a
    check-cast v0, Ljava/lang/String;

    #@3c
    add-int/lit8 v3, v1, 0x1

    #@3e
    aget-object v3, p0, v3

    #@40
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    add-int/lit8 v0, v1, 0x2

    #@45
    move v1, v0

    #@46
    goto :goto_14

    #@47
    :cond_47
    return-object v2
.end method

.method private z(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afc:Ljava/util/concurrent/locks/ReentrantLock;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    #@5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afd:Ljava/util/LinkedList;

    #@7
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    #@a
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afc:Ljava/util/concurrent/locks/ReentrantLock;

    #@c
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    #@f
    move-result v0

    #@10
    const/4 v1, 0x1

    #@11
    if-ne v0, v1, :cond_16

    #@13
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/DataLayer;->lz()V

    #@16
    :cond_16
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->A(Ljava/util/Map;)V
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1f

    #@19
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afc:Ljava/util/concurrent/locks/ReentrantLock;

    #@1b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@1e
    return-void

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afc:Ljava/util/concurrent/locks/ReentrantLock;

    #@22
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    #@25
    throw v0
.end method


# virtual methods
.method a(Lcom/google/android/gms/tagmanager/DataLayer$b;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afa:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    return-void
.end method

.method a(Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_f

    #@a
    const/4 v0, 0x0

    #@b
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e
    goto :goto_0

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    move v2, v0

    #@11
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@14
    move-result v0

    #@15
    if-ge v2, v0, :cond_66

    #@17
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    instance-of v1, v0, Ljava/util/List;

    #@1d
    if-eqz v1, :cond_3e

    #@1f
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    instance-of v1, v1, Ljava/util/List;

    #@25
    if-nez v1, :cond_2f

    #@27
    new-instance v1, Ljava/util/ArrayList;

    #@29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@2c
    invoke-interface {p2, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@2f
    :cond_2f
    check-cast v0, Ljava/util/List;

    #@31
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Ljava/util/List;

    #@37
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Ljava/util/List;Ljava/util/List;)V

    #@3a
    :cond_3a
    :goto_3a
    add-int/lit8 v0, v2, 0x1

    #@3c
    move v2, v0

    #@3d
    goto :goto_11

    #@3e
    :cond_3e
    instance-of v1, v0, Ljava/util/Map;

    #@40
    if-eqz v1, :cond_5e

    #@42
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@45
    move-result-object v1

    #@46
    instance-of v1, v1, Ljava/util/Map;

    #@48
    if-nez v1, :cond_52

    #@4a
    new-instance v1, Ljava/util/HashMap;

    #@4c
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@4f
    invoke-interface {p2, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@52
    :cond_52
    check-cast v0, Ljava/util/Map;

    #@54
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v1

    #@58
    check-cast v1, Ljava/util/Map;

    #@5a
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Ljava/util/Map;Ljava/util/Map;)V

    #@5d
    goto :goto_3a

    #@5e
    :cond_5e
    sget-object v1, Lcom/google/android/gms/tagmanager/DataLayer;->OBJECT_NOT_PRESENT:Ljava/lang/Object;

    #@60
    if-eq v0, v1, :cond_3a

    #@62
    invoke-interface {p2, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@65
    goto :goto_3a

    #@66
    :cond_66
    return-void
.end method

.method a(Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_5c

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/String;

    #@14
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    instance-of v3, v1, Ljava/util/List;

    #@1a
    if-eqz v3, :cond_38

    #@1c
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    instance-of v3, v3, Ljava/util/List;

    #@22
    if-nez v3, :cond_2c

    #@24
    new-instance v3, Ljava/util/ArrayList;

    #@26
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@29
    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    :cond_2c
    check-cast v1, Ljava/util/List;

    #@2e
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/util/List;

    #@34
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Ljava/util/List;Ljava/util/List;)V

    #@37
    goto :goto_8

    #@38
    :cond_38
    instance-of v3, v1, Ljava/util/Map;

    #@3a
    if-eqz v3, :cond_58

    #@3c
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v3

    #@40
    instance-of v3, v3, Ljava/util/Map;

    #@42
    if-nez v3, :cond_4c

    #@44
    new-instance v3, Ljava/util/HashMap;

    #@46
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@49
    invoke-interface {p2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    :cond_4c
    check-cast v1, Ljava/util/Map;

    #@4e
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    move-result-object v0

    #@52
    check-cast v0, Ljava/util/Map;

    #@54
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Ljava/util/Map;Ljava/util/Map;)V

    #@57
    goto :goto_8

    #@58
    :cond_58
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    goto :goto_8

    #@5c
    :cond_5c
    return-void
.end method

.method bN(Ljava/lang/String;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/lang/String;Ljava/lang/Object;)V

    #@4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afe:Lcom/google/android/gms/tagmanager/DataLayer$c;

    #@6
    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/DataLayer$c;->bP(Ljava/lang/String;)V

    #@9
    return-void
.end method

.method c(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    const-string v1, "\\."

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@e
    move-result-object v4

    #@f
    const/4 v0, 0x0

    #@10
    move-object v1, v2

    #@11
    :goto_11
    array-length v3, v4

    #@12
    add-int/lit8 v3, v3, -0x1

    #@14
    if-ge v0, v3, :cond_24

    #@16
    new-instance v3, Ljava/util/HashMap;

    #@18
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@1b
    aget-object v5, v4, v0

    #@1d
    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    add-int/lit8 v0, v0, 0x1

    #@22
    move-object v1, v3

    #@23
    goto :goto_11

    #@24
    :cond_24
    array-length v0, v4

    #@25
    add-int/lit8 v0, v0, -0x1

    #@27
    aget-object v0, v4, v0

    #@29
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    return-object v2
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 11

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v4, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afb:Ljava/util/Map;

    #@3
    monitor-enter v4

    #@4
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/DataLayer;->afb:Ljava/util/Map;

    #@6
    const-string v0, "\\."

    #@8
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    array-length v6, v5
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_2e

    #@d
    const/4 v0, 0x0

    #@e
    move v8, v0

    #@f
    move-object v0, v2

    #@10
    move v2, v8

    #@11
    :goto_11
    if-ge v2, v6, :cond_2c

    #@13
    aget-object v3, v5, v2

    #@15
    :try_start_15
    instance-of v7, v0, Ljava/util/Map;

    #@17
    if-nez v7, :cond_1c

    #@19
    monitor-exit v4

    #@1a
    move-object v0, v1

    #@1b
    :goto_1b
    return-object v0

    #@1c
    :cond_1c
    check-cast v0, Ljava/util/Map;

    #@1e
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    if-nez v3, :cond_27

    #@24
    monitor-exit v4

    #@25
    move-object v0, v1

    #@26
    goto :goto_1b

    #@27
    :cond_27
    add-int/lit8 v0, v2, 0x1

    #@29
    move v2, v0

    #@2a
    move-object v0, v3

    #@2b
    goto :goto_11

    #@2c
    :cond_2c
    monitor-exit v4

    #@2d
    goto :goto_1b

    #@2e
    :catchall_2e
    move-exception v0

    #@2f
    monitor-exit v4
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_2e

    #@30
    throw v0
.end method

.method public push(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/tagmanager/DataLayer;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    #@7
    return-void
.end method

.method public push(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer;->aff:Ljava/util/concurrent/CountDownLatch;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_9

    #@5
    :goto_5
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->z(Ljava/util/Map;)V

    #@8
    return-void

    #@9
    :catch_9
    move-exception v0

    #@a
    const-string v0, "DataLayer.push: unexpected InterruptedException"

    #@c
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@f
    goto :goto_5
.end method

.method public pushEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@5
    const-string v1, "event"

    #@7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    #@d
    return-void
.end method
