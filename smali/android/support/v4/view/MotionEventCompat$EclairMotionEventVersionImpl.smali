.class Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EclairMotionEventVersionImpl"
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
.method public findPointerIndex(Landroid/view/MotionEvent;I)I
    .registers 4

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompatEclair;->findPointerIndex(Landroid/view/MotionEvent;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPointerCount(Landroid/view/MotionEvent;)I
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompatEclair;->getPointerCount(Landroid/view/MotionEvent;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPointerId(Landroid/view/MotionEvent;I)I
    .registers 4

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompatEclair;->getPointerId(Landroid/view/MotionEvent;I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getX(Landroid/view/MotionEvent;I)F
    .registers 4

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompatEclair;->getX(Landroid/view/MotionEvent;I)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getY(Landroid/view/MotionEvent;I)F
    .registers 4

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompatEclair;->getY(Landroid/view/MotionEvent;I)F

    #@3
    move-result v0

    #@4
    return v0
.end method
