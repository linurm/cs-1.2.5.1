.class public final Lcom/google/android/gms/internal/at;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/at$a;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;


# instance fields
.field private final d:Ljava/util/Date;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/location/Location;

.field private final mk:Ljava/lang/String;

.field private final ml:I

.field private final mm:Z

.field private final mn:Landroid/os/Bundle;

.field private final mo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final mp:Ljava/lang/String;

.field private final mq:Lcom/google/android/gms/ads/search/SearchAdRequest;

.field private final mr:I

.field private final ms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "emulator"

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/et;->y(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/internal/at;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/at$a;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/at;-><init>(Lcom/google/android/gms/internal/at$a;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    #@4
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/at$a;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/at$a;->a(Lcom/google/android/gms/internal/at$a;)Ljava/util/Date;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/internal/at;->d:Ljava/util/Date;

    #@9
    invoke-static {p1}, Lcom/google/android/gms/internal/at$a;->b(Lcom/google/android/gms/internal/at$a;)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/google/android/gms/internal/at;->mk:Ljava/lang/String;

    #@f
    invoke-static {p1}, Lcom/google/android/gms/internal/at$a;->c(Lcom/google/android/gms/internal/at$a;)I

    #@12
    move-result v0

    #@13
    iput v0, p0, Lcom/google/android/gms/internal/at;->ml:I

    #@15
    invoke-static {p1}, Lcom/google/android/gms/internal/at$a;->d(Lcom/google/android/gms/internal/at$a;)Ljava/util/HashSet;

    #@18
    move-result-object v0

    #@19
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/internal/at;->f:Ljava/util/Set;

    #@1f
    invoke-static {p1}, Lcom/google/android/gms/internal/at$a;->e(Lcom/google/android/gms/internal/at$a;)Landroid/location/Location;

    #@22
    move-result-object v0

    #@23
    iput-object v0, p0, Lcom/google/android/gms/internal/at;->h:Landroid/location/Location;

    #@25
    invoke-static {p1}, Lcom/google/android/gms/internal/at$a;->f(Lcom/google/android/gms/internal/at$a;)Z

    #@28
    move-result v0

    #@29
    iput-boolean v0, p0, Lcom/google/android/gms/internal/at;->mm:Z

    #@2b
    invoke-static {p1}, Lcom/google/android/gms/internal/at$a;->g(Lcom/google/android/gms/internal/at$a;)Landroid/os/Bundle;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lcom/google/android/gms/internal/at;->mn:Landroid/os/Bundle;

    #@31
    invoke-static {p1}, Lcom/google/android/gms/internal/at$a;->h(Lcom/google/android/gms/internal/at$a;)Ljava/util/HashMap;

    #@34
    move-result-object v0

    #@35
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/google/android/gms/internal/at;->mo:Ljava/util/Map;

    #@3b
    invoke-static {p1}, Lcom/google/android/gms/internal/at$a;->i(Lcom/google/android/gms/internal/at$a;)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    iput-object v0, p0, Lcom/google/android/gms/internal/at;->mp:Ljava/lang/String;

    #@41
    iput-object p2, p0, Lcom/google/android/gms/internal/at;->mq:Lcom/google/android/gms/ads/search/SearchAdRequest;

    #@43
    invoke-static {p1}, Lcom/google/android/gms/internal/at$a;->j(Lcom/google/android/gms/internal/at$a;)I

    #@46
    move-result v0

    #@47
    iput v0, p0, Lcom/google/android/gms/internal/at;->mr:I

    #@49
    invoke-static {p1}, Lcom/google/android/gms/internal/at$a;->k(Lcom/google/android/gms/internal/at$a;)Ljava/util/HashSet;

    #@4c
    move-result-object v0

    #@4d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@50
    move-result-object v0

    #@51
    iput-object v0, p0, Lcom/google/android/gms/internal/at;->ms:Ljava/util/Set;

    #@53
    return-void
.end method


# virtual methods
.method public aH()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->mq:Lcom/google/android/gms/ads/search/SearchAdRequest;

    #@2
    return-object v0
.end method

.method public aI()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->mo:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public aJ()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->mn:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public aK()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/at;->mr:I

    #@2
    return v0
.end method

.method public getBirthday()Ljava/util/Date;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->d:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->mk:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->mn:Landroid/os/Bundle;

    #@2
    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_17

    #@a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@15
    move-result-object v0

    #@16
    :goto_16
    return-object v0

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    goto :goto_16
.end method

.method public getGender()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/at;->ml:I

    #@2
    return v0
.end method

.method public getKeywords()Ljava/util/Set;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->f:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->h:Landroid/location/Location;

    #@2
    return-object v0
.end method

.method public getManualImpressionsEnabled()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/at;->mm:Z

    #@2
    return v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->mo:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/ads/mediation/NetworkExtras;

    #@8
    return-object v0
.end method

.method public getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->mn:Landroid/os/Bundle;

    #@2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getPublisherProvidedId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->mp:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/at;->ms:Ljava/util/Set;

    #@2
    invoke-static {p1}, Lcom/google/android/gms/internal/et;->r(Landroid/content/Context;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method
