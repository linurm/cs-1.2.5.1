.class public Lcom/google/android/gms/security/ProviderInstaller;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;
    }
.end annotation


# static fields
.field public static final PROVIDER_NAME:Ljava/lang/String; = "GmsCore_OpenSSL"

.field private static aea:Ljava/lang/reflect/Method;

.field private static final qp:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->qp:Ljava/lang/Object;

    #@7
    const/4 v0, 0x0

    #@8
    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->aea:Ljava/lang/reflect/Method;

    #@a
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static L(Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    const-string v1, "com.google.android.gms.common.security.ProviderInstallerImpl"

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    const-string v1, "insertProvider"

    #@c
    const/4 v2, 0x1

    #@d
    new-array v2, v2, [Ljava/lang/Class;

    #@f
    const/4 v3, 0x0

    #@10
    const-class v4, Landroid/content/Context;

    #@12
    aput-object v4, v2, v3

    #@14
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@17
    move-result-object v0

    #@18
    sput-object v0, Lcom/google/android/gms/security/ProviderInstaller;->aea:Ljava/lang/reflect/Method;

    #@1a
    return-void
.end method

.method public static installIfNeeded(Landroid/content/Context;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    #@0
    const/16 v2, 0x8

    #@2
    const-string v0, "Context must not be null"

    #@4
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->z(Landroid/content/Context;)V

    #@a
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    if-nez v0, :cond_1d

    #@10
    const-string v0, "ProviderInstaller"

    #@12
    const-string v1, "Failed to get remote context"

    #@14
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    new-instance v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    #@19
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    #@1c
    throw v0

    #@1d
    :cond_1d
    sget-object v1, Lcom/google/android/gms/security/ProviderInstaller;->qp:Ljava/lang/Object;

    #@1f
    monitor-enter v1

    #@20
    :try_start_20
    sget-object v2, Lcom/google/android/gms/security/ProviderInstaller;->aea:Ljava/lang/reflect/Method;

    #@22
    if-nez v2, :cond_27

    #@24
    invoke-static {v0}, Lcom/google/android/gms/security/ProviderInstaller;->L(Landroid/content/Context;)V

    #@27
    :cond_27
    sget-object v2, Lcom/google/android/gms/security/ProviderInstaller;->aea:Ljava/lang/reflect/Method;

    #@29
    const/4 v3, 0x0

    #@2a
    const/4 v4, 0x1

    #@2b
    new-array v4, v4, [Ljava/lang/Object;

    #@2d
    const/4 v5, 0x0

    #@2e
    aput-object v0, v4, v5

    #@30
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_33} :catch_35
    .catchall {:try_start_20 .. :try_end_33} :catchall_5a

    #@33
    :try_start_33
    monitor-exit v1

    #@34
    return-void

    #@35
    :catch_35
    move-exception v0

    #@36
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string v3, "ProviderInstaller"

    #@3d
    const-string v4, "Failed to install provider: "

    #@3f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@52
    new-instance v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    #@54
    const/16 v2, 0x8

    #@56
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    #@59
    throw v0

    #@5a
    :catchall_5a
    move-exception v0

    #@5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_33 .. :try_end_5c} :catchall_5a

    #@5c
    throw v0
.end method

.method public static installIfNeededAsync(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V
    .registers 4

    #@0
    const-string v0, "Context must not be null"

    #@2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    const-string v0, "Listener must not be null"

    #@7
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    const-string v0, "Must be called on the UI thread"

    #@c
    invoke-static {v0}, Lcom/google/android/gms/internal/hm;->ay(Ljava/lang/String;)V

    #@f
    new-instance v0, Lcom/google/android/gms/security/ProviderInstaller$1;

    #@11
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/security/ProviderInstaller$1;-><init>(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V

    #@14
    const/4 v1, 0x0

    #@15
    new-array v1, v1, [Ljava/lang/Void;

    #@17
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@1a
    return-void
.end method
