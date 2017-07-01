.class public Lcom/google/android/gms/maps/internal/u;
.super Ljava/lang/Object;


# static fields
.field private static aaj:Landroid/content/Context;

.field private static aak:Lcom/google/android/gms/maps/internal/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static H(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/c;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    sget-object v0, Lcom/google/android/gms/maps/internal/u;->aak:Lcom/google/android/gms/maps/internal/c;

    #@5
    if-eqz v0, :cond_a

    #@7
    sget-object v0, Lcom/google/android/gms/maps/internal/u;->aak:Lcom/google/android/gms/maps/internal/c;

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/u;->I(Landroid/content/Context;)V

    #@d
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/u;->J(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/c;

    #@10
    move-result-object v0

    #@11
    sput-object v0, Lcom/google/android/gms/maps/internal/u;->aak:Lcom/google/android/gms/maps/internal/c;

    #@13
    :try_start_13
    sget-object v0, Lcom/google/android/gms/maps/internal/u;->aak:Lcom/google/android/gms/maps/internal/c;

    #@15
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/u;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c
    move-result-object v1

    #@1d
    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@20
    move-result-object v1

    #@21
    const v2, 0x4da6e8

    #@24
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/maps/internal/c;->a(Lcom/google/android/gms/dynamic/d;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_27} :catch_2a

    #@27
    sget-object v0, Lcom/google/android/gms/maps/internal/u;->aak:Lcom/google/android/gms/maps/internal/c;

    #@29
    goto :goto_9

    #@2a
    :catch_2a
    move-exception v0

    #@2b
    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    #@2d
    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    #@30
    throw v1
.end method

.method private static I(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_e

    #@7
    new-instance v1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    #@9
    invoke-direct {v1, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    #@c
    throw v1

    #@d
    :pswitch_d
    return-void

    #@e
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method private static J(Landroid/content/Context;)Lcom/google/android/gms/maps/internal/c;
    .registers 3

    #@0
    invoke-static {}, Lcom/google/android/gms/maps/internal/u;->jJ()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_1c

    #@6
    const-class v0, Lcom/google/android/gms/maps/internal/u;

    #@8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    const-string v1, "Making Creator statically"

    #@e
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    invoke-static {}, Lcom/google/android/gms/maps/internal/u;->jK()Ljava/lang/Class;

    #@14
    move-result-object v0

    #@15
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/u;->c(Ljava/lang/Class;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/google/android/gms/maps/internal/c;

    #@1b
    :goto_1b
    return-object v0

    #@1c
    :cond_1c
    const-class v0, Lcom/google/android/gms/maps/internal/u;

    #@1e
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    const-string v1, "Making Creator dynamically"

    #@24
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    invoke-static {p0}, Lcom/google/android/gms/maps/internal/u;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@2e
    move-result-object v0

    #@2f
    const-string v1, "com.google.android.gms.maps.internal.CreatorImpl"

    #@31
    invoke-static {v0, v1}, Lcom/google/android/gms/maps/internal/u;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/os/IBinder;

    #@37
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/c$a;->ax(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/c;

    #@3a
    move-result-object v0

    #@3b
    goto :goto_1b
.end method

.method private static a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/ClassLoader;

    #@6
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Lcom/google/android/gms/maps/internal/u;->c(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_d} :catch_f

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    :catch_f
    move-exception v0

    #@10
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "Unable to find dynamic class "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0
.end method

.method private static c(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_23

    #@3
    move-result-object v0

    #@4
    return-object v0

    #@5
    :catch_5
    move-exception v0

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v2, "Unable to instantiate the dynamic class "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    :catch_23
    move-exception v0

    #@24
    new-instance v0, Ljava/lang/IllegalStateException;

    #@26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string v2, "Unable to call the default constructor of "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0
.end method

.method private static getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/maps/internal/u;->aaj:Landroid/content/Context;

    #@2
    if-nez v0, :cond_10

    #@4
    invoke-static {}, Lcom/google/android/gms/maps/internal/u;->jJ()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_13

    #@a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/gms/maps/internal/u;->aaj:Landroid/content/Context;

    #@10
    :cond_10
    :goto_10
    sget-object v0, Lcom/google/android/gms/maps/internal/u;->aaj:Landroid/content/Context;

    #@12
    return-object v0

    #@13
    :cond_13
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    #@16
    move-result-object v0

    #@17
    sput-object v0, Lcom/google/android/gms/maps/internal/u;->aaj:Landroid/content/Context;

    #@19
    goto :goto_10
.end method

.method private static jJ()Z
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method private static jK()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    #@0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xf

    #@4
    if-ge v0, v1, :cond_d

    #@6
    const-string v0, "com.google.android.gms.maps.internal.CreatorImplGmm6"

    #@8
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    const-string v0, "com.google.android.gms.maps.internal.CreatorImpl"

    #@f
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_12} :catch_14

    #@12
    move-result-object v0

    #@13
    goto :goto_c

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v1, Ljava/lang/RuntimeException;

    #@17
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v1
.end method
