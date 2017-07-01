.class final Lcom/google/android/gms/internal/jg$b;
.super Lcom/google/android/gms/internal/jd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private VV:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

.field private VW:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

.field private VX:Lcom/google/android/gms/internal/jg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;Lcom/google/android/gms/internal/jg;)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/jd$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/jg$b;->VV:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    #@5
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/google/android/gms/internal/jg$b;->VW:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    #@8
    iput-object p2, p0, Lcom/google/android/gms/internal/jg$b;->VX:Lcom/google/android/gms/internal/jg;

    #@a
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;Lcom/google/android/gms/internal/jg;)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/jd$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/jg$b;->VW:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    #@5
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/google/android/gms/internal/jg$b;->VV:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    #@8
    iput-object p2, p0, Lcom/google/android/gms/internal/jg$b;->VX:Lcom/google/android/gms/internal/jg;

    #@a
    return-void
.end method


# virtual methods
.method public onAddGeofencesResult(I[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    const/4 v4, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/jg$b;->VX:Lcom/google/android/gms/internal/jg;

    #@3
    if-nez v0, :cond_d

    #@5
    const-string v0, "LocationClientImpl"

    #@7
    const-string v1, "onAddGeofenceResult called multiple times"

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/jg$b;->VX:Lcom/google/android/gms/internal/jg;

    #@f
    iget-object v1, p0, Lcom/google/android/gms/internal/jg$b;->VX:Lcom/google/android/gms/internal/jg;

    #@11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@14
    new-instance v2, Lcom/google/android/gms/internal/jg$a;

    #@16
    iget-object v3, p0, Lcom/google/android/gms/internal/jg$b;->VV:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    #@18
    invoke-direct {v2, v1, v3, p1, p2}, Lcom/google/android/gms/internal/jg$a;-><init>(Lcom/google/android/gms/internal/jg;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;I[Ljava/lang/String;)V

    #@1b
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/jg;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@1e
    iput-object v4, p0, Lcom/google/android/gms/internal/jg$b;->VX:Lcom/google/android/gms/internal/jg;

    #@20
    iput-object v4, p0, Lcom/google/android/gms/internal/jg$b;->VV:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    #@22
    iput-object v4, p0, Lcom/google/android/gms/internal/jg$b;->VW:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    #@24
    goto :goto_c
.end method

.method public onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V
    .registers 11

    #@0
    const/4 v7, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/jg$b;->VX:Lcom/google/android/gms/internal/jg;

    #@3
    if-nez v0, :cond_d

    #@5
    const-string v0, "LocationClientImpl"

    #@7
    const-string v1, "onRemoveGeofencesByPendingIntentResult called multiple times"

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    iget-object v6, p0, Lcom/google/android/gms/internal/jg$b;->VX:Lcom/google/android/gms/internal/jg;

    #@f
    iget-object v1, p0, Lcom/google/android/gms/internal/jg$b;->VX:Lcom/google/android/gms/internal/jg;

    #@11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@14
    new-instance v0, Lcom/google/android/gms/internal/jg$d;

    #@16
    const/4 v2, 0x1

    #@17
    iget-object v3, p0, Lcom/google/android/gms/internal/jg$b;->VW:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    #@19
    move v4, p1

    #@1a
    move-object v5, p2

    #@1b
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/jg$d;-><init>(Lcom/google/android/gms/internal/jg;ILcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;ILandroid/app/PendingIntent;)V

    #@1e
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/jg;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@21
    iput-object v7, p0, Lcom/google/android/gms/internal/jg$b;->VX:Lcom/google/android/gms/internal/jg;

    #@23
    iput-object v7, p0, Lcom/google/android/gms/internal/jg$b;->VV:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    #@25
    iput-object v7, p0, Lcom/google/android/gms/internal/jg$b;->VW:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    #@27
    goto :goto_c
.end method

.method public onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V
    .registers 11

    #@0
    const/4 v7, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/internal/jg$b;->VX:Lcom/google/android/gms/internal/jg;

    #@3
    if-nez v0, :cond_d

    #@5
    const-string v0, "LocationClientImpl"

    #@7
    const-string v1, "onRemoveGeofencesByRequestIdsResult called multiple times"

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    :goto_c
    return-void

    #@d
    :cond_d
    iget-object v6, p0, Lcom/google/android/gms/internal/jg$b;->VX:Lcom/google/android/gms/internal/jg;

    #@f
    iget-object v1, p0, Lcom/google/android/gms/internal/jg$b;->VX:Lcom/google/android/gms/internal/jg;

    #@11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@14
    new-instance v0, Lcom/google/android/gms/internal/jg$d;

    #@16
    const/4 v2, 0x2

    #@17
    iget-object v3, p0, Lcom/google/android/gms/internal/jg$b;->VW:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    #@19
    move v4, p1

    #@1a
    move-object v5, p2

    #@1b
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/jg$d;-><init>(Lcom/google/android/gms/internal/jg;ILcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;I[Ljava/lang/String;)V

    #@1e
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/jg;->a(Lcom/google/android/gms/internal/hb$b;)V

    #@21
    iput-object v7, p0, Lcom/google/android/gms/internal/jg$b;->VX:Lcom/google/android/gms/internal/jg;

    #@23
    iput-object v7, p0, Lcom/google/android/gms/internal/jg$b;->VV:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    #@25
    iput-object v7, p0, Lcom/google/android/gms/internal/jg$b;->VW:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    #@27
    goto :goto_c
.end method
