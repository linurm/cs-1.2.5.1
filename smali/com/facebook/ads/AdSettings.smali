.class public Lcom/facebook/ads/AdSettings;
.super Ljava/lang/Object;


# static fields
.field private static final DEVICE_ID_HASH_PREFS_KEY:Ljava/lang/String; = "deviceIdHash"

.field private static final PREFS_NAME:Ljava/lang/String; = "FBAdPrefs"

.field public static final TAG:Ljava/lang/String;

.field private static childDirected:Z

.field private static deviceIdHash:Ljava/lang/String;

.field private static final emulatorProducts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static volatile testDeviceNoticeDisplayed:Z

.field private static final testDevices:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static urlPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    const-class v0, Lcom/facebook/ads/AdSettings;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Lcom/facebook/ads/AdSettings;->TAG:Ljava/lang/String;

    #@a
    sput-object v1, Lcom/facebook/ads/AdSettings;->urlPrefix:Ljava/lang/String;

    #@c
    sput-boolean v2, Lcom/facebook/ads/AdSettings;->childDirected:Z

    #@e
    sput-object v1, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    #@10
    new-instance v0, Ljava/util/HashSet;

    #@12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@15
    sput-object v0, Lcom/facebook/ads/AdSettings;->testDevices:Ljava/util/Collection;

    #@17
    new-instance v0, Ljava/util/HashSet;

    #@19
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@1c
    sput-object v0, Lcom/facebook/ads/AdSettings;->emulatorProducts:Ljava/util/Collection;

    #@1e
    sget-object v0, Lcom/facebook/ads/AdSettings;->emulatorProducts:Ljava/util/Collection;

    #@20
    const-string v1, "sdk"

    #@22
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@25
    sget-object v0, Lcom/facebook/ads/AdSettings;->emulatorProducts:Ljava/util/Collection;

    #@27
    const-string v1, "google_sdk"

    #@29
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@2c
    sget-object v0, Lcom/facebook/ads/AdSettings;->emulatorProducts:Ljava/util/Collection;

    #@2e
    const-string v1, "vbox86p"

    #@30
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@33
    sget-object v0, Lcom/facebook/ads/AdSettings;->emulatorProducts:Ljava/util/Collection;

    #@35
    const-string v1, "vbox86tp"

    #@37
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@3a
    sput-boolean v2, Lcom/facebook/ads/AdSettings;->testDeviceNoticeDisplayed:Z

    #@3c
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addTestDevice(Ljava/lang/String;)V
    .registers 2

    #@0
    sget-object v0, Lcom/facebook/ads/AdSettings;->testDevices:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public static addTestDevices(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/facebook/ads/AdSettings;->testDevices:Ljava/util/Collection;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    #@5
    return-void
.end method

.method public static clearTestDevices()V
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/ads/AdSettings;->testDevices:Ljava/util/Collection;

    #@2
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    #@5
    return-void
.end method

.method public static getUrlPrefix()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/ads/AdSettings;->urlPrefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static isChildDirected()Z
    .registers 1

    #@0
    sget-boolean v0, Lcom/facebook/ads/AdSettings;->childDirected:Z

    #@2
    return v0
.end method

.method public static isTestMode(Landroid/content/Context;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    sget-object v2, Lcom/facebook/ads/AdSettings;->emulatorProducts:Ljava/util/Collection;

    #@4
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    #@6
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_e

    #@c
    :cond_c
    move v0, v1

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    sget-object v2, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    #@10
    if-nez v2, :cond_46

    #@12
    const-string v2, "FBAdPrefs"

    #@14
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    #@17
    move-result-object v2

    #@18
    const-string v3, "deviceIdHash"

    #@1a
    const/4 v4, 0x0

    #@1b
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    sput-object v3, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    #@21
    sget-object v3, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    #@23
    invoke-static {v3}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_46

    #@29
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-static {v3}, Lcom/facebook/ads/internal/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    sput-object v3, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    #@37
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@3a
    move-result-object v2

    #@3b
    const-string v3, "deviceIdHash"

    #@3d
    sget-object v4, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    #@3f
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@42
    move-result-object v2

    #@43
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@46
    :cond_46
    sget-object v2, Lcom/facebook/ads/AdSettings;->testDevices:Ljava/util/Collection;

    #@48
    sget-object v3, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    #@4a
    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    #@4d
    move-result v2

    #@4e
    if-nez v2, :cond_c

    #@50
    sget-object v1, Lcom/facebook/ads/AdSettings;->deviceIdHash:Ljava/lang/String;

    #@52
    invoke-static {v1}, Lcom/facebook/ads/AdSettings;->printTestDeviceNotice(Ljava/lang/String;)V

    #@55
    goto :goto_d
.end method

.method private static printTestDeviceNotice(Ljava/lang/String;)V
    .registers 4

    #@0
    sget-boolean v0, Lcom/facebook/ads/AdSettings;->testDeviceNoticeDisplayed:Z

    #@2
    if-eqz v0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    const/4 v0, 0x1

    #@6
    sput-boolean v0, Lcom/facebook/ads/AdSettings;->testDeviceNoticeDisplayed:Z

    #@8
    sget-object v0, Lcom/facebook/ads/AdSettings;->TAG:Ljava/lang/String;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v2, "Test mode device hash: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    sget-object v0, Lcom/facebook/ads/AdSettings;->TAG:Ljava/lang/String;

    #@22
    new-instance v1, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string v2, "When testing your app with Facebook\'s ad units you must specify the device hashed ID to ensure the delivery of test ads, add the following code before loading an ad: AdSettings.addTestDevice(\""

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string v2, "\");"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    goto :goto_4
.end method

.method public static setIsChildDirected(Z)V
    .registers 1

    #@0
    sput-boolean p0, Lcom/facebook/ads/AdSettings;->childDirected:Z

    #@2
    return-void
.end method

.method public static setUrlPrefix(Ljava/lang/String;)V
    .registers 1

    #@0
    sput-object p0, Lcom/facebook/ads/AdSettings;->urlPrefix:Ljava/lang/String;

    #@2
    return-void
.end method
