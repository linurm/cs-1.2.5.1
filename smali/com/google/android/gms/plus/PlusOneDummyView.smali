.class public Lcom/google/android/gms/plus/PlusOneDummyView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/PlusOneDummyView$a;,
        Lcom/google/android/gms/plus/PlusOneDummyView$b;,
        Lcom/google/android/gms/plus/PlusOneDummyView$c;,
        Lcom/google/android/gms/plus/PlusOneDummyView$d;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PlusOneDummyView"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8

    #@0
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@3
    new-instance v0, Landroid/widget/Button;

    #@5
    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    #@c
    invoke-direct {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->jT()Lcom/google/android/gms/plus/PlusOneDummyView$d;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v1, p2}, Lcom/google/android/gms/plus/PlusOneDummyView$d;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    #@17
    invoke-direct {p0, p2}, Lcom/google/android/gms/plus/PlusOneDummyView;->cY(I)Landroid/graphics/Point;

    #@1a
    move-result-object v1

    #@1b
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    #@1d
    iget v3, v1, Landroid/graphics/Point;->x:I

    #@1f
    iget v1, v1, Landroid/graphics/Point;->y:I

    #@21
    const/16 v4, 0x11

    #@23
    invoke-direct {v2, v3, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@26
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/plus/PlusOneDummyView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@29
    return-void
.end method

.method private cY(I)Landroid/graphics/Point;
    .registers 11

    #@0
    const/16 v0, 0x18

    #@2
    const/4 v4, 0x1

    #@3
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    #@5
    const/16 v1, 0x14

    #@7
    new-instance v2, Landroid/graphics/Point;

    #@9
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    #@c
    packed-switch p1, :pswitch_data_40

    #@f
    const/16 v1, 0x26

    #@11
    :goto_11
    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getResources()Landroid/content/res/Resources;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@18
    move-result-object v3

    #@19
    int-to-float v1, v1

    #@1a
    invoke-static {v4, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@1d
    move-result v1

    #@1e
    int-to-float v0, v0

    #@1f
    invoke-static {v4, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@22
    move-result v0

    #@23
    float-to-double v4, v1

    #@24
    add-double/2addr v4, v6

    #@25
    double-to-int v1, v4

    #@26
    iput v1, v2, Landroid/graphics/Point;->x:I

    #@28
    float-to-double v0, v0

    #@29
    add-double/2addr v0, v6

    #@2a
    double-to-int v0, v0

    #@2b
    iput v0, v2, Landroid/graphics/Point;->y:I

    #@2d
    return-object v2

    #@2e
    :pswitch_2e
    const/16 v0, 0x20

    #@30
    move v8, v1

    #@31
    move v1, v0

    #@32
    move v0, v8

    #@33
    goto :goto_11

    #@34
    :pswitch_34
    const/16 v1, 0xe

    #@36
    move v8, v1

    #@37
    move v1, v0

    #@38
    move v0, v8

    #@39
    goto :goto_11

    #@3a
    :pswitch_3a
    const/16 v0, 0x32

    #@3c
    move v8, v1

    #@3d
    move v1, v0

    #@3e
    move v0, v8

    #@3f
    goto :goto_11

    #@40
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_34
        :pswitch_2e
        :pswitch_3a
    .end packed-switch
.end method

.method private jT()Lcom/google/android/gms/plus/PlusOneDummyView$d;
    .registers 4

    #@0
    const/4 v2, 0x0

    #@1
    new-instance v0, Lcom/google/android/gms/plus/PlusOneDummyView$b;

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/plus/PlusOneDummyView$b;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V

    #@a
    invoke-interface {v0}, Lcom/google/android/gms/plus/PlusOneDummyView$d;->isValid()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_19

    #@10
    new-instance v0, Lcom/google/android/gms/plus/PlusOneDummyView$c;

    #@12
    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getContext()Landroid/content/Context;

    #@15
    move-result-object v1

    #@16
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/plus/PlusOneDummyView$c;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V

    #@19
    :cond_19
    invoke-interface {v0}, Lcom/google/android/gms/plus/PlusOneDummyView$d;->isValid()Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_28

    #@1f
    new-instance v0, Lcom/google/android/gms/plus/PlusOneDummyView$a;

    #@21
    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getContext()Landroid/content/Context;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/plus/PlusOneDummyView$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V

    #@28
    :cond_28
    return-object v0
.end method
