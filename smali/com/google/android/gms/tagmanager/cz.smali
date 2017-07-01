.class Lcom/google/android/gms/tagmanager/cz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/k",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final ahX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final ahY:I

.field private final ahZ:Lcom/google/android/gms/tagmanager/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/l$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private aia:I


# direct methods
.method constructor <init>(ILcom/google/android/gms/tagmanager/l$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tagmanager/l$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cz;->ahX:Ljava/util/Map;

    #@a
    iput p1, p0, Lcom/google/android/gms/tagmanager/cz;->ahY:I

    #@c
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/cz;->ahZ:Lcom/google/android/gms/tagmanager/l$a;

    #@e
    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    if-eqz p1, :cond_5

    #@3
    if-nez p2, :cond_10

    #@5
    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "key == null || value == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    #@d
    :catchall_d
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0

    #@10
    :cond_10
    :try_start_10
    iget v0, p0, Lcom/google/android/gms/tagmanager/cz;->aia:I

    #@12
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cz;->ahZ:Lcom/google/android/gms/tagmanager/l$a;

    #@14
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/tagmanager/l$a;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@17
    move-result v1

    #@18
    add-int/2addr v0, v1

    #@19
    iput v0, p0, Lcom/google/android/gms/tagmanager/cz;->aia:I

    #@1b
    iget v0, p0, Lcom/google/android/gms/tagmanager/cz;->aia:I

    #@1d
    iget v1, p0, Lcom/google/android/gms/tagmanager/cz;->ahY:I

    #@1f
    if-le v0, v1, :cond_54

    #@21
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cz;->ahX:Ljava/util/Map;

    #@23
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@26
    move-result-object v0

    #@27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v1

    #@2b
    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_54

    #@31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Ljava/util/Map$Entry;

    #@37
    iget v2, p0, Lcom/google/android/gms/tagmanager/cz;->aia:I

    #@39
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/cz;->ahZ:Lcom/google/android/gms/tagmanager/l$a;

    #@3b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3e
    move-result-object v4

    #@3f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    invoke-interface {v3, v4, v0}, Lcom/google/android/gms/tagmanager/l$a;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@46
    move-result v0

    #@47
    sub-int v0, v2, v0

    #@49
    iput v0, p0, Lcom/google/android/gms/tagmanager/cz;->aia:I

    #@4b
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@4e
    iget v0, p0, Lcom/google/android/gms/tagmanager/cz;->aia:I

    #@50
    iget v2, p0, Lcom/google/android/gms/tagmanager/cz;->ahY:I

    #@52
    if-gt v0, v2, :cond_2b

    #@54
    :cond_54
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cz;->ahX:Ljava/util/Map;

    #@56
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_10 .. :try_end_59} :catchall_d

    #@59
    monitor-exit p0

    #@5a
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cz;->ahX:Ljava/util/Map;

    #@3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    #@6
    move-result-object v0

    #@7
    monitor-exit p0

    #@8
    return-object v0

    #@9
    :catchall_9
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method
