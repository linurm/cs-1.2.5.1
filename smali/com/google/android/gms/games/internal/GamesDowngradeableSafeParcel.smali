.class public abstract Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;
.super Lcom/google/android/gms/internal/ha;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ha;-><init>()V

    #@3
    return-void
.end method

.method protected static c(Ljava/lang/Integer;)Z
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@7
    move-result v0

    #@8
    invoke-static {v0}, Lcom/google/android/gms/internal/im;->aE(I)Z

    #@b
    move-result v0

    #@c
    goto :goto_3
.end method
