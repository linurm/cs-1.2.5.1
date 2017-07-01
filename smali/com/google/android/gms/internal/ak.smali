.class public Lcom/google/android/gms/internal/ak;
.super Ljava/lang/Object;


# static fields
.field public static final md:Lcom/google/android/gms/internal/ak;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/ak;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ak;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/ak;->md:Lcom/google/android/gms/internal/ak;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static aF()Lcom/google/android/gms/internal/ak;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/ak;->md:Lcom/google/android/gms/internal/ak;

    #@2
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/android/gms/internal/at;)Lcom/google/android/gms/internal/ai;
    .registers 20

    #@0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/at;->getBirthday()Ljava/util/Date;

    #@3
    move-result-object v2

    #@4
    if-eqz v2, :cond_5b

    #@6
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    #@9
    move-result-wide v4

    #@a
    :goto_a
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/at;->getContentUrl()Ljava/lang/String;

    #@d
    move-result-object v15

    #@e
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/at;->getGender()I

    #@11
    move-result v7

    #@12
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/at;->getKeywords()Ljava/util/Set;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_5e

    #@1c
    new-instance v3, Ljava/util/ArrayList;

    #@1e
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@21
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@24
    move-result-object v8

    #@25
    :goto_25
    move-object/from16 v0, p2

    #@27
    move-object/from16 v1, p1

    #@29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/at;->isTestDevice(Landroid/content/Context;)Z

    #@2c
    move-result v9

    #@2d
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/at;->aK()I

    #@30
    move-result v10

    #@31
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/at;->getLocation()Landroid/location/Location;

    #@34
    move-result-object v14

    #@35
    const-class v2, Lcom/google/ads/mediation/admob/AdMobAdapter;

    #@37
    move-object/from16 v0, p2

    #@39
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/at;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/at;->getManualImpressionsEnabled()Z

    #@40
    move-result v11

    #@41
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/at;->getPublisherProvidedId()Ljava/lang/String;

    #@44
    move-result-object v12

    #@45
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/at;->aH()Lcom/google/android/gms/ads/search/SearchAdRequest;

    #@48
    move-result-object v2

    #@49
    if-eqz v2, :cond_60

    #@4b
    new-instance v13, Lcom/google/android/gms/internal/aw;

    #@4d
    invoke-direct {v13, v2}, Lcom/google/android/gms/internal/aw;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    #@50
    :goto_50
    new-instance v2, Lcom/google/android/gms/internal/ai;

    #@52
    const/4 v3, 0x4

    #@53
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/at;->aJ()Landroid/os/Bundle;

    #@56
    move-result-object v16

    #@57
    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/internal/ai;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/aw;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;)V

    #@5a
    return-object v2

    #@5b
    :cond_5b
    const-wide/16 v4, -0x1

    #@5d
    goto :goto_a

    #@5e
    :cond_5e
    const/4 v8, 0x0

    #@5f
    goto :goto_25

    #@60
    :cond_60
    const/4 v13, 0x0

    #@61
    goto :goto_50
.end method
