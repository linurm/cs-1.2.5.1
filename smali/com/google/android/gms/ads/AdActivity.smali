.class public final Lcom/google/android/gms/ads/AdActivity;
.super Landroid/app/Activity;


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.ads.AdActivity"

.field public static final SIMPLE_CLASS_NAME:Ljava/lang/String; = "AdActivity"


# instance fields
.field private kr:Lcom/google/android/gms/internal/cn;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    return-void
.end method

.method private S()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@2
    if-eqz v0, :cond_9

    #@4
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/internal/cn;->S()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    #@9
    :cond_9
    :goto_9
    return-void

    #@a
    :catch_a
    move-exception v0

    #@b
    const-string v1, "Could not forward setContentViewSet to ad overlay:"

    #@d
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    goto :goto_9
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@3
    invoke-static {p0}, Lcom/google/android/gms/internal/cm;->a(Landroid/app/Activity;)Lcom/google/android/gms/internal/cn;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@9
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@b
    if-nez v0, :cond_16

    #@d
    const-string v0, "Could not create ad overlay."

    #@f
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@12
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    #@15
    :goto_15
    return-void

    #@16
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@18
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cn;->onCreate(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    #@1b
    goto :goto_15

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    const-string v1, "Could not forward onCreate to ad overlay:"

    #@1f
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@22
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    #@25
    goto :goto_15
.end method

.method protected onDestroy()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/internal/cn;->onDestroy()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    #@9
    :cond_9
    :goto_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    #@c
    return-void

    #@d
    :catch_d
    move-exception v0

    #@e
    const-string v1, "Could not forward onDestroy to ad overlay:"

    #@10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    goto :goto_9
.end method

.method protected onPause()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/internal/cn;->onPause()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    #@9
    :cond_9
    :goto_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    #@c
    return-void

    #@d
    :catch_d
    move-exception v0

    #@e
    const-string v1, "Could not forward onPause to ad overlay:"

    #@10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    #@16
    goto :goto_9
.end method

.method protected onRestart()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@9
    invoke-interface {v0}, Lcom/google/android/gms/internal/cn;->onRestart()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    #@c
    :cond_c
    :goto_c
    return-void

    #@d
    :catch_d
    move-exception v0

    #@e
    const-string v1, "Could not forward onRestart to ad overlay:"

    #@10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    #@16
    goto :goto_c
.end method

.method protected onResume()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@9
    invoke-interface {v0}, Lcom/google/android/gms/internal/cn;->onResume()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    #@c
    :cond_c
    :goto_c
    return-void

    #@d
    :catch_d
    move-exception v0

    #@e
    const-string v1, "Could not forward onResume to ad overlay:"

    #@10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    #@16
    goto :goto_c
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cn;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    #@9
    :cond_9
    :goto_9
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    #@c
    return-void

    #@d
    :catch_d
    move-exception v0

    #@e
    const-string v1, "Could not forward onSaveInstanceState to ad overlay:"

    #@10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    #@16
    goto :goto_9
.end method

.method protected onStart()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@9
    invoke-interface {v0}, Lcom/google/android/gms/internal/cn;->onStart()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    #@c
    :cond_c
    :goto_c
    return-void

    #@d
    :catch_d
    move-exception v0

    #@e
    const-string v1, "Could not forward onStart to ad overlay:"

    #@10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    #@16
    goto :goto_c
.end method

.method protected onStop()V
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->kr:Lcom/google/android/gms/internal/cn;

    #@6
    invoke-interface {v0}, Lcom/google/android/gms/internal/cn;->onStop()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_d

    #@9
    :cond_9
    :goto_9
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    #@c
    return-void

    #@d
    :catch_d
    move-exception v0

    #@e
    const-string v1, "Could not forward onStop to ad overlay:"

    #@10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    #@16
    goto :goto_9
.end method

.method public setContentView(I)V
    .registers 2

    #@0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    #@3
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->S()V

    #@6
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    #@0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    #@3
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->S()V

    #@6
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    #@0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->S()V

    #@6
    return-void
.end method
