.class public Lcom/google/android/vending/licensing/ResponseData;
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
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/vending/licensing/ResponseData;
    .registers 6

    #@0
    const/4 v4, 0x0

    #@1
    const/16 v0, 0x3a

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    if-ne v1, v0, :cond_22

    #@a
    const-string v0, ""

    #@c
    :goto_c
    const-string v1, "|"

    #@e
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    array-length v2, v1

    #@17
    const/4 v3, 0x6

    #@18
    if-ge v2, v3, :cond_37

    #@1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string v1, "Wrong number of fields."

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    :cond_22
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@29
    move-result v2

    #@2a
    if-lt v0, v2, :cond_30

    #@2c
    const-string v0, ""

    #@2e
    :goto_2e
    move-object p0, v1

    #@2f
    goto :goto_c

    #@30
    :cond_30
    add-int/lit8 v0, v0, 0x1

    #@32
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    goto :goto_2e

    #@37
    :cond_37
    new-instance v2, Lcom/google/android/vending/licensing/ResponseData;

    #@39
    invoke-direct {v2}, Lcom/google/android/vending/licensing/ResponseData;-><init>()V

    #@3c
    iput-object v0, v2, Lcom/google/android/vending/licensing/ResponseData;->extra:Ljava/lang/String;

    #@3e
    aget-object v0, v1, v4

    #@40
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@43
    move-result v0

    #@44
    iput v0, v2, Lcom/google/android/vending/licensing/ResponseData;->responseCode:I

    #@46
    const/4 v0, 0x1

    #@47
    aget-object v0, v1, v0

    #@49
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@4c
    move-result v0

    #@4d
    iput v0, v2, Lcom/google/android/vending/licensing/ResponseData;->nonce:I

    #@4f
    const/4 v0, 0x2

    #@50
    aget-object v0, v1, v0

    #@52
    iput-object v0, v2, Lcom/google/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    #@54
    const/4 v0, 0x3

    #@55
    aget-object v0, v1, v0

    #@57
    iput-object v0, v2, Lcom/google/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    #@59
    const/4 v0, 0x4

    #@5a
    aget-object v0, v1, v0

    #@5c
    iput-object v0, v2, Lcom/google/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    #@5e
    const/4 v0, 0x5

    #@5f
    aget-object v0, v1, v0

    #@61
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@64
    move-result-wide v0

    #@65
    iput-wide v0, v2, Lcom/google/android/vending/licensing/ResponseData;->timestamp:J

    #@67
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
    iget v3, p0, Lcom/google/android/vending/licensing/ResponseData;->responseCode:I

    #@8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v3

    #@c
    aput-object v3, v1, v2

    #@e
    const/4 v2, 0x1

    #@f
    iget v3, p0, Lcom/google/android/vending/licensing/ResponseData;->nonce:I

    #@11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v3

    #@15
    aput-object v3, v1, v2

    #@17
    const/4 v2, 0x2

    #@18
    iget-object v3, p0, Lcom/google/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    #@1a
    aput-object v3, v1, v2

    #@1c
    const/4 v2, 0x3

    #@1d
    iget-object v3, p0, Lcom/google/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    #@1f
    aput-object v3, v1, v2

    #@21
    const/4 v2, 0x4

    #@22
    iget-object v3, p0, Lcom/google/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    #@24
    aput-object v3, v1, v2

    #@26
    const/4 v2, 0x5

    #@27
    iget-wide v4, p0, Lcom/google/android/vending/licensing/ResponseData;->timestamp:J

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
