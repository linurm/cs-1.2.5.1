.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Ljava/lang/Object;


# static fields
.field public static final API_UNAVAILABLE:I = 0x10

.field public static final CANCELED:I = 0xd

.field public static final CS:Lcom/google/android/gms/common/ConnectionResult;

.field public static final DATE_INVALID:I = 0xc

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final DRIVE_EXTERNAL_STORAGE_REQUIRED:I = 0x5dc

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xf

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

.field public static final TIMEOUT:I = 0xe


# instance fields
.field private final CT:I

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    #@7
    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->CS:Lcom/google/android/gms/common/ConnectionResult;

    #@9
    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->CT:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    #@7
    return-void
.end method

.method private ex()Ljava/lang/String;
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->CT:I

    #@2
    packed-switch v0, :pswitch_data_48

    #@5
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string v1, "unknown status code "

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->CT:I

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    :goto_1a
    return-object v0

    #@1b
    :pswitch_1b
    const-string v0, "SUCCESS"

    #@1d
    goto :goto_1a

    #@1e
    :pswitch_1e
    const-string v0, "SERVICE_MISSING"

    #@20
    goto :goto_1a

    #@21
    :pswitch_21
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    #@23
    goto :goto_1a

    #@24
    :pswitch_24
    const-string v0, "SERVICE_DISABLED"

    #@26
    goto :goto_1a

    #@27
    :pswitch_27
    const-string v0, "SIGN_IN_REQUIRED"

    #@29
    goto :goto_1a

    #@2a
    :pswitch_2a
    const-string v0, "INVALID_ACCOUNT"

    #@2c
    goto :goto_1a

    #@2d
    :pswitch_2d
    const-string v0, "RESOLUTION_REQUIRED"

    #@2f
    goto :goto_1a

    #@30
    :pswitch_30
    const-string v0, "NETWORK_ERROR"

    #@32
    goto :goto_1a

    #@33
    :pswitch_33
    const-string v0, "INTERNAL_ERROR"

    #@35
    goto :goto_1a

    #@36
    :pswitch_36
    const-string v0, "SERVICE_INVALID"

    #@38
    goto :goto_1a

    #@39
    :pswitch_39
    const-string v0, "DEVELOPER_ERROR"

    #@3b
    goto :goto_1a

    #@3c
    :pswitch_3c
    const-string v0, "LICENSE_CHECK_FAILED"

    #@3e
    goto :goto_1a

    #@3f
    :pswitch_3f
    const-string v0, "CANCELED"

    #@41
    goto :goto_1a

    #@42
    :pswitch_42
    const-string v0, "TIMEOUT"

    #@44
    goto :goto_1a

    #@45
    :pswitch_45
    const-string v0, "INTERRUPTED"

    #@47
    goto :goto_1a

    #@48
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_5
        :pswitch_3f
        :pswitch_42
        :pswitch_45
    .end packed-switch
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->CT:I

    #@2
    return v0
.end method

.method public getResolution()Landroid/app/PendingIntent;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public hasResolution()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->CT:I

    #@2
    if-eqz v0, :cond_a

    #@4
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    #@6
    if-eqz v0, :cond_a

    #@8
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

.method public isSuccess()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->CT:I

    #@2
    if-nez v0, :cond_6

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

.method public startResolutionForResult(Landroid/app/Activity;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    #@0
    const/4 v4, 0x0

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_8

    #@7
    :goto_7
    return-void

    #@8
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    #@a
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    #@d
    move-result-object v1

    #@e
    const/4 v3, 0x0

    #@f
    move-object v0, p1

    #@10
    move v2, p2

    #@11
    move v5, v4

    #@12
    move v6, v4

    #@13
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    #@16
    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/hk;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@3
    move-result-object v0

    #@4
    const-string v1, "statusCode"

    #@6
    invoke-direct {p0}, Lcom/google/android/gms/common/ConnectionResult;->ex()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@d
    move-result-object v0

    #@e
    const-string v1, "resolution"

    #@10
    iget-object v2, p0, Lcom/google/android/gms/common/ConnectionResult;->mPendingIntent:Landroid/app/PendingIntent;

    #@12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hk$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hk$a;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/hk$a;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method
