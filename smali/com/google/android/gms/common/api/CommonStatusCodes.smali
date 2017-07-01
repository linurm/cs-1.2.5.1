.class public Lcom/google/android/gms/common/api/CommonStatusCodes;
.super Ljava/lang/Object;


# static fields
.field public static final CANCELED:I = 0x10

.field public static final DATE_INVALID:I = 0xc

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final ERROR:I = 0xd

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xe

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final LICENSE_CHECK_FAILED:I = 0xb

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final SERVICE_DISABLED:I = 0x3

.field public static final SERVICE_INVALID:I = 0x9

.field public static final SERVICE_MISSING:I = 0x1

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_CACHE:I = -0x1

.field public static final TIMEOUT:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 3

    #@0
    sparse-switch p0, :sswitch_data_50

    #@3
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string v1, "unknown status code: "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    :goto_16
    return-object v0

    #@17
    :sswitch_17
    const-string v0, "SUCCESS_CACHE"

    #@19
    goto :goto_16

    #@1a
    :sswitch_1a
    const-string v0, "SUCCESS"

    #@1c
    goto :goto_16

    #@1d
    :sswitch_1d
    const-string v0, "SERVICE_MISSING"

    #@1f
    goto :goto_16

    #@20
    :sswitch_20
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    #@22
    goto :goto_16

    #@23
    :sswitch_23
    const-string v0, "SERVICE_DISABLED"

    #@25
    goto :goto_16

    #@26
    :sswitch_26
    const-string v0, "SIGN_IN_REQUIRED"

    #@28
    goto :goto_16

    #@29
    :sswitch_29
    const-string v0, "INVALID_ACCOUNT"

    #@2b
    goto :goto_16

    #@2c
    :sswitch_2c
    const-string v0, "RESOLUTION_REQUIRED"

    #@2e
    goto :goto_16

    #@2f
    :sswitch_2f
    const-string v0, "NETWORK_ERROR"

    #@31
    goto :goto_16

    #@32
    :sswitch_32
    const-string v0, "INTERNAL_ERROR"

    #@34
    goto :goto_16

    #@35
    :sswitch_35
    const-string v0, "SERVICE_INVALID"

    #@37
    goto :goto_16

    #@38
    :sswitch_38
    const-string v0, "DEVELOPER_ERROR"

    #@3a
    goto :goto_16

    #@3b
    :sswitch_3b
    const-string v0, "LICENSE_CHECK_FAILED"

    #@3d
    goto :goto_16

    #@3e
    :sswitch_3e
    const-string v0, "AUTH_API_INVALID_CREDENTIALS"

    #@40
    goto :goto_16

    #@41
    :sswitch_41
    const-string v0, "AUTH_API_ACCESS_FORBIDDEN"

    #@43
    goto :goto_16

    #@44
    :sswitch_44
    const-string v0, "AUTH_API_CLIENT_ERROR"

    #@46
    goto :goto_16

    #@47
    :sswitch_47
    const-string v0, "AUTH_API_SERVER_ERROR"

    #@49
    goto :goto_16

    #@4a
    :sswitch_4a
    const-string v0, "AUTH_TOKEN_ERROR"

    #@4c
    goto :goto_16

    #@4d
    :sswitch_4d
    const-string v0, "AUTH_URL_RESOLUTION"

    #@4f
    goto :goto_16

    #@50
    :sswitch_data_50
    .sparse-switch
        -0x1 -> :sswitch_17
        0x0 -> :sswitch_1a
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_20
        0x3 -> :sswitch_23
        0x4 -> :sswitch_26
        0x5 -> :sswitch_29
        0x6 -> :sswitch_2c
        0x7 -> :sswitch_2f
        0x8 -> :sswitch_32
        0x9 -> :sswitch_35
        0xa -> :sswitch_38
        0xb -> :sswitch_3b
        0xbb8 -> :sswitch_3e
        0xbb9 -> :sswitch_41
        0xbba -> :sswitch_44
        0xbbb -> :sswitch_47
        0xbbc -> :sswitch_4a
        0xbbd -> :sswitch_4d
    .end sparse-switch
.end method
