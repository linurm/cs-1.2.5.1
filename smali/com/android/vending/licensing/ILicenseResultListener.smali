.class public interface abstract Lcom/android/vending/licensing/ILicenseResultListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/licensing/ILicenseResultListener$Stub;,
        Lcom/android/vending/licensing/ILicenseResultListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
