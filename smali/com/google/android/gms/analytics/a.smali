.class Lcom/google/android/gms/analytics/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/m;


# static fields
.field private static tq:Ljava/lang/Object;

.field private static tr:Lcom/google/android/gms/analytics/a;


# instance fields
.field private mContext:Landroid/content/Context;

.field private ts:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private tt:J

.field private tu:Ljava/lang/String;

.field private tv:Z

.field private tw:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/analytics/a;->tq:Ljava/lang/Object;

    #@7
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/analytics/a;->tv:Z

    #@6
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/analytics/a;->tw:Ljava/lang/Object;

    #@d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/google/android/gms/analytics/a;->mContext:Landroid/content/Context;

    #@13
    return-void
.end method

.method static H(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    #@0
    const/4 v7, 0x1

    #@1
    const-string v0, "MD5"

    #@3
    invoke-static {v0}, Lcom/google/android/gms/analytics/ak;->W(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_b

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@d
    const-string v2, "%032X"

    #@f
    new-array v3, v7, [Ljava/lang/Object;

    #@11
    const/4 v4, 0x0

    #@12
    new-instance v5, Ljava/math/BigInteger;

    #@14
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->digest([B)[B

    #@1b
    move-result-object v0

    #@1c
    invoke-direct {v5, v7, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    #@1f
    aput-object v5, v3, v4

    #@21
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    goto :goto_a
.end method

.method private I(Ljava/lang/String;)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/analytics/a;->H(Ljava/lang/String;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    const-string v2, "Storing hashed adid."

    #@7
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@a
    iget-object v2, p0, Lcom/google/android/gms/analytics/a;->mContext:Landroid/content/Context;

    #@c
    const-string v3, "gaClientIdData"

    #@e
    const/4 v4, 0x0

    #@f
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    #@1a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    #@1d
    iput-object v1, p0, Lcom/google/android/gms/analytics/a;->tu:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1f} :catch_21
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1f} :catch_28

    #@1f
    const/4 v0, 0x1

    #@20
    :goto_20
    return v0

    #@21
    :catch_21
    move-exception v1

    #@22
    const-string v1, "Error creating hash file."

    #@24
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@27
    goto :goto_20

    #@28
    :catch_28
    move-exception v1

    #@29
    const-string v1, "Error writing to hash file."

    #@2b
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@2e
    goto :goto_20
.end method

.method private a(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Z
    .registers 10

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    if-nez p2, :cond_d

    #@4
    move-object v0, v1

    #@5
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_12

    #@b
    move v0, v2

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    invoke-virtual {p2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    goto :goto_5

    #@12
    :cond_12
    iget-object v3, p0, Lcom/google/android/gms/analytics/a;->mContext:Landroid/content/Context;

    #@14
    invoke-static {v3}, Lcom/google/android/gms/analytics/h;->u(Landroid/content/Context;)V

    #@17
    invoke-static {}, Lcom/google/android/gms/analytics/h;->cv()Lcom/google/android/gms/analytics/h;

    #@1a
    move-result-object v4

    #@1b
    const-string v3, "&cid"

    #@1d
    invoke-virtual {v4, v3}, Lcom/google/android/gms/analytics/h;->getValue(Ljava/lang/String;)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    iget-object v5, p0, Lcom/google/android/gms/analytics/a;->tw:Ljava/lang/Object;

    #@23
    monitor-enter v5

    #@24
    :try_start_24
    iget-boolean v6, p0, Lcom/google/android/gms/analytics/a;->tv:Z

    #@26
    if-nez v6, :cond_54

    #@28
    iget-object v1, p0, Lcom/google/android/gms/analytics/a;->mContext:Landroid/content/Context;

    #@2a
    invoke-static {v1}, Lcom/google/android/gms/analytics/a;->t(Landroid/content/Context;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    iput-object v1, p0, Lcom/google/android/gms/analytics/a;->tu:Ljava/lang/String;

    #@30
    const/4 v1, 0x1

    #@31
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/a;->tv:Z

    #@33
    :cond_33
    :goto_33
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    invoke-static {v1}, Lcom/google/android/gms/analytics/a;->H(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4b
    move-result v6

    #@4c
    if-eqz v6, :cond_94

    #@4e
    const/4 v0, 0x0

    #@4f
    monitor-exit v5

    #@50
    goto :goto_c

    #@51
    :catchall_51
    move-exception v0

    #@52
    monitor-exit v5
    :try_end_53
    .catchall {:try_start_24 .. :try_end_53} :catchall_51

    #@53
    throw v0

    #@54
    :cond_54
    :try_start_54
    iget-object v6, p0, Lcom/google/android/gms/analytics/a;->tu:Ljava/lang/String;

    #@56
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@59
    move-result v6

    #@5a
    if-eqz v6, :cond_33

    #@5c
    if-nez p1, :cond_77

    #@5e
    :goto_5e
    if-nez v1, :cond_7c

    #@60
    new-instance v1, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/a;->I(Ljava/lang/String;)Z

    #@74
    move-result v0

    #@75
    monitor-exit v5

    #@76
    goto :goto_c

    #@77
    :cond_77
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    goto :goto_5e

    #@7c
    :cond_7c
    new-instance v6, Ljava/lang/StringBuilder;

    #@7e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@81
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v1

    #@85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v1

    #@8d
    invoke-static {v1}, Lcom/google/android/gms/analytics/a;->H(Ljava/lang/String;)Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    iput-object v1, p0, Lcom/google/android/gms/analytics/a;->tu:Ljava/lang/String;

    #@93
    goto :goto_33

    #@94
    :cond_94
    iget-object v6, p0, Lcom/google/android/gms/analytics/a;->tu:Ljava/lang/String;

    #@96
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v1

    #@9a
    if-eqz v1, :cond_a0

    #@9c
    monitor-exit v5

    #@9d
    move v0, v2

    #@9e
    goto/16 :goto_c

    #@a0
    :cond_a0
    iget-object v1, p0, Lcom/google/android/gms/analytics/a;->tu:Ljava/lang/String;

    #@a2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@a5
    move-result v1

    #@a6
    if-nez v1, :cond_df

    #@a8
    const-string v1, "Resetting the client id because Advertising Id changed."

    #@aa
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@ad
    invoke-virtual {v4}, Lcom/google/android/gms/analytics/h;->cw()Ljava/lang/String;

    #@b0
    move-result-object v1

    #@b1
    new-instance v2, Ljava/lang/StringBuilder;

    #@b3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b6
    const-string v3, "New client Id: "

    #@b8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v2

    #@bc
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v2

    #@c0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v2

    #@c4
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@c7
    :goto_c7
    new-instance v2, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v0

    #@d0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v0

    #@d4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d7
    move-result-object v0

    #@d8
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/a;->I(Ljava/lang/String;)Z

    #@db
    move-result v0

    #@dc
    monitor-exit v5
    :try_end_dd
    .catchall {:try_start_54 .. :try_end_dd} :catchall_51

    #@dd
    goto/16 :goto_c

    #@df
    :cond_df
    move-object v1, v3

    #@e0
    goto :goto_c7
.end method

.method public static s(Landroid/content/Context;)Lcom/google/android/gms/analytics/m;
    .registers 3

    #@0
    sget-object v0, Lcom/google/android/gms/analytics/a;->tr:Lcom/google/android/gms/analytics/a;

    #@2
    if-nez v0, :cond_13

    #@4
    sget-object v1, Lcom/google/android/gms/analytics/a;->tq:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/analytics/a;->tr:Lcom/google/android/gms/analytics/a;

    #@9
    if-nez v0, :cond_12

    #@b
    new-instance v0, Lcom/google/android/gms/analytics/a;

    #@d
    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/a;-><init>(Landroid/content/Context;)V

    #@10
    sput-object v0, Lcom/google/android/gms/analytics/a;->tr:Lcom/google/android/gms/analytics/a;

    #@12
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    #@13
    :cond_13
    sget-object v0, Lcom/google/android/gms/analytics/a;->tr:Lcom/google/android/gms/analytics/a;

    #@15
    return-object v0

    #@16
    :catchall_16
    move-exception v0

    #@17
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    #@18
    throw v0
.end method

.method static t(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    :try_start_1
    const-string v0, "gaClientIdData"

    #@3
    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    #@6
    move-result-object v2

    #@7
    const/16 v0, 0x80

    #@9
    new-array v3, v0, [B

    #@b
    const/4 v0, 0x0

    #@c
    const/16 v4, 0x80

    #@e
    invoke-virtual {v2, v3, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    #@11
    move-result v4

    #@12
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    #@15
    move-result v0

    #@16
    if-lez v0, :cond_26

    #@18
    const-string v0, "Hash file seems corrupted, deleting it."

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@1d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    #@20
    const-string v0, "gaClientIdData"

    #@22
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    #@25
    :goto_25
    return-object v1

    #@26
    :cond_26
    if-gtz v4, :cond_33

    #@28
    const-string v0, "Hash file is empty."

    #@2a
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->B(Ljava/lang/String;)V

    #@2d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    #@30
    goto :goto_25

    #@31
    :catch_31
    move-exception v0

    #@32
    goto :goto_25

    #@33
    :cond_33
    new-instance v0, Ljava/lang/String;

    #@35
    const/4 v5, 0x0

    #@36
    invoke-direct {v0, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_39} :catch_31
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_39} :catch_3e

    #@39
    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3c} :catch_4c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_4f

    #@3c
    move-object v1, v0

    #@3d
    goto :goto_25

    #@3e
    :catch_3e
    move-exception v0

    #@3f
    move-object v0, v1

    #@40
    :goto_40
    const-string v1, "Error reading Hash file, deleting it."

    #@42
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@45
    const-string v1, "gaClientIdData"

    #@47
    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    #@4a
    move-object v1, v0

    #@4b
    goto :goto_25

    #@4c
    :catch_4c
    move-exception v1

    #@4d
    move-object v1, v0

    #@4e
    goto :goto_25

    #@4f
    :catch_4f
    move-exception v1

    #@50
    goto :goto_40
.end method


# virtual methods
.method ck()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/analytics/a;->mContext:Landroid/content/Context;

    #@3
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_6} :catch_8
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_1 .. :try_end_6} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_16
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_6} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_24

    #@6
    move-result-object v0

    #@7
    :goto_7
    return-object v0

    #@8
    :catch_8
    move-exception v1

    #@9
    const-string v1, "IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added \'<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />\' to your application manifest file. See http://goo.gl/naFqQk for details."

    #@b
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@e
    goto :goto_7

    #@f
    :catch_f
    move-exception v1

    #@10
    const-string v1, "GooglePlayServicesRepairableException getting Ad Id Info"

    #@12
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@15
    goto :goto_7

    #@16
    :catch_16
    move-exception v1

    #@17
    const-string v1, "IOException getting Ad Id Info"

    #@19
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@1c
    goto :goto_7

    #@1d
    :catch_1d
    move-exception v1

    #@1e
    const-string v1, "GooglePlayServicesNotAvailableException getting Ad Id Info"

    #@20
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@23
    goto :goto_7

    #@24
    :catch_24
    move-exception v1

    #@25
    const-string v1, "Unknown exception. Could not get the ad Id."

    #@27
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@2a
    goto :goto_7
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    #@0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iget-wide v2, p0, Lcom/google/android/gms/analytics/a;->tt:J

    #@6
    sub-long v2, v0, v2

    #@8
    const-wide/16 v4, 0x3e8

    #@a
    cmp-long v2, v2, v4

    #@c
    if-lez v2, :cond_1e

    #@e
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/a;->ck()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@11
    move-result-object v2

    #@12
    iget-object v3, p0, Lcom/google/android/gms/analytics/a;->ts:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@14
    invoke-direct {p0, v3, v2}, Lcom/google/android/gms/analytics/a;->a(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_31

    #@1a
    iput-object v2, p0, Lcom/google/android/gms/analytics/a;->ts:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@1c
    :goto_1c
    iput-wide v0, p0, Lcom/google/android/gms/analytics/a;->tt:J

    #@1e
    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/analytics/a;->ts:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@20
    if-eqz v0, :cond_52

    #@22
    const-string v0, "&adid"

    #@24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_3c

    #@2a
    iget-object v0, p0, Lcom/google/android/gms/analytics/a;->ts:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@2c
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    :goto_30
    return-object v0

    #@31
    :cond_31
    new-instance v2, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@33
    const-string v3, ""

    #@35
    const/4 v4, 0x0

    #@36
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V

    #@39
    iput-object v2, p0, Lcom/google/android/gms/analytics/a;->ts:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@3b
    goto :goto_1c

    #@3c
    :cond_3c
    const-string v0, "&ate"

    #@3e
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    if-eqz v0, :cond_52

    #@44
    iget-object v0, p0, Lcom/google/android/gms/analytics/a;->ts:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    #@46
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    #@49
    move-result v0

    #@4a
    if-eqz v0, :cond_4f

    #@4c
    const-string v0, "0"

    #@4e
    goto :goto_30

    #@4f
    :cond_4f
    const-string v0, "1"

    #@51
    goto :goto_30

    #@52
    :cond_52
    const/4 v0, 0x0

    #@53
    goto :goto_30
.end method
