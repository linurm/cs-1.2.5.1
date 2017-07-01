.class synthetic Lcom/google/android/gms/internal/ez$7;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic sS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    invoke-static {}, Landroid/webkit/ConsoleMessage$MessageLevel;->values()[Landroid/webkit/ConsoleMessage$MessageLevel;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    new-array v0, v0, [I

    #@7
    sput-object v0, Lcom/google/android/gms/internal/ez$7;->sS:[I

    #@9
    :try_start_9
    sget-object v0, Lcom/google/android/gms/internal/ez$7;->sS:[I

    #@b
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->ERROR:Landroid/webkit/ConsoleMessage$MessageLevel;

    #@d
    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x1

    #@12
    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_41

    #@14
    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/gms/internal/ez$7;->sS:[I

    #@16
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->WARNING:Landroid/webkit/ConsoleMessage$MessageLevel;

    #@18
    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    #@1b
    move-result v1

    #@1c
    const/4 v2, 0x2

    #@1d
    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_43

    #@1f
    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/gms/internal/ez$7;->sS:[I

    #@21
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->LOG:Landroid/webkit/ConsoleMessage$MessageLevel;

    #@23
    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    #@26
    move-result v1

    #@27
    const/4 v2, 0x3

    #@28
    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_45

    #@2a
    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/gms/internal/ez$7;->sS:[I

    #@2c
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->TIP:Landroid/webkit/ConsoleMessage$MessageLevel;

    #@2e
    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    #@31
    move-result v1

    #@32
    const/4 v2, 0x4

    #@33
    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_47

    #@35
    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/gms/internal/ez$7;->sS:[I

    #@37
    sget-object v1, Landroid/webkit/ConsoleMessage$MessageLevel;->DEBUG:Landroid/webkit/ConsoleMessage$MessageLevel;

    #@39
    invoke-virtual {v1}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    #@3c
    move-result v1

    #@3d
    const/4 v2, 0x5

    #@3e
    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_49

    #@40
    :goto_40
    return-void

    #@41
    :catch_41
    move-exception v0

    #@42
    goto :goto_14

    #@43
    :catch_43
    move-exception v0

    #@44
    goto :goto_1f

    #@45
    :catch_45
    move-exception v0

    #@46
    goto :goto_2a

    #@47
    :catch_47
    move-exception v0

    #@48
    goto :goto_35

    #@49
    :catch_49
    move-exception v0

    #@4a
    goto :goto_40
.end method
