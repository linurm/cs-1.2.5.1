.class Lcom/google/android/gms/internal/dz$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qF:Lcom/google/android/gms/internal/dz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dz;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/dz$2;->qF:Lcom/google/android/gms/internal/dz;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ex;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ex;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dz$2;->qF:Lcom/google/android/gms/internal/dz;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/dz;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    new-instance v2, Lcom/google/android/gms/internal/eb;

    #@9
    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/eb;-><init>(Ljava/util/Map;)V

    #@c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/eb;->getUrl()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    if-nez v3, :cond_19

    #@12
    const-string v0, "URL missing in loadAdUrl GMSG."

    #@14
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@17
    monitor-exit v1

    #@18
    :goto_18
    return-void

    #@19
    :cond_19
    const-string v0, "%40mediation_adapters%40"

    #@1b
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_53

    #@21
    const-string v4, "%40mediation_adapters%40"

    #@23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@26
    move-result-object v5

    #@27
    const-string v0, "check_adapters"

    #@29
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Ljava/lang/String;

    #@2f
    iget-object v6, p0, Lcom/google/android/gms/internal/dz$2;->qF:Lcom/google/android/gms/internal/dz;

    #@31
    invoke-static {v6}, Lcom/google/android/gms/internal/dz;->b(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    invoke-static {v5, v0, v6}, Lcom/google/android/gms/internal/el;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string v4, "Ad request URL modified to "

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@53
    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/dz$2;->qF:Lcom/google/android/gms/internal/dz;

    #@55
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/dz;->a(Lcom/google/android/gms/internal/dz;Lcom/google/android/gms/internal/eb;)Lcom/google/android/gms/internal/eb;

    #@58
    iget-object v0, p0, Lcom/google/android/gms/internal/dz$2;->qF:Lcom/google/android/gms/internal/dz;

    #@5a
    invoke-static {v0}, Lcom/google/android/gms/internal/dz;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    #@61
    monitor-exit v1

    #@62
    goto :goto_18

    #@63
    :catchall_63
    move-exception v0

    #@64
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_7 .. :try_end_65} :catchall_63

    #@65
    throw v0
.end method
