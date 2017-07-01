.class public final Lcom/google/android/gms/ads/AdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final kt:Lcom/google/android/gms/internal/at$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/internal/at$a;

    #@5
    invoke-direct {v0}, Lcom/google/android/gms/internal/at$a;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@a
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/at$a;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    return-object v0
.end method


# virtual methods
.method public addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/at$a;->b(Ljava/lang/Class;Landroid/os/Bundle;)V

    #@5
    return-object p0
.end method

.method public addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at$a;->g(Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at$a;->a(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    #@5
    return-object p0
.end method

.method public addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/at$a;->a(Ljava/lang/Class;Landroid/os/Bundle;)V

    #@5
    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at$a;->h(Ljava/lang/String;)V

    #@5
    return-object p0
.end method

.method public build()Lcom/google/android/gms/ads/AdRequest;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/ads/AdRequest;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/AdRequest$1;)V

    #@6
    return-object v0
.end method

.method public setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at$a;->a(Ljava/util/Date;)V

    #@5
    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 8

    #@0
    const/16 v5, 0x200

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    const-string v0, "Content URL must be non-null."

    #@6
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    const-string v0, "Content URL must be non-empty."

    #@b
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    #@e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@11
    move-result v0

    #@12
    if-gt v0, v5, :cond_33

    #@14
    move v0, v1

    #@15
    :goto_15
    const-string v3, "Content URL must not exceed %d in length.  Provided length was %d."

    #@17
    const/4 v4, 0x2

    #@18
    new-array v4, v4, [Ljava/lang/Object;

    #@1a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v5

    #@1e
    aput-object v5, v4, v2

    #@20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@23
    move-result v2

    #@24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object v2

    #@28
    aput-object v2, v4, v1

    #@2a
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    #@2d
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2f
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at$a;->i(Ljava/lang/String;)V

    #@32
    return-object p0

    #@33
    :cond_33
    move v0, v2

    #@34
    goto :goto_15
.end method

.method public setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at$a;->e(I)V

    #@5
    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at$a;->a(Landroid/location/Location;)V

    #@5
    return-object p0
.end method

.method public tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->kt:Lcom/google/android/gms/internal/at$a;

    #@2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/at$a;->h(Z)V

    #@5
    return-object p0
.end method
