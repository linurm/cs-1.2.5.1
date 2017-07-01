.class final Lcom/google/android/gms/internal/bb$6;
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
    const-string v0, "u"

    #@2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    if-nez v0, :cond_10

    #@a
    const-string v0, "URL missing from httpTrack GMSG."

    #@c
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    new-instance v1, Lcom/google/android/gms/internal/es;

    #@12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->getContext()Landroid/content/Context;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->cd()Lcom/google/android/gms/internal/ev;

    #@19
    move-result-object v3

    #@1a
    iget-object v3, v3, Lcom/google/android/gms/internal/ev;->sw:Ljava/lang/String;

    #@1c
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/es;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/es;->start()V

    #@22
    goto :goto_f
.end method
