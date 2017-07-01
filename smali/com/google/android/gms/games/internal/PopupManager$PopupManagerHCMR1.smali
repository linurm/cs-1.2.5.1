.class final Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;
.super Lcom/google/android/gms/games/internal/PopupManager;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/PopupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PopupManagerHCMR1"
.end annotation


# instance fields
.field private Nv:Z

.field private Pc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/games/internal/GamesClientImpl;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/games/internal/PopupManager;-><init>(Lcom/google/android/gms/games/internal/GamesClientImpl;ILcom/google/android/gms/games/internal/PopupManager$1;)V

    #@4
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Nv:Z

    #@7
    return-void
.end method

.method private h(Landroid/view/View;)V
    .registers 10

    #@0
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v0, -0x1

    #@3
    invoke-static {}, Lcom/google/android/gms/internal/ip;->gh()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_13

    #@9
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    #@c
    move-result-object v1

    #@d
    if-eqz v1, :cond_13

    #@f
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    #@12
    move-result v0

    #@13
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    #@16
    move-result-object v1

    #@17
    const/4 v2, 0x2

    #@18
    new-array v2, v2, [I

    #@1a
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    #@1d
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    #@20
    move-result v3

    #@21
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@24
    move-result v4

    #@25
    iget-object v5, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->OZ:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@27
    iput v0, v5, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Pb:I

    #@29
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->OZ:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@2b
    iput-object v1, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Pa:Landroid/os/IBinder;

    #@2d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->OZ:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@2f
    aget v1, v2, v6

    #@31
    iput v1, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->left:I

    #@33
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->OZ:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@35
    aget v1, v2, v7

    #@37
    iput v1, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->top:I

    #@39
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->OZ:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@3b
    aget v1, v2, v6

    #@3d
    add-int/2addr v1, v3

    #@3e
    iput v1, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->right:I

    #@40
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->OZ:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@42
    aget v1, v2, v7

    #@44
    add-int/2addr v1, v4

    #@45
    iput v1, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->bottom:I

    #@47
    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Nv:Z

    #@49
    if-eqz v0, :cond_50

    #@4b
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->hL()V

    #@4e
    iput-boolean v6, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Nv:Z

    #@50
    :cond_50
    return-void
.end method


# virtual methods
.method protected cl(I)V
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@3
    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/games/internal/PopupManager$1;)V

    #@6
    iput-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->OZ:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@8
    return-void
.end method

.method public g(Landroid/view/View;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->OY:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Pc:Ljava/lang/ref/WeakReference;

    #@7
    if-eqz v0, :cond_3a

    #@9
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Pc:Ljava/lang/ref/WeakReference;

    #@b
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/view/View;

    #@11
    iget-object v1, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->OY:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@13
    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    #@16
    move-result-object v1

    #@17
    if-nez v0, :cond_28

    #@19
    instance-of v2, v1, Landroid/app/Activity;

    #@1b
    if-eqz v2, :cond_28

    #@1d
    move-object v0, v1

    #@1e
    check-cast v0, Landroid/app/Activity;

    #@20
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@27
    move-result-object v0

    #@28
    :cond_28
    if-eqz v0, :cond_3a

    #@2a
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@2d
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@30
    move-result-object v0

    #@31
    invoke-static {}, Lcom/google/android/gms/internal/ip;->gg()Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_7e

    #@37
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@3a
    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    #@3b
    iput-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Pc:Ljava/lang/ref/WeakReference;

    #@3d
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->OY:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@3f
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->getContext()Landroid/content/Context;

    #@42
    move-result-object v1

    #@43
    if-nez p1, :cond_67

    #@45
    instance-of v0, v1, Landroid/app/Activity;

    #@47
    if-eqz v0, :cond_67

    #@49
    move-object v0, v1

    #@4a
    check-cast v0, Landroid/app/Activity;

    #@4c
    const v2, 0x1020002

    #@4f
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@52
    move-result-object v0

    #@53
    if-nez v0, :cond_5f

    #@55
    check-cast v1, Landroid/app/Activity;

    #@57
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@5e
    move-result-object v0

    #@5f
    :cond_5f
    const-string v1, "PopupManager"

    #@61
    const-string v2, "You have not specified a View to use as content view for popups. Falling back to the Activity content view which may not work properly in future versions of the API. Use setViewForPopups() to set your content view."

    #@63
    invoke-static {v1, v2}, Lcom/google/android/gms/games/internal/GamesLog;->j(Ljava/lang/String;Ljava/lang/String;)V

    #@66
    move-object p1, v0

    #@67
    :cond_67
    if-eqz p1, :cond_82

    #@69
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->h(Landroid/view/View;)V

    #@6c
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@6e
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@71
    iput-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Pc:Ljava/lang/ref/WeakReference;

    #@73
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@76
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@79
    move-result-object v0

    #@7a
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@7d
    :goto_7d
    return-void

    #@7e
    :cond_7e
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@81
    goto :goto_3a

    #@82
    :cond_82
    const-string v0, "PopupManager"

    #@84
    const-string v1, "No content view usable to display popups. Popups will not be displayed in response to this client\'s calls. Use setViewForPopups() to set your content view."

    #@86
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->k(Ljava/lang/String;Ljava/lang/String;)V

    #@89
    goto :goto_7d
.end method

.method public hL()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->OZ:Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/games/internal/PopupManager$PopupLocationInfo;->Pa:Landroid/os/IBinder;

    #@4
    if-eqz v0, :cond_a

    #@6
    invoke-super {p0}, Lcom/google/android/gms/games/internal/PopupManager;->hL()V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Pc:Ljava/lang/ref/WeakReference;

    #@c
    if-eqz v0, :cond_12

    #@e
    const/4 v0, 0x1

    #@f
    :goto_f
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Nv:Z

    #@11
    goto :goto_9

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_f
.end method

.method public onGlobalLayout()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Pc:Ljava/lang/ref/WeakReference;

    #@2
    if-nez v0, :cond_5

    #@4
    :cond_4
    :goto_4
    return-void

    #@5
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->Pc:Ljava/lang/ref/WeakReference;

    #@7
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/view/View;

    #@d
    if-eqz v0, :cond_4

    #@f
    invoke-direct {p0, v0}, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->h(Landroid/view/View;)V

    #@12
    goto :goto_4
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->h(Landroid/view/View;)V

    #@3
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/PopupManager$PopupManagerHCMR1;->OY:Lcom/google/android/gms/games/internal/GamesClientImpl;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->hw()V

    #@5
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    #@8
    return-void
.end method
