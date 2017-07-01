.class public final Lcom/google/android/gms/internal/ld;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ld;->lc()Lcom/google/android/gms/plus/model/people/Person;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAboutMe()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getAgeRange()Lcom/google/android/gms/plus/model/people/Person$AgeRange;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getBraggingRights()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getCircledByCount()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCover()Lcom/google/android/gms/plus/model/people/Person$Cover;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getCurrentLocation()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "displayName"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ld;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getGender()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "personId"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ld;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getImage()Lcom/google/android/gms/plus/model/people/Person$Image;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ks$c;

    #@2
    const-string v1, "image"

    #@4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ld;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ks$c;-><init>(Ljava/lang/String;)V

    #@b
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getName()Lcom/google/android/gms/plus/model/people/Person$Name;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getObjectType()I
    .registers 2

    #@0
    const-string v0, "objectType"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ld;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/google/android/gms/internal/ks$e;->bA(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public synthetic getOrganizations()Ljava/util/List;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ld;->kZ()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public synthetic getPlacesLived()Ljava/util/List;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ld;->la()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getPlusOneCount()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getRelationshipStatus()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getTagline()Ljava/lang/String;
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "url"

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ld;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public synthetic getUrls()Ljava/util/List;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ld;->lb()Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public hasAboutMe()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasAgeRange()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasBirthday()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasBraggingRights()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasCircledByCount()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasCover()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasCurrentLocation()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasDisplayName()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public hasGender()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasId()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public hasImage()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public hasIsPlusUser()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasLanguage()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasName()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasNickname()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasObjectType()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public hasOrganizations()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasPlacesLived()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasPlusOneCount()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasRelationshipStatus()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasTagline()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasUrl()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public hasUrls()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public hasVerified()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isPlusUser()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isVerified()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public kZ()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$Organizations;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public la()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$PlacesLived;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public lb()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$Urls;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public lc()Lcom/google/android/gms/plus/model/people/Person;
    .registers 7

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ks;

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ld;->getDisplayName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ld;->getId()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ld;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Lcom/google/android/gms/internal/ks$c;

    #@10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ld;->getObjectType()I

    #@13
    move-result v4

    #@14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ld;->getUrl()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ks;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ks$c;ILjava/lang/String;)V

    #@1b
    return-object v0
.end method
