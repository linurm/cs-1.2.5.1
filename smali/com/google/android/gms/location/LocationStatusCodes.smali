.class public final Lcom/google/android/gms/location/LocationStatusCodes;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ERROR:I = 0x1

.field public static final GEOFENCE_NOT_AVAILABLE:I = 0x3e8

.field public static final GEOFENCE_TOO_MANY_GEOFENCES:I = 0x3e9

.field public static final GEOFENCE_TOO_MANY_PENDING_INTENTS:I = 0x3ea

.field public static final SUCCESS:I


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static cJ(I)I
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    if-ltz p0, :cond_5

    #@3
    if-le p0, v0, :cond_d

    #@5
    :cond_5
    const/16 v1, 0x3e8

    #@7
    if-gt v1, p0, :cond_e

    #@9
    const/16 v1, 0x3ea

    #@b
    if-gt p0, v1, :cond_e

    #@d
    :cond_d
    :goto_d
    return p0

    #@e
    :cond_e
    move p0, v0

    #@f
    goto :goto_d
.end method

.method public static cK(I)Lcom/google/android/gms/common/api/Status;
    .registers 2

    #@0
    packed-switch p0, :pswitch_data_c

    #@3
    :goto_3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@5
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@8
    return-object v0

    #@9
    :pswitch_9
    const/16 p0, 0xd

    #@b
    goto :goto_3

    #@c
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
