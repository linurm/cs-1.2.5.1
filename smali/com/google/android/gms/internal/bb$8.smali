.class final Lcom/google/android/gms/internal/bb$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/bb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ex;Ljava/util/Map;)V
    .registers 7
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
    const-string v0, "tx"

    #@2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    const-string v1, "ty"

    #@a
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/lang/String;

    #@10
    const-string v2, "td"

    #@12
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Ljava/lang/String;

    #@18
    :try_start_18
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1b
    move-result v0

    #@1c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f
    move-result v1

    #@20
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@23
    move-result v2

    #@24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->cc()Lcom/google/android/gms/internal/k;

    #@27
    move-result-object v3

    #@28
    if-eqz v3, :cond_31

    #@2a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/k;->z()Lcom/google/android/gms/internal/g;

    #@2d
    move-result-object v3

    #@2e
    invoke-interface {v3, v0, v1, v2}, Lcom/google/android/gms/internal/g;->a(III)V
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_31} :catch_32

    #@31
    :cond_31
    :goto_31
    return-void

    #@32
    :catch_32
    move-exception v0

    #@33
    const-string v0, "Could not parse touch parameters from gmsg."

    #@35
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@38
    goto :goto_31
.end method
