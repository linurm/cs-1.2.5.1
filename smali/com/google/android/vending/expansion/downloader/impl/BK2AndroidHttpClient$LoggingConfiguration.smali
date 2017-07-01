.class Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggingConfiguration"
.end annotation


# instance fields
.field private final level:I

.field private final tag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    #@5
    iput p2, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;->level:I

    #@7
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$1;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;)Z
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;->isLoggable()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic access$600(Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;->println(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method private isLoggable()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    #@2
    iget v1, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;->level:I

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private println(Ljava/lang/String;)V
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;->level:I

    #@2
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/BK2AndroidHttpClient$LoggingConfiguration;->tag:Ljava/lang/String;

    #@4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    #@7
    return-void
.end method
