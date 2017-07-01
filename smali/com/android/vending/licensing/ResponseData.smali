.class Lcom/android/vending/licensing/ResponseData;
.super Ljava/lang/Object;


# instance fields
.field public extra:Ljava/lang/String;

.field public nonce:I

.field public packageName:Ljava/lang/String;

.field public responseCode:I

.field public timestamp:J

.field public userId:Ljava/lang/String;

.field public versionCode:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/vending/licensing/ResponseData;
    .registers 5

    #@0
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    #@2
    const/16 v1, 0x3a

    #@4
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@7
    invoke-interface {v0, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    #@a
    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v2

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_1c

    #@14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@16
    const-string v1, "Blank response."

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/String;

    #@22
    const-string v1, ""

    #@24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_30

    #@2a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Ljava/lang/String;

    #@30
    :cond_30
    const-string v2, "|"

    #@32
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    array-length v2, v0

    #@3b
    const/4 v3, 0x6

    #@3c
    if-ge v2, v3, :cond_46

    #@3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@40
    const-string v1, "Wrong number of fields."

    #@42
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0

    #@46
    :cond_46
    new-instance v2, Lcom/android/vending/licensing/ResponseData;

    #@48
    invoke-direct {v2}, Lcom/android/vending/licensing/ResponseData;-><init>()V

    #@4b
    iput-object v1, v2, Lcom/android/vending/licensing/ResponseData;->extra:Ljava/lang/String;

    #@4d
    const/4 v1, 0x0

    #@4e
    aget-object v1, v0, v1

    #@50
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@53
    move-result v1

    #@54
    iput v1, v2, Lcom/android/vending/licensing/ResponseData;->responseCode:I

    #@56
    const/4 v1, 0x1

    #@57
    aget-object v1, v0, v1

    #@59
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5c
    move-result v1

    #@5d
    iput v1, v2, Lcom/android/vending/licensing/ResponseData;->nonce:I

    #@5f
    const/4 v1, 0x2

    #@60
    aget-object v1, v0, v1

    #@62
    iput-object v1, v2, Lcom/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    #@64
    const/4 v1, 0x3

    #@65
    aget-object v1, v0, v1

    #@67
    iput-object v1, v2, Lcom/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    #@69
    const/4 v1, 0x4

    #@6a
    aget-object v1, v0, v1

    #@6c
    iput-object v1, v2, Lcom/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    #@6e
    const/4 v1, 0x5

    #@6f
    aget-object v0, v0, v1

    #@71
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@74
    move-result-wide v0

    #@75
    iput-wide v0, v2, Lcom/android/vending/licensing/ResponseData;->timestamp:J

    #@77
    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    #@0
    const-string v0, "|"

    #@2
    const/4 v1, 0x6

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    iget v3, p0, Lcom/android/vending/licensing/ResponseData;->responseCode:I

    #@8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v3

    #@c
    aput-object v3, v1, v2

    #@e
    const/4 v2, 0x1

    #@f
    iget v3, p0, Lcom/android/vending/licensing/ResponseData;->nonce:I

    #@11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v3

    #@15
    aput-object v3, v1, v2

    #@17
    const/4 v2, 0x2

    #@18
    iget-object v3, p0, Lcom/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    #@1a
    aput-object v3, v1, v2

    #@1c
    const/4 v2, 0x3

    #@1d
    iget-object v3, p0, Lcom/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    #@1f
    aput-object v3, v1, v2

    #@21
    const/4 v2, 0x4

    #@22
    iget-object v3, p0, Lcom/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    #@24
    aput-object v3, v1, v2

    #@26
    const/4 v2, 0x5

    #@27
    iget-wide v4, p0, Lcom/android/vending/licensing/ResponseData;->timestamp:J

    #@29
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2c
    move-result-object v3

    #@2d
    aput-object v3, v1, v2

    #@2f
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    return-object v0
.end method
