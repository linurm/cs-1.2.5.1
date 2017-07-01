.class Lcom/google/android/gms/internal/jf$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final VN:Lcom/google/android/gms/location/LocationListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/LocationListener;)V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/jf$a;->VN:Lcom/google/android/gms/location/LocationListener;

    #@5
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .registers 3

    #@0
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/jf$a;->VN:Lcom/google/android/gms/location/LocationListener;

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    #@0
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_1c

    #@5
    const-string v0, "LocationClientHelper"

    #@7
    const-string v1, "unknown message in LocationHandler.handleMessage"

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    :goto_c
    return-void

    #@d
    :pswitch_d
    new-instance v1, Landroid/location/Location;

    #@f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11
    check-cast v0, Landroid/location/Location;

    #@13
    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    #@16
    iget-object v0, p0, Lcom/google/android/gms/internal/jf$a;->VN:Lcom/google/android/gms/location/LocationListener;

    #@18
    invoke-interface {v0, v1}, Lcom/google/android/gms/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    #@1b
    goto :goto_c

    #@1c
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method
