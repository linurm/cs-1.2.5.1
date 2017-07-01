.class public final enum Lcom/apportable/iap/Consts$BillingState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/iap/Consts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BillingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apportable/iap/Consts$BillingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apportable/iap/Consts$BillingState;

.field public static final enum BILLING_NOT_INITIALIZED:Lcom/apportable/iap/Consts$BillingState;

.field public static final enum BILLING_NOT_SUPPORTED:Lcom/apportable/iap/Consts$BillingState;

.field public static final enum BILLING_SUPPORTED:Lcom/apportable/iap/Consts$BillingState;


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
    new-instance v0, Lcom/apportable/iap/Consts$BillingState;

    #@5
    const-string v1, "BILLING_NOT_INITIALIZED"

    #@7
    invoke-direct {v0, v1, v2}, Lcom/apportable/iap/Consts$BillingState;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Lcom/apportable/iap/Consts$BillingState;->BILLING_NOT_INITIALIZED:Lcom/apportable/iap/Consts$BillingState;

    #@c
    new-instance v0, Lcom/apportable/iap/Consts$BillingState;

    #@e
    const-string v1, "BILLING_SUPPORTED"

    #@10
    invoke-direct {v0, v1, v3}, Lcom/apportable/iap/Consts$BillingState;-><init>(Ljava/lang/String;I)V

    #@13
    sput-object v0, Lcom/apportable/iap/Consts$BillingState;->BILLING_SUPPORTED:Lcom/apportable/iap/Consts$BillingState;

    #@15
    new-instance v0, Lcom/apportable/iap/Consts$BillingState;

    #@17
    const-string v1, "BILLING_NOT_SUPPORTED"

    #@19
    invoke-direct {v0, v1, v4}, Lcom/apportable/iap/Consts$BillingState;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v0, Lcom/apportable/iap/Consts$BillingState;->BILLING_NOT_SUPPORTED:Lcom/apportable/iap/Consts$BillingState;

    #@1e
    const/4 v0, 0x3

    #@1f
    new-array v0, v0, [Lcom/apportable/iap/Consts$BillingState;

    #@21
    sget-object v1, Lcom/apportable/iap/Consts$BillingState;->BILLING_NOT_INITIALIZED:Lcom/apportable/iap/Consts$BillingState;

    #@23
    aput-object v1, v0, v2

    #@25
    sget-object v1, Lcom/apportable/iap/Consts$BillingState;->BILLING_SUPPORTED:Lcom/apportable/iap/Consts$BillingState;

    #@27
    aput-object v1, v0, v3

    #@29
    sget-object v1, Lcom/apportable/iap/Consts$BillingState;->BILLING_NOT_SUPPORTED:Lcom/apportable/iap/Consts$BillingState;

    #@2b
    aput-object v1, v0, v4

    #@2d
    sput-object v0, Lcom/apportable/iap/Consts$BillingState;->$VALUES:[Lcom/apportable/iap/Consts$BillingState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/apportable/iap/Consts$BillingState;
    .registers 2

    #@0
    const-class v0, Lcom/apportable/iap/Consts$BillingState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/apportable/iap/Consts$BillingState;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/apportable/iap/Consts$BillingState;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/iap/Consts$BillingState;->$VALUES:[Lcom/apportable/iap/Consts$BillingState;

    #@2
    invoke-virtual {v0}, [Lcom/apportable/iap/Consts$BillingState;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/apportable/iap/Consts$BillingState;

    #@8
    return-object v0
.end method
