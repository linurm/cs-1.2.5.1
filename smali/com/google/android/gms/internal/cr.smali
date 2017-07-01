.class public Lcom/google/android/gms/internal/cr;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private oV:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/cr;->mContext:Landroid/content/Context;

    #@5
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    const-string v1, "com.android.vending.billing.IInAppBillingService"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    const-string v1, "consumePurchase"

    #@e
    const/4 v2, 0x3

    #@f
    new-array v2, v2, [Ljava/lang/Class;

    #@11
    const/4 v3, 0x0

    #@12
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@14
    aput-object v4, v2, v3

    #@16
    const/4 v3, 0x1

    #@17
    const-class v4, Ljava/lang/String;

    #@19
    aput-object v4, v2, v3

    #@1b
    const/4 v3, 0x2

    #@1c
    const-class v4, Ljava/lang/String;

    #@1e
    aput-object v4, v2, v3

    #@20
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p0, Lcom/google/android/gms/internal/cr;->oV:Ljava/lang/Object;

    #@26
    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    const/4 v2, 0x3

    #@2b
    new-array v2, v2, [Ljava/lang/Object;

    #@2d
    const/4 v3, 0x0

    #@2e
    const/4 v4, 0x3

    #@2f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v4

    #@33
    aput-object v4, v2, v3

    #@35
    const/4 v3, 0x1

    #@36
    aput-object p1, v2, v3

    #@38
    const/4 v3, 0x2

    #@39
    aput-object p2, v2, v3

    #@3b
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Ljava/lang/Integer;

    #@41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_46

    #@44
    move-result v0

    #@45
    :goto_45
    return v0

    #@46
    :catch_46
    move-exception v0

    #@47
    const-string v1, "IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project."

    #@49
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4c
    const/4 v0, 0x5

    #@4d
    goto :goto_45
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    const-string v1, "com.android.vending.billing.IInAppBillingService"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    const-string v1, "getBuyIntent"

    #@e
    const/4 v2, 0x5

    #@f
    new-array v2, v2, [Ljava/lang/Class;

    #@11
    const/4 v3, 0x0

    #@12
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@14
    aput-object v4, v2, v3

    #@16
    const/4 v3, 0x1

    #@17
    const-class v4, Ljava/lang/String;

    #@19
    aput-object v4, v2, v3

    #@1b
    const/4 v3, 0x2

    #@1c
    const-class v4, Ljava/lang/String;

    #@1e
    aput-object v4, v2, v3

    #@20
    const/4 v3, 0x3

    #@21
    const-class v4, Ljava/lang/String;

    #@23
    aput-object v4, v2, v3

    #@25
    const/4 v3, 0x4

    #@26
    const-class v4, Ljava/lang/String;

    #@28
    aput-object v4, v2, v3

    #@2a
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@2d
    move-result-object v1

    #@2e
    iget-object v2, p0, Lcom/google/android/gms/internal/cr;->oV:Ljava/lang/Object;

    #@30
    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    const/4 v2, 0x5

    #@35
    new-array v2, v2, [Ljava/lang/Object;

    #@37
    const/4 v3, 0x0

    #@38
    const/4 v4, 0x3

    #@39
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v4

    #@3d
    aput-object v4, v2, v3

    #@3f
    const/4 v3, 0x1

    #@40
    aput-object p1, v2, v3

    #@42
    const/4 v3, 0x2

    #@43
    aput-object p2, v2, v3

    #@45
    const/4 v3, 0x3

    #@46
    const-string v4, "inapp"

    #@48
    aput-object v4, v2, v3

    #@4a
    const/4 v3, 0x4

    #@4b
    aput-object p3, v2, v3

    #@4d
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    move-result-object v0

    #@51
    check-cast v0, Landroid/os/Bundle;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    #@53
    :goto_53
    return-object v0

    #@54
    :catch_54
    move-exception v0

    #@55
    const-string v1, "IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project."

    #@57
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5a
    const/4 v0, 0x0

    #@5b
    goto :goto_53
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    const-string v1, "com.android.vending.billing.IInAppBillingService"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    const-string v1, "getPurchases"

    #@e
    const/4 v2, 0x4

    #@f
    new-array v2, v2, [Ljava/lang/Class;

    #@11
    const/4 v3, 0x0

    #@12
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@14
    aput-object v4, v2, v3

    #@16
    const/4 v3, 0x1

    #@17
    const-class v4, Ljava/lang/String;

    #@19
    aput-object v4, v2, v3

    #@1b
    const/4 v3, 0x2

    #@1c
    const-class v4, Ljava/lang/String;

    #@1e
    aput-object v4, v2, v3

    #@20
    const/4 v3, 0x3

    #@21
    const-class v4, Ljava/lang/String;

    #@23
    aput-object v4, v2, v3

    #@25
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@28
    move-result-object v1

    #@29
    iget-object v2, p0, Lcom/google/android/gms/internal/cr;->oV:Ljava/lang/Object;

    #@2b
    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    const/4 v2, 0x4

    #@30
    new-array v2, v2, [Ljava/lang/Object;

    #@32
    const/4 v3, 0x0

    #@33
    const/4 v4, 0x3

    #@34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v4

    #@38
    aput-object v4, v2, v3

    #@3a
    const/4 v3, 0x1

    #@3b
    aput-object p1, v2, v3

    #@3d
    const/4 v3, 0x2

    #@3e
    const-string v4, "inapp"

    #@40
    aput-object v4, v2, v3

    #@42
    const/4 v3, 0x3

    #@43
    aput-object p2, v2, v3

    #@45
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Landroid/os/Bundle;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    #@4b
    :goto_4b
    return-object v0

    #@4c
    :catch_4c
    move-exception v0

    #@4d
    const-string v1, "IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project."

    #@4f
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@52
    const/4 v0, 0x0

    #@53
    goto :goto_4b
.end method

.method public destroy()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/google/android/gms/internal/cr;->oV:Ljava/lang/Object;

    #@3
    return-void
.end method

.method public o(Landroid/os/IBinder;)V
    .registers 7

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    const-string v1, "com.android.vending.billing.IInAppBillingService$Stub"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    const-string v1, "asInterface"

    #@e
    const/4 v2, 0x1

    #@f
    new-array v2, v2, [Ljava/lang/Class;

    #@11
    const/4 v3, 0x0

    #@12
    const-class v4, Landroid/os/IBinder;

    #@14
    aput-object v4, v2, v3

    #@16
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@19
    move-result-object v0

    #@1a
    const/4 v1, 0x0

    #@1b
    const/4 v2, 0x1

    #@1c
    new-array v2, v2, [Ljava/lang/Object;

    #@1e
    const/4 v3, 0x0

    #@1f
    aput-object p1, v2, v3

    #@21
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/google/android/gms/internal/cr;->oV:Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    #@27
    :goto_27
    return-void

    #@28
    :catch_28
    move-exception v0

    #@29
    const-string v0, "IInAppBillingService is not available, please add com.android.vending.billing.IInAppBillingService to project."

    #@2b
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@2e
    goto :goto_27
.end method
