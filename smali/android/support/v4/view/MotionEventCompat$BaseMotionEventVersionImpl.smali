.class Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseMotionEventVersionImpl"
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
    if-nez p2, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    const/4 v0, -0x1

    #@5
    goto :goto_3
.end method

.method public getPointerCount(Landroid/view/MotionEvent;)I
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public getPointerId(Landroid/view/MotionEvent;I)I
    .registers 5

    #@0
    if-nez p2, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    return v0

    #@4
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    const-string v1, "Pre-Eclair does not support multiple pointers"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0
.end method

.method public getX(Landroid/view/MotionEvent;I)F
    .registers 5

    #@0
    if-nez p2, :cond_7

    #@2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    #@5
    move-result v0

    #@6
    return v0

    #@7
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    const-string v1, "Pre-Eclair does not support multiple pointers"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0
.end method

.method public getY(Landroid/view/MotionEvent;I)F
    .registers 5

    #@0
    if-nez p2, :cond_7

    #@2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    #@5
    move-result v0

    #@6
    return v0

    #@7
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    const-string v1, "Pre-Eclair does not support multiple pointers"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0
.end method
