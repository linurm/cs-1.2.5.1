.class final Lcom/google/android/gms/internal/kf$4;
.super Lcom/google/android/gms/internal/kd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/kf;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ke;Lcom/google/android/gms/internal/kd;Landroid/net/Uri;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic abk:Landroid/net/Uri;

.field final synthetic abn:Lcom/google/android/gms/internal/kd;

.field final synthetic qu:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/gms/internal/kd;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/kf$4;->qu:Landroid/content/Context;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/kf$4;->abk:Landroid/net/Uri;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/internal/kf$4;->abn:Lcom/google/android/gms/internal/kd;

    #@6
    invoke-direct {p0}, Lcom/google/android/gms/internal/kd$a;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;ILandroid/content/Intent;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/kf$4;->qu:Landroid/content/Context;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/kf$4;->abk:Landroid/net/Uri;

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/kf;->b(Landroid/content/Context;Landroid/net/Uri;)V

    #@7
    iget-object v0, p0, Lcom/google/android/gms/internal/kf$4;->abn:Lcom/google/android/gms/internal/kd;

    #@9
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/kd;->a(ILandroid/os/Bundle;ILandroid/content/Intent;)V

    #@c
    return-void
.end method
