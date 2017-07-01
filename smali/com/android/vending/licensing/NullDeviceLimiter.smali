.class public Lcom/android/vending/licensing/NullDeviceLimiter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/vending/licensing/DeviceLimiter;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public isDeviceAllowed(Ljava/lang/String;)Lcom/android/vending/licensing/Policy$LicenseResponse;
    .registers 3

    #@0
    sget-object v0, Lcom/android/vending/licensing/Policy$LicenseResponse;->LICENSED:Lcom/android/vending/licensing/Policy$LicenseResponse;

    #@2
    return-object v0
.end method
