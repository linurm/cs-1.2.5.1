.class Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorCompatKitKatImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ScaleGestureDetectorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScaleGestureDetectorCompatKitKatImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ScaleGestureDetectorCompat$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/support/v4/view/ScaleGestureDetectorCompat$ScaleGestureDetectorCompatKitKatImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public isQuickScaleEnabled(Ljava/lang/Object;)Z
    .registers 3

    #@0
    invoke-static {p1}, Landroid/support/v4/view/ScaleGestureDetectorCompatKitKat;->isQuickScaleEnabled(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setQuickScaleEnabled(Ljava/lang/Object;Z)V
    .registers 3

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/ScaleGestureDetectorCompatKitKat;->setQuickScaleEnabled(Ljava/lang/Object;Z)V

    #@3
    return-void
.end method
