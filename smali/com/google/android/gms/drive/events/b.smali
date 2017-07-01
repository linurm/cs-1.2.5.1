.class public Lcom/google/android/gms/drive/events/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILcom/google/android/gms/drive/DriveId;)Z
    .registers 3

    #@0
    if-nez p1, :cond_8

    #@2
    invoke-static {p0}, Lcom/google/android/gms/drive/events/b;->aK(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    :cond_8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method public static aK(I)Z
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    const-wide/16 v2, 0x6

    #@3
    shl-int v1, v0, p0

    #@5
    int-to-long v4, v1

    #@6
    and-long/2addr v2, v4

    #@7
    const-wide/16 v4, 0x0

    #@9
    cmp-long v1, v2, v4

    #@b
    if-eqz v1, :cond_e

    #@d
    :goto_d
    return v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method
