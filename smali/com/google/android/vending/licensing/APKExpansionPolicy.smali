.class public Lcom/google/android/vending/licensing/APKExpansionPolicy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/vending/licensing/Policy;


# static fields
.field private static final DEFAULT_MAX_RETRIES:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_COUNT:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_UNTIL:Ljava/lang/String; = "0"

.field private static final DEFAULT_VALIDITY_TIMESTAMP:Ljava/lang/String; = "0"

.field public static final MAIN_FILE_URL_INDEX:I = 0x0

.field private static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final PATCH_FILE_URL_INDEX:I = 0x1

.field private static final PREFS_FILE:Ljava/lang/String; = "com.android.vending.licensing.APKExpansionPolicy"

.field private static final PREF_LAST_RESPONSE:Ljava/lang/String; = "lastResponse"

.field private static final PREF_MAX_RETRIES:Ljava/lang/String; = "maxRetries"

.field private static final PREF_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final PREF_RETRY_UNTIL:Ljava/lang/String; = "retryUntil"

.field private static final PREF_VALIDITY_TIMESTAMP:Ljava/lang/String; = "validityTimestamp"

.field private static final TAG:Ljava/lang/String; = "APKExpansionPolicy"


# instance fields
.field private mExpansionFileNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExpansionFileSizes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mExpansionURLs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastResponse:I

.field private mLastResponseTime:J

.field private mMaxRetries:J

.field private mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

.field private mRetryCount:J

.field private mRetryUntil:J

.field private mValidityTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponseTime:J

    #@7
    new-instance v0, Ljava/util/Vector;

    #@9
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@c
    iput-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    #@e
    new-instance v0, Ljava/util/Vector;

    #@10
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@13
    iput-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    #@15
    new-instance v0, Ljava/util/Vector;

    #@17
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    #@1c
    new-instance v0, Lcom/google/android/vending/licensing/PreferenceObfuscator;

    #@1e
    const-string v1, "com.android.vending.licensing.APKExpansionPolicy"

    #@20
    const/4 v2, 0x0

    #@21
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1, p2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/vending/licensing/Obfuscator;)V

    #@28
    iput-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    #@2a
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    #@2c
    const-string v1, "lastResponse"

    #@2e
    const/16 v2, 0x123

    #@30
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    #@3e
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    #@40
    const-string v1, "validityTimestamp"

    #@42
    const-string v2, "0"

    #@44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@4b
    move-result-wide v0

    #@4c
    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    #@4e
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    #@50
    const-string v1, "retryUntil"

    #@52
    const-string v2, "0"

    #@54
    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@5b
    move-result-wide v0

    #@5c
    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    #@5e
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    #@60
    const-string v1, "maxRetries"

    #@62
    const-string v2, "0"

    #@64
    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@67
    move-result-object v0

    #@68
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@6b
    move-result-wide v0

    #@6c
    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

    #@6e
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    #@70
    const-string v1, "retryCount"

    #@72
    const-string v2, "0"

    #@74
    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@77
    move-result-object v0

    #@78
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@7b
    move-result-wide v0

    #@7c
    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    #@7e
    return-void
.end method

.method private decodeExtras(Ljava/lang/String;)Ljava/util/Map;
    .registers 8
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
    new-instance v3, Ljava/util/HashMap;

    #@2
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@5
    :try_start_5
    new-instance v0, Ljava/net/URI;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v2, "?"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@1d
    const-string v1, "UTF-8"

    #@1f
    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    #@22
    move-result-object v0

    #@23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v4

    #@27
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_66

    #@2d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Lorg/apache/http/NameValuePair;

    #@33
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    const/4 v1, 0x0

    #@38
    :goto_38
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_56

    #@3e
    new-instance v2, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    add-int/lit8 v1, v1, 0x1

    #@4d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    goto :goto_38

    #@56
    :cond_56
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5d} :catch_5e

    #@5d
    goto :goto_27

    #@5e
    :catch_5e
    move-exception v0

    #@5f
    const-string v0, "APKExpansionPolicy"

    #@61
    const-string v1, "Invalid syntax error while decoding extras data from server."

    #@63
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    :cond_66
    return-object v3
.end method

.method private setLastResponse(I)V
    .registers 5

    #@0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponseTime:J

    #@6
    iput p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    #@8
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    #@a
    const-string v1, "lastResponse"

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

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
    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

    #@e
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    #@10
    const-string v1, "maxRetries"

    #@12
    invoke-virtual {v0, v1, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    return-void

    #@16
    :catch_16
    move-exception v0

    #@17
    const-string v0, "APKExpansionPolicy"

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
    iput-wide p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    #@2
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    #@4
    const-string v1, "retryCount"

    #@6
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

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
    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    #@e
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    #@10
    const-string v1, "retryUntil"

    #@12
    invoke-virtual {v0, v1, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    return-void

    #@16
    :catch_16
    move-exception v0

    #@17
    const-string v0, "APKExpansionPolicy"

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
    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    #@e
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    #@10
    const-string v1, "validityTimestamp"

    #@12
    invoke-virtual {v0, v1, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    return-void

    #@16
    :catch_16
    move-exception v0

    #@17
    const-string v0, "APKExpansionPolicy"

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
    iget v4, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    #@8
    const/16 v5, 0x100

    #@a
    if-ne v4, v5, :cond_13

    #@c
    iget-wide v4, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

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
    iget v4, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    #@15
    const/16 v5, 0x123

    #@17
    if-ne v4, v5, :cond_31

    #@19
    iget-wide v4, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponseTime:J

    #@1b
    const-wide/32 v6, 0xea60

    #@1e
    add-long/2addr v4, v6

    #@1f
    cmp-long v4, v2, v4

    #@21
    if-gez v4, :cond_31

    #@23
    iget-wide v4, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    #@25
    cmp-long v2, v2, v4

    #@27
    if-lez v2, :cond_12

    #@29
    iget-wide v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    #@2b
    iget-wide v4, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

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

.method public getExpansionFileName(I)Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    if-ge p1, v0, :cond_11

    #@8
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/String;

    #@10
    :goto_10
    return-object v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_10
.end method

.method public getExpansionFileSize(I)J
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    if-ge p1, v0, :cond_15

    #@8
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/Long;

    #@10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@13
    move-result-wide v0

    #@14
    :goto_14
    return-wide v0

    #@15
    :cond_15
    const-wide/16 v0, -0x1

    #@17
    goto :goto_14
.end method

.method public getExpansionURL(I)Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    if-ge p1, v0, :cond_11

    #@8
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/String;

    #@10
    :goto_10
    return-object v0

    #@11
    :cond_11
    const/4 v0, 0x0

    #@12
    goto :goto_10
.end method

.method public getExpansionURLCount()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMaxRetries()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

    #@2
    return-wide v0
.end method

.method public getRetryCount()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    #@2
    return-wide v0
.end method

.method public getRetryUntil()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    #@2
    return-wide v0
.end method

.method public getValidityTimestamp()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    #@2
    return-wide v0
.end method

.method public processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .registers 9

    #@0
    const/16 v0, 0x123

    #@2
    if-eq p1, v0, :cond_4a

    #@4
    const-wide/16 v0, 0x0

    #@6
    invoke-direct {p0, v0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryCount(J)V

    #@9
    :goto_9
    const/16 v0, 0x100

    #@b
    if-ne p1, v0, :cond_e3

    #@d
    iget-object v0, p2, Lcom/google/android/vending/licensing/ResponseData;->extra:Ljava/lang/String;

    #@f
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->decodeExtras(Ljava/lang/String;)Ljava/util/Map;

    #@12
    move-result-object v1

    #@13
    iput p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    #@15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@18
    move-result-wide v2

    #@19
    const-wide/32 v4, 0xea60

    #@1c
    add-long/2addr v2, v4

    #@1d
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    #@24
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@27
    move-result-object v0

    #@28
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2b
    move-result-object v2

    #@2c
    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_f6

    #@32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, Ljava/lang/String;

    #@38
    const-string v3, "VT"

    #@3a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_53

    #@40
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Ljava/lang/String;

    #@46
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    #@49
    goto :goto_2c

    #@4a
    :cond_4a
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    #@4c
    const-wide/16 v2, 0x1

    #@4e
    add-long/2addr v0, v2

    #@4f
    invoke-direct {p0, v0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryCount(J)V

    #@52
    goto :goto_9

    #@53
    :cond_53
    const-string v3, "GT"

    #@55
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v3

    #@59
    if-eqz v3, :cond_65

    #@5b
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    move-result-object v0

    #@5f
    check-cast v0, Ljava/lang/String;

    #@61
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    #@64
    goto :goto_2c

    #@65
    :cond_65
    const-string v3, "GR"

    #@67
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a
    move-result v3

    #@6b
    if-eqz v3, :cond_77

    #@6d
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@70
    move-result-object v0

    #@71
    check-cast v0, Ljava/lang/String;

    #@73
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    #@76
    goto :goto_2c

    #@77
    :cond_77
    const-string v3, "FILE_URL"

    #@79
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7c
    move-result v3

    #@7d
    if-eqz v3, :cond_99

    #@7f
    const-string v3, "FILE_URL"

    #@81
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@84
    move-result v3

    #@85
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@88
    move-result-object v3

    #@89
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@8c
    move-result v3

    #@8d
    add-int/lit8 v3, v3, -0x1

    #@8f
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    move-result-object v0

    #@93
    check-cast v0, Ljava/lang/String;

    #@95
    invoke-virtual {p0, v3, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setExpansionURL(ILjava/lang/String;)V

    #@98
    goto :goto_2c

    #@99
    :cond_99
    const-string v3, "FILE_NAME"

    #@9b
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9e
    move-result v3

    #@9f
    if-eqz v3, :cond_bc

    #@a1
    const-string v3, "FILE_NAME"

    #@a3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@a6
    move-result v3

    #@a7
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@aa
    move-result-object v3

    #@ab
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@ae
    move-result v3

    #@af
    add-int/lit8 v3, v3, -0x1

    #@b1
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b4
    move-result-object v0

    #@b5
    check-cast v0, Ljava/lang/String;

    #@b7
    invoke-virtual {p0, v3, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setExpansionFileName(ILjava/lang/String;)V

    #@ba
    goto/16 :goto_2c

    #@bc
    :cond_bc
    const-string v3, "FILE_SIZE"

    #@be
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c1
    move-result v3

    #@c2
    if-eqz v3, :cond_2c

    #@c4
    const-string v3, "FILE_SIZE"

    #@c6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@c9
    move-result v3

    #@ca
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@cd
    move-result-object v3

    #@ce
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@d1
    move-result v3

    #@d2
    add-int/lit8 v3, v3, -0x1

    #@d4
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d7
    move-result-object v0

    #@d8
    check-cast v0, Ljava/lang/String;

    #@da
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@dd
    move-result-wide v4

    #@de
    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setExpansionFileSize(IJ)V

    #@e1
    goto/16 :goto_2c

    #@e3
    :cond_e3
    const/16 v0, 0x231

    #@e5
    if-ne p1, v0, :cond_f6

    #@e7
    const-string v0, "0"

    #@e9
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    #@ec
    const-string v0, "0"

    #@ee
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    #@f1
    const-string v0, "0"

    #@f3
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    #@f6
    :cond_f6
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setLastResponse(I)V

    #@f9
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    #@fb
    invoke-virtual {v0}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->commit()V

    #@fe
    return-void
.end method

.method public resetPolicy()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    #@2
    const-string v1, "lastResponse"

    #@4
    const/16 v2, 0x123

    #@6
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    const-string v0, "0"

    #@f
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    #@12
    const-string v0, "0"

    #@14
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    #@17
    const-string v0, "0"

    #@19
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@1c
    move-result-wide v0

    #@1d
    invoke-direct {p0, v0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryCount(J)V

    #@20
    const-string v0, "0"

    #@22
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    #@25
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    #@27
    invoke-virtual {v0}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->commit()V

    #@2a
    return-void
.end method

.method public setExpansionFileName(ILjava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_f

    #@8
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    #@a
    add-int/lit8 v1, p1, 0x1

    #@c
    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    #@11
    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@14
    return-void
.end method

.method public setExpansionFileSize(IJ)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_f

    #@8
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    #@a
    add-int/lit8 v1, p1, 0x1

    #@c
    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    #@11
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@18
    return-void
.end method

.method public setExpansionURL(ILjava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    if-lt p1, v0, :cond_f

    #@8
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    #@a
    add-int/lit8 v1, p1, 0x1

    #@c
    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    #@11
    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@14
    return-void
.end method
