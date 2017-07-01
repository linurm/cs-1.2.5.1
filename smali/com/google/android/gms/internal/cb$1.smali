.class synthetic Lcom/google/android/gms/internal/cb$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic nY:[I

.field static final synthetic nZ:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    invoke-static {}, Lcom/google/ads/AdRequest$ErrorCode;->values()[Lcom/google/ads/AdRequest$ErrorCode;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    new-array v0, v0, [I

    #@7
    sput-object v0, Lcom/google/android/gms/internal/cb$1;->nZ:[I

    #@9
    :try_start_9
    sget-object v0, Lcom/google/android/gms/internal/cb$1;->nZ:[I

    #@b
    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    #@d
    invoke-virtual {v1}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x1

    #@12
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_60

    #@14
    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/gms/internal/cb$1;->nZ:[I

    #@16
    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    #@18
    invoke-virtual {v1}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    #@1b
    move-result v1

    #@1c
    const/4 v2, 0x2

    #@1d
    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_62

    #@1f
    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/gms/internal/cb$1;->nZ:[I

    #@21
    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    #@23
    invoke-virtual {v1}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    #@26
    move-result v1

    #@27
    const/4 v2, 0x3

    #@28
    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_64

    #@2a
    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/gms/internal/cb$1;->nZ:[I

    #@2c
    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    #@2e
    invoke-virtual {v1}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    #@31
    move-result v1

    #@32
    const/4 v2, 0x4

    #@33
    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_66

    #@35
    :goto_35
    invoke-static {}, Lcom/google/ads/AdRequest$Gender;->values()[Lcom/google/ads/AdRequest$Gender;

    #@38
    move-result-object v0

    #@39
    array-length v0, v0

    #@3a
    new-array v0, v0, [I

    #@3c
    sput-object v0, Lcom/google/android/gms/internal/cb$1;->nY:[I

    #@3e
    :try_start_3e
    sget-object v0, Lcom/google/android/gms/internal/cb$1;->nY:[I

    #@40
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    #@42
    invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    #@45
    move-result v1

    #@46
    const/4 v2, 0x1

    #@47
    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_68

    #@49
    :goto_49
    :try_start_49
    sget-object v0, Lcom/google/android/gms/internal/cb$1;->nY:[I

    #@4b
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    #@4d
    invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    #@50
    move-result v1

    #@51
    const/4 v2, 0x2

    #@52
    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_6a

    #@54
    :goto_54
    :try_start_54
    sget-object v0, Lcom/google/android/gms/internal/cb$1;->nY:[I

    #@56
    sget-object v1, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    #@58
    invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    #@5b
    move-result v1

    #@5c
    const/4 v2, 0x3

    #@5d
    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_6c

    #@5f
    :goto_5f
    return-void

    #@60
    :catch_60
    move-exception v0

    #@61
    goto :goto_14

    #@62
    :catch_62
    move-exception v0

    #@63
    goto :goto_1f

    #@64
    :catch_64
    move-exception v0

    #@65
    goto :goto_2a

    #@66
    :catch_66
    move-exception v0

    #@67
    goto :goto_35

    #@68
    :catch_68
    move-exception v0

    #@69
    goto :goto_49

    #@6a
    :catch_6a
    move-exception v0

    #@6b
    goto :goto_54

    #@6c
    :catch_6c
    move-exception v0

    #@6d
    goto :goto_5f
.end method
