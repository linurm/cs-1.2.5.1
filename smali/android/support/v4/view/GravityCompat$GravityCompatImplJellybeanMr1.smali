.class Landroid/support/v4/view/GravityCompat$GravityCompatImplJellybeanMr1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/GravityCompat$GravityCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/GravityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GravityCompatImplJellybeanMr1"
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
.method public apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .registers 9

    #@0
    invoke-static/range {p1 .. p8}, Landroid/support/v4/view/GravityCompatJellybeanMr1;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V

    #@3
    return-void
.end method

.method public apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 7

    #@0
    invoke-static/range {p1 .. p6}, Landroid/support/v4/view/GravityCompatJellybeanMr1;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@3
    return-void
.end method

.method public applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 5

    #@0
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/GravityCompatJellybeanMr1;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@3
    return-void
.end method

.method public getAbsoluteGravity(II)I
    .registers 4

    #@0
    invoke-static {p1, p2}, Landroid/support/v4/view/GravityCompatJellybeanMr1;->getAbsoluteGravity(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method
