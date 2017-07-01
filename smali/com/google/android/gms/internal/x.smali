.class Lcom/google/android/gms/internal/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/z;


# instance fields
.field private le:Lcom/google/android/gms/internal/ex;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ex;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/x;->le:Lcom/google/android/gms/internal/ex;

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ac;Z)V
    .registers 6

    #@0
    new-instance v1, Ljava/util/HashMap;

    #@2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@5
    if-eqz p2, :cond_16

    #@7
    const-string v0, "1"

    #@9
    :goto_9
    const-string v2, "isVisible"

    #@b
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/x;->le:Lcom/google/android/gms/internal/ex;

    #@10
    const-string v2, "onAdVisibilityChanged"

    #@12
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ex;->a(Ljava/lang/String;Ljava/util/Map;)V

    #@15
    return-void

    #@16
    :cond_16
    const-string v0, "0"

    #@18
    goto :goto_9
.end method
