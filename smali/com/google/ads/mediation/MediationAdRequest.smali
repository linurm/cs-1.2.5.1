.class public final Lcom/google/ads/mediation/MediationAdRequest;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final d:Ljava/util/Date;

.field private final e:Lcom/google/ads/AdRequest$Gender;

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

.field private final g:Z

.field private final h:Landroid/location/Location;


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/google/ads/AdRequest$Gender;Ljava/util/Set;ZLandroid/location/Location;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Lcom/google/ads/AdRequest$Gender;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/ads/mediation/MediationAdRequest;->d:Ljava/util/Date;

    #@5
    iput-object p2, p0, Lcom/google/ads/mediation/MediationAdRequest;->e:Lcom/google/ads/AdRequest$Gender;

    #@7
    iput-object p3, p0, Lcom/google/ads/mediation/MediationAdRequest;->f:Ljava/util/Set;

    #@9
    iput-boolean p4, p0, Lcom/google/ads/mediation/MediationAdRequest;->g:Z

    #@b
    iput-object p5, p0, Lcom/google/ads/mediation/MediationAdRequest;->h:Landroid/location/Location;

    #@d
    return-void
.end method


# virtual methods
.method public getAgeInYears()Ljava/lang/Integer;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getBirthday()Ljava/util/Date;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->d:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getGender()Lcom/google/ads/AdRequest$Gender;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->e:Lcom/google/ads/AdRequest$Gender;

    #@2
    return-object v0
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
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->f:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->h:Landroid/location/Location;

    #@2
    return-object v0
.end method

.method public isTesting()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/ads/mediation/MediationAdRequest;->g:Z

    #@2
    return v0
.end method
