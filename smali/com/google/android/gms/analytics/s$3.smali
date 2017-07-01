.class synthetic Lcom/google/android/gms/analytics/s$3;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic ux:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    invoke-static {}, Lcom/google/android/gms/analytics/s$a;->values()[Lcom/google/android/gms/analytics/s$a;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    new-array v0, v0, [I

    #@7
    sput-object v0, Lcom/google/android/gms/analytics/s$3;->ux:[I

    #@9
    :try_start_9
    sget-object v0, Lcom/google/android/gms/analytics/s$3;->ux:[I

    #@b
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uA:Lcom/google/android/gms/analytics/s$a;

    #@d
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/s$a;->ordinal()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x1

    #@12
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_4c

    #@14
    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/gms/analytics/s$3;->ux:[I

    #@16
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uz:Lcom/google/android/gms/analytics/s$a;

    #@18
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/s$a;->ordinal()I

    #@1b
    move-result v1

    #@1c
    const/4 v2, 0x2

    #@1d
    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_4e

    #@1f
    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/gms/analytics/s$3;->ux:[I

    #@21
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uy:Lcom/google/android/gms/analytics/s$a;

    #@23
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/s$a;->ordinal()I

    #@26
    move-result v1

    #@27
    const/4 v2, 0x3

    #@28
    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_50

    #@2a
    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/gms/analytics/s$3;->ux:[I

    #@2c
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uC:Lcom/google/android/gms/analytics/s$a;

    #@2e
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/s$a;->ordinal()I

    #@31
    move-result v1

    #@32
    const/4 v2, 0x4

    #@33
    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_52

    #@35
    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/gms/analytics/s$3;->ux:[I

    #@37
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uD:Lcom/google/android/gms/analytics/s$a;

    #@39
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/s$a;->ordinal()I

    #@3c
    move-result v1

    #@3d
    const/4 v2, 0x5

    #@3e
    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_54

    #@40
    :goto_40
    :try_start_40
    sget-object v0, Lcom/google/android/gms/analytics/s$3;->ux:[I

    #@42
    sget-object v1, Lcom/google/android/gms/analytics/s$a;->uE:Lcom/google/android/gms/analytics/s$a;

    #@44
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/s$a;->ordinal()I

    #@47
    move-result v1

    #@48
    const/4 v2, 0x6

    #@49
    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_56

    #@4b
    :goto_4b
    return-void

    #@4c
    :catch_4c
    move-exception v0

    #@4d
    goto :goto_14

    #@4e
    :catch_4e
    move-exception v0

    #@4f
    goto :goto_1f

    #@50
    :catch_50
    move-exception v0

    #@51
    goto :goto_2a

    #@52
    :catch_52
    move-exception v0

    #@53
    goto :goto_35

    #@54
    :catch_54
    move-exception v0

    #@55
    goto :goto_40

    #@56
    :catch_56
    move-exception v0

    #@57
    goto :goto_4b
.end method
