.class public Lcom/google/android/gms/games/internal/PopupManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;,
        Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;
    }
.end annotation


# instance fields
.field protected OY:Lcom/google/android/gms/games/internal/GamesClientImpl;

.field protected OZ:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/games/internal/PopupManager;->OY:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/games/internal/PopupManager;->cl(I)V

    #@8
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;ILcom/google/android/gms/games/internal/PopupManager$1;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/PopupManager;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V

    #@3
    return-void
.end method

.method public static a(Lcom/google/android/gms/games/internal/GamesClientImpl;I)Lcom/google/android/gms/games/internal/PopupManager;
    .registers 3

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/ip;->gd()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    new-instance v0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;

    #@8
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    new-instance v0, Lcom/google/android/gms/games/internal/PopupManager;

    #@e
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/PopupManager;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V

    #@11
    goto :goto_b
.end method


# virtual methods
.method protected cl(I)V
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@2
    new-instance v1, Landroid/os/Binder;

    #@4
    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/games/internal/PopupManager$1;)V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->OZ:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@d
    return-void
.end method

.method public g(Landroid/view/View;)V
    .registers 2

    #@0
    return-void
.end method

.method public hL()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->OY:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/PopupManager;->OZ:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@4
    iget-object v1, v1, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Pa:Landroid/os/IBinder;

    #@6
    iget-object v2, p0, Lcom/google/android/gms/games/internal/PopupManager;->OZ:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@8
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->hO()Landroid/os/Bundle;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V

    #@f
    return-void
.end method

.method public hM()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->OZ:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->hO()Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hN()Landroid/os/IBinder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->OZ:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Pa:Landroid/os/IBinder;

    #@4
    return-object v0
.end method

.method public setGravity(I)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager;->OZ:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@2
    iput p1, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->gravity:I

    #@4
    return-void
.end method
