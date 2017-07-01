.class public final Lcom/google/android/gms/plus/internal/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/internal/g$a;
    }
.end annotation


# static fields
.field private static aaj:Landroid/content/Context;

.field private static abS:Lcom/google/android/gms/plus/internal/c;


# direct methods
.method private static K(Landroid/content/Context;)Lcom/google/android/gms/plus/internal/c;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/plus/internal/g$a;
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    sget-object v0, Lcom/google/android/gms/plus/internal/g;->abS:Lcom/google/android/gms/plus/internal/c;

    #@5
    if-nez v0, :cond_35

    #@7
    sget-object v0, Lcom/google/android/gms/plus/internal/g;->aaj:Landroid/content/Context;

    #@9
    if-nez v0, :cond_1d

    #@b
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Lcom/google/android/gms/plus/internal/g;->aaj:Landroid/content/Context;

    #@11
    sget-object v0, Lcom/google/android/gms/plus/internal/g;->aaj:Landroid/content/Context;

    #@13
    if-nez v0, :cond_1d

    #@15
    new-instance v0, Lcom/google/android/gms/plus/internal/g$a;

    #@17
    const-string v1, "Could not get remote context."

    #@19
    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/g$a;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    :cond_1d
    sget-object v0, Lcom/google/android/gms/plus/internal/g;->aaj:Landroid/content/Context;

    #@1f
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@22
    move-result-object v0

    #@23
    :try_start_23
    const-string v1, "com.google.android.gms.plus.plusone.PlusOneButtonCreatorImpl"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Landroid/os/IBinder;

    #@2f
    invoke-static {v0}, Lcom/google/android/gms/plus/internal/c$a;->bl(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/c;

    #@32
    move-result-object v0

    #@33
    sput-object v0, Lcom/google/android/gms/plus/internal/g;->abS:Lcom/google/android/gms/plus/internal/c;
    :try_end_35
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_35} :catch_38
    .catch Ljava/lang/InstantiationException; {:try_start_23 .. :try_end_35} :catch_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_35} :catch_4a

    #@35
    :cond_35
    sget-object v0, Lcom/google/android/gms/plus/internal/g;->abS:Lcom/google/android/gms/plus/internal/c;

    #@37
    return-object v0

    #@38
    :catch_38
    move-exception v0

    #@39
    new-instance v0, Lcom/google/android/gms/plus/internal/g$a;

    #@3b
    const-string v1, "Could not load creator class."

    #@3d
    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/g$a;-><init>(Ljava/lang/String;)V

    #@40
    throw v0

    #@41
    :catch_41
    move-exception v0

    #@42
    new-instance v0, Lcom/google/android/gms/plus/internal/g$a;

    #@44
    const-string v1, "Could not instantiate creator."

    #@46
    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/g$a;-><init>(Ljava/lang/String;)V

    #@49
    throw v0

    #@4a
    :catch_4a
    move-exception v0

    #@4b
    new-instance v0, Lcom/google/android/gms/plus/internal/g$a;

    #@4d
    const-string v1, "Could not access creator."

    #@4f
    invoke-direct {v0, v1}, Lcom/google/android/gms/plus/internal/g$a;-><init>(Ljava/lang/String;)V

    #@52
    throw v0
.end method

.method public static a(Landroid/content/Context;IILjava/lang/String;I)Landroid/view/View;
    .registers 11

    #@0
    if-nez p3, :cond_f

    #@2
    :try_start_2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_8

    #@8
    :catch_8
    move-exception v0

    #@9
    new-instance v0, Lcom/google/android/gms/plus/PlusOneDummyView;

    #@b
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/plus/PlusOneDummyView;-><init>(Landroid/content/Context;I)V

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    :try_start_f
    invoke-static {p0}, Lcom/google/android/gms/plus/internal/g;->K(Landroid/content/Context;)Lcom/google/android/gms/plus/internal/c;

    #@12
    move-result-object v0

    #@13
    invoke-static {p0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    #@16
    move-result-object v1

    #@17
    move v2, p1

    #@18
    move v3, p2

    #@19
    move-object v4, p3

    #@1a
    move v5, p4

    #@1b
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/c;->a(Lcom/google/android/gms/dynamic/d;IILjava/lang/String;I)Lcom/google/android/gms/dynamic/d;

    #@1e
    move-result-object v0

    #@1f
    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/view/View;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_8

    #@25
    goto :goto_e
.end method
