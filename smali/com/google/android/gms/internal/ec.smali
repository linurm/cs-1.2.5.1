.class public final Lcom/google/android/gms/internal/ec;
.super Ljava/lang/Object;


# instance fields
.field public final rb:I

.field public final rc:Z

.field public final rd:Z

.field public final re:Ljava/lang/String;

.field public final rf:Ljava/lang/String;

.field public final rg:Z

.field public final rh:Z

.field public final ri:Z

.field public final rj:Ljava/lang/String;

.field public final rk:Ljava/lang/String;

.field public final rl:I

.field public final rm:I

.field public final rn:I

.field public final ro:I

.field public final rp:I

.field public final rq:I

.field public final rr:F

.field public final rs:I

.field public final rt:I

.field public final ru:D

.field public final rv:Z

.field public final rw:Z

.field public final rx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 15

    #@0
    const/4 v12, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v11, -0x1

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    const-string v0, "audio"

    #@9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/media/AudioManager;

    #@f
    const-string v1, "connectivity"

    #@11
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Landroid/net/ConnectivityManager;

    #@17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1e
    move-result-object v6

    #@1f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@22
    move-result-object v7

    #@23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@26
    move-result-object v8

    #@27
    const-string v2, "phone"

    #@29
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Landroid/telephony/TelephonyManager;

    #@2f
    const/4 v3, 0x0

    #@30
    new-instance v9, Landroid/content/IntentFilter;

    #@32
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    #@34
    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@37
    invoke-virtual {p1, v3, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@3a
    move-result-object v9

    #@3b
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    #@3e
    move-result v3

    #@3f
    iput v3, p0, Lcom/google/android/gms/internal/ec;->rb:I

    #@41
    const-string v3, "geo:0,0?q=donuts"

    #@43
    invoke-static {v8, v3}, Lcom/google/android/gms/internal/ec;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    #@46
    move-result-object v3

    #@47
    if-eqz v3, :cond_f4

    #@49
    move v3, v4

    #@4a
    :goto_4a
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ec;->rc:Z

    #@4c
    const-string v3, "http://www.google.com"

    #@4e
    invoke-static {v8, v3}, Lcom/google/android/gms/internal/ec;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    #@51
    move-result-object v3

    #@52
    if-eqz v3, :cond_f7

    #@54
    move v3, v4

    #@55
    :goto_55
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ec;->rd:Z

    #@57
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    iput-object v3, p0, Lcom/google/android/gms/internal/ec;->re:Ljava/lang/String;

    #@5d
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@60
    move-result-object v3

    #@61
    iput-object v3, p0, Lcom/google/android/gms/internal/ec;->rf:Ljava/lang/String;

    #@63
    invoke-static {}, Lcom/google/android/gms/internal/et;->bV()Z

    #@66
    move-result v3

    #@67
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ec;->rg:Z

    #@69
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    #@6c
    move-result v3

    #@6d
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ec;->rh:Z

    #@6f
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    #@72
    move-result v3

    #@73
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ec;->ri:Z

    #@75
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@78
    move-result-object v3

    #@79
    iput-object v3, p0, Lcom/google/android/gms/internal/ec;->rj:Ljava/lang/String;

    #@7b
    invoke-static {v8}, Lcom/google/android/gms/internal/ec;->a(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    #@7e
    move-result-object v3

    #@7f
    iput-object v3, p0, Lcom/google/android/gms/internal/ec;->rk:Ljava/lang/String;

    #@81
    const/4 v3, 0x3

    #@82
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    #@85
    move-result v3

    #@86
    iput v3, p0, Lcom/google/android/gms/internal/ec;->rl:I

    #@88
    invoke-static {p1, v1, v8}, Lcom/google/android/gms/internal/ec;->a(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/content/pm/PackageManager;)I

    #@8b
    move-result v3

    #@8c
    iput v3, p0, Lcom/google/android/gms/internal/ec;->rm:I

    #@8e
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    #@91
    move-result v3

    #@92
    iput v3, p0, Lcom/google/android/gms/internal/ec;->rn:I

    #@94
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    #@97
    move-result v2

    #@98
    iput v2, p0, Lcom/google/android/gms/internal/ec;->ro:I

    #@9a
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    #@9d
    move-result v2

    #@9e
    iput v2, p0, Lcom/google/android/gms/internal/ec;->rp:I

    #@a0
    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    #@a3
    move-result v0

    #@a4
    iput v0, p0, Lcom/google/android/gms/internal/ec;->rq:I

    #@a6
    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    #@a8
    iput v0, p0, Lcom/google/android/gms/internal/ec;->rr:F

    #@aa
    iget v0, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    #@ac
    iput v0, p0, Lcom/google/android/gms/internal/ec;->rs:I

    #@ae
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    #@b0
    iput v0, p0, Lcom/google/android/gms/internal/ec;->rt:I

    #@b2
    if-eqz v9, :cond_fc

    #@b4
    const-string v0, "status"

    #@b6
    invoke-virtual {v9, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@b9
    move-result v0

    #@ba
    const-string v2, "level"

    #@bc
    invoke-virtual {v9, v2, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@bf
    move-result v2

    #@c0
    const-string v3, "scale"

    #@c2
    invoke-virtual {v9, v3, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@c5
    move-result v3

    #@c6
    int-to-float v2, v2

    #@c7
    int-to-float v3, v3

    #@c8
    div-float/2addr v2, v3

    #@c9
    float-to-double v2, v2

    #@ca
    iput-wide v2, p0, Lcom/google/android/gms/internal/ec;->ru:D

    #@cc
    if-eq v0, v12, :cond_d1

    #@ce
    const/4 v2, 0x5

    #@cf
    if-ne v0, v2, :cond_fa

    #@d1
    :cond_d1
    :goto_d1
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ec;->rv:Z

    #@d3
    :goto_d3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@d5
    const/16 v2, 0x10

    #@d7
    if-lt v0, v2, :cond_106

    #@d9
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    #@dc
    move-result v0

    #@dd
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ec;->rw:Z

    #@df
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@e2
    move-result-object v0

    #@e3
    if-eqz v0, :cond_103

    #@e5
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@e8
    move-result-object v0

    #@e9
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@ec
    move-result-object v0

    #@ed
    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@f0
    move-result v0

    #@f1
    iput v0, p0, Lcom/google/android/gms/internal/ec;->rx:I

    #@f3
    :goto_f3
    return-void

    #@f4
    :cond_f4
    move v3, v5

    #@f5
    goto/16 :goto_4a

    #@f7
    :cond_f7
    move v3, v5

    #@f8
    goto/16 :goto_55

    #@fa
    :cond_fa
    move v4, v5

    #@fb
    goto :goto_d1

    #@fc
    :cond_fc
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    #@fe
    iput-wide v2, p0, Lcom/google/android/gms/internal/ec;->ru:D

    #@100
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ec;->rv:Z

    #@102
    goto :goto_d3

    #@103
    :cond_103
    iput v11, p0, Lcom/google/android/gms/internal/ec;->rx:I

    #@105
    goto :goto_f3

    #@106
    :cond_106
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ec;->rw:Z

    #@108
    iput v11, p0, Lcom/google/android/gms/internal/ec;->rx:I

    #@10a
    goto :goto_f3
.end method

.method private static a(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/content/pm/PackageManager;)I
    .registers 6

    #@0
    const/4 v0, -0x2

    #@1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    #@7
    invoke-static {p2, v1, v2}, Lcom/google/android/gms/internal/eo;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_17

    #@d
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_18

    #@13
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    #@16
    move-result v0

    #@17
    :cond_17
    :goto_17
    return v0

    #@18
    :cond_18
    const/4 v0, -0x1

    #@19
    goto :goto_17
.end method

.method private static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .registers 5

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.action.VIEW"

    #@4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@b
    const/high16 v1, 0x10000

    #@d
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method private static a(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "market://details?id=com.google.android.gms.ads"

    #@3
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/ec;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    #@6
    move-result-object v1

    #@7
    if-nez v1, :cond_a

    #@9
    :cond_9
    :goto_9
    return-object v0

    #@a
    :cond_a
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@c
    if-eqz v1, :cond_9

    #@e
    :try_start_e
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@10
    const/4 v3, 0x0

    #@11
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    #@14
    move-result-object v2

    #@15
    if-eqz v2, :cond_9

    #@17
    new-instance v3, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    #@1e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    const-string v3, "."

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_31} :catch_33

    #@31
    move-result-object v0

    #@32
    goto :goto_9

    #@33
    :catch_33
    move-exception v1

    #@34
    goto :goto_9
.end method
