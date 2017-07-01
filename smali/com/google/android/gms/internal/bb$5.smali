.class final Lcom/google/android/gms/internal/bb$5;
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
    .registers 6
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
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->ca()Lcom/google/android/gms/internal/cf;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_c

    #@6
    const-string v0, "A GMSG tried to use a custom close button on something that wasn\'t an overlay."

    #@8
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@b
    :goto_b
    return-void

    #@c
    :cond_c
    const-string v1, "1"

    #@e
    const-string v2, "custom_close"

    #@10
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cf;->j(Z)V

    #@1b
    goto :goto_b
.end method
