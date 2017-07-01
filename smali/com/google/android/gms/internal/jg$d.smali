.class final Lcom/google/android/gms/internal/jg$d;
.super Lcom/google/android/gms/internal/hb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/internal/je;",
        ">.b<",
        "Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final CT:I

.field private final VT:[Ljava/lang/String;

.field final synthetic VU:Lcom/google/android/gms/internal/jg;

.field private final VY:I

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jg;ILcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;ILandroid/app/PendingIntent;)V
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    iput-object p1, p0, Lcom/google/android/gms/internal/jg$d;->VU:Lcom/google/android/gms/internal/jg;

    #@3
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/hb$b;-><init>(Lcom/google/android/gms/internal/hb;Ljava/lang/Object;)V

    #@6
    if-ne p2, v0, :cond_19

    #@8
    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->A(Z)V

    #@b
    iput p2, p0, Lcom/google/android/gms/internal/jg$d;->VY:I

    #@d
    invoke-static {p4}, Lcom/google/android/gms/location/LocationStatusCodes;->cJ(I)I

    #@10
    move-result v0

    #@11
    iput v0, p0, Lcom/google/android/gms/internal/jg$d;->CT:I

    #@13
    iput-object p5, p0, Lcom/google/android/gms/internal/jg$d;->mPendingIntent:Landroid/app/PendingIntent;

    #@15
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Lcom/google/android/gms/internal/jg$d;->VT:[Ljava/lang/String;

    #@18
    return-void

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    goto :goto_8
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/jg;ILcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;I[Ljava/lang/String;)V
    .registers 7

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/jg$d;->VU:Lcom/google/android/gms/internal/jg;

    #@2
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/hb$b;-><init>(Lcom/google/android/gms/internal/hb;Ljava/lang/Object;)V

    #@5
    const/4 v0, 0x2

    #@6
    if-ne p2, v0, :cond_1a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->A(Z)V

    #@c
    iput p2, p0, Lcom/google/android/gms/internal/jg$d;->VY:I

    #@e
    invoke-static {p4}, Lcom/google/android/gms/location/LocationStatusCodes;->cJ(I)I

    #@11
    move-result v0

    #@12
    iput v0, p0, Lcom/google/android/gms/internal/jg$d;->CT:I

    #@14
    iput-object p5, p0, Lcom/google/android/gms/internal/jg$d;->VT:[Ljava/lang/String;

    #@16
    const/4 v0, 0x0

    #@17
    iput-object v0, p0, Lcom/google/android/gms/internal/jg$d;->mPendingIntent:Landroid/app/PendingIntent;

    #@19
    return-void

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    goto :goto_9
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .registers 5

    #@0
    if-eqz p1, :cond_21

    #@2
    iget v0, p0, Lcom/google/android/gms/internal/jg$d;->VY:I

    #@4
    packed-switch v0, :pswitch_data_32

    #@7
    const-string v0, "LocationClientImpl"

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string v2, "Unsupported action: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget v2, p0, Lcom/google/android/gms/internal/jg$d;->VY:I

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@21
    :cond_21
    :goto_21
    return-void

    #@22
    :pswitch_22
    iget v0, p0, Lcom/google/android/gms/internal/jg$d;->CT:I

    #@24
    iget-object v1, p0, Lcom/google/android/gms/internal/jg$d;->mPendingIntent:Landroid/app/PendingIntent;

    #@26
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;->onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V

    #@29
    goto :goto_21

    #@2a
    :pswitch_2a
    iget v0, p0, Lcom/google/android/gms/internal/jg$d;->CT:I

    #@2c
    iget-object v1, p0, Lcom/google/android/gms/internal/jg$d;->VT:[Ljava/lang/String;

    #@2e
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;->onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V

    #@31
    goto :goto_21

    #@32
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2a
    .end packed-switch
.end method

.method protected synthetic d(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jg$d;->a(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V

    #@5
    return-void
.end method

.method protected fu()V
    .registers 1

    #@0
    return-void
.end method
