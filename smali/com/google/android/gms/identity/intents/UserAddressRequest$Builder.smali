.class public final Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identity/intents/UserAddressRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic UF:Lcom/google/android/gms/identity/intents/UserAddressRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->UF:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;Lcom/google/android/gms/identity/intents/UserAddressRequest$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;-><init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;)V

    #@3
    return-void
.end method


# virtual methods
.method public addAllowedCountrySpecification(Lcom/google/android/gms/identity/intents/model/CountrySpecification;)Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->UF:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->UE:Ljava/util/List;

    #@4
    if-nez v0, :cond_f

    #@6
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->UF:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    #@8
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->UE:Ljava/util/List;

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->UF:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    #@11
    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->UE:Ljava/util/List;

    #@13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16
    return-object p0
.end method

.method public addAllowedCountrySpecifications(Ljava/util/Collection;)Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;)",
            "Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->UF:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->UE:Ljava/util/List;

    #@4
    if-nez v0, :cond_f

    #@6
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->UF:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    #@8
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->UE:Ljava/util/List;

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->UF:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    #@11
    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->UE:Ljava/util/List;

    #@13
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@16
    return-object p0
.end method

.method public build()Lcom/google/android/gms/identity/intents/UserAddressRequest;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->UF:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->UE:Ljava/util/List;

    #@4
    if-eqz v0, :cond_12

    #@6
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->UF:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    #@8
    iget-object v1, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->UF:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    #@a
    iget-object v1, v1, Lcom/google/android/gms/identity/intents/UserAddressRequest;->UE:Ljava/util/List;

    #@c
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@f
    move-result-object v1

    #@10
    iput-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->UE:Ljava/util/List;

    #@12
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->UF:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    #@14
    return-object v0
.end method
