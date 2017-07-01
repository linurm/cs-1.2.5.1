.class public Lcom/google/android/vending/licensing/LicenseChecker;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;
    }
.end annotation


# static fields
.field private static final DEBUG_LICENSE_ERROR:Z = false

.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final TAG:Ljava/lang/String; = "LicenseChecker"

.field private static final TIMEOUT_MS:I = 0x7530


# instance fields
.field private final mChecksInProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/vending/licensing/LicenseValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mPendingChecks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/vending/licensing/LicenseValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicy:Lcom/google/android/vending/licensing/Policy;

.field private mPublicKey:Ljava/security/PublicKey;

.field private mService:Lcom/google/android/vending/licensing/ILicensingService;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/security/SecureRandom;

    #@2
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    #@a
    new-instance v0, Ljava/util/LinkedList;

    #@c
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    #@11
    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    #@13
    iput-object p2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    #@15
    invoke-static {p3}, Lcom/google/android/vending/licensing/LicenseChecker;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPublicKey:Ljava/security/PublicKey;

    #@1b
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    #@1d
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    #@23
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    #@25
    invoke-static {p1, v0}, Lcom/google/android/vending/licensing/LicenseChecker;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mVersionCode:Ljava/lang/String;

    #@2b
    new-instance v0, Landroid/os/HandlerThread;

    #@2d
    const-string v1, "background thread"

    #@2f
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    #@32
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    #@35
    new-instance v1, Landroid/os/Handler;

    #@37
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    #@3a
    move-result-object v0

    #@3b
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3e
    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    #@40
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V

    #@3
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/LicenseChecker;->finishCheck(Lcom/google/android/vending/licensing/LicenseValidator;)V

    #@3
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/vending/licensing/LicenseChecker;)Ljava/util/Set;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/vending/licensing/LicenseChecker;)Ljava/security/PublicKey;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPublicKey:Ljava/security/PublicKey;

    #@2
    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/vending/licensing/LicenseChecker;)Landroid/os/Handler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method private cleanupService()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    #@2
    if-eqz v0, :cond_c

    #@4
    :try_start_4
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_9} :catch_d

    #@9
    :goto_9
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    #@c
    :cond_c
    return-void

    #@d
    :catch_d
    move-exception v0

    #@e
    const-string v0, "LicenseChecker"

    #@10
    const-string v1, "Unable to unbind from licensing service (already unbound)"

    #@12
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    goto :goto_9
.end method

.method private finishCheck(Lcom/google/android/vending/licensing/LicenseValidator;)V
    .registers 3

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    #@3
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@6
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    #@8
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_11

    #@e
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->cleanupService()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    #@11
    :cond_11
    monitor-exit p0

    #@12
    return-void

    #@13
    :catchall_13
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method private generateNonce()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    #@2
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4

    #@0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    const-string v1, "RSA"

    #@6
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@9
    move-result-object v1

    #@a
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    #@c
    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@f
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_14
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_12} :catch_1b
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_12} :catch_29

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Ljava/lang/RuntimeException;

    #@17
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v1

    #@1b
    :catch_1b
    move-exception v0

    #@1c
    const-string v1, "LicenseChecker"

    #@1e
    const-string v2, "Could not decode from Base64."

    #@20
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@25
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@28
    throw v1

    #@29
    :catch_29
    move-exception v0

    #@2a
    const-string v1, "LicenseChecker"

    #@2c
    const-string v2, "Invalid key specification."

    #@2e
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@33
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@36
    throw v1
.end method

.method private static getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@8
    move-result-object v0

    #@9
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_10

    #@b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    :goto_f
    return-object v0

    #@10
    :catch_10
    move-exception v0

    #@11
    const-string v0, "LicenseChecker"

    #@13
    const-string v1, "Package not found. could not get version code."

    #@15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@18
    const-string v0, ""

    #@1a
    goto :goto_f
.end method

.method private handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V
    .registers 5

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    #@3
    const/16 v1, 0x123

    #@5
    const/4 v2, 0x0

    #@6
    invoke-interface {v0, v1, v2}, Lcom/google/android/vending/licensing/Policy;->processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    #@9
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    #@b
    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1c

    #@11
    invoke-virtual {p1}, Lcom/google/android/vending/licensing/LicenseValidator;->getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    #@14
    move-result-object v0

    #@15
    const/16 v1, 0x123

    #@17
    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_26

    #@1a
    :goto_1a
    monitor-exit p0

    #@1b
    return-void

    #@1c
    :cond_1c
    :try_start_1c
    invoke-virtual {p1}, Lcom/google/android/vending/licensing/LicenseValidator;->getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    #@1f
    move-result-object v0

    #@20
    const/16 v1, 0x123

    #@22
    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_26

    #@25
    goto :goto_1a

    #@26
    :catchall_26
    move-exception v0

    #@27
    monitor-exit p0

    #@28
    throw v0
.end method

.method private runChecks()V
    .registers 7

    #@0
    :goto_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    #@2
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/vending/licensing/LicenseValidator;

    #@8
    if-eqz v0, :cond_4b

    #@a
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v2, "LicenseChecker"

    #@11
    const-string v3, "Calling checkLicense on service for "

    #@13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0}, Lcom/google/android/vending/licensing/LicenseValidator;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    #@28
    invoke-virtual {v0}, Lcom/google/android/vending/licensing/LicenseValidator;->getNonce()I

    #@2b
    move-result v2

    #@2c
    int-to-long v2, v2

    #@2d
    invoke-virtual {v0}, Lcom/google/android/vending/licensing/LicenseValidator;->getPackageName()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    new-instance v5, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    #@33
    invoke-direct {v5, p0, v0}, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;-><init>(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V

    #@36
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/google/android/vending/licensing/ILicensingService;->checkLicense(JLjava/lang/String;Lcom/google/android/vending/licensing/ILicenseResultListener;)V

    #@39
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    #@3b
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3e} :catch_3f

    #@3e
    goto :goto_0

    #@3f
    :catch_3f
    move-exception v1

    #@40
    const-string v2, "LicenseChecker"

    #@42
    const-string v3, "RemoteException in checkLicense call."

    #@44
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@47
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V

    #@4a
    goto :goto_0

    #@4b
    :cond_4b
    return-void
.end method


# virtual methods
.method public checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V
    .registers 9

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    #@3
    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_17

    #@9
    const-string v0, "LicenseChecker"

    #@b
    const-string v1, "Using cached license response"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@10
    const/16 v0, 0x100

    #@12
    invoke-interface {p1, v0}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_5c

    #@15
    :goto_15
    monitor-exit p0

    #@16
    return-void

    #@17
    :cond_17
    :try_start_17
    new-instance v0, Lcom/google/android/vending/licensing/LicenseValidator;

    #@19
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    #@1b
    new-instance v2, Lcom/google/android/vending/licensing/NullDeviceLimiter;

    #@1d
    invoke-direct {v2}, Lcom/google/android/vending/licensing/NullDeviceLimiter;-><init>()V

    #@20
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->generateNonce()I

    #@23
    move-result v4

    #@24
    iget-object v5, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    #@26
    iget-object v6, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mVersionCode:Ljava/lang/String;

    #@28
    move-object v3, p1

    #@29
    invoke-direct/range {v0 .. v6}, Lcom/google/android/vending/licensing/LicenseValidator;-><init>(Lcom/google/android/vending/licensing/Policy;Lcom/google/android/vending/licensing/DeviceLimiter;Lcom/google/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V

    #@2c
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    #@2e
    if-nez v1, :cond_6f

    #@30
    const-string v1, "LicenseChecker"

    #@32
    const-string v2, "Binding to licensing service."

    #@34
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_5c

    #@37
    :try_start_37
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    #@39
    new-instance v2, Landroid/content/Intent;

    #@3b
    new-instance v3, Ljava/lang/String;

    #@3d
    const-string v4, "Y29tLmFuZHJvaWQudmVuZGluZy5saWNlbnNpbmcuSUxpY2Vuc2luZ1NlcnZpY2U="

    #@3f
    invoke-static {v4}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    #@42
    move-result-object v4

    #@43
    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    #@46
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@49
    const/4 v3, 0x1

    #@4a
    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    #@4d
    move-result v1

    #@4e
    if-eqz v1, :cond_5f

    #@50
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    #@52
    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_55} :catch_56
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_37 .. :try_end_55} :catch_6a
    .catchall {:try_start_37 .. :try_end_55} :catchall_5c

    #@55
    goto :goto_15

    #@56
    :catch_56
    move-exception v0

    #@57
    const/4 v0, 0x6

    #@58
    :try_start_58
    invoke-interface {p1, v0}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->applicationError(I)V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    #@5b
    goto :goto_15

    #@5c
    :catchall_5c
    move-exception v0

    #@5d
    monitor-exit p0

    #@5e
    throw v0

    #@5f
    :cond_5f
    :try_start_5f
    const-string v1, "LicenseChecker"

    #@61
    const-string v2, "Could not bind to service."

    #@63
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V
    :try_end_69
    .catch Ljava/lang/SecurityException; {:try_start_5f .. :try_end_69} :catch_56
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_5f .. :try_end_69} :catch_6a
    .catchall {:try_start_5f .. :try_end_69} :catchall_5c

    #@69
    goto :goto_15

    #@6a
    :catch_6a
    move-exception v0

    #@6b
    :try_start_6b
    invoke-virtual {v0}, Lcom/google/android/vending/licensing/util/Base64DecoderException;->printStackTrace()V

    #@6e
    goto :goto_15

    #@6f
    :cond_6f
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    #@71
    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    #@74
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->runChecks()V
    :try_end_77
    .catchall {:try_start_6b .. :try_end_77} :catchall_5c

    #@77
    goto :goto_15
.end method

.method public onDestroy()V
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->cleanupService()V

    #@4
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    #@6
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    #@d
    monitor-exit p0

    #@e
    return-void

    #@f
    :catchall_f
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    invoke-static {p2}, Lcom/google/android/vending/licensing/ILicensingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/vending/licensing/ILicensingService;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    #@7
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->runChecks()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    #@a
    monitor-exit p0

    #@b
    return-void

    #@c
    :catchall_c
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    const-string v0, "LicenseChecker"

    #@3
    const-string v1, "Service unexpectedly disconnected."

    #@5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@8
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    #@b
    monitor-exit p0

    #@c
    return-void

    #@d
    :catchall_d
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method
