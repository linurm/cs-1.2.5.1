.class public final enum Lcom/google/ads/AdRequest$ErrorCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/AdRequest$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

.field public static final enum INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

.field public static final enum NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

.field private static final synthetic a:[Lcom/google/ads/AdRequest$ErrorCode;


# instance fields
.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    #@0
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    new-instance v0, Lcom/google/ads/AdRequest$ErrorCode;

    #@6
    const-string v1, "INVALID_REQUEST"

    #@8
    const-string v2, "Invalid Ad request."

    #@a
    invoke-direct {v0, v1, v3, v2}, Lcom/google/ads/AdRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@d
    sput-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    #@f
    new-instance v0, Lcom/google/ads/AdRequest$ErrorCode;

    #@11
    const-string v1, "NO_FILL"

    #@13
    const-string v2, "Ad request successful, but no ad returned due to lack of ad inventory."

    #@15
    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/AdRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@18
    sput-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    #@1a
    new-instance v0, Lcom/google/ads/AdRequest$ErrorCode;

    #@1c
    const-string v1, "NETWORK_ERROR"

    #@1e
    const-string v2, "A network error occurred."

    #@20
    invoke-direct {v0, v1, v5, v2}, Lcom/google/ads/AdRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@23
    sput-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    #@25
    new-instance v0, Lcom/google/ads/AdRequest$ErrorCode;

    #@27
    const-string v1, "INTERNAL_ERROR"

    #@29
    const-string v2, "There was an internal error."

    #@2b
    invoke-direct {v0, v1, v6, v2}, Lcom/google/ads/AdRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@2e
    sput-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    #@30
    const/4 v0, 0x4

    #@31
    new-array v0, v0, [Lcom/google/ads/AdRequest$ErrorCode;

    #@33
    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    #@41
    aput-object v1, v0, v6

    #@43
    sput-object v0, Lcom/google/ads/AdRequest$ErrorCode;->a:[Lcom/google/ads/AdRequest$ErrorCode;

    #@45
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    iput-object p3, p0, Lcom/google/ads/AdRequest$ErrorCode;->description:Ljava/lang/String;

    #@5
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/AdRequest$ErrorCode;
    .registers 2

    #@0
    const-class v0, Lcom/google/ads/AdRequest$ErrorCode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/ads/AdRequest$ErrorCode;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/google/ads/AdRequest$ErrorCode;
    .registers 1

    #@0
    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->a:[Lcom/google/ads/AdRequest$ErrorCode;

    #@2
    invoke-virtual {v0}, [Lcom/google/ads/AdRequest$ErrorCode;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/google/ads/AdRequest$ErrorCode;

    #@8
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/ads/AdRequest$ErrorCode;->description:Ljava/lang/String;

    #@2
    return-object v0
.end method
