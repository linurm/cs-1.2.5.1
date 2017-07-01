.class public final Lcom/google/android/gms/internal/az;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bc;


# instance fields
.field private final mS:Lcom/google/android/gms/internal/ba;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ba;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/az;->mS:Lcom/google/android/gms/internal/ba;

    #@5
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
    const-string v0, "name"

    #@2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    if-nez v0, :cond_10

    #@a
    const-string v0, "App event with no name parameter."

    #@c
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/az;->mS:Lcom/google/android/gms/internal/ba;

    #@12
    const-string v1, "info"

    #@14
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Ljava/lang/String;

    #@1a
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/ba;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    goto :goto_f
.end method
