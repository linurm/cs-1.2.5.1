.class public Lcom/google/android/vending/licensing/NullDeviceLimiter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/vending/licensing/DeviceLimiter;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public isDeviceAllowed(Ljava/lang/String;)I
    .registers 3

    #@0
    const/16 v0, 0x100

    #@2
    return v0
.end method
