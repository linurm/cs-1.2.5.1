.class public Lcom/facebook/ads/AdError;
.super Ljava/lang/Object;


# static fields
.field public static final INTERNAL_ERROR:Lcom/facebook/ads/AdError;

.field public static final INVALID_ERROR_CODE:I = -0x1

.field public static final LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/AdError;

.field public static final MISSING_PROPERTIES:Lcom/facebook/ads/AdError;

.field public static final NO_FILL:Lcom/facebook/ads/AdError;


# instance fields
.field private final errorCode:I

.field private final errorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    new-instance v0, Lcom/facebook/ads/AdError;

    #@2
    const/16 v1, 0x3e9

    #@4
    const-string v2, "No Fill"

    #@6
    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    #@9
    sput-object v0, Lcom/facebook/ads/AdError;->NO_FILL:Lcom/facebook/ads/AdError;

    #@b
    new-instance v0, Lcom/facebook/ads/AdError;

    #@d
    const/16 v1, 0x3ea

    #@f
    const-string v2, "Ad was re-loaded too frequently"

    #@11
    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    #@14
    sput-object v0, Lcom/facebook/ads/AdError;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/AdError;

    #@16
    new-instance v0, Lcom/facebook/ads/AdError;

    #@18
    const/16 v1, 0x7d1

    #@1a
    const-string v2, "Internal Error"

    #@1c
    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    #@1f
    sput-object v0, Lcom/facebook/ads/AdError;->INTERNAL_ERROR:Lcom/facebook/ads/AdError;

    #@21
    new-instance v0, Lcom/facebook/ads/AdError;

    #@23
    const/16 v1, 0x7d2

    #@25
    const-string v2, "Native ad failed to load due to missing properties"

    #@27
    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    #@2a
    sput-object v0, Lcom/facebook/ads/AdError;->MISSING_PROPERTIES:Lcom/facebook/ads/AdError;

    #@2c
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/facebook/ads/AdError;->errorCode:I

    #@5
    iput-object p2, p0, Lcom/facebook/ads/AdError;->errorMessage:Ljava/lang/String;

    #@7
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/ads/AdError;->errorCode:I

    #@2
    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/AdError;->errorMessage:Ljava/lang/String;

    #@2
    return-object v0
.end method
