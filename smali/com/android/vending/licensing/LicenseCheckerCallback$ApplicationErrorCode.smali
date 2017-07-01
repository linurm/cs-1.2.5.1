.class public final enum Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/licensing/LicenseCheckerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

.field public static final enum CHECK_IN_PROGRESS:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

.field public static final enum INVALID_PACKAGE_NAME:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

.field public static final enum INVALID_PUBLIC_KEY:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

.field public static final enum MISSING_PERMISSION:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

.field public static final enum NON_MATCHING_UID:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

.field public static final enum NOT_MARKET_MANAGED:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;


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
    new-instance v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@7
    const-string v1, "INVALID_PACKAGE_NAME"

    #@9
    invoke-direct {v0, v1, v3}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->INVALID_PACKAGE_NAME:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@e
    new-instance v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@10
    const-string v1, "NON_MATCHING_UID"

    #@12
    invoke-direct {v0, v1, v4}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->NON_MATCHING_UID:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@17
    new-instance v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@19
    const-string v1, "NOT_MARKET_MANAGED"

    #@1b
    invoke-direct {v0, v1, v5}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;-><init>(Ljava/lang/String;I)V

    #@1e
    sput-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->NOT_MARKET_MANAGED:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@20
    new-instance v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@22
    const-string v1, "CHECK_IN_PROGRESS"

    #@24
    invoke-direct {v0, v1, v6}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;-><init>(Ljava/lang/String;I)V

    #@27
    sput-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->CHECK_IN_PROGRESS:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@29
    new-instance v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@2b
    const-string v1, "INVALID_PUBLIC_KEY"

    #@2d
    invoke-direct {v0, v1, v7}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->INVALID_PUBLIC_KEY:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@32
    new-instance v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@34
    const-string v1, "MISSING_PERMISSION"

    #@36
    const/4 v2, 0x5

    #@37
    invoke-direct {v0, v1, v2}, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->MISSING_PERMISSION:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@3c
    const/4 v0, 0x6

    #@3d
    new-array v0, v0, [Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@3f
    sget-object v1, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->INVALID_PACKAGE_NAME:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@41
    aput-object v1, v0, v3

    #@43
    sget-object v1, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->NON_MATCHING_UID:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@45
    aput-object v1, v0, v4

    #@47
    sget-object v1, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->NOT_MARKET_MANAGED:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@49
    aput-object v1, v0, v5

    #@4b
    sget-object v1, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->CHECK_IN_PROGRESS:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@4d
    aput-object v1, v0, v6

    #@4f
    sget-object v1, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->INVALID_PUBLIC_KEY:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@51
    aput-object v1, v0, v7

    #@53
    const/4 v1, 0x5

    #@54
    sget-object v2, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->MISSING_PERMISSION:Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@56
    aput-object v2, v0, v1

    #@58
    sput-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->$VALUES:[Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@5a
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

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;
    .registers 2

    #@0
    const-class v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;
    .registers 1

    #@0
    sget-object v0, Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->$VALUES:[Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@2
    invoke-virtual {v0}, [Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/android/vending/licensing/LicenseCheckerCallback$ApplicationErrorCode;

    #@8
    return-object v0
.end method
