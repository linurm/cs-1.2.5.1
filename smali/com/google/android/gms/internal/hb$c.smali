.class public final Lcom/google/android/gms/internal/hb$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final Gk:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/hb$c;->Gk:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    #@5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/google/android/gms/internal/hb$c;

    #@2
    if-eqz v0, :cond_f

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$c;->Gk:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    #@6
    check-cast p1, Lcom/google/android/gms/internal/hb$c;

    #@8
    iget-object v1, p1, Lcom/google/android/gms/internal/hb$c;->Gk:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_e
    return v0

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$c;->Gk:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    goto :goto_e
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$c;->Gk:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    #@5
    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$c;->Gk:Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;->onDisconnected()V

    #@5
    return-void
.end method
