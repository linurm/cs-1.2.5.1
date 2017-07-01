.class Lcom/google/android/gms/internal/jf$b;
.super Lcom/google/android/gms/location/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private VO:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/location/a$a;-><init>()V

    #@3
    if-nez p2, :cond_d

    #@5
    new-instance v0, Lcom/google/android/gms/internal/jf$a;

    #@7
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/jf$a;-><init>(Lcom/google/android/gms/location/LocationListener;)V

    #@a
    :goto_a
    iput-object v0, p0, Lcom/google/android/gms/internal/jf$b;->VO:Landroid/os/Handler;

    #@c
    return-void

    #@d
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/jf$a;

    #@f
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/jf$a;-><init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    #@12
    goto :goto_a
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/jf$b;->VO:Landroid/os/Handler;

    #@2
    if-nez v0, :cond_c

    #@4
    const-string v0, "LocationClientHelper"

    #@6
    const-string v1, "Received a location in client after calling removeLocationUpdates."

    #@8
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b
    :goto_b
    return-void

    #@c
    :cond_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@f
    move-result-object v0

    #@10
    const/4 v1, 0x1

    #@11
    iput v1, v0, Landroid/os/Message;->what:I

    #@13
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15
    iget-object v1, p0, Lcom/google/android/gms/internal/jf$b;->VO:Landroid/os/Handler;

    #@17
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1a
    goto :goto_b
.end method

.method public release()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/google/android/gms/internal/jf$b;->VO:Landroid/os/Handler;

    #@3
    return-void
.end method
