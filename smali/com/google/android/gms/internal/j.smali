.class public Lcom/google/android/gms/internal/j;
.super Lcom/google/android/gms/internal/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/j$a;
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/n;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/i;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/n;)V

    #@3
    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/j;
    .registers 6

    #@0
    new-instance v0, Lcom/google/android/gms/internal/e;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/e;-><init>()V

    #@5
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/j;->a(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/m;)V

    #@8
    new-instance v1, Lcom/google/android/gms/internal/j;

    #@a
    new-instance v2, Lcom/google/android/gms/internal/p;

    #@c
    const/16 v3, 0xef

    #@e
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/p;-><init>(I)V

    #@11
    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/internal/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/n;)V

    #@14
    return-object v1
.end method


# virtual methods
.method protected c(Landroid/content/Context;)V
    .registers 6

    #@0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/i;->c(Landroid/content/Context;)V

    #@3
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/j;->i(Landroid/content/Context;)Lcom/google/android/gms/internal/j$a;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/j$a;->isLimitAdTrackingEnabled()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_27

    #@d
    const-wide/16 v0, 0x1

    #@f
    :goto_f
    const/16 v3, 0x1c

    #@11
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/j;->a(IJ)V

    #@14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/j$a;->getId()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    if-eqz v0, :cond_26

    #@1a
    const/16 v1, 0x1a

    #@1c
    const-wide/16 v2, 0x5

    #@1e
    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/j;->a(IJ)V

    #@21
    const/16 v1, 0x18

    #@23
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/j;->a(ILjava/lang/String;)V
    :try_end_26
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_3 .. :try_end_26} :catch_2a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_26} :catch_35
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_3 .. :try_end_26} :catch_37

    #@26
    :cond_26
    :goto_26
    return-void

    #@27
    :cond_27
    const-wide/16 v0, 0x0

    #@29
    goto :goto_f

    #@2a
    :catch_2a
    move-exception v0

    #@2b
    const/16 v0, 0x18

    #@2d
    :try_start_2d
    invoke-static {p1}, Lcom/google/android/gms/internal/j;->f(Landroid/content/Context;)Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/j;->a(ILjava/lang/String;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_34} :catch_35
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_2d .. :try_end_34} :catch_37

    #@34
    goto :goto_26

    #@35
    :catch_35
    move-exception v0

    #@36
    goto :goto_26

    #@37
    :catch_37
    move-exception v0

    #@38
    goto :goto_26
.end method

.method protected d(Landroid/content/Context;)V
    .registers 6

    #@0
    const-wide/16 v0, 0x1

    #@2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/i;->c(Landroid/content/Context;)V

    #@5
    const/16 v2, 0x18

    #@7
    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/internal/j;->f(Landroid/content/Context;)Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/j;->a(ILjava/lang/String;)V
    :try_end_e
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_7 .. :try_end_e} :catch_39
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_e} :catch_32

    #@e
    :goto_e
    :try_start_e
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/j;->i(Landroid/content/Context;)Lcom/google/android/gms/internal/j$a;
    :try_end_11
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_e .. :try_end_11} :catch_37
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_29

    #@11
    move-result-object v2

    #@12
    :try_start_12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/j$a;->isLimitAdTrackingEnabled()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_34

    #@18
    :goto_18
    const/16 v3, 0x1c

    #@1a
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/j;->a(IJ)V

    #@1d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/j$a;->getId()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    if-eqz v0, :cond_28

    #@23
    const/16 v1, 0x1e

    #@25
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/j;->a(ILjava/lang/String;)V

    #@28
    :cond_28
    :goto_28
    return-void

    #@29
    :catch_29
    move-exception v0

    #@2a
    const/16 v0, 0x1c

    #@2c
    const-wide/16 v2, 0x1

    #@2e
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/j;->a(IJ)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_31} :catch_32

    #@31
    goto :goto_28

    #@32
    :catch_32
    move-exception v0

    #@33
    goto :goto_28

    #@34
    :cond_34
    const-wide/16 v0, 0x0

    #@36
    goto :goto_18

    #@37
    :catch_37
    move-exception v0

    #@38
    goto :goto_28

    #@39
    :catch_39
    move-exception v2

    #@3a
    goto :goto_e
.end method

.method i(Landroid/content/Context;)Lcom/google/android/gms/internal/j$a;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/16 v7, 0x10

    #@3
    :try_start_3
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_6
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_3 .. :try_end_6} :catch_4e

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    if-eqz v2, :cond_66

    #@d
    const-string v1, "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"

    #@f
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_66

    #@15
    new-array v4, v7, [B

    #@17
    move v1, v0

    #@18
    :goto_18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@1b
    move-result v5

    #@1c
    if-ge v1, v5, :cond_55

    #@1e
    const/16 v5, 0x8

    #@20
    if-eq v1, v5, :cond_2e

    #@22
    const/16 v5, 0xd

    #@24
    if-eq v1, v5, :cond_2e

    #@26
    const/16 v5, 0x12

    #@28
    if-eq v1, v5, :cond_2e

    #@2a
    const/16 v5, 0x17

    #@2c
    if-ne v1, v5, :cond_30

    #@2e
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    #@30
    :cond_30
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@33
    move-result v5

    #@34
    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    #@37
    move-result v5

    #@38
    shl-int/lit8 v5, v5, 0x4

    #@3a
    add-int/lit8 v6, v1, 0x1

    #@3c
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    #@3f
    move-result v6

    #@40
    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    #@43
    move-result v6

    #@44
    add-int/2addr v5, v6

    #@45
    int-to-byte v5, v5

    #@46
    int-to-byte v5, v5

    #@47
    aput-byte v5, v4, v0

    #@49
    add-int/lit8 v0, v0, 0x1

    #@4b
    add-int/lit8 v1, v1, 0x2

    #@4d
    goto :goto_18

    #@4e
    :catch_4e
    move-exception v0

    #@4f
    new-instance v1, Ljava/io/IOException;

    #@51
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@54
    throw v1

    #@55
    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/internal/j;->jQ:Lcom/google/android/gms/internal/m;

    #@57
    const/4 v1, 0x1

    #@58
    invoke-interface {v0, v4, v1}, Lcom/google/android/gms/internal/m;->a([BZ)Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    :goto_5c
    new-instance v1, Lcom/google/android/gms/internal/j$a;

    #@5e
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    #@61
    move-result v2

    #@62
    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/j$a;-><init>(Lcom/google/android/gms/internal/j;Ljava/lang/String;Z)V

    #@65
    return-object v1

    #@66
    :cond_66
    move-object v0, v2

    #@67
    goto :goto_5c
.end method
