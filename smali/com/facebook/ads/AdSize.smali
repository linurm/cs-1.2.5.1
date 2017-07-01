.class public final enum Lcom/facebook/ads/AdSize;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/AdSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/AdSize;

.field public static final enum BANNER_320_50:Lcom/facebook/ads/AdSize;

.field public static final enum INTERSTITIAL:Lcom/facebook/ads/AdSize;


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    #@0
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    new-instance v0, Lcom/facebook/ads/AdSize;

    #@4
    const-string v1, "BANNER_320_50"

    #@6
    const/16 v2, 0x140

    #@8
    const/16 v3, 0x32

    #@a
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/facebook/ads/AdSize;-><init>(Ljava/lang/String;III)V

    #@d
    sput-object v0, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    #@f
    new-instance v0, Lcom/facebook/ads/AdSize;

    #@11
    const-string v1, "INTERSTITIAL"

    #@13
    invoke-direct {v0, v1, v5, v4, v4}, Lcom/facebook/ads/AdSize;-><init>(Ljava/lang/String;III)V

    #@16
    sput-object v0, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    #@18
    const/4 v0, 0x2

    #@19
    new-array v0, v0, [Lcom/facebook/ads/AdSize;

    #@1b
    sget-object v1, Lcom/facebook/ads/AdSize;->BANNER_320_50:Lcom/facebook/ads/AdSize;

    #@1d
    aput-object v1, v0, v4

    #@1f
    sget-object v1, Lcom/facebook/ads/AdSize;->INTERSTITIAL:Lcom/facebook/ads/AdSize;

    #@21
    aput-object v1, v0, v5

    #@23
    sput-object v0, Lcom/facebook/ads/AdSize;->$VALUES:[Lcom/facebook/ads/AdSize;

    #@25
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    iput p3, p0, Lcom/facebook/ads/AdSize;->width:I

    #@5
    iput p4, p0, Lcom/facebook/ads/AdSize;->height:I

    #@7
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/AdSize;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/ads/AdSize;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/ads/AdSize;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/AdSize;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/ads/AdSize;->$VALUES:[Lcom/facebook/ads/AdSize;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/ads/AdSize;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/ads/AdSize;

    #@8
    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/ads/AdSize;->height:I

    #@2
    return v0
.end method

.method public getWidth()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/ads/AdSize;->width:I

    #@2
    return v0
.end method
