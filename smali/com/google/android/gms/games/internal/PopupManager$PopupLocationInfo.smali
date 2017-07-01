.class public final Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/PopupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PopupLocationInfo"
.end annotation


# instance fields
.field public Pa:Landroid/os/IBinder;

.field public Pb:I

.field public bottom:I

.field public gravity:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method private constructor <init>(ILandroid/os/IBinder;)V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, -0x1

    #@5
    iput v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Pb:I

    #@7
    iput v1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->left:I

    #@9
    iput v1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->top:I

    #@b
    iput v1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->right:I

    #@d
    iput v1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->bottom:I

    #@f
    iput p1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->gravity:I

    #@11
    iput-object p2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Pa:Landroid/os/IBinder;

    #@13
    return-void
.end method

.method synthetic constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/games/internal/PopupManager$1;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;-><init>(ILandroid/os/IBinder;)V

    #@3
    return-void
.end method


# virtual methods
.method public hO()Landroid/os/Bundle;
    .registers 4

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "popupLocationInfo.gravity"

    #@7
    iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->gravity:I

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@c
    const-string v1, "popupLocationInfo.displayId"

    #@e
    iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Pb:I

    #@10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@13
    const-string v1, "popupLocationInfo.left"

    #@15
    iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->left:I

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1a
    const-string v1, "popupLocationInfo.top"

    #@1c
    iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->top:I

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@21
    const-string v1, "popupLocationInfo.right"

    #@23
    iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->right:I

    #@25
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@28
    const-string v1, "popupLocationInfo.bottom"

    #@2a
    iget v2, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->bottom:I

    #@2c
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2f
    return-object v0
.end method
