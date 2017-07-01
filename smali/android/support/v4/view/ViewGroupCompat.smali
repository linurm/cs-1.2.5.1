.class public Landroid/support/v4/view/ViewGroupCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatHCImpl;,
        Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;,
        Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;,
        Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;,
        Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x12

    #@4
    if-lt v0, v1, :cond_e

    #@6
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;

    #@8
    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;-><init>()V

    #@b
    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    const/16 v1, 0xe

    #@10
    if-lt v0, v1, :cond_1a

    #@12
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;

    #@14
    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatIcsImpl;-><init>()V

    #@17
    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    #@19
    goto :goto_d

    #@1a
    :cond_1a
    const/16 v1, 0xb

    #@1c
    if-lt v0, v1, :cond_26

    #@1e
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatHCImpl;

    #@20
    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatHCImpl;-><init>()V

    #@23
    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    #@25
    goto :goto_d

    #@26
    :cond_26
    new-instance v0, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;

    #@28
    invoke-direct {v0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;-><init>()V

    #@2b
    sput-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    #@2d
    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getLayoutMode(Landroid/view/ViewGroup;)I
    .registers 2

    #@0
    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    #@2
    invoke-interface {v0, p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;->getLayoutMode(Landroid/view/ViewGroup;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    #@0
    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    #@2
    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static setLayoutMode(Landroid/view/ViewGroup;I)V
    .registers 3

    #@0
    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    #@2
    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;->setLayoutMode(Landroid/view/ViewGroup;I)V

    #@5
    return-void
.end method

.method public static setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .registers 3

    #@0
    sget-object v0, Landroid/support/v4/view/ViewGroupCompat;->IMPL:Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;

    #@2
    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    #@5
    return-void
.end method
