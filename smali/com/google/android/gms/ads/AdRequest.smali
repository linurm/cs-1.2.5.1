.class public final Lcom/google/android/gms/ads/AdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I = 0x0

.field public static final MAX_CONTENT_URL_LENGTH:I = 0x200


# instance fields
.field private final ks:Lcom/google/android/gms/internal/at;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/at;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    #@2
    sput-object v0, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    #@4
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/internal/at;

    #@5
    invoke-static {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->a(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/at$a;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/at;-><init>(Lcom/google/android/gms/internal/at$a;)V

    #@c
    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@e
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/AdRequest$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V

    #@3
    return-void
.end method


# virtual methods
.method T()Lcom/google/android/gms/internal/at;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    return-object v0
.end method

.method public getBirthday()Ljava/util/Date;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/at;->getBirthday()Ljava/util/Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/at;->getContentUrl()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at;->getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getGender()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/at;->getGender()I

    #@5
    move-result v0

    #@6
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
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/at;->getKeywords()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/at;->getLocation()Landroid/location/Location;

    #@5
    move-result-object v0

    #@6
    return-object v0
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
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->ks:Lcom/google/android/gms/internal/at;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at;->isTestDevice(Landroid/content/Context;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
