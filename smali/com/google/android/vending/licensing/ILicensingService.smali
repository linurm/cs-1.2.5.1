.class public interface abstract Lcom/google/android/vending/licensing/ILicensingService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/licensing/ILicensingService$Stub;,
        Lcom/google/android/vending/licensing/ILicensingService$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract checkLicense(JLjava/lang/String;Lcom/google/android/vending/licensing/ILicenseResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
