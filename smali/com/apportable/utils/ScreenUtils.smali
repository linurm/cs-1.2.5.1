.class public Lcom/apportable/utils/ScreenUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static convertPixelsToDp(F)F
    .registers 3

    #@0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@b
    move-result-object v0

    #@c
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    #@e
    int-to-float v0, v0

    #@f
    const/high16 v1, 0x43200000    # 160.0f

    #@11
    div-float/2addr v0, v1

    #@12
    div-float v0, p0, v0

    #@14
    return v0
.end method
