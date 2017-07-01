.class public final Lcom/google/android/gms/internal/cy;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/os/Bundle;)I
    .registers 4

    #@0
    const-string v0, "RESPONSE_CODE"

    #@2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_f

    #@8
    const-string v0, "Bundle with null response code, assuming OK (known issue)"

    #@a
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@d
    const/4 v0, 0x0

    #@e
    :goto_e
    return v0

    #@f
    :cond_f
    instance-of v1, v0, Ljava/lang/Integer;

    #@11
    if-eqz v1, :cond_1a

    #@13
    check-cast v0, Ljava/lang/Integer;

    #@15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@18
    move-result v0

    #@19
    goto :goto_e

    #@1a
    :cond_1a
    instance-of v1, v0, Ljava/lang/Long;

    #@1c
    if-eqz v1, :cond_26

    #@1e
    check-cast v0, Ljava/lang/Long;

    #@20
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@23
    move-result-wide v0

    #@24
    long-to-int v0, v0

    #@25
    goto :goto_e

    #@26
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string v2, "Unexpected type for intent response code. "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@44
    const/4 v0, 0x5

    #@45
    goto :goto_e
.end method

.method public static c(Landroid/content/Intent;)I
    .registers 4

    #@0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "RESPONSE_CODE"

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_13

    #@c
    const-string v0, "Intent with no response code, assuming OK (known issue)"

    #@e
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@11
    const/4 v0, 0x0

    #@12
    :goto_12
    return v0

    #@13
    :cond_13
    instance-of v1, v0, Ljava/lang/Integer;

    #@15
    if-eqz v1, :cond_1e

    #@17
    check-cast v0, Ljava/lang/Integer;

    #@19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1c
    move-result v0

    #@1d
    goto :goto_12

    #@1e
    :cond_1e
    instance-of v1, v0, Ljava/lang/Long;

    #@20
    if-eqz v1, :cond_2a

    #@22
    check-cast v0, Ljava/lang/Long;

    #@24
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@27
    move-result-wide v0

    #@28
    long-to-int v0, v0

    #@29
    goto :goto_12

    #@2a
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string v2, "Unexpected type for intent response code. "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@48
    const/4 v0, 0x5

    #@49
    goto :goto_12
.end method

.method public static d(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    const-string v0, "INAPP_PURCHASE_DATA"

    #@6
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    goto :goto_3
.end method

.method public static e(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    const-string v0, "INAPP_DATA_SIGNATURE"

    #@6
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    goto :goto_3
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    #@6
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@9
    const-string v2, "developerPayload"

    #@b
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_e} :catch_10

    #@e
    move-result-object v0

    #@f
    goto :goto_3

    #@10
    :catch_10
    move-exception v1

    #@11
    const-string v1, "Fail to parse purchase data"

    #@13
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@16
    goto :goto_3
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p0, :cond_4

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    #@6
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@9
    const-string v2, "purchaseToken"

    #@b
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_e} :catch_10

    #@e
    move-result-object v0

    #@f
    goto :goto_3

    #@10
    :catch_10
    move-exception v1

    #@11
    const-string v1, "Fail to parse purchase data"

    #@13
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@16
    goto :goto_3
.end method
