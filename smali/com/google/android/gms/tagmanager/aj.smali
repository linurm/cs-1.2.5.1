.class abstract Lcom/google/android/gms/tagmanager/aj;
.super Ljava/lang/Object;


# instance fields
.field private final afC:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final afD:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/aj;->afD:Ljava/lang/String;

    #@5
    new-instance v0, Ljava/util/HashSet;

    #@7
    array-length v1, p2

    #@8
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/aj;->afC:Ljava/util/Set;

    #@d
    array-length v1, p2

    #@e
    const/4 v0, 0x0

    #@f
    :goto_f
    if-ge v0, v1, :cond_1b

    #@11
    aget-object v2, p2, v0

    #@13
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/aj;->afC:Ljava/util/Set;

    #@15
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_f

    #@1b
    :cond_1b
    return-void
.end method


# virtual methods
.method a(Ljava/util/Set;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/aj;->afC:Ljava/util/Set;

    #@2
    invoke-interface {p1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public lL()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/aj;->afD:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public lM()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/aj;->afC:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public abstract lh()Z
.end method

.method public abstract w(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)",
            "Lcom/google/android/gms/internal/d$a;"
        }
    .end annotation
.end method
