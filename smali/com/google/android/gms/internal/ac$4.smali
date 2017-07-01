.class Lcom/google/android/gms/internal/ac$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ac;->b(Lcom/google/android/gms/internal/ae;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lM:Lcom/google/android/gms/internal/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ac;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/ac$4;->lM:Lcom/google/android/gms/internal/ac;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ex;Ljava/util/Map;)V
    .registers 5
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
    const-string v0, "pingType"

    #@2
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_41

    #@8
    const-string v0, "unloadPing"

    #@a
    const-string v1, "pingType"

    #@c
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_41

    #@16
    iget-object v0, p0, Lcom/google/android/gms/internal/ac$4;->lM:Lcom/google/android/gms/internal/ac;

    #@18
    iget-object v1, p0, Lcom/google/android/gms/internal/ac$4;->lM:Lcom/google/android/gms/internal/ac;

    #@1a
    invoke-static {v1}, Lcom/google/android/gms/internal/ac;->b(Lcom/google/android/gms/internal/ac;)Lcom/google/android/gms/internal/ae;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ac;->c(Lcom/google/android/gms/internal/ae;)V

    #@21
    new-instance v0, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string v1, "Unregistered GMSG handlers for: "

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    iget-object v1, p0, Lcom/google/android/gms/internal/ac$4;->lM:Lcom/google/android/gms/internal/ac;

    #@2e
    invoke-static {v1}, Lcom/google/android/gms/internal/ac;->c(Lcom/google/android/gms/internal/ac;)Lcom/google/android/gms/internal/aa;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/aa;->au()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@41
    :cond_41
    return-void
.end method
