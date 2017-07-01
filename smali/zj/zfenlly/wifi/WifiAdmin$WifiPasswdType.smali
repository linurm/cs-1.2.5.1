.class final enum Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;
.super Ljava/lang/Enum;
.source "WifiAdmin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzj/zfenlly/wifi/WifiAdmin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WifiPasswdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

.field public static final enum WIFICIPHER_NOPASS:Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

.field public static final enum WIFICIPHER_WEP:Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

.field public static final enum WIFICIPHER_WPA:Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 321
    new-instance v0, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

    const-string v1, "WIFICIPHER_NOPASS"

    invoke-direct {v0, v1, v2}, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;->WIFICIPHER_NOPASS:Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

    new-instance v0, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

    const-string v1, "WIFICIPHER_WEP"

    invoke-direct {v0, v1, v3}, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;->WIFICIPHER_WEP:Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

    new-instance v0, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

    const-string v1, "WIFICIPHER_WPA"

    invoke-direct {v0, v1, v4}, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;->WIFICIPHER_WPA:Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

    .line 320
    const/4 v0, 0x3

    new-array v0, v0, [Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

    sget-object v1, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;->WIFICIPHER_NOPASS:Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

    aput-object v1, v0, v2

    sget-object v1, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;->WIFICIPHER_WEP:Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

    aput-object v1, v0, v3

    sget-object v1, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;->WIFICIPHER_WPA:Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

    aput-object v1, v0, v4

    sput-object v0, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;->$VALUES:[Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 320
    const-class v0, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

    return-object v0
.end method

.method public static values()[Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;
    .locals 1

    .prologue
    .line 320
    sget-object v0, Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;->$VALUES:[Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

    invoke-virtual {v0}, [Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzj/zfenlly/wifi/WifiAdmin$WifiPasswdType;

    return-object v0
.end method
