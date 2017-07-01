.class public final Lcom/google/android/gms/internal/bm;
.super Ljava/lang/Object;


# instance fields
.field public final nr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/bl;",
            ">;"
        }
    .end annotation
.end field

.field public final ns:J

.field public final nt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nw:Ljava/lang/String;

.field public final nx:J

.field public ny:I

.field public nz:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v5, 0x2

    #@1
    const/4 v9, 0x0

    #@2
    const-wide/16 v2, -0x1

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    new-instance v4, Lorg/json/JSONObject;

    #@9
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@c
    invoke-static {v5}, Lcom/google/android/gms/internal/eu;->p(I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_2c

    #@12
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v1, "Mediation Response JSON: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@2c
    :cond_2c
    const-string v0, "ad_networks"

    #@2e
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@31
    move-result-object v5

    #@32
    new-instance v6, Ljava/util/ArrayList;

    #@34
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    #@37
    move-result v0

    #@38
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@3b
    const/4 v0, -0x1

    #@3c
    const/4 v1, 0x0

    #@3d
    :goto_3d
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    #@40
    move-result v7

    #@41
    if-ge v1, v7, :cond_5b

    #@43
    new-instance v7, Lcom/google/android/gms/internal/bl;

    #@45
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    #@48
    move-result-object v8

    #@49
    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/bl;-><init>(Lorg/json/JSONObject;)V

    #@4c
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4f
    if-gez v0, :cond_58

    #@51
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/bm;->a(Lcom/google/android/gms/internal/bl;)Z

    #@54
    move-result v7

    #@55
    if-eqz v7, :cond_58

    #@57
    move v0, v1

    #@58
    :cond_58
    add-int/lit8 v1, v1, 0x1

    #@5a
    goto :goto_3d

    #@5b
    :cond_5b
    iput v0, p0, Lcom/google/android/gms/internal/bm;->ny:I

    #@5d
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    #@60
    move-result v0

    #@61
    iput v0, p0, Lcom/google/android/gms/internal/bm;->nz:I

    #@63
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@66
    move-result-object v0

    #@67
    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->nr:Ljava/util/List;

    #@69
    const-string v0, "qdata"

    #@6b
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->nw:Ljava/lang/String;

    #@71
    const-string v0, "settings"

    #@73
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@76
    move-result-object v0

    #@77
    if-eqz v0, :cond_ad

    #@79
    const-string v1, "ad_network_timeout_millis"

    #@7b
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    #@7e
    move-result-wide v4

    #@7f
    iput-wide v4, p0, Lcom/google/android/gms/internal/bm;->ns:J

    #@81
    const-string v1, "click_urls"

    #@83
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/br;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    #@86
    move-result-object v1

    #@87
    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->nt:Ljava/util/List;

    #@89
    const-string v1, "imp_urls"

    #@8b
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/br;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    #@8e
    move-result-object v1

    #@8f
    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->nu:Ljava/util/List;

    #@91
    const-string v1, "nofill_urls"

    #@93
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/br;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    #@96
    move-result-object v1

    #@97
    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->nv:Ljava/util/List;

    #@99
    const-string v1, "refresh"

    #@9b
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    #@9e
    move-result-wide v0

    #@9f
    const-wide/16 v4, 0x0

    #@a1
    cmp-long v4, v0, v4

    #@a3
    if-lez v4, :cond_ab

    #@a5
    const-wide/16 v2, 0x3e8

    #@a7
    mul-long/2addr v0, v2

    #@a8
    :goto_a8
    iput-wide v0, p0, Lcom/google/android/gms/internal/bm;->nx:J

    #@aa
    :goto_aa
    return-void

    #@ab
    :cond_ab
    move-wide v0, v2

    #@ac
    goto :goto_a8

    #@ad
    :cond_ad
    iput-wide v2, p0, Lcom/google/android/gms/internal/bm;->ns:J

    #@af
    iput-object v9, p0, Lcom/google/android/gms/internal/bm;->nt:Ljava/util/List;

    #@b1
    iput-object v9, p0, Lcom/google/android/gms/internal/bm;->nu:Ljava/util/List;

    #@b3
    iput-object v9, p0, Lcom/google/android/gms/internal/bm;->nv:Ljava/util/List;

    #@b5
    iput-wide v2, p0, Lcom/google/android/gms/internal/bm;->nx:J

    #@b7
    goto :goto_aa
.end method

.method private a(Lcom/google/android/gms/internal/bl;)Z
    .registers 5

    #@0
    iget-object v0, p1, Lcom/google/android/gms/internal/bl;->nm:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1c

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Ljava/lang/String;

    #@12
    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    #@14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_6

    #@1a
    const/4 v0, 0x1

    #@1b
    :goto_1b
    return v0

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    goto :goto_1b
.end method
