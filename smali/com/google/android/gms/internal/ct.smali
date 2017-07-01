.class public final Lcom/google/android/gms/internal/ct;
.super Lcom/google/android/gms/internal/db$a;


# instance fields
.field private lr:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private pf:Ljava/lang/String;

.field private pg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/db$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/ct;->pf:Ljava/lang/String;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/ct;->pg:Ljava/util/ArrayList;

    #@7
    iput-object p4, p0, Lcom/google/android/gms/internal/ct;->lr:Ljava/lang/String;

    #@9
    iput-object p3, p0, Lcom/google/android/gms/internal/ct;->mContext:Landroid/content/Context;

    #@b
    return-void
.end method

.method private bj()V
    .registers 6

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@5
    move-result-object v0

    #@6
    const-string v1, "com.google.ads.conversiontracking.IAPConversionReporter"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    const-string v1, "reportWithProductId"

    #@e
    const/4 v2, 0x4

    #@f
    new-array v2, v2, [Ljava/lang/Class;

    #@11
    const/4 v3, 0x0

    #@12
    const-class v4, Landroid/content/Context;

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
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@23
    aput-object v4, v2, v3

    #@25
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@28
    move-result-object v0

    #@29
    const/4 v1, 0x0

    #@2a
    const/4 v2, 0x4

    #@2b
    new-array v2, v2, [Ljava/lang/Object;

    #@2d
    const/4 v3, 0x0

    #@2e
    iget-object v4, p0, Lcom/google/android/gms/internal/ct;->mContext:Landroid/content/Context;

    #@30
    aput-object v4, v2, v3

    #@32
    const/4 v3, 0x1

    #@33
    iget-object v4, p0, Lcom/google/android/gms/internal/ct;->pf:Ljava/lang/String;

    #@35
    aput-object v4, v2, v3

    #@37
    const/4 v3, 0x2

    #@38
    const-string v4, ""

    #@3a
    aput-object v4, v2, v3

    #@3c
    const/4 v3, 0x3

    #@3d
    const/4 v4, 0x1

    #@3e
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@41
    move-result-object v4

    #@42
    aput-object v4, v2, v3

    #@44
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_47} :catch_48
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_47} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_56

    #@47
    :goto_47
    return-void

    #@48
    :catch_48
    move-exception v0

    #@49
    const-string v0, "Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion."

    #@4b
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@4e
    goto :goto_47

    #@4f
    :catch_4f
    move-exception v0

    #@50
    const-string v0, "Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion."

    #@52
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@55
    goto :goto_47

    #@56
    :catch_56
    move-exception v0

    #@57
    const-string v1, "Fail to report a conversion."

    #@59
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@5c
    goto :goto_47
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@d
    move-result-object v0

    #@e
    const/4 v1, 0x0

    #@f
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@12
    move-result-object v0

    #@13
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_15} :catch_53

    #@15
    move-object v1, v0

    #@16
    :goto_16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@19
    move-result-wide v4

    #@1a
    invoke-static {}, Lcom/google/android/gms/internal/eh;->bK()Lcom/google/android/gms/internal/ei;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ei;->bO()J

    #@21
    move-result-wide v6

    #@22
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@25
    move-result-object v0

    #@26
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v3

    #@2a
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_5d

    #@30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Ljava/lang/String;

    #@36
    const-string v8, "(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@"

    #@38
    new-array v9, v12, [Ljava/lang/Object;

    #@3a
    aput-object v0, v9, v11

    #@3c
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v8

    #@40
    const-string v9, "$1%s$2"

    #@42
    new-array v10, v12, [Ljava/lang/Object;

    #@44
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    aput-object v0, v10, v11

    #@4a
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@51
    move-result-object p1

    #@52
    goto :goto_2a

    #@53
    :catch_53
    move-exception v0

    #@54
    const-string v1, "Error to retrieve app version"

    #@56
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@59
    const-string v0, ""

    #@5b
    move-object v1, v0

    #@5c
    goto :goto_16

    #@5d
    :cond_5d
    const-string v0, "(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@"

    #@5f
    new-array v3, v12, [Ljava/lang/Object;

    #@61
    const-string v8, "sessionid"

    #@63
    aput-object v8, v3, v11

    #@65
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    const-string v3, "$1%s$2"

    #@6b
    new-array v8, v12, [Ljava/lang/Object;

    #@6d
    sget-object v9, Lcom/google/android/gms/internal/eh;->rQ:Ljava/lang/String;

    #@6f
    aput-object v9, v8, v11

    #@71
    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@78
    move-result-object v0

    #@79
    const-string v3, "(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@"

    #@7b
    new-array v8, v12, [Ljava/lang/Object;

    #@7d
    const-string v9, "appid"

    #@7f
    aput-object v9, v8, v11

    #@81
    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@84
    move-result-object v3

    #@85
    const-string v8, "$1%s$2"

    #@87
    new-array v9, v12, [Ljava/lang/Object;

    #@89
    aput-object v2, v9, v11

    #@8b
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@8e
    move-result-object v2

    #@8f
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@92
    move-result-object v0

    #@93
    const-string v2, "(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@"

    #@95
    new-array v3, v12, [Ljava/lang/Object;

    #@97
    const-string v8, "osversion"

    #@99
    aput-object v8, v3, v11

    #@9b
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9e
    move-result-object v2

    #@9f
    const-string v3, "$1%s$2"

    #@a1
    new-array v8, v12, [Ljava/lang/Object;

    #@a3
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    #@a5
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@a8
    move-result-object v9

    #@a9
    aput-object v9, v8, v11

    #@ab
    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ae
    move-result-object v3

    #@af
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b2
    move-result-object v0

    #@b3
    const-string v2, "(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@"

    #@b5
    new-array v3, v12, [Ljava/lang/Object;

    #@b7
    const-string v8, "sdkversion"

    #@b9
    aput-object v8, v3, v11

    #@bb
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@be
    move-result-object v2

    #@bf
    const-string v3, "$1%s$2"

    #@c1
    new-array v8, v12, [Ljava/lang/Object;

    #@c3
    iget-object v9, p0, Lcom/google/android/gms/internal/ct;->lr:Ljava/lang/String;

    #@c5
    aput-object v9, v8, v11

    #@c7
    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@ca
    move-result-object v3

    #@cb
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@ce
    move-result-object v0

    #@cf
    const-string v2, "(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@"

    #@d1
    new-array v3, v12, [Ljava/lang/Object;

    #@d3
    const-string v8, "appversion"

    #@d5
    aput-object v8, v3, v11

    #@d7
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@da
    move-result-object v2

    #@db
    const-string v3, "$1%s$2"

    #@dd
    new-array v8, v12, [Ljava/lang/Object;

    #@df
    aput-object v1, v8, v11

    #@e1
    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e4
    move-result-object v1

    #@e5
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e8
    move-result-object v0

    #@e9
    const-string v1, "(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@"

    #@eb
    new-array v2, v12, [Ljava/lang/Object;

    #@ed
    const-string v3, "timestamp"

    #@ef
    aput-object v3, v2, v11

    #@f1
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f4
    move-result-object v1

    #@f5
    const-string v2, "$1%s$2"

    #@f7
    new-array v3, v12, [Ljava/lang/Object;

    #@f9
    sub-long/2addr v4, v6

    #@fa
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@fd
    move-result-object v4

    #@fe
    aput-object v4, v3, v11

    #@100
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@103
    move-result-object v2

    #@104
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@107
    move-result-object v0

    #@108
    const-string v1, "(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@"

    #@10a
    new-array v2, v12, [Ljava/lang/Object;

    #@10c
    const-string v3, "[^@]+"

    #@10e
    aput-object v3, v2, v11

    #@110
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@113
    move-result-object v1

    #@114
    const-string v2, "$1%s$2"

    #@116
    new-array v3, v12, [Ljava/lang/Object;

    #@118
    const-string v4, ""

    #@11a
    aput-object v4, v3, v11

    #@11c
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@11f
    move-result-object v2

    #@120
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@123
    move-result-object v0

    #@124
    const-string v1, "@@"

    #@126
    const-string v2, "@"

    #@128
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@12b
    move-result-object v0

    #@12c
    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->pf:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected l(I)I
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-nez p1, :cond_4

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    if-ne p1, v0, :cond_8

    #@6
    const/4 v0, 0x2

    #@7
    goto :goto_3

    #@8
    :cond_8
    const/4 v0, 0x4

    #@9
    if-ne p1, v0, :cond_d

    #@b
    const/4 v0, 0x3

    #@c
    goto :goto_3

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_3
.end method

.method public recordPlayBillingResolution(I)V
    .registers 8

    #@0
    if-nez p1, :cond_5

    #@2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ct;->bj()V

    #@5
    :cond_5
    new-instance v1, Ljava/util/HashMap;

    #@7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@a
    const-string v0, "google_play_status"

    #@c
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    const-string v0, "sku"

    #@15
    iget-object v2, p0, Lcom/google/android/gms/internal/ct;->pf:Ljava/lang/String;

    #@17
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    const-string v0, "status"

    #@1c
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ct;->l(I)I

    #@1f
    move-result v2

    #@20
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->pg:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v2

    #@2d
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_4a

    #@33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Ljava/lang/String;

    #@39
    new-instance v3, Lcom/google/android/gms/internal/es;

    #@3b
    iget-object v4, p0, Lcom/google/android/gms/internal/ct;->mContext:Landroid/content/Context;

    #@3d
    iget-object v5, p0, Lcom/google/android/gms/internal/ct;->lr:Ljava/lang/String;

    #@3f
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ct;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/gms/internal/es;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@46
    invoke-virtual {v3}, Lcom/google/android/gms/internal/es;->start()V

    #@49
    goto :goto_2d

    #@4a
    :cond_4a
    return-void
.end method

.method public recordResolution(I)V
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_6

    #@3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ct;->bj()V

    #@6
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    #@8
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@b
    const-string v0, "status"

    #@d
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    const-string v0, "sku"

    #@16
    iget-object v2, p0, Lcom/google/android/gms/internal/ct;->pf:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ct;->pg:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v2

    #@21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_3e

    #@27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Ljava/lang/String;

    #@2d
    new-instance v3, Lcom/google/android/gms/internal/es;

    #@2f
    iget-object v4, p0, Lcom/google/android/gms/internal/ct;->mContext:Landroid/content/Context;

    #@31
    iget-object v5, p0, Lcom/google/android/gms/internal/ct;->lr:Ljava/lang/String;

    #@33
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ct;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/gms/internal/es;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    invoke-virtual {v3}, Lcom/google/android/gms/internal/es;->start()V

    #@3d
    goto :goto_21

    #@3e
    :cond_3e
    return-void
.end method
