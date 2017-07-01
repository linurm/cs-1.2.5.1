.class public final Lcom/google/android/gms/internal/br;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    #@3
    move-result-object v1

    #@4
    if-eqz v1, :cond_25

    #@6
    new-instance v2, Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@b
    move-result v0

    #@c
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@f
    const/4 v0, 0x0

    #@10
    :goto_10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    #@13
    move-result v3

    #@14
    if-ge v0, v3, :cond_20

    #@16
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_10

    #@20
    :cond_20
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@23
    move-result-object v0

    #@24
    :goto_24
    return-object v0

    #@25
    :cond_25
    const/4 v0, 0x0

    #@26
    goto :goto_24
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ef;Ljava/lang/String;ZLjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ef;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    if-eqz p4, :cond_62

    #@2
    const-string v0, "1"

    #@4
    move-object v1, v0

    #@5
    :goto_5
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_66

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    const-string v3, "@gw_adlocid@"

    #@17
    invoke-virtual {v0, v3, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    const-string v3, "@gw_adnetrefresh@"

    #@1d
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    const-string v3, "@gw_qdata@"

    #@23
    iget-object v4, p2, Lcom/google/android/gms/internal/ef;->rz:Lcom/google/android/gms/internal/bm;

    #@25
    iget-object v4, v4, Lcom/google/android/gms/internal/bm;->nw:Ljava/lang/String;

    #@27
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    const-string v3, "@gw_sdkver@"

    #@2d
    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    const-string v3, "@gw_sessid@"

    #@33
    sget-object v4, Lcom/google/android/gms/internal/eh;->rQ:Ljava/lang/String;

    #@35
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    const-string v3, "@gw_seqnum@"

    #@3b
    iget-object v4, p2, Lcom/google/android/gms/internal/ef;->qa:Ljava/lang/String;

    #@3d
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    iget-object v3, p2, Lcom/google/android/gms/internal/ef;->nM:Lcom/google/android/gms/internal/bl;

    #@43
    if-eqz v3, :cond_59

    #@45
    const-string v3, "@gw_adnetid@"

    #@47
    iget-object v4, p2, Lcom/google/android/gms/internal/ef;->nM:Lcom/google/android/gms/internal/bl;

    #@49
    iget-object v4, v4, Lcom/google/android/gms/internal/bl;->nl:Ljava/lang/String;

    #@4b
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    const-string v3, "@gw_allocid@"

    #@51
    iget-object v4, p2, Lcom/google/android/gms/internal/ef;->nM:Lcom/google/android/gms/internal/bl;

    #@53
    iget-object v4, v4, Lcom/google/android/gms/internal/bl;->nn:Ljava/lang/String;

    #@55
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@58
    move-result-object v0

    #@59
    :cond_59
    new-instance v3, Lcom/google/android/gms/internal/es;

    #@5b
    invoke-direct {v3, p0, p1, v0}, Lcom/google/android/gms/internal/es;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@5e
    invoke-virtual {v3}, Lcom/google/android/gms/internal/es;->start()V

    #@61
    goto :goto_9

    #@62
    :cond_62
    const-string v0, "0"

    #@64
    move-object v1, v0

    #@65
    goto :goto_5

    #@66
    :cond_66
    return-void
.end method
