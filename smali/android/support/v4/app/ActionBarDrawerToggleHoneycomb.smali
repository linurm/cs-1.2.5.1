.class Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarDrawerToggleHoneycomb"

.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const/4 v1, 0x0

    #@4
    const v2, 0x101030b

    #@7
    aput v2, v0, v1

    #@9
    sput-object v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb;->THEME_ATTRS:[I

    #@b
    return-void
.end method

.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .registers 3

    #@0
    sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb;->THEME_ATTRS:[I

    #@2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@e
    return-object v1
.end method

.method public static setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;
    .registers 9

    #@0
    if-nez p0, :cond_38

    #@2
    new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    #@4
    invoke-direct {v1, p1}, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    #@7
    :goto_7
    move-object v0, v1

    #@8
    check-cast v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    #@a
    iget-object v2, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    #@c
    if-eqz v2, :cond_2e

    #@e
    :try_start_e
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    #@11
    move-result-object v2

    #@12
    iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    #@14
    const/4 v3, 0x1

    #@15
    new-array v3, v3, [Ljava/lang/Object;

    #@17
    const/4 v4, 0x0

    #@18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v5

    #@1c
    aput-object v5, v3, v4

    #@1e
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@23
    const/16 v3, 0x13

    #@25
    if-gt v0, v3, :cond_2e

    #@27
    invoke-virtual {v2}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2e} :catch_2f

    #@2e
    :cond_2e
    :goto_2e
    return-object v1

    #@2f
    :catch_2f
    move-exception v0

    #@30
    const-string v2, "ActionBarDrawerToggleHoneycomb"

    #@32
    const-string v3, "Couldn\'t set content description via JB-MR2 API"

    #@34
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    goto :goto_2e

    #@38
    :cond_38
    move-object v1, p0

    #@39
    goto :goto_7
.end method

.method public static setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;
    .registers 10

    #@0
    if-nez p0, :cond_48

    #@2
    new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    #@4
    invoke-direct {v1, p1}, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    #@7
    :goto_7
    move-object v0, v1

    #@8
    check-cast v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    #@a
    iget-object v2, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    #@c
    if-eqz v2, :cond_36

    #@e
    :try_start_e
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    #@11
    move-result-object v2

    #@12
    iget-object v3, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    #@14
    const/4 v4, 0x1

    #@15
    new-array v4, v4, [Ljava/lang/Object;

    #@17
    const/4 v5, 0x0

    #@18
    aput-object p2, v4, v5

    #@1a
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    #@1f
    const/4 v3, 0x1

    #@20
    new-array v3, v3, [Ljava/lang/Object;

    #@22
    const/4 v4, 0x0

    #@23
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v5

    #@27
    aput-object v5, v3, v4

    #@29
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2c} :catch_2d

    #@2c
    :goto_2c
    return-object v1

    #@2d
    :catch_2d
    move-exception v0

    #@2e
    const-string v2, "ActionBarDrawerToggleHoneycomb"

    #@30
    const-string v3, "Couldn\'t set home-as-up indicator via JB-MR2 API"

    #@32
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@35
    goto :goto_2c

    #@36
    :cond_36
    iget-object v2, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    #@38
    if-eqz v2, :cond_40

    #@3a
    iget-object v0, v0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    #@3c
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@3f
    goto :goto_2c

    #@40
    :cond_40
    const-string v0, "ActionBarDrawerToggleHoneycomb"

    #@42
    const-string v2, "Couldn\'t set home-as-up indicator"

    #@44
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    goto :goto_2c

    #@48
    :cond_48
    move-object v1, p0

    #@49
    goto :goto_7
.end method
