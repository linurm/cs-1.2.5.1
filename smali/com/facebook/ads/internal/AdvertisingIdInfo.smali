.class public Lcom/facebook/ads/internal/AdvertisingIdInfo;
.super Ljava/lang/Object;


# static fields
.field private static final CONNECTION_RESULT_SUCCESS:I


# instance fields
.field private final id:Ljava/lang/String;

.field private final limitAdTrackingEnabled:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/ads/internal/AdvertisingIdInfo;->id:Ljava/lang/String;

    #@5
    iput-boolean p2, p0, Lcom/facebook/ads/internal/AdvertisingIdInfo;->limitAdTrackingEnabled:Z

    #@7
    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/facebook/ads/internal/AdvertisingIdInfo;
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@6
    move-result-object v0

    #@7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@a
    move-result-object v2

    #@b
    if-ne v0, v2, :cond_15

    #@d
    new-instance v0, Ljava/lang/IllegalStateException;

    #@f
    const-string v1, "Cannot get advertising info on main thread."

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    :cond_15
    const-string v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    #@17
    const-string v2, "isGooglePlayServicesAvailable"

    #@19
    new-array v3, v5, [Ljava/lang/Class;

    #@1b
    const-class v4, Landroid/content/Context;

    #@1d
    aput-object v4, v3, v6

    #@1f
    invoke-static {v0, v2, v3}, Lcom/facebook/ads/internal/AdUtilities;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@22
    move-result-object v0

    #@23
    if-nez v0, :cond_27

    #@25
    move-object v0, v1

    #@26
    :goto_26
    return-object v0

    #@27
    :cond_27
    new-array v2, v5, [Ljava/lang/Object;

    #@29
    aput-object p0, v2, v6

    #@2b
    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/AdUtilities;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    if-eqz v0, :cond_8a

    #@31
    check-cast v0, Ljava/lang/Integer;

    #@33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_8a

    #@39
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    #@3b
    const-string v2, "getAdvertisingIdInfo"

    #@3d
    new-array v3, v5, [Ljava/lang/Class;

    #@3f
    const-class v4, Landroid/content/Context;

    #@41
    aput-object v4, v3, v6

    #@43
    invoke-static {v0, v2, v3}, Lcom/facebook/ads/internal/AdUtilities;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@46
    move-result-object v0

    #@47
    if-eqz v0, :cond_8a

    #@49
    new-array v2, v5, [Ljava/lang/Object;

    #@4b
    aput-object p0, v2, v6

    #@4d
    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/AdUtilities;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    move-result-object v3

    #@51
    if-eqz v3, :cond_8a

    #@53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@56
    move-result-object v0

    #@57
    const-string v2, "getId"

    #@59
    new-array v4, v6, [Ljava/lang/Class;

    #@5b
    invoke-static {v0, v2, v4}, Lcom/facebook/ads/internal/AdUtilities;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@62
    move-result-object v2

    #@63
    const-string v4, "isLimitAdTrackingEnabled"

    #@65
    new-array v5, v6, [Ljava/lang/Class;

    #@67
    invoke-static {v2, v4, v5}, Lcom/facebook/ads/internal/AdUtilities;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@6a
    move-result-object v4

    #@6b
    if-eqz v0, :cond_8a

    #@6d
    if-eqz v4, :cond_8a

    #@6f
    new-instance v2, Lcom/facebook/ads/internal/AdvertisingIdInfo;

    #@71
    new-array v1, v6, [Ljava/lang/Object;

    #@73
    invoke-static {v3, v0, v1}, Lcom/facebook/ads/internal/AdUtilities;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    #@76
    move-result-object v0

    #@77
    check-cast v0, Ljava/lang/String;

    #@79
    new-array v1, v6, [Ljava/lang/Object;

    #@7b
    invoke-static {v3, v4, v1}, Lcom/facebook/ads/internal/AdUtilities;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    move-result-object v1

    #@7f
    check-cast v1, Ljava/lang/Boolean;

    #@81
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@84
    move-result v1

    #@85
    invoke-direct {v2, v0, v1}, Lcom/facebook/ads/internal/AdvertisingIdInfo;-><init>(Ljava/lang/String;Z)V

    #@88
    move-object v0, v2

    #@89
    goto :goto_26

    #@8a
    :cond_8a
    move-object v0, v1

    #@8b
    goto :goto_26
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/AdvertisingIdInfo;->id:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isLimitAdTrackingEnabled()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/ads/internal/AdvertisingIdInfo;->limitAdTrackingEnabled:Z

    #@2
    return v0
.end method
