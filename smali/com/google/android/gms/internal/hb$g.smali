.class public final Lcom/google/android/gms/internal/hb$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field private final Gm:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/hb$g;->Gm:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    #@5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/google/android/gms/internal/hb$g;

    #@2
    if-eqz v0, :cond_f

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$g;->Gm:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    #@6
    check-cast p1, Lcom/google/android/gms/internal/hb$g;

    #@8
    iget-object v1, p1, Lcom/google/android/gms/internal/hb$g;->Gm:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_e
    return v0

    #@f
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$g;->Gm:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v0

    #@15
    goto :goto_e
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$g;->Gm:Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    #@2
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    #@5
    return-void
.end method
