.class Lcom/google/android/gms/tagmanager/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cr;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public b(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public lY()Lcom/google/android/gms/tagmanager/cm;
    .registers 2

    #@0
    new-instance v0, Lcom/google/android/gms/tagmanager/bu;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/bu;-><init>()V

    #@5
    return-object v0
.end method
