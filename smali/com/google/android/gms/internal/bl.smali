.class public final Lcom/google/android/gms/internal/bl;
.super Ljava/lang/Object;


# instance fields
.field public final nk:Ljava/lang/String;

.field public final nl:Ljava/lang/String;

.field public final nm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nn:Ljava/lang/String;

.field public final no:Ljava/lang/String;

.field public final np:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const-string v0, "id"

    #@6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/internal/bl;->nl:Ljava/lang/String;

    #@c
    const-string v0, "adapters"

    #@e
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@11
    move-result-object v2

    #@12
    new-instance v3, Ljava/util/ArrayList;

    #@14
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    #@17
    move-result v0

    #@18
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@1b
    const/4 v0, 0x0

    #@1c
    :goto_1c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    #@1f
    move-result v4

    #@20
    if-ge v0, v4, :cond_2c

    #@22
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_1c

    #@2c
    :cond_2c
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Lcom/google/android/gms/internal/bl;->nm:Ljava/util/List;

    #@32
    const-string v0, "allocation_id"

    #@34
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Lcom/google/android/gms/internal/bl;->nn:Ljava/lang/String;

    #@3a
    const-string v0, "imp_urls"

    #@3c
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/br;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    #@3f
    move-result-object v0

    #@40
    iput-object v0, p0, Lcom/google/android/gms/internal/bl;->np:Ljava/util/List;

    #@42
    const-string v0, "ad"

    #@44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@47
    move-result-object v0

    #@48
    if-eqz v0, :cond_69

    #@4a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    :goto_4e
    iput-object v0, p0, Lcom/google/android/gms/internal/bl;->nk:Ljava/lang/String;

    #@50
    const-string v0, "data"

    #@52
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@55
    move-result-object v2

    #@56
    if-eqz v2, :cond_6b

    #@58
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    :goto_5c
    iput-object v0, p0, Lcom/google/android/gms/internal/bl;->nq:Ljava/lang/String;

    #@5e
    if-eqz v2, :cond_66

    #@60
    const-string v0, "class_name"

    #@62
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    :cond_66
    iput-object v1, p0, Lcom/google/android/gms/internal/bl;->no:Ljava/lang/String;

    #@68
    return-void

    #@69
    :cond_69
    move-object v0, v1

    #@6a
    goto :goto_4e

    #@6b
    :cond_6b
    move-object v0, v1

    #@6c
    goto :goto_5c
.end method
