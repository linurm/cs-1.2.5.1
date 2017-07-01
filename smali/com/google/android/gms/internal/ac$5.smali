.class Lcom/google/android/gms/internal/ac$5;
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ac$5;->lM:Lcom/google/android/gms/internal/ac;

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
    const-string v0, "isVisible"

    #@2
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    const-string v0, "1"

    #@b
    const-string v1, "isVisible"

    #@d
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_25

    #@17
    const-string v0, "true"

    #@19
    const-string v1, "isVisible"

    #@1b
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_34

    #@25
    :cond_25
    const/4 v0, 0x1

    #@26
    :goto_26
    iget-object v1, p0, Lcom/google/android/gms/internal/ac$5;->lM:Lcom/google/android/gms/internal/ac;

    #@28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@2f
    move-result v0

    #@30
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ac;->d(Z)V

    #@33
    goto :goto_8

    #@34
    :cond_34
    const/4 v0, 0x0

    #@35
    goto :goto_26
.end method
