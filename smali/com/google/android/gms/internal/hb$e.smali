.class public final Lcom/google/android/gms/internal/hb$e;
.super Lcom/google/android/gms/internal/hh$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private Gl:Lcom/google/android/gms/internal/hb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/hb;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/hh$a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/hb$e;->Gl:Lcom/google/android/gms/internal/hb;

    #@5
    return-void
.end method


# virtual methods
.method public b(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    #@0
    const-string v0, "onPostInitComplete can be called only once per call to getServiceFromBroker"

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/hb$e;->Gl:Lcom/google/android/gms/internal/hb;

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    iget-object v0, p0, Lcom/google/android/gms/internal/hb$e;->Gl:Lcom/google/android/gms/internal/hb;

    #@9
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/hb;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    #@c
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lcom/google/android/gms/internal/hb$e;->Gl:Lcom/google/android/gms/internal/hb;

    #@f
    return-void
.end method
