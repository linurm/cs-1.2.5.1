.class public Lcom/apportable/expansion/downloader/ExpansionFileDownloaderService;
.super Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;


# static fields
.field private static final BASE64_PUBLIC_KEY:Ljava/lang/String;

.field private static final SALT:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "android.android_market_pubkey"

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/apportable/expansion/downloader/ExpansionFileDownloaderService;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    #@c
    const/16 v0, 0x14

    #@e
    new-array v0, v0, [B

    #@10
    fill-array-data v0, :array_16

    #@13
    sput-object v0, Lcom/apportable/expansion/downloader/ExpansionFileDownloaderService;->SALT:[B

    #@15
    return-void

    #@16
    :array_16
    .array-data 1
        -0x58t
        0xbt
        0x45t
        -0x2ct
        -0x19t
        -0x17t
        -0x49t
        0x68t
        -0x5bt
        0x21t
        -0x22t
        0x3ct
        0x35t
        -0x7dt
        0x66t
        -0xbt
        -0x69t
        -0x1t
        0x12t
        0x4ct
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getAlarmReceiverClassName()Ljava/lang/String;
    .registers 2

    #@0
    const-class v0, Lcom/apportable/expansion/downloader/ExpansionFileDownloaderAlarmReceiver;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .registers 2

    #@0
    sget-object v0, Lcom/apportable/expansion/downloader/ExpansionFileDownloaderService;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSALT()[B
    .registers 2

    #@0
    sget-object v0, Lcom/apportable/expansion/downloader/ExpansionFileDownloaderService;->SALT:[B

    #@2
    return-object v0
.end method
