.class Landroid/support/v4/view/KeyEventCompatEclair;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    #@0
    check-cast p2, Landroid/view/KeyEvent$DispatcherState;

    #@2
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static isTracking(Landroid/view/KeyEvent;)Z
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->isTracking()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static startTracking(Landroid/view/KeyEvent;)V
    .registers 1

    #@0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->startTracking()V

    #@3
    return-void
.end method
