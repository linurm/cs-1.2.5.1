.class public Lcom/facebook/internal/AttributionIdentifiers;
.super Ljava/lang/Object;


# static fields
.field private static final ANDROID_ID_COLUMN_NAME:Ljava/lang/String; = "androidid"

.field private static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field private static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field private static final CONNECTION_RESULT_SUCCESS:I = 0x0

.field private static final IDENTIFIER_REFRESH_INTERVAL_MILLIS:J = 0x36ee80L

.field private static final LIMIT_TRACKING_COLUMN_NAME:Ljava/lang/String; = "limit_tracking"

.field private static final TAG:Ljava/lang/String;

.field private static recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;


# instance fields
.field private androidAdvertiserId:Ljava/lang/String;

.field private attributionId:Ljava/lang/String;

.field private fetchTime:J

.field private limitTracking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/internal/AttributionIdentifiers;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/internal/AttributionIdentifiers;->TAG:Ljava/lang/String;

    #@8
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    #@a
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/facebook/internal/AttributionIdentifiers;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    #@10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 7

    #@0
    new-instance v1, Lcom/facebook/internal/AttributionIdentifiers;

    #@2
    invoke-direct {v1}, Lcom/facebook/internal/AttributionIdentifiers;-><init>()V

    #@5
    :try_start_5
    const-string v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    #@7
    const-string v2, "isGooglePlayServicesAvailable"

    #@9
    const/4 v3, 0x1

    #@a
    new-array v3, v3, [Ljava/lang/Class;

    #@c
    const/4 v4, 0x0

    #@d
    const-class v5, Landroid/content/Context;

    #@f
    aput-object v5, v3, v4

    #@11
    invoke-static {v0, v2, v3}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@14
    move-result-object v0

    #@15
    if-nez v0, :cond_18

    #@17
    :cond_17
    :goto_17
    return-object v1

    #@18
    :cond_18
    const/4 v2, 0x0

    #@19
    const/4 v3, 0x1

    #@1a
    new-array v3, v3, [Ljava/lang/Object;

    #@1c
    const/4 v4, 0x0

    #@1d
    aput-object p0, v3, v4

    #@1f
    invoke-static {v2, v0, v3}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    instance-of v2, v0, Ljava/lang/Integer;

    #@25
    if-eqz v2, :cond_17

    #@27
    check-cast v0, Ljava/lang/Integer;

    #@29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_17

    #@2f
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    #@31
    const-string v2, "getAdvertisingIdInfo"

    #@33
    const/4 v3, 0x1

    #@34
    new-array v3, v3, [Ljava/lang/Class;

    #@36
    const/4 v4, 0x0

    #@37
    const-class v5, Landroid/content/Context;

    #@39
    aput-object v5, v3, v4

    #@3b
    invoke-static {v0, v2, v3}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@3e
    move-result-object v0

    #@3f
    if-eqz v0, :cond_17

    #@41
    const/4 v2, 0x0

    #@42
    const/4 v3, 0x1

    #@43
    new-array v3, v3, [Ljava/lang/Object;

    #@45
    const/4 v4, 0x0

    #@46
    aput-object p0, v3, v4

    #@48
    invoke-static {v2, v0, v3}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    move-result-object v2

    #@4c
    if-eqz v2, :cond_17

    #@4e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@51
    move-result-object v0

    #@52
    const-string v3, "getId"

    #@54
    const/4 v4, 0x0

    #@55
    new-array v4, v4, [Ljava/lang/Class;

    #@57
    invoke-static {v0, v3, v4}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5e
    move-result-object v3

    #@5f
    const-string v4, "isLimitAdTrackingEnabled"

    #@61
    const/4 v5, 0x0

    #@62
    new-array v5, v5, [Ljava/lang/Class;

    #@64
    invoke-static {v3, v4, v5}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@67
    move-result-object v3

    #@68
    if-eqz v0, :cond_17

    #@6a
    if-eqz v3, :cond_17

    #@6c
    const/4 v4, 0x0

    #@6d
    new-array v4, v4, [Ljava/lang/Object;

    #@6f
    invoke-static {v2, v0, v4}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    move-result-object v0

    #@73
    check-cast v0, Ljava/lang/String;

    #@75
    iput-object v0, v1, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    #@77
    const/4 v0, 0x0

    #@78
    new-array v0, v0, [Ljava/lang/Object;

    #@7a
    invoke-static {v2, v3, v0}, Lcom/facebook/internal/Utility;->invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    move-result-object v0

    #@7e
    check-cast v0, Ljava/lang/Boolean;

    #@80
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@83
    move-result v0

    #@84
    iput-boolean v0, v1, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_86} :catch_87

    #@86
    goto :goto_17

    #@87
    :catch_87
    move-exception v0

    #@88
    const-string v2, "android_id"

    #@8a
    invoke-static {v2, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    #@8d
    goto :goto_17
.end method

.method public static getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    .registers 9

    #@0
    const/4 v7, 0x0

    #@1
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    #@3
    if-eqz v0, :cond_18

    #@5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@8
    move-result-wide v0

    #@9
    sget-object v2, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    #@b
    iget-wide v2, v2, Lcom/facebook/internal/AttributionIdentifiers;->fetchTime:J

    #@d
    sub-long/2addr v0, v2

    #@e
    const-wide/32 v2, 0x36ee80

    #@11
    cmp-long v0, v0, v2

    #@13
    if-gez v0, :cond_18

    #@15
    sget-object v0, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    #@17
    :goto_17
    return-object v0

    #@18
    :cond_18
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidId(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    #@1b
    move-result-object v6

    #@1c
    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1f
    move-result-object v0

    #@20
    sget-object v1, Lcom/facebook/internal/AttributionIdentifiers;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    #@22
    const/4 v2, 0x3

    #@23
    new-array v2, v2, [Ljava/lang/String;

    #@25
    const/4 v3, 0x0

    #@26
    const-string v4, "aid"

    #@28
    aput-object v4, v2, v3

    #@2a
    const/4 v3, 0x1

    #@2b
    const-string v4, "androidid"

    #@2d
    aput-object v4, v2, v3

    #@2f
    const/4 v3, 0x2

    #@30
    const-string v4, "limit_tracking"

    #@32
    aput-object v4, v2, v3

    #@34
    const/4 v3, 0x0

    #@35
    const/4 v4, 0x0

    #@36
    const/4 v5, 0x0

    #@37
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@3a
    move-result-object v0

    #@3b
    if-eqz v0, :cond_43

    #@3d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@40
    move-result v1

    #@41
    if-nez v1, :cond_45

    #@43
    :cond_43
    move-object v0, v7

    #@44
    goto :goto_17

    #@45
    :cond_45
    const-string v1, "aid"

    #@47
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@4a
    move-result v1

    #@4b
    const-string v2, "androidid"

    #@4d
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@50
    move-result v2

    #@51
    const-string v3, "limit_tracking"

    #@53
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@56
    move-result v3

    #@57
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    iput-object v1, v6, Lcom/facebook/internal/AttributionIdentifiers;->attributionId:Ljava/lang/String;

    #@5d
    if-lez v2, :cond_77

    #@5f
    if-lez v3, :cond_77

    #@61
    invoke-virtual {v6}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    if-nez v1, :cond_77

    #@67
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@6a
    move-result-object v1

    #@6b
    iput-object v1, v6, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    #@6d
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@74
    move-result v1

    #@75
    iput-boolean v1, v6, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z

    #@77
    :cond_77
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_7a} :catch_84

    #@7a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7d
    move-result-wide v0

    #@7e
    iput-wide v0, v6, Lcom/facebook/internal/AttributionIdentifiers;->fetchTime:J

    #@80
    sput-object v6, Lcom/facebook/internal/AttributionIdentifiers;->recentlyFetchedIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    #@82
    move-object v0, v6

    #@83
    goto :goto_17

    #@84
    :catch_84
    move-exception v0

    #@85
    sget-object v1, Lcom/facebook/internal/AttributionIdentifiers;->TAG:Ljava/lang/String;

    #@87
    new-instance v2, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    const-string v3, "Caught unexpected exception in getAttributionId(): "

    #@8e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@95
    move-result-object v0

    #@96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v0

    #@9e
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@a1
    move-object v0, v7

    #@a2
    goto/16 :goto_17
.end method


# virtual methods
.method public getAndroidAdvertiserId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->androidAdvertiserId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAttributionId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->attributionId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isTrackingLimited()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/internal/AttributionIdentifiers;->limitTracking:Z

    #@2
    return v0
.end method
