.class final enum Lcom/facebook/ads/internal/AdSdkCapability;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/AdSdkCapability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum AD_CHOICES:Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum APP_AD:Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum APP_AD_V2:Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum APP_ENGAGEMENT_AD:Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum JS_TRIGGER:Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum JS_TRIGGER_NO_AUTO_IMP_LOGGING:Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum LINK_AD:Lcom/facebook/ads/internal/AdSdkCapability;

.field public static final enum LINK_AD_V2:Lcom/facebook/ads/internal/AdSdkCapability;

.field private static final supportedCapabilities:[Lcom/facebook/ads/internal/AdSdkCapability;

.field private static final supportedCapabilitiesStr:Ljava/lang/String;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    #@0
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v0, 0x0

    #@5
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    #@7
    const-string v2, "APP_AD"

    #@9
    invoke-direct {v1, v2, v0, v0}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    #@c
    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->APP_AD:Lcom/facebook/ads/internal/AdSdkCapability;

    #@e
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    #@10
    const-string v2, "LINK_AD"

    #@12
    invoke-direct {v1, v2, v5, v5}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    #@15
    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->LINK_AD:Lcom/facebook/ads/internal/AdSdkCapability;

    #@17
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    #@19
    const-string v2, "APP_AD_V2"

    #@1b
    invoke-direct {v1, v2, v6, v6}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    #@1e
    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->APP_AD_V2:Lcom/facebook/ads/internal/AdSdkCapability;

    #@20
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    #@22
    const-string v2, "LINK_AD_V2"

    #@24
    invoke-direct {v1, v2, v7, v7}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    #@27
    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->LINK_AD_V2:Lcom/facebook/ads/internal/AdSdkCapability;

    #@29
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    #@2b
    const-string v2, "APP_ENGAGEMENT_AD"

    #@2d
    invoke-direct {v1, v2, v8, v8}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    #@30
    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->APP_ENGAGEMENT_AD:Lcom/facebook/ads/internal/AdSdkCapability;

    #@32
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    #@34
    const-string v2, "AD_CHOICES"

    #@36
    const/4 v3, 0x5

    #@37
    const/4 v4, 0x5

    #@38
    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    #@3b
    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->AD_CHOICES:Lcom/facebook/ads/internal/AdSdkCapability;

    #@3d
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    #@3f
    const-string v2, "JS_TRIGGER"

    #@41
    const/4 v3, 0x6

    #@42
    const/4 v4, 0x6

    #@43
    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    #@46
    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->JS_TRIGGER:Lcom/facebook/ads/internal/AdSdkCapability;

    #@48
    new-instance v1, Lcom/facebook/ads/internal/AdSdkCapability;

    #@4a
    const-string v2, "JS_TRIGGER_NO_AUTO_IMP_LOGGING"

    #@4c
    const/4 v3, 0x7

    #@4d
    const/4 v4, 0x7

    #@4e
    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/ads/internal/AdSdkCapability;-><init>(Ljava/lang/String;II)V

    #@51
    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->JS_TRIGGER_NO_AUTO_IMP_LOGGING:Lcom/facebook/ads/internal/AdSdkCapability;

    #@53
    const/16 v1, 0x8

    #@55
    new-array v1, v1, [Lcom/facebook/ads/internal/AdSdkCapability;

    #@57
    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->APP_AD:Lcom/facebook/ads/internal/AdSdkCapability;

    #@59
    aput-object v2, v1, v0

    #@5b
    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->LINK_AD:Lcom/facebook/ads/internal/AdSdkCapability;

    #@5d
    aput-object v2, v1, v5

    #@5f
    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->APP_AD_V2:Lcom/facebook/ads/internal/AdSdkCapability;

    #@61
    aput-object v2, v1, v6

    #@63
    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->LINK_AD_V2:Lcom/facebook/ads/internal/AdSdkCapability;

    #@65
    aput-object v2, v1, v7

    #@67
    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->APP_ENGAGEMENT_AD:Lcom/facebook/ads/internal/AdSdkCapability;

    #@69
    aput-object v2, v1, v8

    #@6b
    const/4 v2, 0x5

    #@6c
    sget-object v3, Lcom/facebook/ads/internal/AdSdkCapability;->AD_CHOICES:Lcom/facebook/ads/internal/AdSdkCapability;

    #@6e
    aput-object v3, v1, v2

    #@70
    const/4 v2, 0x6

    #@71
    sget-object v3, Lcom/facebook/ads/internal/AdSdkCapability;->JS_TRIGGER:Lcom/facebook/ads/internal/AdSdkCapability;

    #@73
    aput-object v3, v1, v2

    #@75
    const/4 v2, 0x7

    #@76
    sget-object v3, Lcom/facebook/ads/internal/AdSdkCapability;->JS_TRIGGER_NO_AUTO_IMP_LOGGING:Lcom/facebook/ads/internal/AdSdkCapability;

    #@78
    aput-object v3, v1, v2

    #@7a
    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->$VALUES:[Lcom/facebook/ads/internal/AdSdkCapability;

    #@7c
    new-array v1, v8, [Lcom/facebook/ads/internal/AdSdkCapability;

    #@7e
    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->LINK_AD_V2:Lcom/facebook/ads/internal/AdSdkCapability;

    #@80
    aput-object v2, v1, v0

    #@82
    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->APP_ENGAGEMENT_AD:Lcom/facebook/ads/internal/AdSdkCapability;

    #@84
    aput-object v2, v1, v5

    #@86
    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->AD_CHOICES:Lcom/facebook/ads/internal/AdSdkCapability;

    #@88
    aput-object v2, v1, v6

    #@8a
    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->JS_TRIGGER_NO_AUTO_IMP_LOGGING:Lcom/facebook/ads/internal/AdSdkCapability;

    #@8c
    aput-object v2, v1, v7

    #@8e
    sput-object v1, Lcom/facebook/ads/internal/AdSdkCapability;->supportedCapabilities:[Lcom/facebook/ads/internal/AdSdkCapability;

    #@90
    new-instance v1, Lorg/json/JSONArray;

    #@92
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    #@95
    sget-object v2, Lcom/facebook/ads/internal/AdSdkCapability;->supportedCapabilities:[Lcom/facebook/ads/internal/AdSdkCapability;

    #@97
    array-length v3, v2

    #@98
    :goto_98
    if-ge v0, v3, :cond_a6

    #@9a
    aget-object v4, v2, v0

    #@9c
    invoke-virtual {v4}, Lcom/facebook/ads/internal/AdSdkCapability;->getValue()I

    #@9f
    move-result v4

    #@a0
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    #@a3
    add-int/lit8 v0, v0, 0x1

    #@a5
    goto :goto_98

    #@a6
    :cond_a6
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    #@a9
    move-result-object v0

    #@aa
    sput-object v0, Lcom/facebook/ads/internal/AdSdkCapability;->supportedCapabilitiesStr:Ljava/lang/String;

    #@ac
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    iput p3, p0, Lcom/facebook/ads/internal/AdSdkCapability;->value:I

    #@5
    return-void
.end method

.method public static getSupportedCapabilitiesAsJSONString()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/ads/internal/AdSdkCapability;->supportedCapabilitiesStr:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/AdSdkCapability;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/ads/internal/AdSdkCapability;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/ads/internal/AdSdkCapability;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/AdSdkCapability;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/ads/internal/AdSdkCapability;->$VALUES:[Lcom/facebook/ads/internal/AdSdkCapability;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/ads/internal/AdSdkCapability;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/ads/internal/AdSdkCapability;

    #@8
    return-object v0
.end method


# virtual methods
.method getValue()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/ads/internal/AdSdkCapability;->value:I

    #@2
    return v0
.end method
