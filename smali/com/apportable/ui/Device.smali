.class public Lcom/apportable/ui/Device;
.super Ljava/lang/Object;


# static fields
.field public static final ALL_ORIENTATIONS_SUPPORTED:I = 0xf

.field private static final CHAR_SET:Ljava/lang/String; = "iso-8859-1"

.field public static final DELAY:J = 0x190L

.field public static final LANDSCAPE_LEFT_ORIENTATION:I = 0x3

.field public static final LANDSCAPE_LEFT_SUPPORTED:I = 0x4

.field public static final LANDSCAPE_RIGHT_ORIENTATION:I = 0x4

.field public static final LANDSCAPE_RIGHT_SUPPORTED:I = 0x8

.field public static final NO_ORIENTATION_SUPPORT:I = 0x0

.field public static final PORTRAIT_ORIENTATION:I = 0x1

.field public static final PORTRAIT_SUPPORTED:I = 0x1

.field public static final PORTRAIT_UPSIDEDOWN_ORIENTATION:I = 0x2

.field public static final PORTRAIT_UPSIDEDOWN_SUPPORTED:I = 0x2

.field private static final SHA1_ALGORITHM:Ljava/lang/String; = "SHA-1"

.field private static final TAG:Ljava/lang/String; = "ODIN"

.field public static final UNSPECIFIED_ORIENTATION:I


# instance fields
.field private listener:Lcom/apportable/ApportableOrientationEventListener;

.field private mEnabled:Z

.field private mObject:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/apportable/ui/Device;->mEnabled:Z

    #@6
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/apportable/ui/Device;->listener:Lcom/apportable/ApportableOrientationEventListener;

    #@9
    iput p2, p0, Lcom/apportable/ui/Device;->mObject:I

    #@b
    new-instance v0, Lcom/apportable/ui/Device$1;

    #@d
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Device$1;-><init>(Lcom/apportable/ui/Device;Landroid/content/Context;)V

    #@10
    iput-object v0, p0, Lcom/apportable/ui/Device;->listener:Lcom/apportable/ApportableOrientationEventListener;

    #@12
    return-void
.end method

.method private static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    :try_start_0
    const-string v0, "SHA-1"

    #@2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x28

    #@8
    new-array v1, v1, [B

    #@a
    const-string v1, "iso-8859-1"

    #@c
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@f
    move-result-object v1

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@14
    move-result v3

    #@15
    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    #@18
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    #@1b
    move-result-object v0

    #@1c
    invoke-static {v0}, Lcom/apportable/ui/Device;->convertToHex([B)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    #@1f
    move-result-object v0

    #@20
    :goto_20
    return-object v0

    #@21
    :catch_21
    move-exception v0

    #@22
    const-string v1, "VerdeDevice"

    #@24
    const-string v2, "Error generating generating SHA-1: "

    #@26
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    const/4 v0, 0x0

    #@2a
    goto :goto_20
.end method

.method static synthetic access$000(Lcom/apportable/ui/Device;)I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/ui/Device;->mObject:I

    #@2
    return v0
.end method

.method static synthetic access$100(Lcom/apportable/ui/Device;II)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/Device;->nativeOnOrientationChanged(II)V

    #@3
    return-void
.end method

.method static synthetic access$200(Lcom/apportable/ui/Device;)Lcom/apportable/ApportableOrientationEventListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/ui/Device;->listener:Lcom/apportable/ApportableOrientationEventListener;

    #@2
    return-object v0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v4, Ljava/lang/StringBuffer;

    #@3
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@6
    move v0, v1

    #@7
    :goto_7
    array-length v2, p0

    #@8
    if-ge v0, v2, :cond_2e

    #@a
    aget-byte v2, p0, v0

    #@c
    ushr-int/lit8 v2, v2, 0x4

    #@e
    and-int/lit8 v2, v2, 0xf

    #@10
    move v3, v1

    #@11
    :goto_11
    if-ltz v2, :cond_25

    #@13
    const/16 v5, 0x9

    #@15
    if-gt v2, v5, :cond_25

    #@17
    add-int/lit8 v2, v2, 0x30

    #@19
    int-to-char v2, v2

    #@1a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1d
    :goto_1d
    aget-byte v2, p0, v0

    #@1f
    const/4 v5, 0x1

    #@20
    if-lt v3, v5, :cond_33

    #@22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_7

    #@25
    :cond_25
    add-int/lit8 v2, v2, -0xa

    #@27
    add-int/lit8 v2, v2, 0x61

    #@29
    int-to-char v2, v2

    #@2a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2d
    goto :goto_1d

    #@2e
    :cond_2e
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    return-object v0

    #@33
    :cond_33
    add-int/lit8 v3, v3, 0x1

    #@35
    and-int/lit8 v2, v2, 0xf

    #@37
    goto :goto_11
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/Device;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/Device;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Device;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method public static macAddress()Ljava/lang/String;
    .registers 4

    #@0
    :try_start_0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@3
    move-result-object v0

    #@4
    const-string v1, "wifi"

    #@6
    invoke-virtual {v0, v1}, Lcom/apportable/app/VerdeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/net/wifi/WifiManager;

    #@c
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_17

    #@13
    move-result-object v0

    #@14
    :goto_14
    if-eqz v0, :cond_36

    #@16
    :goto_16
    return-object v0

    #@17
    :catch_17
    move-exception v0

    #@18
    const-string v1, "VerdeDevice"

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string v3, "Could not get device mac address: "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    const/4 v0, 0x0

    #@35
    goto :goto_14

    #@36
    :cond_36
    const-string v0, ""

    #@38
    goto :goto_16
.end method

.method private native nativeOnOrientationChanged(II)V
.end method


# virtual methods
.method public disable()V
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Device;->mEnabled:Z

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_10

    #@5
    const/4 v0, 0x0

    #@6
    iput-boolean v0, p0, Lcom/apportable/ui/Device;->mEnabled:Z

    #@8
    new-instance v0, Lcom/apportable/ui/Device$3;

    #@a
    invoke-direct {v0, p0}, Lcom/apportable/ui/Device$3;-><init>(Lcom/apportable/ui/Device;)V

    #@d
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@10
    :cond_10
    return-void
.end method

.method public enable()V
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Device;->mEnabled:Z

    #@2
    if-nez v0, :cond_f

    #@4
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/apportable/ui/Device;->mEnabled:Z

    #@7
    new-instance v0, Lcom/apportable/ui/Device$2;

    #@9
    invoke-direct {v0, p0}, Lcom/apportable/ui/Device$2;-><init>(Lcom/apportable/ui/Device;)V

    #@c
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@f
    :cond_f
    return-void
.end method
