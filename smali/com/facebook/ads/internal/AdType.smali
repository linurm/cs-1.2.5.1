.class public final enum Lcom/facebook/ads/internal/AdType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/internal/AdType;

.field public static final enum HTML:Lcom/facebook/ads/internal/AdType;

.field public static final enum NATIVE:Lcom/facebook/ads/internal/AdType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    new-instance v0, Lcom/facebook/ads/internal/AdType;

    #@4
    const-string v1, "HTML"

    #@6
    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/ads/internal/AdType;-><init>(Ljava/lang/String;II)V

    #@9
    sput-object v0, Lcom/facebook/ads/internal/AdType;->HTML:Lcom/facebook/ads/internal/AdType;

    #@b
    new-instance v0, Lcom/facebook/ads/internal/AdType;

    #@d
    const-string v1, "NATIVE"

    #@f
    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/ads/internal/AdType;-><init>(Ljava/lang/String;II)V

    #@12
    sput-object v0, Lcom/facebook/ads/internal/AdType;->NATIVE:Lcom/facebook/ads/internal/AdType;

    #@14
    const/4 v0, 0x2

    #@15
    new-array v0, v0, [Lcom/facebook/ads/internal/AdType;

    #@17
    sget-object v1, Lcom/facebook/ads/internal/AdType;->HTML:Lcom/facebook/ads/internal/AdType;

    #@19
    aput-object v1, v0, v2

    #@1b
    sget-object v1, Lcom/facebook/ads/internal/AdType;->NATIVE:Lcom/facebook/ads/internal/AdType;

    #@1d
    aput-object v1, v0, v3

    #@1f
    sput-object v0, Lcom/facebook/ads/internal/AdType;->$VALUES:[Lcom/facebook/ads/internal/AdType;

    #@21
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
    iput p3, p0, Lcom/facebook/ads/internal/AdType;->value:I

    #@5
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/AdType;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/ads/internal/AdType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/ads/internal/AdType;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/AdType;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/ads/internal/AdType;->$VALUES:[Lcom/facebook/ads/internal/AdType;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/ads/internal/AdType;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/ads/internal/AdType;

    #@8
    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/ads/internal/AdType;->value:I

    #@2
    return v0
.end method
