.class Lcom/google/android/gms/analytics/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/m;


# static fields
.field private static tG:Lcom/google/android/gms/analytics/g;

.field private static tq:Ljava/lang/Object;


# instance fields
.field protected tC:Ljava/lang/String;

.field protected tD:Ljava/lang/String;

.field protected tE:Ljava/lang/String;

.field protected tF:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/analytics/g;->tq:Ljava/lang/Object;

    #@7
    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/google/android/gms/analytics/g;->tE:Ljava/lang/String;

    #@d
    iget-object v0, p0, Lcom/google/android/gms/analytics/g;->tE:Ljava/lang/String;

    #@f
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/google/android/gms/analytics/g;->tF:Ljava/lang/String;

    #@15
    iget-object v0, p0, Lcom/google/android/gms/analytics/g;->tE:Ljava/lang/String;

    #@17
    const/4 v1, 0x0

    #@18
    :try_start_18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    const/4 v4, 0x0

    #@1d
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@20
    move-result-object v3

    #@21
    if-eqz v3, :cond_2f

    #@23
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@25
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@28
    move-result-object v2

    #@29
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_2f} :catch_34

    #@2f
    :cond_2f
    :goto_2f
    iput-object v0, p0, Lcom/google/android/gms/analytics/g;->tC:Ljava/lang/String;

    #@31
    iput-object v1, p0, Lcom/google/android/gms/analytics/g;->tD:Ljava/lang/String;

    #@33
    return-void

    #@34
    :catch_34
    move-exception v2

    #@35
    new-instance v2, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string v3, "Error retrieving package info: appName set to "

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@4b
    goto :goto_2f
.end method

.method public static cu()Lcom/google/android/gms/analytics/g;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/analytics/g;->tG:Lcom/google/android/gms/analytics/g;

    #@2
    return-object v0
.end method

.method public static u(Landroid/content/Context;)V
    .registers 3

    #@0
    sget-object v1, Lcom/google/android/gms/analytics/g;->tq:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/g;->tG:Lcom/google/android/gms/analytics/g;

    #@5
    if-nez v0, :cond_e

    #@7
    new-instance v0, Lcom/google/android/gms/analytics/g;

    #@9
    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/g;-><init>(Landroid/content/Context;)V

    #@c
    sput-object v0, Lcom/google/android/gms/analytics/g;->tG:Lcom/google/android/gms/analytics/g;

    #@e
    :cond_e
    monitor-exit v1

    #@f
    return-void

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    #@12
    throw v0
.end method


# virtual methods
.method public J(Ljava/lang/String;)Z
    .registers 3

    #@0
    const-string v0, "&an"

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_20

    #@8
    const-string v0, "&av"

    #@a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_20

    #@10
    const-string v0, "&aid"

    #@12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_20

    #@18
    const-string v0, "&aiid"

    #@1a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_22

    #@20
    :cond_20
    const/4 v0, 0x1

    #@21
    :goto_21
    return v0

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    goto :goto_21
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    :cond_3
    :goto_3
    return-object v0

    #@4
    :cond_4
    const-string v1, "&an"

    #@6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_f

    #@c
    iget-object v0, p0, Lcom/google/android/gms/analytics/g;->tC:Ljava/lang/String;

    #@e
    goto :goto_3

    #@f
    :cond_f
    const-string v1, "&av"

    #@11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1a

    #@17
    iget-object v0, p0, Lcom/google/android/gms/analytics/g;->tD:Ljava/lang/String;

    #@19
    goto :goto_3

    #@1a
    :cond_1a
    const-string v1, "&aid"

    #@1c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_25

    #@22
    iget-object v0, p0, Lcom/google/android/gms/analytics/g;->tE:Ljava/lang/String;

    #@24
    goto :goto_3

    #@25
    :cond_25
    const-string v1, "&aiid"

    #@27
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_3

    #@2d
    iget-object v0, p0, Lcom/google/android/gms/analytics/g;->tF:Ljava/lang/String;

    #@2f
    goto :goto_3
.end method
