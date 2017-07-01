.class final Lcom/google/android/gms/internal/bb$4;
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
    .registers 4
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
    const-string v0, "A GMSG tried to close something that wasn\'t an overlay."

    #@8
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@b
    :goto_b
    return-void

    #@c
    :cond_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->close()V

    #@f
    goto :goto_b
.end method
