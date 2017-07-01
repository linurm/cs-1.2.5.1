.class public final enum Lcom/android/vending/licensing/Policy$LicenseResponse;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/licensing/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LicenseResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/licensing/Policy$LicenseResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/licensing/Policy$LicenseResponse;

.field public static final enum LICENSED:Lcom/android/vending/licensing/Policy$LicenseResponse;

.field public static final enum NOT_LICENSED:Lcom/android/vending/licensing/Policy$LicenseResponse;

.field public static final enum RETRY:Lcom/android/vending/licensing/Policy$LicenseResponse;


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
    new-instance v0, Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@5
    const-string v1, "LICENSED"

    #@7
    invoke-direct {v0, v1, v2}, Lcom/android/vending/licensing/Policy$LicenseResponse;-><init>(Ljava/lang/String;I)V

    #@a
    sput-object v0, Lcom/android/vending/licensing/Policy$LicenseResponse;->LICENSED:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@c
    new-instance v0, Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@e
    const-string v1, "NOT_LICENSED"

    #@10
    invoke-direct {v0, v1, v3}, Lcom/android/vending/licensing/Policy$LicenseResponse;-><init>(Ljava/lang/String;I)V

    #@13
    sput-object v0, Lcom/android/vending/licensing/Policy$LicenseResponse;->NOT_LICENSED:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@15
    new-instance v0, Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@17
    const-string v1, "RETRY"

    #@19
    invoke-direct {v0, v1, v4}, Lcom/android/vending/licensing/Policy$LicenseResponse;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v0, Lcom/android/vending/licensing/Policy$LicenseResponse;->RETRY:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@1e
    const/4 v0, 0x3

    #@1f
    new-array v0, v0, [Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@21
    sget-object v1, Lcom/android/vending/licensing/Policy$LicenseResponse;->LICENSED:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@23
    aput-object v1, v0, v2

    #@25
    sget-object v1, Lcom/android/vending/licensing/Policy$LicenseResponse;->NOT_LICENSED:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@27
    aput-object v1, v0, v3

    #@29
    sget-object v1, Lcom/android/vending/licensing/Policy$LicenseResponse;->RETRY:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@2b
    aput-object v1, v0, v4

    #@2d
    sput-object v0, Lcom/android/vending/licensing/Policy$LicenseResponse;->$VALUES:[Lcom/android/vending/licensing/Policy$LicenseResponse;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/licensing/Policy$LicenseResponse;
    .registers 2

    #@0
    const-class v0, Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/vending/licensing/Policy$LicenseResponse;
    .registers 1

    #@0
    sget-object v0, Lcom/android/vending/licensing/Policy$LicenseResponse;->$VALUES:[Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@2
    invoke-virtual {v0}, [Lcom/android/vending/licensing/Policy$LicenseResponse;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@8
    return-object v0
.end method
