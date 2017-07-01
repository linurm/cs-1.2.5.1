.class public Lcom/android/vending/licensing/ServerManagedPolicy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/licensing/Policy;


# static fields
.field private static final DEFAULT_MAX_RETRIES:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_COUNT:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_UNTIL:Ljava/lang/String; = "0"

.field private static final DEFAULT_VALIDITY_TIMESTAMP:Ljava/lang/String; = "0"

.field private static final MILLIS_PER_MINUTE:J = 0xea60L

.field private static final PREFS_FILE:Ljava/lang/String; = "com.android.vending.licensing.ServerManagedPolicy"

.field private static final PREF_LAST_RESPONSE:Ljava/lang/String; = "lastResponse"

.field private static final PREF_MAX_RETRIES:Ljava/lang/String; = "maxRetries"

.field private static final PREF_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final PREF_RETRY_UNTIL:Ljava/lang/String; = "retryUntil"

.field private static final PREF_VALIDITY_TIMESTAMP:Ljava/lang/String; = "validityTimestamp"

.field private static final TAG:Ljava/lang/String; = "ServerManagedPolicy"


# instance fields
.field private mLastResponse:Lcom/android/vending/licensing/Policy$LicenseResponse;

.field private mLastResponseTime:J

.field private mMaxRetries:J

.field private mPreferences:Lcom/android/vending/licensing/PreferenceObfuscator;

.field private mRetryCount:J

.field private mRetryUntil:J

.field private mValidityTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/vending/licensing/Obfuscator;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mLastResponseTime:J

    #@7
    new-instance v0, Lcom/android/vending/licensing/PreferenceObfuscator;

    #@9
    const-string v1, "com.android.vending.licensing.ServerManagedPolicy"

    #@b
    const/4 v2, 0x0

    #@c
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@f
    move-result-object v1

    #@10
    invoke-direct {v0, v1, p2}, Lcom/android/vending/licensing/PreferenceObfuscator;-><init>(Landroid/content/SharedPreferences;Lcom/android/vending/licensing/Obfuscator;)V

    #@13
    iput-object v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/android/vending/licensing/PreferenceObfuscator;

    #@15
    iget-object v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/android/vending/licensing/PreferenceObfuscator;

    #@17
    const-string v1, "lastResponse"

    #@19
    sget-object v2, Lcom/android/vending/licensing/Policy$LicenseResponse;->RETRY:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@1b
    invoke-virtual {v2}, Lcom/android/vending/licensing/Policy$LicenseResponse;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-static {v0}, Lcom/android/vending/licensing/Policy$LicenseResponse;->valueOf(Ljava/lang/String;)Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mLastResponse:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@29
    iget-object v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/android/vending/licensing/PreferenceObfuscator;

    #@2b
    const-string v1, "validityTimestamp"

    #@2d
    const-string v2, "0"

    #@2f
    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@36
    move-result-wide v0

    #@37
    iput-wide v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    #@39
    iget-object v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/android/vending/licensing/PreferenceObfuscator;

    #@3b
    const-string v1, "retryUntil"

    #@3d
    const-string v2, "0"

    #@3f
    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@46
    move-result-wide v0

    #@47
    iput-wide v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mRetryUntil:J

    #@49
    iget-object v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/android/vending/licensing/PreferenceObfuscator;

    #@4b
    const-string v1, "maxRetries"

    #@4d
    const-string v2, "0"

    #@4f
    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@56
    move-result-wide v0

    #@57
    iput-wide v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mMaxRetries:J

    #@59
    iget-object v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/android/vending/licensing/PreferenceObfuscator;

    #@5b
    const-string v1, "retryCount"

    #@5d
    const-string v2, "0"

    #@5f
    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@66
    move-result-wide v0

    #@67
    iput-wide v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mRetryCount:J

    #@69
    return-void
.end method

.method private decodeExtras(Ljava/lang/String;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/HashMap;

    #@2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@5
    :try_start_5
    new-instance v0, Ljava/net/URI;

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v3, "?"

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@1d
    const-string v2, "UTF-8"

    #@1f
    invoke-static {v0, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    #@22
    move-result-object v0

    #@23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v2

    #@27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_47

    #@2d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Lorg/apache/http/NameValuePair;

    #@33
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_3e} :catch_3f

    #@3e
    goto :goto_27

    #@3f
    :catch_3f
    move-exception v0

    #@40
    const-string v0, "ServerManagedPolicy"

    #@42
    const-string v2, "Invalid syntax error while decoding extras data from server."

    #@44
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    :cond_47
    return-object v1
.end method

.method private setLastResponse(Lcom/android/vending/licensing/Policy$LicenseResponse;)V
    .registers 5

    #@0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mLastResponseTime:J

    #@6
    iput-object p1, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mLastResponse:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@8
    iget-object v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/android/vending/licensing/PreferenceObfuscator;

    #@a
    const-string v1, "lastResponse"

    #@c
    invoke-virtual {p1}, Lcom/android/vending/licensing/Policy$LicenseResponse;->toString()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@13
    return-void
.end method

.method private setMaxRetries(Ljava/lang/String;)V
    .registers 4

    #@0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_16

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mMaxRetries:J

    #@e
    iget-object v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/android/vending/licensing/PreferenceObfuscator;

    #@10
    const-string v1, "maxRetries"

    #@12
    invoke-virtual {v0, v1, p1}, Lcom/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    return-void

    #@16
    :catch_16
    move-exception v0

    #@17
    const-string v0, "ServerManagedPolicy"

    #@19
    const-string v1, "Licence retry count (GR) missing, grace period disabled"

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    const-string p1, "0"

    #@20
    const-wide/16 v0, 0x0

    #@22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@25
    move-result-object v0

    #@26
    goto :goto_8
.end method

.method private setRetryCount(J)V
    .registers 6

    #@0
    iput-wide p1, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mRetryCount:J

    #@2
    iget-object v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/android/vending/licensing/PreferenceObfuscator;

    #@4
    const-string v1, "retryCount"

    #@6
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    return-void
.end method

.method private setRetryUntil(Ljava/lang/String;)V
    .registers 4

    #@0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_16

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mRetryUntil:J

    #@e
    iget-object v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/android/vending/licensing/PreferenceObfuscator;

    #@10
    const-string v1, "retryUntil"

    #@12
    invoke-virtual {v0, v1, p1}, Lcom/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    return-void

    #@16
    :catch_16
    move-exception v0

    #@17
    const-string v0, "ServerManagedPolicy"

    #@19
    const-string v1, "License retry timestamp (GT) missing, grace period disabled"

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    const-string p1, "0"

    #@20
    const-wide/16 v0, 0x0

    #@22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@25
    move-result-object v0

    #@26
    goto :goto_8
.end method

.method private setValidityTimestamp(Ljava/lang/String;)V
    .registers 6

    #@0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_16

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7
    move-result-object v0

    #@8
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    #@e
    iget-object v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/android/vending/licensing/PreferenceObfuscator;

    #@10
    const-string v1, "validityTimestamp"

    #@12
    invoke-virtual {v0, v1, p1}, Lcom/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    return-void

    #@16
    :catch_16
    move-exception v0

    #@17
    const-string v0, "ServerManagedPolicy"

    #@19
    const-string v1, "License validity timestamp (VT) missing, caching for a minute"

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@21
    move-result-wide v0

    #@22
    const-wide/32 v2, 0xea60

    #@25
    add-long/2addr v0, v2

    #@26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@2d
    move-result-wide v2

    #@2e
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@31
    move-result-object p1

    #@32
    goto :goto_8
.end method


# virtual methods
.method public allowAccess()Z
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@5
    move-result-wide v2

    #@6
    iget-object v4, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mLastResponse:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@8
    sget-object v5, Lcom/android/vending/licensing/Policy$LicenseResponse;->LICENSED:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@a
    if-ne v4, v5, :cond_13

    #@c
    iget-wide v4, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    #@e
    cmp-long v2, v2, v4

    #@10
    if-gtz v2, :cond_31

    #@12
    :cond_12
    :goto_12
    return v0

    #@13
    :cond_13
    iget-object v4, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mLastResponse:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@15
    sget-object v5, Lcom/android/vending/licensing/Policy$LicenseResponse;->RETRY:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@17
    if-ne v4, v5, :cond_31

    #@19
    iget-wide v4, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mLastResponseTime:J

    #@1b
    const-wide/32 v6, 0xea60

    #@1e
    add-long/2addr v4, v6

    #@1f
    cmp-long v4, v2, v4

    #@21
    if-gez v4, :cond_31

    #@23
    iget-wide v4, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mRetryUntil:J

    #@25
    cmp-long v2, v2, v4

    #@27
    if-lez v2, :cond_12

    #@29
    iget-wide v2, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mRetryCount:J

    #@2b
    iget-wide v4, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mMaxRetries:J

    #@2d
    cmp-long v2, v2, v4

    #@2f
    if-lez v2, :cond_12

    #@31
    :cond_31
    move v0, v1

    #@32
    goto :goto_12
.end method

.method public getMaxRetries()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mMaxRetries:J

    #@2
    return-wide v0
.end method

.method public getRetryCount()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mRetryCount:J

    #@2
    return-wide v0
.end method

.method public getRetryUntil()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mRetryUntil:J

    #@2
    return-wide v0
.end method

.method public getValidityTimestamp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    #@2
    return-wide v0
.end method

.method public processServerResponse(Lcom/android/vending/licensing/Policy$LicenseResponse;Lcom/android/vending/licensing/ResponseData;)V
    .registers 7

    #@0
    sget-object v0, Lcom/android/vending/licensing/Policy$LicenseResponse;->RETRY:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@2
    if-eq p1, v0, :cond_3f

    #@4
    const-wide/16 v0, 0x0

    #@6
    invoke-direct {p0, v0, v1}, Lcom/android/vending/licensing/ServerManagedPolicy;->setRetryCount(J)V

    #@9
    :goto_9
    sget-object v0, Lcom/android/vending/licensing/Policy$LicenseResponse;->LICENSED:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@b
    if-ne p1, v0, :cond_48

    #@d
    iget-object v0, p2, Lcom/android/vending/licensing/ResponseData;->extra:Ljava/lang/String;

    #@f
    invoke-direct {p0, v0}, Lcom/android/vending/licensing/ServerManagedPolicy;->decodeExtras(Ljava/lang/String;)Ljava/util/Map;

    #@12
    move-result-object v1

    #@13
    iput-object p1, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mLastResponse:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@15
    const-string v0, "VT"

    #@17
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/lang/String;

    #@1d
    invoke-direct {p0, v0}, Lcom/android/vending/licensing/ServerManagedPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    #@20
    const-string v0, "GT"

    #@22
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Ljava/lang/String;

    #@28
    invoke-direct {p0, v0}, Lcom/android/vending/licensing/ServerManagedPolicy;->setRetryUntil(Ljava/lang/String;)V

    #@2b
    const-string v0, "GR"

    #@2d
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Ljava/lang/String;

    #@33
    invoke-direct {p0, v0}, Lcom/android/vending/licensing/ServerManagedPolicy;->setMaxRetries(Ljava/lang/String;)V

    #@36
    :cond_36
    :goto_36
    invoke-direct {p0, p1}, Lcom/android/vending/licensing/ServerManagedPolicy;->setLastResponse(Lcom/android/vending/licensing/Policy$LicenseResponse;)V

    #@39
    iget-object v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mPreferences:Lcom/android/vending/licensing/PreferenceObfuscator;

    #@3b
    invoke-virtual {v0}, Lcom/android/vending/licensing/PreferenceObfuscator;->commit()V

    #@3e
    return-void

    #@3f
    :cond_3f
    iget-wide v0, p0, Lcom/android/vending/licensing/ServerManagedPolicy;->mRetryCount:J

    #@41
    const-wide/16 v2, 0x1

    #@43
    add-long/2addr v0, v2

    #@44
    invoke-direct {p0, v0, v1}, Lcom/android/vending/licensing/ServerManagedPolicy;->setRetryCount(J)V

    #@47
    goto :goto_9

    #@48
    :cond_48
    sget-object v0, Lcom/android/vending/licensing/Policy$LicenseResponse;->NOT_LICENSED:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@4a
    if-ne p1, v0, :cond_36

    #@4c
    const-string v0, "0"

    #@4e
    invoke-direct {p0, v0}, Lcom/android/vending/licensing/ServerManagedPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    #@51
    const-string v0, "0"

    #@53
    invoke-direct {p0, v0}, Lcom/android/vending/licensing/ServerManagedPolicy;->setRetryUntil(Ljava/lang/String;)V

    #@56
    const-string v0, "0"

    #@58
    invoke-direct {p0, v0}, Lcom/android/vending/licensing/ServerManagedPolicy;->setMaxRetries(Ljava/lang/String;)V

    #@5b
    goto :goto_36
.end method
