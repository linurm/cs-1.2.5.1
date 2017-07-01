.class Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetIndicatorInfo"
.end annotation


# instance fields
.field public setHomeActionContentDescription:Ljava/lang/reflect/Method;

.field public setHomeAsUpIndicator:Ljava/lang/reflect/Method;

.field public upIndicatorView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 10

    #@0
    const v7, 0x102002c

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    :try_start_8
    const-class v0, Landroid/app/ActionBar;

    #@a
    const-string v1, "setHomeAsUpIndicator"

    #@c
    const/4 v2, 0x1

    #@d
    new-array v2, v2, [Ljava/lang/Class;

    #@f
    const/4 v3, 0x0

    #@10
    const-class v4, Landroid/graphics/drawable/Drawable;

    #@12
    aput-object v4, v2, v3

    #@14
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    #@1a
    const-class v0, Landroid/app/ActionBar;

    #@1c
    const-string v1, "setHomeActionContentDescription"

    #@1e
    const/4 v2, 0x1

    #@1f
    new-array v2, v2, [Ljava/lang/Class;

    #@21
    const/4 v3, 0x0

    #@22
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@24
    aput-object v4, v2, v3

    #@26
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@29
    move-result-object v0

    #@2a
    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;
    :try_end_2c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_2c} :catch_2d

    #@2c
    :cond_2c
    :goto_2c
    return-void

    #@2d
    :catch_2d
    move-exception v0

    #@2e
    invoke-virtual {p1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@31
    move-result-object v0

    #@32
    if-eqz v0, :cond_2c

    #@34
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Landroid/view/ViewGroup;

    #@3a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    #@3d
    move-result v1

    #@3e
    const/4 v2, 0x2

    #@3f
    if-ne v1, v2, :cond_2c

    #@41
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    #@4c
    move-result v2

    #@4d
    if-ne v2, v7, :cond_58

    #@4f
    :goto_4f
    instance-of v1, v0, Landroid/widget/ImageView;

    #@51
    if-eqz v1, :cond_2c

    #@53
    check-cast v0, Landroid/widget/ImageView;

    #@55
    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    #@57
    goto :goto_2c

    #@58
    :cond_58
    move-object v0, v1

    #@59
    goto :goto_4f
.end method
