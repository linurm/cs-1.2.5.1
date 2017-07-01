.class public final enum Lcom/apportable/iap/Consts$PurchaseState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/iap/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apportable/iap/Consts$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apportable/iap/Consts$PurchaseState;

.field public static final enum CANCELED:Lcom/apportable/iap/Consts$PurchaseState;

.field public static final enum PURCHASED:Lcom/apportable/iap/Consts$PurchaseState;

.field public static final enum REFUNDED:Lcom/apportable/iap/Consts$PurchaseState;

.field public static final enum USER_CANCELED:Lcom/apportable/iap/Consts$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    #@0
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    new-instance v0, Lcom/apportable/iap/Consts$PurchaseState;

    #@6
    const-string v1, "PURCHASED"

    #@8
    invoke-direct {v0, v1, v2}, Lcom/apportable/iap/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lcom/apportable/iap/Consts$PurchaseState;->PURCHASED:Lcom/apportable/iap/Consts$PurchaseState;

    #@d
    new-instance v0, Lcom/apportable/iap/Consts$PurchaseState;

    #@f
    const-string v1, "CANCELED"

    #@11
    invoke-direct {v0, v1, v3}, Lcom/apportable/iap/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    #@14
    sput-object v0, Lcom/apportable/iap/Consts$PurchaseState;->CANCELED:Lcom/apportable/iap/Consts$PurchaseState;

    #@16
    new-instance v0, Lcom/apportable/iap/Consts$PurchaseState;

    #@18
    const-string v1, "REFUNDED"

    #@1a
    invoke-direct {v0, v1, v4}, Lcom/apportable/iap/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    #@1d
    sput-object v0, Lcom/apportable/iap/Consts$PurchaseState;->REFUNDED:Lcom/apportable/iap/Consts$PurchaseState;

    #@1f
    new-instance v0, Lcom/apportable/iap/Consts$PurchaseState;

    #@21
    const-string v1, "USER_CANCELED"

    #@23
    invoke-direct {v0, v1, v5}, Lcom/apportable/iap/Consts$PurchaseState;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v0, Lcom/apportable/iap/Consts$PurchaseState;->USER_CANCELED:Lcom/apportable/iap/Consts$PurchaseState;

    #@28
    const/4 v0, 0x4

    #@29
    new-array v0, v0, [Lcom/apportable/iap/Consts$PurchaseState;

    #@2b
    sget-object v1, Lcom/apportable/iap/Consts$PurchaseState;->PURCHASED:Lcom/apportable/iap/Consts$PurchaseState;

    #@2d
    aput-object v1, v0, v2

    #@2f
    sget-object v1, Lcom/apportable/iap/Consts$PurchaseState;->CANCELED:Lcom/apportable/iap/Consts$PurchaseState;

    #@31
    aput-object v1, v0, v3

    #@33
    sget-object v1, Lcom/apportable/iap/Consts$PurchaseState;->REFUNDED:Lcom/apportable/iap/Consts$PurchaseState;

    #@35
    aput-object v1, v0, v4

    #@37
    sget-object v1, Lcom/apportable/iap/Consts$PurchaseState;->USER_CANCELED:Lcom/apportable/iap/Consts$PurchaseState;

    #@39
    aput-object v1, v0, v5

    #@3b
    sput-object v0, Lcom/apportable/iap/Consts$PurchaseState;->$VALUES:[Lcom/apportable/iap/Consts$PurchaseState;

    #@3d
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

.method public static valueOf(I)Lcom/apportable/iap/Consts$PurchaseState;
    .registers 3

    #@0
    invoke-static {}, Lcom/apportable/iap/Consts$PurchaseState;->values()[Lcom/apportable/iap/Consts$PurchaseState;

    #@3
    move-result-object v0

    #@4
    if-ltz p0, :cond_9

    #@6
    array-length v1, v0

    #@7
    if-lt p0, v1, :cond_c

    #@9
    :cond_9
    sget-object v0, Lcom/apportable/iap/Consts$PurchaseState;->CANCELED:Lcom/apportable/iap/Consts$PurchaseState;

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    aget-object v0, v0, p0

    #@e
    goto :goto_b
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apportable/iap/Consts$PurchaseState;
    .registers 2

    #@0
    const-class v0, Lcom/apportable/iap/Consts$PurchaseState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/apportable/iap/Consts$PurchaseState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/apportable/iap/Consts$PurchaseState;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/iap/Consts$PurchaseState;->$VALUES:[Lcom/apportable/iap/Consts$PurchaseState;

    #@2
    invoke-virtual {v0}, [Lcom/apportable/iap/Consts$PurchaseState;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/apportable/iap/Consts$PurchaseState;

    #@8
    return-object v0
.end method
