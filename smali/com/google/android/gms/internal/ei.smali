.class public Lcom/google/android/gms/internal/ei;
.super Ljava/lang/Object;


# instance fields
.field private final ls:Ljava/lang/Object;

.field private final rR:Ljava/lang/String;

.field private rX:I

.field private rY:J

.field private rZ:J

.field private sa:I

.field private sb:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    #@0
    const-wide/16 v2, -0x1

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/internal/ei;->ls:Ljava/lang/Object;

    #@d
    iput v1, p0, Lcom/google/android/gms/internal/ei;->rX:I

    #@f
    iput-wide v2, p0, Lcom/google/android/gms/internal/ei;->rY:J

    #@11
    iput-wide v2, p0, Lcom/google/android/gms/internal/ei;->rZ:J

    #@13
    iput v1, p0, Lcom/google/android/gms/internal/ei;->sa:I

    #@15
    const/4 v0, -0x1

    #@16
    iput v0, p0, Lcom/google/android/gms/internal/ei;->sb:I

    #@18
    iput-object p1, p0, Lcom/google/android/gms/internal/ei;->rR:Ljava/lang/String;

    #@1a
    return-void
.end method

.method public static l(Landroid/content/Context;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v1

    #@5
    const-string v2, "Theme.Translucent"

    #@7
    const-string v3, "style"

    #@9
    const-string v4, "android"

    #@b
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_17

    #@11
    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    #@13
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@16
    :goto_16
    return v0

    #@17
    :cond_17
    new-instance v2, Landroid/content/ComponentName;

    #@19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    const-string v4, "com.google.android.gms.ads.AdActivity"

    #@1f
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    :try_start_22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@25
    move-result-object v3

    #@26
    const/4 v4, 0x0

    #@27
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@2a
    move-result-object v2

    #@2b
    iget v2, v2, Landroid/content/pm/ActivityInfo;->theme:I

    #@2d
    if-ne v1, v2, :cond_31

    #@2f
    const/4 v0, 0x1

    #@30
    goto :goto_16

    #@31
    :cond_31
    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    #@33
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_36} :catch_37

    #@36
    goto :goto_16

    #@37
    :catch_37
    move-exception v1

    #@38
    const-string v1, "Fail to fetch AdActivity theme"

    #@3a
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@3d
    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    #@3f
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@42
    goto :goto_16
.end method


# virtual methods
.method public b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 9

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@8
    const-string v2, "session_id"

    #@a
    iget-object v3, p0, Lcom/google/android/gms/internal/ei;->rR:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    const-string v2, "basets"

    #@11
    iget-wide v4, p0, Lcom/google/android/gms/internal/ei;->rZ:J

    #@13
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@16
    const-string v2, "currts"

    #@18
    iget-wide v4, p0, Lcom/google/android/gms/internal/ei;->rY:J

    #@1a
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@1d
    const-string v2, "seq_num"

    #@1f
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    const-string v2, "preqs"

    #@24
    iget v3, p0, Lcom/google/android/gms/internal/ei;->sb:I

    #@26
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@29
    const-string v2, "pclick"

    #@2b
    iget v3, p0, Lcom/google/android/gms/internal/ei;->rX:I

    #@2d
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@30
    const-string v2, "pimp"

    #@32
    iget v3, p0, Lcom/google/android/gms/internal/ei;->sa:I

    #@34
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@37
    const-string v2, "support_transparent_background"

    #@39
    invoke-static {p1}, Lcom/google/android/gms/internal/ei;->l(Landroid/content/Context;)Z

    #@3c
    move-result v3

    #@3d
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@40
    monitor-exit v1

    #@41
    return-object v0

    #@42
    :catchall_42
    move-exception v0

    #@43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    #@44
    throw v0
.end method

.method public b(Lcom/google/android/gms/internal/ai;J)V
    .registers 10

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ei;->rZ:J

    #@5
    const-wide/16 v4, -0x1

    #@7
    cmp-long v0, v2, v4

    #@9
    if-nez v0, :cond_23

    #@b
    iput-wide p2, p0, Lcom/google/android/gms/internal/ei;->rZ:J

    #@d
    iget-wide v2, p0, Lcom/google/android/gms/internal/ei;->rZ:J

    #@f
    iput-wide v2, p0, Lcom/google/android/gms/internal/ei;->rY:J

    #@11
    :goto_11
    iget-object v0, p1, Lcom/google/android/gms/internal/ai;->extras:Landroid/os/Bundle;

    #@13
    if-eqz v0, :cond_29

    #@15
    iget-object v0, p1, Lcom/google/android/gms/internal/ai;->extras:Landroid/os/Bundle;

    #@17
    const-string v2, "gw"

    #@19
    const/4 v3, 0x2

    #@1a
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@1d
    move-result v0

    #@1e
    const/4 v2, 0x1

    #@1f
    if-ne v0, v2, :cond_29

    #@21
    monitor-exit v1

    #@22
    :goto_22
    return-void

    #@23
    :cond_23
    iput-wide p2, p0, Lcom/google/android/gms/internal/ei;->rY:J

    #@25
    goto :goto_11

    #@26
    :catchall_26
    move-exception v0

    #@27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    #@28
    throw v0

    #@29
    :cond_29
    :try_start_29
    iget v0, p0, Lcom/google/android/gms/internal/ei;->sb:I

    #@2b
    add-int/lit8 v0, v0, 0x1

    #@2d
    iput v0, p0, Lcom/google/android/gms/internal/ei;->sb:I

    #@2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_26

    #@30
    goto :goto_22
.end method

.method public bB()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/ei;->sa:I

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    iput v0, p0, Lcom/google/android/gms/internal/ei;->sa:I

    #@9
    monitor-exit v1

    #@a
    return-void

    #@b
    :catchall_b
    move-exception v0

    #@c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    #@d
    throw v0
.end method

.method public bC()V
    .registers 3

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ei;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/ei;->rX:I

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    iput v0, p0, Lcom/google/android/gms/internal/ei;->rX:I

    #@9
    monitor-exit v1

    #@a
    return-void

    #@b
    :catchall_b
    move-exception v0

    #@c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    #@d
    throw v0
.end method

.method public bO()J
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ei;->rZ:J

    #@2
    return-wide v0
.end method
