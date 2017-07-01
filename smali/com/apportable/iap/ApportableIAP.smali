.class public Lcom/apportable/iap/ApportableIAP;
.super Lcom/apportable/iap/PurchaseObserver;

# interfaces
.implements Lcom/apportable/Lifecycle$Listener;


# static fields
.field private static final FROYO_GB_ICS_MIN_MARKET_VERSION:Ljava/lang/String; = "2.3.4"

.field private static final HONEYCOMB_MIN_MARKET_VERSION:Ljava/lang/String; = "5.0.12"

.field private static final HONEYCOMB_VERSION:I = 0xc

.field static final IAP_REQUEST_CODE:I = 0x18697

.field public static final RESULT_PRUCHASE_REQUEST:I = 0x9000

.field private static final TAG:Ljava/lang/String; = "ApportableIAP"

.field private static mBillingService:Lcom/apportable/iap/BillingService;

.field private static mBillingSupported:Z

.field private static mSharedIAP:Lcom/apportable/iap/ApportableIAP;

.field private static mUseIABV3Purchases:Z

.field private static mV3IabHelper:Lcom/apportable/iab/IabHelper;


# instance fields
.field private mObject:J

.field private mPurchaseObserver:Lcom/apportable/iap/PurchaseObserver;

.field restorePurchasesListener:Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    sput-boolean v0, Lcom/apportable/iap/ApportableIAP;->mBillingSupported:Z

    #@4
    sput-object v1, Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;

    #@6
    sput-object v1, Lcom/apportable/iap/ApportableIAP;->mSharedIAP:Lcom/apportable/iap/ApportableIAP;

    #@8
    sput-boolean v0, Lcom/apportable/iap/ApportableIAP;->mUseIABV3Purchases:Z

    #@a
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/apportable/iap/PurchaseObserver;-><init>(Landroid/app/Activity;)V

    #@7
    new-instance v0, Lcom/apportable/iap/ApportableIAP$2;

    #@9
    invoke-direct {v0, p0}, Lcom/apportable/iap/ApportableIAP$2;-><init>(Lcom/apportable/iap/ApportableIAP;)V

    #@c
    iput-object v0, p0, Lcom/apportable/iap/ApportableIAP;->restorePurchasesListener:Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;

    #@e
    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 7

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/apportable/iap/PurchaseObserver;-><init>(Landroid/app/Activity;)V

    #@7
    new-instance v0, Lcom/apportable/iap/ApportableIAP$2;

    #@9
    invoke-direct {v0, p0}, Lcom/apportable/iap/ApportableIAP$2;-><init>(Lcom/apportable/iap/ApportableIAP;)V

    #@c
    iput-object v0, p0, Lcom/apportable/iap/ApportableIAP;->restorePurchasesListener:Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;

    #@e
    const-string v0, "ApportableIAP"

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string v2, "USING GOOGLE IABv3 : "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    sput-object p0, Lcom/apportable/iap/ApportableIAP;->mSharedIAP:Lcom/apportable/iap/ApportableIAP;

    #@28
    sput-boolean p3, Lcom/apportable/iap/ApportableIAP;->mUseIABV3Purchases:Z

    #@2a
    iput-wide p1, p0, Lcom/apportable/iap/ApportableIAP;->mObject:J

    #@2c
    invoke-static {p0}, Lcom/apportable/iap/ResponseHandler;->register(Lcom/apportable/iap/PurchaseObserver;)V

    #@2f
    return-void
.end method

.method static synthetic access$000()Lcom/apportable/iab/IabHelper;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;

    #@2
    return-object v0
.end method

.method static synthetic access$002(Lcom/apportable/iab/IabHelper;)Lcom/apportable/iab/IabHelper;
    .registers 1

    #@0
    sput-object p0, Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;

    #@2
    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    #@0
    sput-boolean p0, Lcom/apportable/iap/ApportableIAP;->mBillingSupported:Z

    #@2
    return p0
.end method

.method static synthetic access$200(Lcom/apportable/iap/ApportableIAP;)J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/apportable/iap/ApportableIAP;->mObject:J

    #@2
    return-wide v0
.end method

.method private compareVersionStrings(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    const-string v0, "\\."

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    const-string v0, "\\."

    #@b
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    move v0, v1

    #@10
    :goto_10
    array-length v6, v4

    #@11
    if-ge v0, v6, :cond_23

    #@13
    array-length v6, v5

    #@14
    if-ge v0, v6, :cond_23

    #@16
    aget-object v6, v4, v0

    #@18
    aget-object v7, v5, v0

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v6

    #@1e
    if-eqz v6, :cond_23

    #@20
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_10

    #@23
    :cond_23
    array-length v6, v4

    #@24
    if-ge v0, v6, :cond_43

    #@26
    array-length v6, v5

    #@27
    if-ge v0, v6, :cond_43

    #@29
    new-instance v6, Ljava/lang/Integer;

    #@2b
    aget-object v4, v4, v0

    #@2d
    invoke-direct {v6, v4}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    #@30
    new-instance v4, Ljava/lang/Integer;

    #@32
    aget-object v0, v5, v0

    #@34
    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    #@37
    invoke-virtual {v6, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    #@3a
    move-result v0

    #@3b
    if-gez v0, :cond_3f

    #@3d
    move v1, v2

    #@3e
    :cond_3e
    :goto_3e
    return v1

    #@3f
    :cond_3f
    if-eqz v0, :cond_3e

    #@41
    move v1, v3

    #@42
    goto :goto_3e

    #@43
    :cond_43
    array-length v0, v4

    #@44
    array-length v6, v5

    #@45
    if-ge v0, v6, :cond_49

    #@47
    move v1, v2

    #@48
    goto :goto_3e

    #@49
    :cond_49
    array-length v0, v4

    #@4a
    array-length v2, v5

    #@4b
    if-eq v0, v2, :cond_3e

    #@4d
    move v1, v3

    #@4e
    goto :goto_3e
.end method

.method public static handleActivityResult(IILandroid/content/Intent;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const v1, 0x18697

    #@4
    if-eq v1, p0, :cond_7

    #@6
    :cond_6
    :goto_6
    return v0

    #@7
    :cond_7
    sget-boolean v1, Lcom/apportable/iap/ApportableIAP;->mUseIABV3Purchases:Z

    #@9
    if-eqz v1, :cond_6

    #@b
    sget-object v0, Lcom/apportable/iap/ApportableIAP;->mSharedIAP:Lcom/apportable/iap/ApportableIAP;

    #@d
    sget-object v0, Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;

    #@f
    invoke-virtual {v0, p0, p1, p2}, Lcom/apportable/iab/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    #@12
    move-result v0

    #@13
    goto :goto_6
.end method

.method public static native purchaseRequestDidError(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native purchaseStateDidChange(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method public static native querySkusResponse(JJLjava/lang/String;Z)V
.end method

.method public static native restorePurchasesCompleted(J)V
.end method

.method public static native restorePurchasesDidError(JLjava/lang/String;)V
.end method


# virtual methods
.method public OnLifecycleStateChanged(ILandroid/app/Application;Landroid/app/Activity;)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_6

    #@3
    invoke-virtual {p0}, Lcom/apportable/iap/ApportableIAP;->initBilling()V

    #@6
    :cond_6
    return-void
.end method

.method public checkBillingSupported()Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Lcom/apportable/activity/VerdeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v1

    #@9
    const-string v2, "com.android.vending"

    #@b
    const/4 v3, 0x0

    #@c
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@f
    move-result-object v2

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string v3, "ApportableIAP"

    #@17
    const-string v4, " market handler "

    #@19
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@1f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string v4, " has version code "

    #@25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    #@2b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    const-string v4, " and version string "

    #@31
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    #@37
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_44} :catch_82

    #@44
    const/16 v3, 0xc

    #@46
    if-ne v1, v3, :cond_7f

    #@48
    const-string v1, "5.0.12"

    #@4a
    :goto_4a
    :try_start_4a
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    #@4c
    invoke-direct {p0, v3, v1}, Lcom/apportable/iap/ApportableIAP;->compareVersionStrings(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    move-result v1

    #@50
    if-gez v1, :cond_8b

    #@52
    new-instance v1, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string v3, "ApportableIAP"

    #@59
    const-string v4, " market handler "

    #@5b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    #@61
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v1

    #@65
    const-string v4, " version "

    #@67
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v1

    #@6b
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    #@6d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v1

    #@71
    const-string v2, " cannot support IAP"

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v1

    #@77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4a .. :try_end_7e} :catch_82

    #@7e
    :goto_7e
    return v0

    #@7f
    :cond_7f
    const-string v1, "2.3.4"

    #@81
    goto :goto_4a

    #@82
    :catch_82
    move-exception v1

    #@83
    const-string v2, "ApportableIAP"

    #@85
    const-string v3, "Could not find com.android.vending"

    #@87
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8a
    goto :goto_7e

    #@8b
    :cond_8b
    sget-object v0, Lcom/apportable/iap/ApportableIAP;->mBillingService:Lcom/apportable/iap/BillingService;

    #@8d
    invoke-virtual {v0}, Lcom/apportable/iap/BillingService;->checkBillingSupported()Z

    #@90
    move-result v0

    #@91
    goto :goto_7e
.end method

.method public confirmNotification(Ljava/lang/String;I)V
    .registers 6

    #@0
    sget-object v0, Lcom/apportable/iap/ApportableIAP;->mBillingService:Lcom/apportable/iap/BillingService;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object p1, v1, v2

    #@8
    invoke-virtual {v0, p2, v1}, Lcom/apportable/iap/BillingService;->confirmNotifications(I[Ljava/lang/String;)Z

    #@b
    return-void
.end method

.method public consumePurchase(Ljava/lang/String;)Z
    .registers 5

    #@0
    :try_start_0
    sget-object v0, Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;

    #@2
    invoke-virtual {v0, p1}, Lcom/apportable/iab/IabHelper;->consume(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/apportable/iab/IabException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    const/4 v0, 0x1

    #@6
    :goto_6
    return v0

    #@7
    :catch_7
    move-exception v0

    #@8
    const-string v1, "ApportableIAP"

    #@a
    const-string v2, "unable to consume"

    #@c
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    const/4 v0, 0x0

    #@10
    goto :goto_6
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/apportable/iap/ApportableIAP;->mPurchaseObserver:Lcom/apportable/iap/PurchaseObserver;

    #@2
    invoke-static {v0}, Lcom/apportable/iap/ResponseHandler;->unregister(Lcom/apportable/iap/PurchaseObserver;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    #@5
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    return-void

    #@9
    :catchall_9
    move-exception v0

    #@a
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    throw v0
.end method

.method public initBilling()V
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/iap/BillingService;

    #@2
    invoke-direct {v0}, Lcom/apportable/iap/BillingService;-><init>()V

    #@5
    sput-object v0, Lcom/apportable/iap/ApportableIAP;->mBillingService:Lcom/apportable/iap/BillingService;

    #@7
    sget-object v0, Lcom/apportable/iap/ApportableIAP;->mBillingService:Lcom/apportable/iap/BillingService;

    #@9
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Lcom/apportable/iap/BillingService;->setContext(Landroid/content/Context;)V

    #@10
    invoke-static {p0}, Lcom/apportable/iap/ResponseHandler;->register(Lcom/apportable/iap/PurchaseObserver;)V

    #@13
    new-instance v0, Lcom/apportable/iab/IabHelper;

    #@15
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@18
    move-result-object v1

    #@19
    invoke-static {}, Lcom/apportable/iap/Security;->loadKeyFromMetaData()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v0, v1, v2}, Lcom/apportable/iab/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@20
    sput-object v0, Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;

    #@22
    sget-object v0, Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;

    #@24
    const/4 v1, 0x1

    #@25
    invoke-virtual {v0, v1}, Lcom/apportable/iab/IabHelper;->enableDebugLogging(Z)V

    #@28
    const-string v0, "ApportableIAP"

    #@2a
    const-string v1, "Starting setup."

    #@2c
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    sget-object v0, Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;

    #@31
    new-instance v1, Lcom/apportable/iap/ApportableIAP$1;

    #@33
    invoke-direct {v1, p0}, Lcom/apportable/iap/ApportableIAP$1;-><init>(Lcom/apportable/iap/ApportableIAP;)V

    #@36
    invoke-virtual {v0, v1}, Lcom/apportable/iab/IabHelper;->startSetup(Lcom/apportable/iab/IabHelper$OnIabSetupFinishedListener;)V

    #@39
    return-void
.end method

.method public onBillingSupported(Z)V
    .registers 5

    #@0
    const-string v0, "ApportableIAP"

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "IAP supported: "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    sput-boolean p1, Lcom/apportable/iap/ApportableIAP;->mBillingSupported:Z

    #@1a
    return-void
.end method

.method public onPurchaseStateChange(Lcom/apportable/iap/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 31

    #@0
    sget-boolean v2, Lcom/apportable/iap/ApportableIAP;->mUseIABV3Purchases:Z

    #@2
    if-nez v2, :cond_27

    #@4
    move-object/from16 v0, p0

    #@6
    iget-wide v2, v0, Lcom/apportable/iap/ApportableIAP;->mObject:J

    #@8
    invoke-virtual/range {p1 .. p1}, Lcom/apportable/iap/Consts$PurchaseState;->name()Ljava/lang/String;

    #@b
    move-result-object v5

    #@c
    const/16 v16, 0x0

    #@e
    const/16 v17, 0x0

    #@10
    move-object/from16 v4, p6

    #@12
    move-object/from16 v6, p2

    #@14
    move/from16 v7, p3

    #@16
    move-wide/from16 v8, p4

    #@18
    move-object/from16 v10, p7

    #@1a
    move-object/from16 v11, p8

    #@1c
    move-object/from16 v12, p9

    #@1e
    move/from16 v13, p10

    #@20
    move-object/from16 v14, p11

    #@22
    move-object/from16 v15, p12

    #@24
    invoke-static/range {v2 .. v17}, Lcom/apportable/iap/ApportableIAP;->purchaseStateDidChange(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    #@27
    :cond_27
    return-void
.end method

.method public onRequestPurchaseResponse(Lcom/apportable/iap/BillingService$RequestPurchase;Lcom/apportable/iap/Consts$ResponseCode;)V
    .registers 8

    #@0
    sget-boolean v0, Lcom/apportable/iap/ApportableIAP;->mUseIABV3Purchases:Z

    #@2
    if-nez v0, :cond_26

    #@4
    const-string v0, "ApportableIAP"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    iget-object v2, p1, Lcom/apportable/iap/BillingService$RequestPurchase;->mProductId:Ljava/lang/String;

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string v2, ": "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    sget-object v0, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_OK:Lcom/apportable/iap/Consts$ResponseCode;

    #@24
    if-ne p2, v0, :cond_27

    #@26
    :cond_26
    :goto_26
    return-void

    #@27
    :cond_27
    sget-object v0, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/apportable/iap/Consts$ResponseCode;

    #@29
    if-ne p2, v0, :cond_3f

    #@2b
    iget-wide v0, p0, Lcom/apportable/iap/ApportableIAP;->mObject:J

    #@2d
    iget-object v2, p1, Lcom/apportable/iap/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    #@2f
    sget-object v3, Lcom/apportable/iap/Consts$PurchaseState;->USER_CANCELED:Lcom/apportable/iap/Consts$PurchaseState;

    #@31
    invoke-virtual {v3}, Lcom/apportable/iap/Consts$PurchaseState;->name()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    sget-object v4, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/apportable/iap/Consts$ResponseCode;

    #@37
    invoke-virtual {v4}, Lcom/apportable/iap/Consts$ResponseCode;->name()Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    invoke-static {v0, v1, v2, v3, v4}, Lcom/apportable/iap/ApportableIAP;->purchaseRequestDidError(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    goto :goto_26

    #@3f
    :cond_3f
    sget-object v0, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_ERROR:Lcom/apportable/iap/Consts$ResponseCode;

    #@41
    if-eq p2, v0, :cond_53

    #@43
    sget-object v0, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/apportable/iap/Consts$ResponseCode;

    #@45
    if-eq p2, v0, :cond_53

    #@47
    sget-object v0, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/apportable/iap/Consts$ResponseCode;

    #@49
    if-eq p2, v0, :cond_53

    #@4b
    sget-object v0, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/apportable/iap/Consts$ResponseCode;

    #@4d
    if-eq p2, v0, :cond_53

    #@4f
    sget-object v0, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/apportable/iap/Consts$ResponseCode;

    #@51
    if-ne p2, v0, :cond_26

    #@53
    :cond_53
    iget-wide v0, p0, Lcom/apportable/iap/ApportableIAP;->mObject:J

    #@55
    iget-object v2, p1, Lcom/apportable/iap/BillingService$RequestPurchase;->mDeveloperPayload:Ljava/lang/String;

    #@57
    sget-object v3, Lcom/apportable/iap/Consts$PurchaseState;->CANCELED:Lcom/apportable/iap/Consts$PurchaseState;

    #@59
    invoke-virtual {v3}, Lcom/apportable/iap/Consts$PurchaseState;->name()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {p2}, Lcom/apportable/iap/Consts$ResponseCode;->name()Ljava/lang/String;

    #@60
    move-result-object v4

    #@61
    invoke-static {v0, v1, v2, v3, v4}, Lcom/apportable/iap/ApportableIAP;->purchaseRequestDidError(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@64
    goto :goto_26
.end method

.method public onRestoreTransactionsResponse(Lcom/apportable/iap/BillingService$RestoreTransactions;Lcom/apportable/iap/Consts$ResponseCode;)V
    .registers 3

    #@0
    return-void
.end method

.method public purchaseObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    new-instance v0, Ljava/security/SecureRandom;

    #@2
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    #@8
    move-result-wide v0

    #@9
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0, p1, p2, v0}, Lcom/apportable/iap/ApportableIAP;->purchaseObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_14

    #@13
    :goto_13
    return-object v0

    #@14
    :cond_14
    const/4 v0, 0x0

    #@15
    goto :goto_13
.end method

.method public purchaseObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    sget-boolean v1, Lcom/apportable/iap/ApportableIAP;->mUseIABV3Purchases:Z

    #@3
    if-eqz v1, :cond_27

    #@5
    sget-object v1, Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;

    #@7
    if-eqz v1, :cond_18

    #@9
    sget-boolean v1, Lcom/apportable/iap/ApportableIAP;->mBillingSupported:Z

    #@b
    if-eqz v1, :cond_18

    #@d
    if-eqz p1, :cond_11

    #@f
    if-nez p2, :cond_19

    #@11
    :cond_11
    const-string v1, "ApportableIAP"

    #@13
    const-string v2, "Cannot purchase null product/type"

    #@15
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    :cond_18
    :goto_18
    return v0

    #@19
    :cond_19
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@1c
    move-result-object v0

    #@1d
    new-instance v1, Lcom/apportable/iap/ApportableIAP$4;

    #@1f
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/apportable/iap/ApportableIAP$4;-><init>(Lcom/apportable/iap/ApportableIAP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@22
    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@25
    const/4 v0, 0x1

    #@26
    goto :goto_18

    #@27
    :cond_27
    sget-object v0, Lcom/apportable/iap/ApportableIAP;->mBillingService:Lcom/apportable/iap/BillingService;

    #@29
    invoke-virtual {v0, p1, p2, p3}, Lcom/apportable/iap/BillingService;->requestPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    #@2c
    move-result v0

    #@2d
    goto :goto_18
.end method

.method public queryPurchasedProductIdentifiers()[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apportable/iab/IabException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    sget-object v1, Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;

    #@3
    if-eqz v1, :cond_9

    #@5
    sget-boolean v1, Lcom/apportable/iap/ApportableIAP;->mBillingSupported:Z

    #@7
    if-nez v1, :cond_c

    #@9
    :cond_9
    new-array v0, v0, [Ljava/lang/String;

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    sget-object v1, Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;

    #@e
    const/4 v2, 0x1

    #@f
    const/4 v3, 0x0

    #@10
    invoke-virtual {v1, v2, v3}, Lcom/apportable/iab/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/apportable/iab/Inventory;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Lcom/apportable/iab/Inventory;->getAllPurchases()Ljava/util/List;

    #@17
    move-result-object v3

    #@18
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@1b
    move-result v1

    #@1c
    new-array v1, v1, [Ljava/lang/String;

    #@1e
    move v2, v0

    #@1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@22
    move-result v0

    #@23
    if-eq v2, v0, :cond_35

    #@25
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Lcom/apportable/iab/Purchase;

    #@2b
    invoke-virtual {v0}, Lcom/apportable/iab/Purchase;->getSku()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    aput-object v0, v1, v2

    #@31
    add-int/lit8 v0, v2, 0x1

    #@33
    move v2, v0

    #@34
    goto :goto_1f

    #@35
    :cond_35
    move-object v0, v1

    #@36
    goto :goto_b
.end method

.method public querySkus(JLjava/lang/String;)Z
    .registers 7

    #@0
    const-string v0, ","

    #@2
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    sget-object v1, Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;

    #@c
    if-eqz v1, :cond_1e

    #@e
    sget-boolean v1, Lcom/apportable/iap/ApportableIAP;->mBillingSupported:Z

    #@10
    if-eqz v1, :cond_1e

    #@12
    new-instance v1, Lcom/apportable/iap/ApportableIAP$3;

    #@14
    invoke-direct {v1, p0, p1, p2}, Lcom/apportable/iap/ApportableIAP$3;-><init>(Lcom/apportable/iap/ApportableIAP;J)V

    #@17
    sget-object v2, Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;

    #@19
    invoke-virtual {v2, v0, v1}, Lcom/apportable/iab/IabHelper;->querySkuDetailsAsync(Ljava/util/List;Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;)V

    #@1c
    const/4 v0, 0x1

    #@1d
    :goto_1d
    return v0

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_1d
.end method

.method public restoreTransactions()Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    sget-object v1, Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;

    #@3
    if-eqz v1, :cond_11

    #@5
    sget-boolean v1, Lcom/apportable/iap/ApportableIAP;->mBillingSupported:Z

    #@7
    if-eqz v1, :cond_11

    #@9
    sget-object v1, Lcom/apportable/iap/ApportableIAP;->mV3IabHelper:Lcom/apportable/iab/IabHelper;

    #@b
    iget-object v2, p0, Lcom/apportable/iap/ApportableIAP;->restorePurchasesListener:Lcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;

    #@d
    invoke-virtual {v1, v0, v2}, Lcom/apportable/iab/IabHelper;->queryInventoryAsync(ZLcom/apportable/iab/IabHelper$QueryInventoryFinishedListener;)V

    #@10
    const/4 v0, 0x1

    #@11
    :cond_11
    return v0
.end method
