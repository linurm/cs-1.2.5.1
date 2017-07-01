.class public Lcom/apportable/MPMetricsSupport;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "MPMetrics"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/activity/VerdeActivity;)Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/apportable/MPMetricsSupport;->getAdvertisingID(Lcom/apportable/activity/VerdeActivity;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static getAdvertisingID(Lcom/apportable/activity/VerdeActivity;)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getApplicationContext()Landroid/content/Context;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_11
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_1 .. :try_end_8} :catch_1a
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_8} :catch_23

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    #@c
    move-result v2

    #@d
    const/4 v3, 0x1

    #@e
    if-ne v2, v3, :cond_2c

    #@10
    :goto_10
    return-object v0

    #@11
    :catch_11
    move-exception v1

    #@12
    const-string v2, "MPMetrics"

    #@14
    const-string v3, "Unrecoverable error connecting to Google Play services"

    #@16
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@19
    goto :goto_10

    #@1a
    :catch_1a
    move-exception v1

    #@1b
    const-string v2, "MPMetrics"

    #@1d
    const-string v3, "Encountered a recoverable error connecting to Google Play services"

    #@1f
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@22
    goto :goto_10

    #@23
    :catch_23
    move-exception v1

    #@24
    const-string v2, "MPMetrics"

    #@26
    const-string v3, "Google Play services is not available entirely"

    #@28
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    goto :goto_10

    #@2c
    :cond_2c
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    goto :goto_10
.end method

.method private static getApiKey()Ljava/lang/String;
    .registers 2

    #@0
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "apportable.mpmetrics.api_key"

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_13

    #@c
    const-string v1, "apportable.mpmetrics.api_key"

    #@e
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    :goto_12
    return-object v0

    #@13
    :cond_13
    const-string v0, ""

    #@15
    goto :goto_12
.end method

.method private static getDistinctID()Ljava/lang/String;
    .registers 1

    #@0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/apportable/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static getTrackingProperties()Ljava/util/HashMap;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v4}, Lcom/apportable/app/VerdeApplication;->getPackageName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-static {}, Lcom/apportable/MPMetricsSupport;->getDistinctID()Ljava/lang/String;

    #@d
    move-result-object v5

    #@e
    invoke-static {v4}, Lcom/apportable/Installation;->isNewInstall(Landroid/content/Context;)Z

    #@11
    new-instance v6, Ljava/util/HashMap;

    #@13
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@16
    new-instance v0, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string v7, "User "

    #@1d
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const/16 v7, 0x8

    #@23
    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    const-string v7, " ("

    #@2d
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@33
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    const-string v7, ")"

    #@39
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    :try_start_41
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@44
    move-result-object v8

    #@45
    const-string v0, "android.app_name"

    #@47
    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@4a
    move-result-object v9

    #@4b
    invoke-virtual {v4}, Lcom/apportable/app/VerdeApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4e
    move-result-object v10

    #@4f
    const/4 v0, 0x0

    #@50
    invoke-virtual {v10, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@53
    move-result-object v11

    #@54
    new-instance v12, Landroid/util/DisplayMetrics;

    #@56
    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    #@59
    const-string v0, "window"

    #@5b
    invoke-virtual {v4, v0}, Lcom/apportable/app/VerdeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@5e
    move-result-object v0

    #@5f
    check-cast v0, Landroid/view/WindowManager;

    #@61
    new-instance v13, Ljava/lang/Thread;

    #@63
    new-instance v14, Lcom/apportable/MPMetricsSupport$1;

    #@65
    invoke-direct {v14, v6}, Lcom/apportable/MPMetricsSupport$1;-><init>(Ljava/util/HashMap;)V

    #@68
    invoke-direct {v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@6b
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    #@6e
    const-string v13, "distinct_id"

    #@70
    invoke-virtual {v6, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@73
    const-string v13, "installation"

    #@75
    invoke-virtual {v6, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    const-string v5, "installer"

    #@7a
    invoke-virtual {v4}, Lcom/apportable/app/VerdeApplication;->getPackageName()Ljava/lang/String;

    #@7d
    move-result-object v13

    #@7e
    invoke-virtual {v10, v13}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    #@81
    move-result-object v10

    #@82
    invoke-virtual {v6, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@85
    const-string v5, "mp_name_tag"

    #@87
    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8a
    const-string v5, "package_name"

    #@8c
    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8f
    const-string v1, "app_name"

    #@91
    invoke-virtual {v6, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    const-string v1, "app_version_code"

    #@96
    iget v5, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    #@98
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    const-string v1, "app_version_name"

    #@a1
    iget-object v5, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    #@a3
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a6
    const-string v1, "hardware"

    #@a8
    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    #@aa
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    const-string v1, "cpu_abi"

    #@af
    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    #@b1
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b4
    const-string v1, "cpu_abi2"

    #@b6
    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    #@b8
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bb
    const-string v1, "manufacturer"

    #@bd
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    #@bf
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c2
    const-string v1, "product"

    #@c4
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    #@c6
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c9
    const-string v1, "model"

    #@cb
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    #@cd
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d0
    const-string v1, "carrier"

    #@d2
    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    #@d4
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d7
    const-string v1, "android_version"

    #@d9
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #@db
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@de
    const-string v1, "android_sdk_int"

    #@e0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    #@e2
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@e5
    move-result-object v5

    #@e6
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e9
    const-string v1, "locale"

    #@eb
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@ee
    move-result-object v5

    #@ef
    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@f2
    move-result-object v5

    #@f3
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f6
    invoke-static {}, Lcom/apportable/LibraryManager;->neonSupported()Z
    :try_end_f9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_f9} :catch_1c0

    #@f9
    move-result v1

    #@fa
    if-eqz v1, :cond_1b0

    #@fc
    const-string v1, "1"

    #@fe
    :goto_fe
    :try_start_fe
    const-string v5, "neon"

    #@100
    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@103
    const-string v1, "UBIQUITOUS_KEY_VALUE_STORE"

    #@105
    const/4 v5, 0x0

    #@106
    invoke-virtual {v4, v1, v5}, Lcom/apportable/app/VerdeApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@109
    const-string v1, "apportable.humbleBundle"

    #@10b
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@10e
    move-result v1

    #@10f
    if-eqz v1, :cond_1b4

    #@111
    const-string v1, "apportable.humbleBundle"

    #@113
    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@116
    move-result v1

    #@117
    if-eqz v1, :cond_1b4

    #@119
    const-string v1, "MPMetrics"

    #@11b
    const-string v5, "Thanks for buying the Humble Bundle!"

    #@11d
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@120
    const-string v1, "humblebundle"

    #@122
    const/4 v5, 0x1

    #@123
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@126
    move-result-object v5

    #@127
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12a
    :goto_12a
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@12d
    move-result-object v0

    #@12e
    invoke-virtual {v0, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@131
    new-instance v0, Ljava/lang/StringBuilder;

    #@133
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@136
    const-string v1, "screen_resolution"

    #@138
    iget v5, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    #@13a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v0

    #@13e
    const-string v5, "x"

    #@140
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v0

    #@144
    iget v5, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    #@146
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@149
    move-result-object v0

    #@14a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14d
    move-result-object v0

    #@14e
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@151
    invoke-virtual {v4}, Lcom/apportable/app/VerdeApplication;->getResources()Landroid/content/res/Resources;

    #@154
    move-result-object v0

    #@155
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@158
    move-result-object v0

    #@159
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_15b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fe .. :try_end_15b} :catch_1c0

    #@15b
    const-string v0, "unknown"

    #@15d
    and-int/lit8 v1, v1, 0xf

    #@15f
    packed-switch v1, :pswitch_data_1ea

    #@162
    :goto_162
    :try_start_162
    const-string v1, "screen_layout"

    #@164
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@167
    iget v0, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    #@169
    sparse-switch v0, :sswitch_data_1f6

    #@16c
    new-instance v0, Ljava/lang/StringBuilder;

    #@16e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@171
    const-string v1, "dpi_"

    #@173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v0

    #@177
    iget v1, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    #@179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v0

    #@17d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@180
    move-result-object v0

    #@181
    :goto_181
    const-string v1, "screen_dpi"

    #@183
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@186
    const-string v0, "activity"

    #@188
    invoke-virtual {v4, v0}, Lcom/apportable/app/VerdeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@18b
    move-result-object v0

    #@18c
    check-cast v0, Landroid/app/ActivityManager;

    #@18e
    const-string v1, "memory_class"

    #@190
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    #@193
    move-result v4

    #@194
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@197
    move-result-object v4

    #@198
    invoke-virtual {v6, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@19b
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    #@19e
    move-result-object v0

    #@19f
    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    #@1a1
    const/high16 v1, 0x20000

    #@1a3
    if-lt v0, v1, :cond_1e7

    #@1a5
    move v0, v2

    #@1a6
    :goto_1a6
    const-string v1, "gles2"

    #@1a8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1ab
    move-result-object v0

    #@1ac
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1af
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_162 .. :try_end_1af} :catch_1c0

    #@1af
    :goto_1af
    return-object v6

    #@1b0
    :cond_1b0
    const-string v1, "0"

    #@1b2
    goto/16 :goto_fe

    #@1b4
    :cond_1b4
    :try_start_1b4
    const-string v1, "humblebundle"

    #@1b6
    const/4 v5, 0x0

    #@1b7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1ba
    move-result-object v5

    #@1bb
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1be
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b4 .. :try_end_1be} :catch_1c0

    #@1be
    goto/16 :goto_12a

    #@1c0
    :catch_1c0
    move-exception v0

    #@1c1
    const-string v1, "MPMetrics"

    #@1c3
    const-string v2, "Could not find the package info"

    #@1c5
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c8
    goto :goto_1af

    #@1c9
    :pswitch_1c9
    const-string v0, "small"

    #@1cb
    goto :goto_162

    #@1cc
    :pswitch_1cc
    const-string v0, "normal"

    #@1ce
    goto :goto_162

    #@1cf
    :pswitch_1cf
    const-string v0, "large"

    #@1d1
    goto :goto_162

    #@1d2
    :pswitch_1d2
    const-string v0, "xlarge"

    #@1d4
    goto :goto_162

    #@1d5
    :sswitch_1d5
    const-string v0, "low"

    #@1d7
    goto :goto_181

    #@1d8
    :sswitch_1d8
    const-string v0, "medium"

    #@1da
    goto :goto_181

    #@1db
    :sswitch_1db
    const-string v0, "high"

    #@1dd
    goto :goto_181

    #@1de
    :sswitch_1de
    const-string v0, "tv"

    #@1e0
    goto :goto_181

    #@1e1
    :sswitch_1e1
    const-string v0, "xhigh"

    #@1e3
    goto :goto_181

    #@1e4
    :sswitch_1e4
    const-string v0, "xxhigh"

    #@1e6
    goto :goto_181

    #@1e7
    :cond_1e7
    move v0, v3

    #@1e8
    goto :goto_1a6

    #@1e9
    nop

    #@1ea
    :pswitch_data_1ea
    .packed-switch 0x1
        :pswitch_1c9
        :pswitch_1cc
        :pswitch_1cf
        :pswitch_1d2
    .end packed-switch

    #@1f6
    :sswitch_data_1f6
    .sparse-switch
        0x78 -> :sswitch_1d5
        0xa0 -> :sswitch_1d8
        0xd5 -> :sswitch_1de
        0xf0 -> :sswitch_1db
        0x140 -> :sswitch_1e1
        0x1e0 -> :sswitch_1e4
    .end sparse-switch
.end method
