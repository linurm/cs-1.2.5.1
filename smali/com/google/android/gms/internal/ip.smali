.class public final Lcom/google/android/gms/internal/ip;
.super Ljava/lang/Object;


# direct methods
.method private static aF(I)Z
    .registers 2

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    if-lt v0, p0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public static gc()Z
    .registers 1

    #@0
    const/16 v0, 0xb

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->aF(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static gd()Z
    .registers 1

    #@0
    const/16 v0, 0xc

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->aF(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static ge()Z
    .registers 1

    #@0
    const/16 v0, 0xd

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->aF(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static gf()Z
    .registers 1

    #@0
    const/16 v0, 0xe

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->aF(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static gg()Z
    .registers 1

    #@0
    const/16 v0, 0x10

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->aF(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static gh()Z
    .registers 1

    #@0
    const/16 v0, 0x11

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->aF(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static gi()Z
    .registers 1

    #@0
    const/16 v0, 0x13

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/ip;->aF(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
