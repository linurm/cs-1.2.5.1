.class public final enum Lcom/apportable/iap/Consts$ResponseCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/iap/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apportable/iap/Consts$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apportable/iap/Consts$ResponseCode;

.field public static final enum RESULT_BILLING_UNAVAILABLE:Lcom/apportable/iap/Consts$ResponseCode;

.field public static final enum RESULT_DEVELOPER_ERROR:Lcom/apportable/iap/Consts$ResponseCode;

.field public static final enum RESULT_ERROR:Lcom/apportable/iap/Consts$ResponseCode;

.field public static final enum RESULT_ITEM_UNAVAILABLE:Lcom/apportable/iap/Consts$ResponseCode;

.field public static final enum RESULT_OK:Lcom/apportable/iap/Consts$ResponseCode;

.field public static final enum RESULT_SERVICE_UNAVAILABLE:Lcom/apportable/iap/Consts$ResponseCode;

.field public static final enum RESULT_USER_CANCELED:Lcom/apportable/iap/Consts$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    #@0
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    new-instance v0, Lcom/apportable/iap/Consts$ResponseCode;

    #@7
    const-string v1, "RESULT_OK"

    #@9
    invoke-direct {v0, v1, v3}, Lcom/apportable/iap/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_OK:Lcom/apportable/iap/Consts$ResponseCode;

    #@e
    new-instance v0, Lcom/apportable/iap/Consts$ResponseCode;

    #@10
    const-string v1, "RESULT_USER_CANCELED"

    #@12
    invoke-direct {v0, v1, v4}, Lcom/apportable/iap/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/apportable/iap/Consts$ResponseCode;

    #@17
    new-instance v0, Lcom/apportable/iap/Consts$ResponseCode;

    #@19
    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    #@1b
    invoke-direct {v0, v1, v5}, Lcom/apportable/iap/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    #@1e
    sput-object v0, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/apportable/iap/Consts$ResponseCode;

    #@20
    new-instance v0, Lcom/apportable/iap/Consts$ResponseCode;

    #@22
    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    #@24
    invoke-direct {v0, v1, v6}, Lcom/apportable/iap/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    #@27
    sput-object v0, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/apportable/iap/Consts$ResponseCode;

    #@29
    new-instance v0, Lcom/apportable/iap/Consts$ResponseCode;

    #@2b
    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    #@2d
    invoke-direct {v0, v1, v7}, Lcom/apportable/iap/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v0, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/apportable/iap/Consts$ResponseCode;

    #@32
    new-instance v0, Lcom/apportable/iap/Consts$ResponseCode;

    #@34
    const-string v1, "RESULT_DEVELOPER_ERROR"

    #@36
    const/4 v2, 0x5

    #@37
    invoke-direct {v0, v1, v2}, Lcom/apportable/iap/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v0, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/apportable/iap/Consts$ResponseCode;

    #@3c
    new-instance v0, Lcom/apportable/iap/Consts$ResponseCode;

    #@3e
    const-string v1, "RESULT_ERROR"

    #@40
    const/4 v2, 0x6

    #@41
    invoke-direct {v0, v1, v2}, Lcom/apportable/iap/Consts$ResponseCode;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v0, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_ERROR:Lcom/apportable/iap/Consts$ResponseCode;

    #@46
    const/4 v0, 0x7

    #@47
    new-array v0, v0, [Lcom/apportable/iap/Consts$ResponseCode;

    #@49
    sget-object v1, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_OK:Lcom/apportable/iap/Consts$ResponseCode;

    #@4b
    aput-object v1, v0, v3

    #@4d
    sget-object v1, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_USER_CANCELED:Lcom/apportable/iap/Consts$ResponseCode;

    #@4f
    aput-object v1, v0, v4

    #@51
    sget-object v1, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/apportable/iap/Consts$ResponseCode;

    #@53
    aput-object v1, v0, v5

    #@55
    sget-object v1, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/apportable/iap/Consts$ResponseCode;

    #@57
    aput-object v1, v0, v6

    #@59
    sget-object v1, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/apportable/iap/Consts$ResponseCode;

    #@5b
    aput-object v1, v0, v7

    #@5d
    const/4 v1, 0x5

    #@5e
    sget-object v2, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/apportable/iap/Consts$ResponseCode;

    #@60
    aput-object v2, v0, v1

    #@62
    const/4 v1, 0x6

    #@63
    sget-object v2, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_ERROR:Lcom/apportable/iap/Consts$ResponseCode;

    #@65
    aput-object v2, v0, v1

    #@67
    sput-object v0, Lcom/apportable/iap/Consts$ResponseCode;->$VALUES:[Lcom/apportable/iap/Consts$ResponseCode;

    #@69
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

.method public static valueOf(I)Lcom/apportable/iap/Consts$ResponseCode;
    .registers 3

    #@0
    invoke-static {}, Lcom/apportable/iap/Consts$ResponseCode;->values()[Lcom/apportable/iap/Consts$ResponseCode;

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
    sget-object v0, Lcom/apportable/iap/Consts$ResponseCode;->RESULT_ERROR:Lcom/apportable/iap/Consts$ResponseCode;

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    aget-object v0, v0, p0

    #@e
    goto :goto_b
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apportable/iap/Consts$ResponseCode;
    .registers 2

    #@0
    const-class v0, Lcom/apportable/iap/Consts$ResponseCode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/apportable/iap/Consts$ResponseCode;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/apportable/iap/Consts$ResponseCode;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/iap/Consts$ResponseCode;->$VALUES:[Lcom/apportable/iap/Consts$ResponseCode;

    #@2
    invoke-virtual {v0}, [Lcom/apportable/iap/Consts$ResponseCode;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/apportable/iap/Consts$ResponseCode;

    #@8
    return-object v0
.end method
