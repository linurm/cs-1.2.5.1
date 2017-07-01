.class public Lcom/apportable/ui/Window;
.super Lcom/apportable/ui/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/Window$WindowDialog;,
        Lcom/apportable/ui/Window$WindowLayout;
    }
.end annotation


# static fields
.field private static final DUMP_MOTION_EVENTS:Z = false

.field private static final TAG:Ljava/lang/String; = "Window"

.field private static sKeyWindowDialog:Landroid/app/Dialog;


# instance fields
.field private handledKeyEventDown:I

.field private mHeightMeasureSpec:I

.field private mKeepSystemVisibilityFlag:Z

.field private mSystemVisibility:I

.field private mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/apportable/ui/Window;->sKeyWindowDialog:Landroid/app/Dialog;

    #@3
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    #@4
    iput v0, p0, Lcom/apportable/ui/Window;->mSystemVisibility:I

    #@6
    iput-boolean v0, p0, Lcom/apportable/ui/Window;->mKeepSystemVisibilityFlag:Z

    #@8
    invoke-static {p1}, Lcom/android/ViewServer;->get(Landroid/content/Context;)Lcom/android/ViewServer;

    #@b
    move-result-object v0

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    check-cast p1, Landroid/app/Activity;

    #@13
    invoke-virtual {p1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string v2, "(UIKit)"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0, p0, v1}, Lcom/android/ViewServer;->addWindow(Landroid/view/View;Ljava/lang/String;)V

    #@2c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2e
    const/16 v1, 0x13

    #@30
    if-lt v0, v1, :cond_3a

    #@32
    new-instance v0, Lcom/apportable/ui/Window$1;

    #@34
    invoke-direct {v0, p0}, Lcom/apportable/ui/Window$1;-><init>(Lcom/apportable/ui/Window;)V

    #@37
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Window;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    #@3a
    :cond_3a
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/Window;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/apportable/ui/Window;->reapplySystemUiVisibility()V

    #@3
    return-void
.end method

.method static synthetic access$100(I)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/apportable/ui/Window;->isNativeKeyCode(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/Window;
    .registers 3

    #@0
    new-instance v0, Lcom/apportable/ui/Window;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Window;-><init>(Landroid/content/Context;I)V

    #@5
    return-object v0
.end method

.method private static dumpEvent(Landroid/view/MotionEvent;)V
    .registers 11

    #@0
    const/4 v9, 0x6

    #@1
    const/4 v8, 0x5

    #@2
    const/4 v0, 0x0

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    #@b
    move-result v2

    #@c
    and-int/lit16 v3, v2, 0xff

    #@e
    const-string v4, "event ACTION_"

    #@10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    const/16 v5, 0xa

    #@16
    new-array v5, v5, [Ljava/lang/String;

    #@18
    const-string v6, "DOWN"

    #@1a
    aput-object v6, v5, v0

    #@1c
    const/4 v6, 0x1

    #@1d
    const-string v7, "UP"

    #@1f
    aput-object v7, v5, v6

    #@21
    const/4 v6, 0x2

    #@22
    const-string v7, "MOVE"

    #@24
    aput-object v7, v5, v6

    #@26
    const/4 v6, 0x3

    #@27
    const-string v7, "CANCEL"

    #@29
    aput-object v7, v5, v6

    #@2b
    const/4 v6, 0x4

    #@2c
    const-string v7, "OUTSIDE"

    #@2e
    aput-object v7, v5, v6

    #@30
    const-string v6, "POINTER_DOWN"

    #@32
    aput-object v6, v5, v8

    #@34
    const-string v6, "POINTER_UP"

    #@36
    aput-object v6, v5, v9

    #@38
    const/4 v6, 0x7

    #@39
    const-string v7, "7?"

    #@3b
    aput-object v7, v5, v6

    #@3d
    const/16 v6, 0x8

    #@3f
    const-string v7, "8?"

    #@41
    aput-object v7, v5, v6

    #@43
    const/16 v6, 0x9

    #@45
    const-string v7, "9?"

    #@47
    aput-object v7, v5, v6

    #@49
    aget-object v5, v5, v3

    #@4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    if-eq v3, v8, :cond_52

    #@50
    if-ne v3, v9, :cond_62

    #@52
    :cond_52
    const-string v3, "(pid "

    #@54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v3

    #@58
    shr-int/lit8 v2, v2, 0x8

    #@5a
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d
    const-string v2, ")"

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    :cond_62
    const-string v2, "["

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    :goto_67
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    #@6a
    move-result v2

    #@6b
    if-ge v0, v2, :cond_af

    #@6d
    const-string v2, "#"

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    const-string v2, "(pid "

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@7f
    move-result v3

    #@80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    const-string v2, ")="

    #@85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@8c
    move-result v3

    #@8d
    float-to-int v3, v3

    #@8e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@91
    const-string v2, ","

    #@93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@9a
    move-result v3

    #@9b
    float-to-int v3, v3

    #@9c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9f
    add-int/lit8 v2, v0, 0x1

    #@a1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    #@a4
    move-result v3

    #@a5
    if-ge v2, v3, :cond_ac

    #@a7
    const-string v2, ";"

    #@a9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    :cond_ac
    add-int/lit8 v0, v0, 0x1

    #@ae
    goto :goto_67

    #@af
    :cond_af
    const-string v0, "]"

    #@b1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    const-string v0, "Window"

    #@b6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v1

    #@ba
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@bd
    return-void
.end method

.method public static getKeyWindowDialog()Landroid/app/Dialog;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/ui/Window;->sKeyWindowDialog:Landroid/app/Dialog;

    #@2
    return-object v0
.end method

.method public static handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    #@4
    move-result v1

    #@5
    and-int/lit16 v1, v1, 0xff

    #@7
    packed-switch v1, :pswitch_data_d4

    #@a
    :pswitch_a
    const-string v0, "MotionEvent"

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string v2, "Other:"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    #@1a
    move-result v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    :goto_26
    const/4 v0, 0x1

    #@27
    return v0

    #@28
    :pswitch_28
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    #@2b
    move-result v0

    #@2c
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@2f
    move-result v1

    #@30
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@33
    move-result v2

    #@34
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@37
    move-result v0

    #@38
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    #@3b
    move-result-wide v4

    #@3c
    invoke-static {v1, v2, v0, v4, v5}, Lcom/apportable/ui/Window;->nativeTouchesBegin(IFFJ)V

    #@3f
    goto :goto_26

    #@40
    :pswitch_40
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@43
    move-result v0

    #@44
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    #@47
    move-result v1

    #@48
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    #@4b
    move-result v2

    #@4c
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    #@4f
    move-result-wide v4

    #@50
    invoke-static {v0, v1, v2, v4, v5}, Lcom/apportable/ui/Window;->nativeTouchesBegin(IFFJ)V

    #@53
    goto :goto_26

    #@54
    :pswitch_54
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    #@57
    move-result v1

    #@58
    new-array v2, v1, [I

    #@5a
    new-array v3, v1, [F

    #@5c
    new-array v4, v1, [F

    #@5e
    :goto_5e
    if-ge v0, v1, :cond_75

    #@60
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@63
    move-result v5

    #@64
    aput v5, v2, v0

    #@66
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@69
    move-result v5

    #@6a
    aput v5, v3, v0

    #@6c
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@6f
    move-result v5

    #@70
    aput v5, v4, v0

    #@72
    add-int/lit8 v0, v0, 0x1

    #@74
    goto :goto_5e

    #@75
    :cond_75
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    #@78
    move-result-wide v0

    #@79
    invoke-static {v2, v3, v4, v0, v1}, Lcom/apportable/ui/Window;->nativeTouchesMove([I[F[FJ)V

    #@7c
    goto :goto_26

    #@7d
    :pswitch_7d
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    #@80
    move-result v0

    #@81
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@84
    move-result v1

    #@85
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@88
    move-result v2

    #@89
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@8c
    move-result v0

    #@8d
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    #@90
    move-result-wide v4

    #@91
    invoke-static {v1, v2, v0, v4, v5}, Lcom/apportable/ui/Window;->nativeTouchesEnd(IFFJ)V

    #@94
    goto :goto_26

    #@95
    :pswitch_95
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@98
    move-result v0

    #@99
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    #@9c
    move-result v1

    #@9d
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    #@a0
    move-result v2

    #@a1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    #@a4
    move-result-wide v4

    #@a5
    invoke-static {v0, v1, v2, v4, v5}, Lcom/apportable/ui/Window;->nativeTouchesEnd(IFFJ)V

    #@a8
    goto/16 :goto_26

    #@aa
    :pswitch_aa
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    #@ad
    move-result v1

    #@ae
    new-array v2, v1, [I

    #@b0
    new-array v3, v1, [F

    #@b2
    new-array v4, v1, [F

    #@b4
    :goto_b4
    if-ge v0, v1, :cond_cb

    #@b6
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    #@b9
    move-result v5

    #@ba
    aput v5, v2, v0

    #@bc
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    #@bf
    move-result v5

    #@c0
    aput v5, v3, v0

    #@c2
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    #@c5
    move-result v5

    #@c6
    aput v5, v4, v0

    #@c8
    add-int/lit8 v0, v0, 0x1

    #@ca
    goto :goto_b4

    #@cb
    :cond_cb
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    #@ce
    move-result-wide v0

    #@cf
    invoke-static {v2, v3, v4, v0, v1}, Lcom/apportable/ui/Window;->nativeTouchesCancel([I[F[FJ)V

    #@d2
    goto/16 :goto_26

    #@d4
    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_40
        :pswitch_95
        :pswitch_54
        :pswitch_aa
        :pswitch_a
        :pswitch_28
        :pswitch_7d
    .end packed-switch
.end method

.method private static isNativeKeyCode(I)Z
    .registers 2

    #@0
    const/4 v0, 0x3

    #@1
    if-eq p0, v0, :cond_5e

    #@3
    const/4 v0, 0x4

    #@4
    if-eq p0, v0, :cond_5e

    #@6
    const/16 v0, 0x52

    #@8
    if-eq p0, v0, :cond_5e

    #@a
    const/16 v0, 0x13

    #@c
    if-eq p0, v0, :cond_5e

    #@e
    const/16 v0, 0x14

    #@10
    if-eq p0, v0, :cond_5e

    #@12
    const/16 v0, 0x15

    #@14
    if-eq p0, v0, :cond_5e

    #@16
    const/16 v0, 0x16

    #@18
    if-eq p0, v0, :cond_5e

    #@1a
    const/16 v0, 0x17

    #@1c
    if-eq p0, v0, :cond_5e

    #@1e
    const/16 v0, 0x54

    #@20
    if-eq p0, v0, :cond_5e

    #@22
    const/16 v0, 0x60

    #@24
    if-eq p0, v0, :cond_5e

    #@26
    const/16 v0, 0x61

    #@28
    if-eq p0, v0, :cond_5e

    #@2a
    const/16 v0, 0x62

    #@2c
    if-eq p0, v0, :cond_5e

    #@2e
    const/16 v0, 0x63

    #@30
    if-eq p0, v0, :cond_5e

    #@32
    const/16 v0, 0x64

    #@34
    if-eq p0, v0, :cond_5e

    #@36
    const/16 v0, 0x65

    #@38
    if-eq p0, v0, :cond_5e

    #@3a
    const/16 v0, 0x66

    #@3c
    if-eq p0, v0, :cond_5e

    #@3e
    const/16 v0, 0x67

    #@40
    if-eq p0, v0, :cond_5e

    #@42
    const/16 v0, 0x68

    #@44
    if-eq p0, v0, :cond_5e

    #@46
    const/16 v0, 0x69

    #@48
    if-eq p0, v0, :cond_5e

    #@4a
    const/16 v0, 0x6a

    #@4c
    if-eq p0, v0, :cond_5e

    #@4e
    const/16 v0, 0x6b

    #@50
    if-eq p0, v0, :cond_5e

    #@52
    const/16 v0, 0x6c

    #@54
    if-eq p0, v0, :cond_5e

    #@56
    const/16 v0, 0x6d

    #@58
    if-eq p0, v0, :cond_5e

    #@5a
    const/16 v0, 0x6e

    #@5c
    if-ne p0, v0, :cond_60

    #@5e
    :cond_5e
    const/4 v0, 0x1

    #@5f
    :goto_5f
    return v0

    #@60
    :cond_60
    const/4 v0, 0x0

    #@61
    goto :goto_5f
.end method

.method private static native nativeKeyDown(IIJI)Z
.end method

.method private static native nativeKeyUp(IIJI)Z
.end method

.method private static native nativeOnWindowFocusChanged(Z)V
.end method

.method private static native nativeTouchesBegin(IFFJ)V
.end method

.method private static native nativeTouchesCancel([I[F[FJ)V
.end method

.method private static native nativeTouchesEnd(IFFJ)V
.end method

.method private static native nativeTouchesMove([I[F[FJ)V
.end method

.method private reapplySystemUiVisibility()V
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ui/Window;->mKeepSystemVisibilityFlag:Z

    #@2
    if-eqz v0, :cond_9

    #@4
    iget v0, p0, Lcom/apportable/ui/Window;->mSystemVisibility:I

    #@6
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Window;->setSystemUiVisibility(I)V

    #@9
    :cond_9
    return-void
.end method


# virtual methods
.method protected _setSystemUiVisibility(I)V
    .registers 4

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xb

    #@4
    if-lt v0, v1, :cond_10

    #@6
    iput p1, p0, Lcom/apportable/ui/Window;->mSystemVisibility:I

    #@8
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/apportable/ui/Window;->mKeepSystemVisibilityFlag:Z

    #@b
    iget v0, p0, Lcom/apportable/ui/Window;->mSystemVisibility:I

    #@d
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Window;->setSystemUiVisibility(I)V

    #@10
    :cond_10
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/apportable/ui/Window;->isLayoutRequested()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_28

    #@6
    iget v0, p0, Lcom/apportable/ui/Window;->mWidthMeasureSpec:I

    #@8
    if-eqz v0, :cond_28

    #@a
    iget v0, p0, Lcom/apportable/ui/Window;->mHeightMeasureSpec:I

    #@c
    if-eqz v0, :cond_28

    #@e
    iget v0, p0, Lcom/apportable/ui/Window;->mWidthMeasureSpec:I

    #@10
    iget v1, p0, Lcom/apportable/ui/Window;->mHeightMeasureSpec:I

    #@12
    invoke-virtual {p0, v0, v1}, Lcom/apportable/ui/Window;->measure(II)V

    #@15
    invoke-virtual {p0}, Lcom/apportable/ui/Window;->getLeft()I

    #@18
    move-result v0

    #@19
    invoke-virtual {p0}, Lcom/apportable/ui/Window;->getTop()I

    #@1c
    move-result v1

    #@1d
    invoke-virtual {p0}, Lcom/apportable/ui/Window;->getRight()I

    #@20
    move-result v2

    #@21
    invoke-virtual {p0}, Lcom/apportable/ui/Window;->getBottom()I

    #@24
    move-result v3

    #@25
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/apportable/ui/Window;->layout(IIII)V

    #@28
    :cond_28
    invoke-super {p0, p1}, Lcom/apportable/ui/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    #@2b
    move-result v0

    #@2c
    return v0
.end method

.method public makeKeyAndOrderFront()V
    .registers 7

    #@0
    const/4 v5, -0x1

    #@1
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@4
    move-result-object v1

    #@5
    new-instance v2, Lcom/apportable/ui/Window$WindowDialog;

    #@7
    invoke-direct {v2, p0, v1, p0}, Lcom/apportable/ui/Window$WindowDialog;-><init>(Lcom/apportable/ui/Window;Landroid/content/Context;Lcom/apportable/ui/Window;)V

    #@a
    new-instance v3, Lcom/apportable/ui/Window$WindowLayout;

    #@c
    invoke-direct {v3, p0, v1}, Lcom/apportable/ui/Window$WindowLayout;-><init>(Lcom/apportable/ui/Window;Landroid/content/Context;)V

    #@f
    if-eqz p0, :cond_20

    #@11
    invoke-virtual {p0}, Lcom/apportable/ui/Window;->getParent()Landroid/view/ViewParent;

    #@14
    move-result-object v0

    #@15
    if-eqz v0, :cond_20

    #@17
    invoke-virtual {p0}, Lcom/apportable/ui/Window;->getParent()Landroid/view/ViewParent;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/view/ViewGroup;

    #@1d
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@20
    :cond_20
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@22
    const/16 v4, 0x11

    #@24
    invoke-direct {v0, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@27
    invoke-virtual {v3, p0, v0}, Lcom/apportable/ui/Window$WindowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@2a
    invoke-virtual {v2, v3}, Lcom/apportable/ui/Window$WindowDialog;->setContentView(Landroid/view/View;)V

    #@2d
    invoke-virtual {v2}, Lcom/apportable/ui/Window$WindowDialog;->show()V

    #@30
    invoke-static {v1}, Lcom/android/ViewServer;->get(Landroid/content/Context;)Lcom/android/ViewServer;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0, p0}, Lcom/android/ViewServer;->setFocusedWindow(Landroid/view/View;)V

    #@37
    sput-object v2, Lcom/apportable/ui/Window;->sKeyWindowDialog:Landroid/app/Dialog;

    #@39
    invoke-virtual {v3}, Lcom/apportable/ui/Window$WindowLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@3c
    move-result-object v0

    #@3d
    new-instance v1, Lcom/apportable/ui/Window$2;

    #@3f
    invoke-direct {v1, p0, v3}, Lcom/apportable/ui/Window$2;-><init>(Lcom/apportable/ui/Window;Lcom/apportable/ui/Window$WindowLayout;)V

    #@42
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@45
    return-void
.end method

.method public native motionEvent(Landroid/view/MotionEvent;)V
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    #@0
    const/4 v1, 0x1

    #@1
    invoke-static {p1}, Lcom/apportable/ui/Window;->isNativeKeyCode(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_25

    #@7
    const/4 v0, 0x4

    #@8
    if-ne p1, v0, :cond_10

    #@a
    iget v0, p0, Lcom/apportable/ui/Window;->handledKeyEventDown:I

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    iput v0, p0, Lcom/apportable/ui/Window;->handledKeyEventDown:I

    #@10
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_23

    #@16
    move v0, v1

    #@17
    :goto_17
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    #@1a
    move-result-wide v2

    #@1b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@1e
    move-result v4

    #@1f
    invoke-static {p1, v0, v2, v3, v4}, Lcom/apportable/ui/Window;->nativeKeyDown(IIJI)Z

    #@22
    :goto_22
    return v1

    #@23
    :cond_23
    const/4 v0, 0x0

    #@24
    goto :goto_17

    #@25
    :cond_25
    invoke-super {p0, p1, p2}, Lcom/apportable/ui/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@28
    move-result v1

    #@29
    goto :goto_22
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8

    #@0
    const/4 v0, 0x1

    #@1
    invoke-static {p1}, Lcom/apportable/ui/Window;->isNativeKeyCode(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_2e

    #@7
    const/4 v1, 0x4

    #@8
    if-ne p1, v1, :cond_13

    #@a
    iget v1, p0, Lcom/apportable/ui/Window;->handledKeyEventDown:I

    #@c
    if-nez v1, :cond_13

    #@e
    invoke-super {p0, p1, p2}, Lcom/apportable/ui/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@11
    move-result v0

    #@12
    :goto_12
    return v0

    #@13
    :cond_13
    iget v1, p0, Lcom/apportable/ui/Window;->handledKeyEventDown:I

    #@15
    add-int/lit8 v1, v1, -0x1

    #@17
    iput v1, p0, Lcom/apportable/ui/Window;->handledKeyEventDown:I

    #@19
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_2c

    #@1f
    move v1, v0

    #@20
    :goto_20
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    #@23
    move-result-wide v2

    #@24
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    #@27
    move-result v4

    #@28
    invoke-static {p1, v1, v2, v3, v4}, Lcom/apportable/ui/Window;->nativeKeyUp(IIJI)Z

    #@2b
    goto :goto_12

    #@2c
    :cond_2c
    const/4 v1, 0x0

    #@2d
    goto :goto_20

    #@2e
    :cond_2e
    invoke-super {p0, p1, p2}, Lcom/apportable/ui/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    #@31
    move-result v0

    #@32
    goto :goto_12
.end method

.method public onMeasure(II)V
    .registers 3

    #@0
    invoke-super {p0, p1, p2}, Lcom/apportable/ui/View;->onMeasure(II)V

    #@3
    iput p1, p0, Lcom/apportable/ui/Window;->mWidthMeasureSpec:I

    #@5
    iput p2, p0, Lcom/apportable/ui/Window;->mHeightMeasureSpec:I

    #@7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    #@0
    invoke-static {p1}, Lcom/apportable/ui/Window;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    #@0
    invoke-super {p0, p1}, Lcom/apportable/ui/View;->onWindowFocusChanged(Z)V

    #@3
    invoke-static {p1}, Lcom/apportable/ui/Window;->nativeOnWindowFocusChanged(Z)V

    #@6
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0, p1}, Lcom/apportable/Lifecycle;->onActivityWindowFocusChanged(Lcom/apportable/activity/VerdeActivity;Z)V

    #@d
    if-eqz p1, :cond_12

    #@f
    invoke-direct {p0}, Lcom/apportable/ui/Window;->reapplySystemUiVisibility()V

    #@12
    :cond_12
    return-void
.end method
