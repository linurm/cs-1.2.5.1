.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLayoutMode(Landroid/view/ViewGroup;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public setLayoutMode(Landroid/view/ViewGroup;I)V
    .registers 3

    #@0
    return-void
.end method

.method public setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .registers 3

    #@0
    return-void
.end method
