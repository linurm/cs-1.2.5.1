.class public final Lcom/google/android/gms/internal/cb;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/ads/AdRequest$ErrorCode;)I
    .registers 3

    #@0
    sget-object v0, Lcom/google/android/gms/internal/cb$1;->nZ:[I

    #@2
    invoke-virtual {p0}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    #@5
    move-result v1

    #@6
    aget v0, v0, v1

    #@8
    packed-switch v0, :pswitch_data_14

    #@b
    const/4 v0, 0x0

    #@c
    :goto_c
    return v0

    #@d
    :pswitch_d
    const/4 v0, 0x1

    #@e
    goto :goto_c

    #@f
    :pswitch_f
    const/4 v0, 0x2

    #@10
    goto :goto_c

    #@11
    :pswitch_11
    const/4 v0, 0x3

    #@12
    goto :goto_c

    #@13
    nop

    #@14
    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_d
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method public static b(Lcom/google/android/gms/internal/al;)Lcom/google/ads/AdSize;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x6

    #@2
    new-array v1, v1, [Lcom/google/ads/AdSize;

    #@4
    sget-object v2, Lcom/google/ads/AdSize;->SMART_BANNER:Lcom/google/ads/AdSize;

    #@6
    aput-object v2, v1, v0

    #@8
    const/4 v2, 0x1

    #@9
    sget-object v3, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    #@b
    aput-object v3, v1, v2

    #@d
    const/4 v2, 0x2

    #@e
    sget-object v3, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    #@10
    aput-object v3, v1, v2

    #@12
    const/4 v2, 0x3

    #@13
    sget-object v3, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    #@15
    aput-object v3, v1, v2

    #@17
    const/4 v2, 0x4

    #@18
    sget-object v3, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    #@1a
    aput-object v3, v1, v2

    #@1c
    const/4 v2, 0x5

    #@1d
    sget-object v3, Lcom/google/ads/AdSize;->IAB_WIDE_SKYSCRAPER:Lcom/google/ads/AdSize;

    #@1f
    aput-object v3, v1, v2

    #@21
    :goto_21
    array-length v2, v1

    #@22
    if-ge v0, v2, :cond_3e

    #@24
    aget-object v2, v1, v0

    #@26
    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getWidth()I

    #@29
    move-result v2

    #@2a
    iget v3, p0, Lcom/google/android/gms/internal/al;->width:I

    #@2c
    if-ne v2, v3, :cond_3b

    #@2e
    aget-object v2, v1, v0

    #@30
    invoke-virtual {v2}, Lcom/google/ads/AdSize;->getHeight()I

    #@33
    move-result v2

    #@34
    iget v3, p0, Lcom/google/android/gms/internal/al;->height:I

    #@36
    if-ne v2, v3, :cond_3b

    #@38
    aget-object v0, v1, v0

    #@3a
    :goto_3a
    return-object v0

    #@3b
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_21

    #@3e
    :cond_3e
    new-instance v0, Lcom/google/ads/AdSize;

    #@40
    iget v1, p0, Lcom/google/android/gms/internal/al;->width:I

    #@42
    iget v2, p0, Lcom/google/android/gms/internal/al;->height:I

    #@44
    iget-object v3, p0, Lcom/google/android/gms/internal/al;->me:Ljava/lang/String;

    #@46
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/ads/a;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    #@49
    move-result-object v1

    #@4a
    invoke-direct {v0, v1}, Lcom/google/ads/AdSize;-><init>(Lcom/google/android/gms/ads/AdSize;)V

    #@4d
    goto :goto_3a
.end method

.method public static e(Lcom/google/android/gms/internal/ai;)Lcom/google/ads/mediation/MediationAdRequest;
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->lU:Ljava/util/List;

    #@2
    if-eqz v0, :cond_22

    #@4
    new-instance v3, Ljava/util/HashSet;

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->lU:Ljava/util/List;

    #@8
    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@b
    :goto_b
    new-instance v0, Lcom/google/ads/mediation/MediationAdRequest;

    #@d
    new-instance v1, Ljava/util/Date;

    #@f
    iget-wide v4, p0, Lcom/google/android/gms/internal/ai;->lS:J

    #@11
    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@14
    iget v2, p0, Lcom/google/android/gms/internal/ai;->lT:I

    #@16
    invoke-static {v2}, Lcom/google/android/gms/internal/cb;->h(I)Lcom/google/ads/AdRequest$Gender;

    #@19
    move-result-object v2

    #@1a
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ai;->lV:Z

    #@1c
    iget-object v5, p0, Lcom/google/android/gms/internal/ai;->ma:Landroid/location/Location;

    #@1e
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/mediation/MediationAdRequest;-><init>(Ljava/util/Date;Lcom/google/ads/AdRequest$Gender;Ljava/util/Set;ZLandroid/location/Location;)V

    #@21
    return-object v0

    #@22
    :cond_22
    const/4 v3, 0x0

    #@23
    goto :goto_b
.end method

.method public static h(I)Lcom/google/ads/AdRequest$Gender;
    .registers 2

    #@0
    packed-switch p0, :pswitch_data_c

    #@3
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    #@5
    :goto_5
    return-object v0

    #@6
    :pswitch_6
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    #@8
    goto :goto_5

    #@9
    :pswitch_9
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    #@b
    goto :goto_5

    #@c
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
