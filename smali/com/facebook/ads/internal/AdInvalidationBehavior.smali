.class public final enum Lcom/facebook/ads/internal/AdInvalidationBehavior;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/AdInvalidationBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/ads/internal/AdInvalidationBehavior;

.field public static final enum INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;

.field public static final enum NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

.field public static final enum NOT_INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    new-instance v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@5
    const-string v1, "NONE"

    #@7
    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/AdInvalidationBehavior;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@c
    new-instance v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@e
    const-string v1, "INSTALLED"

    #@10
    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/AdInvalidationBehavior;-><init>(Ljava/lang/String;I)V

    #@13
    sput-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@15
    new-instance v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@17
    const-string v1, "NOT_INSTALLED"

    #@19
    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/internal/AdInvalidationBehavior;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NOT_INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@1e
    const/4 v0, 0x3

    #@1f
    new-array v0, v0, [Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@21
    sget-object v1, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@23
    aput-object v1, v0, v2

    #@25
    sget-object v1, Lcom/facebook/ads/internal/AdInvalidationBehavior;->INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@27
    aput-object v1, v0, v3

    #@29
    sget-object v1, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NOT_INSTALLED:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@2b
    aput-object v1, v0, v4

    #@2d
    sput-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->$VALUES:[Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@2f
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/facebook/ads/internal/AdInvalidationBehavior;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    sget-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    :try_start_9
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@b
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-static {v0}, Lcom/facebook/ads/internal/AdInvalidationBehavior;->valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/AdInvalidationBehavior;
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_12} :catch_14

    #@12
    move-result-object v0

    #@13
    goto :goto_8

    #@14
    :catch_14
    move-exception v0

    #@15
    sget-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->NONE:Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@17
    goto :goto_8
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/AdInvalidationBehavior;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/AdInvalidationBehavior;
    .registers 1

    #@0
    sget-object v0, Lcom/facebook/ads/internal/AdInvalidationBehavior;->$VALUES:[Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@2
    invoke-virtual {v0}, [Lcom/facebook/ads/internal/AdInvalidationBehavior;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/facebook/ads/internal/AdInvalidationBehavior;

    #@8
    return-object v0
.end method
