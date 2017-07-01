.class final Landroid/support/v4/widget/ViewDragHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ViewDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
.method public getInterpolation(F)F
    .registers 5

    #@0
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    sub-float v0, p1, v2

    #@4
    mul-float v1, v0, v0

    #@6
    mul-float/2addr v1, v0

    #@7
    mul-float/2addr v1, v0

    #@8
    mul-float/2addr v0, v1

    #@9
    add-float/2addr v0, v2

    #@a
    return v0
.end method
