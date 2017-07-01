.class public Lcom/apportable/app/SplashScreen;
.super Ljava/lang/Object;


# static fields
.field private static isLandscapeDevice:Z

.field private static listener:Lcom/apportable/ApportableOrientationEventListener;

.field private static orientations:I

.field private static sAlreadyShown:Z

.field private static sSplashLayout:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    sput-boolean v0, Lcom/apportable/app/SplashScreen;->sAlreadyShown:Z

    #@4
    sput-object v1, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    #@6
    sput v0, Lcom/apportable/app/SplashScreen;->orientations:I

    #@8
    sput-object v1, Lcom/apportable/app/SplashScreen;->listener:Lcom/apportable/ApportableOrientationEventListener;

    #@a
    sput-boolean v0, Lcom/apportable/app/SplashScreen;->isLandscapeDevice:Z

    #@c
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    #@0
    sget-boolean v0, Lcom/apportable/app/SplashScreen;->isLandscapeDevice:Z

    #@2
    return v0
.end method

.method static synthetic access$100()I
    .registers 1

    #@0
    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    #@2
    return v0
.end method

.method private static getAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2

    #@0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@3
    move-result-object v0

    #@4
    :try_start_4
    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getAssets()Landroid/content/res/AssetManager;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_d

    #@b
    move-result-object v0

    #@c
    :goto_c
    return-object v0

    #@d
    :catch_d
    move-exception v0

    #@e
    const/4 v0, 0x0

    #@f
    goto :goto_c
.end method

.method private static getSplashScreen()Ljava/io/InputStream;
    .registers 1

    #@0
    const-string v0, "Default-568h@2x.png"

    #@2
    invoke-static {v0}, Lcom/apportable/app/SplashScreen;->getAsset(Ljava/lang/String;)Ljava/io/InputStream;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_9

    #@8
    :cond_8
    :goto_8
    return-object v0

    #@9
    :cond_9
    const-string v0, "Default-568h@2x~iphone.png"

    #@b
    invoke-static {v0}, Lcom/apportable/app/SplashScreen;->getAsset(Ljava/lang/String;)Ljava/io/InputStream;

    #@e
    move-result-object v0

    #@f
    if-nez v0, :cond_8

    #@11
    const-string v0, "Default@2x.png"

    #@13
    invoke-static {v0}, Lcom/apportable/app/SplashScreen;->getAsset(Ljava/lang/String;)Ljava/io/InputStream;

    #@16
    move-result-object v0

    #@17
    if-nez v0, :cond_8

    #@19
    const-string v0, "Default@2x~iphone.png"

    #@1b
    invoke-static {v0}, Lcom/apportable/app/SplashScreen;->getAsset(Ljava/lang/String;)Ljava/io/InputStream;

    #@1e
    move-result-object v0

    #@1f
    if-nez v0, :cond_8

    #@21
    const-string v0, "Default.png"

    #@23
    invoke-static {v0}, Lcom/apportable/app/SplashScreen;->getAsset(Ljava/lang/String;)Ljava/io/InputStream;

    #@26
    move-result-object v0

    #@27
    if-nez v0, :cond_8

    #@29
    const-string v0, "Default~iphone.png"

    #@2b
    invoke-static {v0}, Lcom/apportable/app/SplashScreen;->getAsset(Ljava/lang/String;)Ljava/io/InputStream;

    #@2e
    move-result-object v0

    #@2f
    if-eqz v0, :cond_8

    #@31
    goto :goto_8
.end method

.method public static hide(Landroid/widget/FrameLayout;)V
    .registers 2

    #@0
    sget-boolean v0, Lcom/apportable/app/SplashScreen;->sAlreadyShown:Z

    #@2
    if-eqz v0, :cond_8

    #@4
    sget-object v0, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    #@6
    if-nez v0, :cond_9

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    sget-object v0, Lcom/apportable/app/SplashScreen;->listener:Lcom/apportable/ApportableOrientationEventListener;

    #@b
    if-eqz v0, :cond_12

    #@d
    sget-object v0, Lcom/apportable/app/SplashScreen;->listener:Lcom/apportable/ApportableOrientationEventListener;

    #@f
    invoke-virtual {v0}, Lcom/apportable/ApportableOrientationEventListener;->disable()V

    #@12
    :cond_12
    sget-object v0, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    #@14
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    #@17
    const/4 v0, 0x0

    #@18
    sput-object v0, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    #@1a
    goto :goto_8
.end method

.method public static isShown()Z
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public static show(Landroid/widget/FrameLayout;)V
    .registers 16

    #@0
    sget-boolean v0, Lcom/apportable/app/SplashScreen;->sAlreadyShown:Z

    #@2
    if-nez v0, :cond_b6

    #@4
    const/4 v0, 0x1

    #@5
    :try_start_5
    sput-boolean v0, Lcom/apportable/app/SplashScreen;->sAlreadyShown:Z

    #@7
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Lcom/apportable/app/VerdeApplication;->getAssets()Landroid/content/res/AssetManager;

    #@e
    move-result-object v0

    #@f
    const-string v1, "Info.plist"

    #@11
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    #@14
    move-result-object v0

    #@15
    invoke-static {v0}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/dd/plist/NSDictionary;

    #@1b
    const-string v1, "UISupportedInterfaceOrientations"

    #@1d
    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/dd/plist/NSArray;

    #@23
    if-nez v1, :cond_337

    #@25
    const-string v1, "UISupportedInterfaceOrientations~iphone"

    #@27
    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Lcom/dd/plist/NSArray;

    #@2d
    move-object v2, v1

    #@2e
    :goto_2e
    if-nez v2, :cond_39

    #@30
    const-string v1, "UISupportedInterfaceOrientations~ipad"

    #@32
    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Lcom/dd/plist/NSArray;

    #@38
    move-object v2, v1

    #@39
    :cond_39
    if-nez v2, :cond_66

    #@3b
    const-string v1, "UIInterfaceOrientation"

    #@3d
    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    #@40
    move-result-object v1

    #@41
    check-cast v1, Lcom/dd/plist/NSString;

    #@43
    if-nez v1, :cond_4d

    #@45
    const-string v1, "UIInterfaceOrientation~iphone"

    #@47
    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    #@4a
    move-result-object v1

    #@4b
    check-cast v1, Lcom/dd/plist/NSString;

    #@4d
    :cond_4d
    if-nez v1, :cond_58

    #@4f
    const-string v1, "UIInterfaceOrientation~ipad"

    #@51
    invoke-virtual {v0, v1}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    #@54
    move-result-object v0

    #@55
    check-cast v0, Lcom/dd/plist/NSString;

    #@57
    move-object v1, v0

    #@58
    :cond_58
    if-eqz v1, :cond_66

    #@5a
    new-instance v0, Lcom/dd/plist/NSArray;

    #@5c
    const/4 v2, 0x1

    #@5d
    new-array v2, v2, [Lcom/dd/plist/NSObject;

    #@5f
    const/4 v4, 0x0

    #@60
    aput-object v1, v2, v4

    #@62
    invoke-direct {v0, v2}, Lcom/dd/plist/NSArray;-><init>([Lcom/dd/plist/NSObject;)V

    #@65
    move-object v2, v0

    #@66
    :cond_66
    if-eqz v2, :cond_dd

    #@68
    const/4 v0, 0x0

    #@69
    move v1, v0

    #@6a
    :goto_6a
    invoke-virtual {v2}, Lcom/dd/plist/NSArray;->count()I

    #@6d
    move-result v0

    #@6e
    if-ge v1, v0, :cond_e1

    #@70
    invoke-virtual {v2, v1}, Lcom/dd/plist/NSArray;->objectAtIndex(I)Lcom/dd/plist/NSObject;

    #@73
    move-result-object v0

    #@74
    check-cast v0, Lcom/dd/plist/NSString;

    #@76
    invoke-virtual {v0}, Lcom/dd/plist/NSString;->toString()Ljava/lang/String;

    #@79
    move-result-object v4

    #@7a
    const-string v5, "UIInterfaceOrientationPortrait"

    #@7c
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v4

    #@80
    if-eqz v4, :cond_8c

    #@82
    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    #@84
    or-int/lit8 v0, v0, 0x1

    #@86
    sput v0, Lcom/apportable/app/SplashScreen;->orientations:I

    #@88
    :cond_88
    :goto_88
    add-int/lit8 v0, v1, 0x1

    #@8a
    move v1, v0

    #@8b
    goto :goto_6a

    #@8c
    :cond_8c
    invoke-virtual {v0}, Lcom/dd/plist/NSString;->toString()Ljava/lang/String;

    #@8f
    move-result-object v4

    #@90
    const-string v5, "UIInterfaceOrientationPortraitUpsideDown"

    #@92
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v4

    #@96
    if-eqz v4, :cond_b7

    #@98
    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    #@9a
    or-int/lit8 v0, v0, 0x2

    #@9c
    sput v0, Lcom/apportable/app/SplashScreen;->orientations:I
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9e} :catch_9f

    #@9e
    goto :goto_88

    #@9f
    :catch_9f
    move-exception v0

    #@a0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a3
    move-result-object v1

    #@a4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@ab
    move-result-object v2

    #@ac
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@af
    const-string v0, "VerdeDebug"

    #@b1
    const-string v1, "Exception caught while setting splash screen"

    #@b3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@b6
    :cond_b6
    :goto_b6
    return-void

    #@b7
    :cond_b7
    :try_start_b7
    invoke-virtual {v0}, Lcom/dd/plist/NSString;->toString()Ljava/lang/String;

    #@ba
    move-result-object v4

    #@bb
    const-string v5, "UIInterfaceOrientationLandscapeLeft"

    #@bd
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v4

    #@c1
    if-eqz v4, :cond_ca

    #@c3
    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    #@c5
    or-int/lit8 v0, v0, 0x4

    #@c7
    sput v0, Lcom/apportable/app/SplashScreen;->orientations:I

    #@c9
    goto :goto_88

    #@ca
    :cond_ca
    invoke-virtual {v0}, Lcom/dd/plist/NSString;->toString()Ljava/lang/String;

    #@cd
    move-result-object v0

    #@ce
    const-string v4, "UIInterfaceOrientationLandscapeRight"

    #@d0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d3
    move-result v0

    #@d4
    if-eqz v0, :cond_88

    #@d6
    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    #@d8
    or-int/lit8 v0, v0, 0x8

    #@da
    sput v0, Lcom/apportable/app/SplashScreen;->orientations:I

    #@dc
    goto :goto_88

    #@dd
    :cond_dd
    const/16 v0, 0xf

    #@df
    sput v0, Lcom/apportable/app/SplashScreen;->orientations:I

    #@e1
    :cond_e1
    invoke-virtual {v3}, Lcom/apportable/app/VerdeApplication;->getResources()Landroid/content/res/Resources;

    #@e4
    move-result-object v0

    #@e5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@e8
    move-result-object v0

    #@e9
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    #@eb
    const-string v0, "window"

    #@ed
    invoke-virtual {v3, v0}, Lcom/apportable/app/VerdeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@f0
    move-result-object v0

    #@f1
    check-cast v0, Landroid/view/WindowManager;

    #@f3
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@f6
    move-result-object v0

    #@f7
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    #@fa
    move-result v0

    #@fb
    const/4 v2, 0x2

    #@fc
    if-ne v1, v2, :cond_103

    #@fe
    if-eqz v0, :cond_10c

    #@100
    const/4 v2, 0x2

    #@101
    if-eq v0, v2, :cond_10c

    #@103
    :cond_103
    const/4 v2, 0x1

    #@104
    if-ne v1, v2, :cond_10f

    #@106
    const/4 v1, 0x1

    #@107
    if-eq v0, v1, :cond_10c

    #@109
    const/4 v1, 0x3

    #@10a
    if-ne v0, v1, :cond_10f

    #@10c
    :cond_10c
    const/4 v0, 0x1

    #@10d
    sput-boolean v0, Lcom/apportable/app/SplashScreen;->isLandscapeDevice:Z

    #@10f
    :cond_10f
    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    #@111
    const/4 v1, 0x1

    #@112
    if-eq v0, v1, :cond_130

    #@114
    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    #@116
    const/4 v1, 0x2

    #@117
    if-eq v0, v1, :cond_130

    #@119
    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    #@11b
    const/4 v1, 0x4

    #@11c
    if-eq v0, v1, :cond_130

    #@11e
    sget v0, Lcom/apportable/app/SplashScreen;->orientations:I

    #@120
    const/16 v1, 0x8

    #@122
    if-eq v0, v1, :cond_130

    #@124
    new-instance v0, Lcom/apportable/app/SplashScreen$1;

    #@126
    invoke-direct {v0, v3}, Lcom/apportable/app/SplashScreen$1;-><init>(Landroid/content/Context;)V

    #@129
    sput-object v0, Lcom/apportable/app/SplashScreen;->listener:Lcom/apportable/ApportableOrientationEventListener;

    #@12b
    sget-object v0, Lcom/apportable/app/SplashScreen;->listener:Lcom/apportable/ApportableOrientationEventListener;

    #@12d
    invoke-virtual {v0}, Lcom/apportable/ApportableOrientationEventListener;->enable()V

    #@130
    :cond_130
    new-instance v0, Landroid/widget/FrameLayout;

    #@132
    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@135
    sput-object v0, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    #@137
    invoke-static {}, Lcom/apportable/app/SplashScreen;->getSplashScreen()Ljava/io/InputStream;

    #@13a
    move-result-object v0

    #@13b
    if-eqz v0, :cond_32e

    #@13d
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    #@140
    move-result-object v0

    #@141
    if-eqz v0, :cond_221

    #@143
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_146} :catch_9f

    #@146
    move-result-object v4

    #@147
    const-string v1, "letterbox"

    #@149
    :try_start_149
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@14c
    move-result v5

    #@14d
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_150} :catch_9f

    #@150
    move-result v6

    #@151
    const-string v2, "landscape"

    #@153
    if-eqz v4, :cond_15b

    #@155
    :try_start_155
    const-string v2, "apportable.orientation"

    #@157
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@15a
    move-result-object v2

    #@15b
    :cond_15b
    if-nez v2, :cond_22f

    #@15d
    const/4 v2, 0x0

    #@15e
    :goto_15e
    invoke-virtual {v3}, Lcom/apportable/app/VerdeApplication;->getWindowManager()Landroid/view/WindowManager;

    #@161
    move-result-object v7

    #@162
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@165
    move-result-object v7

    #@166
    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    #@169
    move-result v7

    #@16a
    int-to-float v7, v7

    #@16b
    invoke-virtual {v3}, Lcom/apportable/app/VerdeApplication;->getWindowManager()Landroid/view/WindowManager;

    #@16e
    move-result-object v8

    #@16f
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@172
    move-result-object v8

    #@173
    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    #@176
    move-result v8

    #@177
    int-to-float v8, v8

    #@178
    new-instance v9, Landroid/widget/ImageView;

    #@17a
    invoke-direct {v9, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@17d
    const/16 v3, 0xfe

    #@17f
    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    #@182
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    #@184
    const/4 v10, -0x1

    #@185
    const/4 v11, -0x1

    #@186
    const/16 v12, 0x11

    #@188
    invoke-direct {v3, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    #@18b
    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@18e
    new-instance v3, Landroid/graphics/Paint;

    #@190
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    #@193
    const/4 v10, 0x1

    #@194
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    #@197
    const/4 v10, 0x0

    #@198
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setDither(Z)V

    #@19b
    if-eqz v4, :cond_1a3

    #@19d
    const-string v1, "apportable.splash_screen_type"

    #@19f
    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@1a2
    move-result-object v1

    #@1a3
    :cond_1a3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    #@1a6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    #@1a9
    if-eqz v1, :cond_1bb

    #@1ab
    const-string v4, ""

    #@1ad
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b0
    move-result v4

    #@1b1
    if-nez v4, :cond_1bb

    #@1b3
    const-string v4, "letterbox"

    #@1b5
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b8
    move-result v4

    #@1b9
    if-eqz v4, :cond_27f

    #@1bb
    :cond_1bb
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@1bd
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@1c0
    if-eqz v2, :cond_237

    #@1c2
    float-to-int v1, v8

    #@1c3
    float-to-int v2, v7

    #@1c4
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@1c6
    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@1c9
    move-result-object v1

    #@1ca
    new-instance v2, Landroid/graphics/Canvas;

    #@1cc
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@1cf
    int-to-float v4, v6

    #@1d0
    int-to-float v10, v5

    #@1d1
    div-float v10, v8, v10

    #@1d3
    mul-float/2addr v4, v10

    #@1d4
    sub-float v10, v7, v4

    #@1d6
    const/high16 v11, 0x40000000    # 2.0f

    #@1d8
    div-float/2addr v10, v11

    #@1d9
    const/4 v11, 0x0

    #@1da
    cmpl-float v11, v10, v11

    #@1dc
    if-lez v11, :cond_1f0

    #@1de
    new-instance v11, Landroid/graphics/Rect;

    #@1e0
    const/4 v12, 0x0

    #@1e1
    const/4 v13, 0x0

    #@1e2
    const/4 v14, 0x1

    #@1e3
    invoke-direct {v11, v12, v13, v5, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    #@1e6
    new-instance v12, Landroid/graphics/RectF;

    #@1e8
    const/4 v13, 0x0

    #@1e9
    const/4 v14, 0x0

    #@1ea
    invoke-direct {v12, v13, v14, v8, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@1ed
    invoke-virtual {v2, v0, v11, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@1f0
    :cond_1f0
    new-instance v11, Landroid/graphics/Rect;

    #@1f2
    const/4 v12, 0x0

    #@1f3
    const/4 v13, 0x0

    #@1f4
    invoke-direct {v11, v12, v13, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    #@1f7
    new-instance v12, Landroid/graphics/RectF;

    #@1f9
    const/4 v13, 0x0

    #@1fa
    add-float/2addr v4, v10

    #@1fb
    invoke-direct {v12, v13, v10, v8, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@1fe
    invoke-virtual {v2, v0, v11, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@201
    const/4 v4, 0x0

    #@202
    cmpl-float v4, v10, v4

    #@204
    if-lez v4, :cond_219

    #@206
    new-instance v4, Landroid/graphics/Rect;

    #@208
    const/4 v11, 0x0

    #@209
    add-int/lit8 v12, v6, -0x1

    #@20b
    invoke-direct {v4, v11, v12, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    #@20e
    new-instance v5, Landroid/graphics/RectF;

    #@210
    const/4 v6, 0x0

    #@211
    sub-float v10, v7, v10

    #@213
    invoke-direct {v5, v6, v10, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@216
    invoke-virtual {v2, v0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@219
    :cond_219
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@21c
    :cond_21c
    :goto_21c
    sget-object v0, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    #@21e
    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@221
    :cond_221
    :goto_221
    sget-object v0, Lcom/apportable/app/SplashScreen;->sSplashLayout:Landroid/widget/FrameLayout;

    #@223
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@225
    const/4 v2, -0x1

    #@226
    const/4 v3, -0x1

    #@227
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@22a
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@22d
    goto/16 :goto_b6

    #@22f
    :cond_22f
    const-string v7, "portrait"

    #@231
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@234
    move-result v2

    #@235
    goto/16 :goto_15e

    #@237
    :cond_237
    new-instance v1, Landroid/graphics/Matrix;

    #@239
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    #@23c
    const/high16 v2, -0x3d4c0000    # -90.0f

    #@23e
    const/4 v3, 0x0

    #@23f
    const/4 v4, 0x0

    #@240
    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    #@243
    const/4 v2, 0x0

    #@244
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@247
    move-result v3

    #@248
    int-to-float v3, v3

    #@249
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@24c
    int-to-float v2, v6

    #@24d
    div-float v2, v8, v2

    #@24f
    int-to-float v3, v5

    #@250
    div-float v3, v7, v3

    #@252
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    #@255
    move-result v2

    #@256
    const/4 v3, 0x0

    #@257
    const/4 v4, 0x0

    #@258
    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    #@25b
    int-to-float v3, v6

    #@25c
    mul-float/2addr v3, v2

    #@25d
    sub-float v3, v8, v3

    #@25f
    float-to-int v3, v3

    #@260
    div-int/lit8 v3, v3, 0x2

    #@262
    int-to-float v4, v5

    #@263
    mul-float/2addr v2, v4

    #@264
    sub-float v2, v7, v2

    #@266
    float-to-int v2, v2

    #@267
    div-int/lit8 v2, v2, 0x2

    #@269
    int-to-float v3, v3

    #@26a
    int-to-float v2, v2

    #@26b
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@26e
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    #@270
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@273
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    #@276
    const/high16 v1, -0x1000000

    #@278
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    #@27b
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@27e
    goto :goto_21c

    #@27f
    :cond_27f
    const-string v4, "aspect_fit"

    #@281
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@284
    move-result v4

    #@285
    if-eqz v4, :cond_2c4

    #@287
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@289
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@28c
    float-to-int v1, v8

    #@28d
    float-to-int v2, v7

    #@28e
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@290
    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@293
    move-result-object v1

    #@294
    new-instance v2, Landroid/graphics/Canvas;

    #@296
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@299
    const/high16 v4, -0x3d4c0000    # -90.0f

    #@29b
    const/high16 v10, 0x40000000    # 2.0f

    #@29d
    div-float v10, v7, v10

    #@29f
    const/high16 v11, 0x40000000    # 2.0f

    #@2a1
    div-float v11, v7, v11

    #@2a3
    invoke-virtual {v2, v4, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    #@2a6
    int-to-float v4, v6

    #@2a7
    mul-float/2addr v4, v7

    #@2a8
    int-to-float v10, v5

    #@2a9
    div-float/2addr v4, v10

    #@2aa
    sub-float/2addr v8, v4

    #@2ab
    const/high16 v10, 0x40000000    # 2.0f

    #@2ad
    div-float/2addr v8, v10

    #@2ae
    new-instance v10, Landroid/graphics/Rect;

    #@2b0
    const/4 v11, 0x0

    #@2b1
    const/4 v12, 0x0

    #@2b2
    invoke-direct {v10, v11, v12, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    #@2b5
    new-instance v5, Landroid/graphics/RectF;

    #@2b7
    const/4 v6, 0x0

    #@2b8
    add-float/2addr v4, v8

    #@2b9
    invoke-direct {v5, v6, v8, v7, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@2bc
    invoke-virtual {v2, v0, v10, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@2bf
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@2c2
    goto/16 :goto_21c

    #@2c4
    :cond_2c4
    const-string v3, "stretch"

    #@2c6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c9
    move-result v3

    #@2ca
    if-eqz v3, :cond_2f1

    #@2cc
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    #@2ce
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@2d1
    new-instance v5, Landroid/graphics/Matrix;

    #@2d3
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    #@2d6
    if-nez v2, :cond_2dd

    #@2d8
    const/high16 v1, -0x3d4c0000    # -90.0f

    #@2da
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    #@2dd
    :cond_2dd
    const/4 v1, 0x0

    #@2de
    const/4 v2, 0x0

    #@2df
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@2e2
    move-result v3

    #@2e3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@2e6
    move-result v4

    #@2e7
    const/4 v6, 0x1

    #@2e8
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    #@2eb
    move-result-object v0

    #@2ec
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@2ef
    goto/16 :goto_21c

    #@2f1
    :cond_2f1
    const-string v2, "aspect_fill"

    #@2f3
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f6
    move-result v2

    #@2f7
    if-eqz v2, :cond_31c

    #@2f9
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    #@2fb
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@2fe
    new-instance v5, Landroid/graphics/Matrix;

    #@300
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    #@303
    const/high16 v1, -0x3d4c0000    # -90.0f

    #@305
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    #@308
    const/4 v1, 0x0

    #@309
    const/4 v2, 0x0

    #@30a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@30d
    move-result v3

    #@30e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@311
    move-result v4

    #@312
    const/4 v6, 0x1

    #@313
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    #@316
    move-result-object v0

    #@317
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@31a
    goto/16 :goto_21c

    #@31c
    :cond_31c
    const-string v2, "native"

    #@31e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@321
    move-result v1

    #@322
    if-eqz v1, :cond_21c

    #@324
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    #@326
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    #@329
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@32c
    goto/16 :goto_21c

    #@32e
    :cond_32e
    const-string v0, "VerdeDebug"

    #@330
    const-string v1, "Default.png not found for splash screen"

    #@332
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_335
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_335} :catch_9f

    #@335
    goto/16 :goto_221

    #@337
    :cond_337
    move-object v2, v1

    #@338
    goto/16 :goto_2e
.end method
