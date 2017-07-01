.class public Lcom/apportable/activity/VerdeActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;
    }
.end annotation


# static fields
.field private static final KITKAT_API_LEVEL:I = 0x13

.field private static final REQUEST_EMAIL_SEND:I = 0x22b8

.field private static TAG:Ljava/lang/String;

.field private static mOnCreateRestartAttempted:Z

.field private static theVerdeActivity:Lcom/apportable/activity/VerdeActivity;

.field static ns:Lzj/zfenlly/gua/NotifySound;

.field private static vibrator:Landroid/os/Vibrator;

# instance fields
.field private mContentHeight:I

.field private mContentWidth:I

.field private mCurrentSplashPath:Ljava/lang/String;

.field private mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

.field private mPaused:Z

.field private mRequestedOrientation:I

.field private mScalingFactor:F

.field private rootOfAllEvil:Landroid/widget/FrameLayout;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "VerdeActivity"

    #@2
    sput-object v0, Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;



    #@4
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@4
    iput-boolean v0, p0, Lcom/apportable/activity/VerdeActivity;->mPaused:Z

    #@6
    iput v0, p0, Lcom/apportable/activity/VerdeActivity;->mContentWidth:I

    #@8
    iput v0, p0, Lcom/apportable/activity/VerdeActivity;->mContentHeight:I

    #@a
    sput-object p0, Lcom/apportable/activity/VerdeActivity;->theVerdeActivity:Lcom/apportable/activity/VerdeActivity;


    new-instance v0, Lzj/zfenlly/gua/NotifySound;

    #@7
    invoke-direct {v0}, Lzj/zfenlly/gua/NotifySound;-><init>()V

    #@a
    #iput-object v0, p0, Lcom/apportable/activity/VerdeActivity;->ns:Lzj/zfenlly/gua/NotifySound;

	new-instance v0, Lzj/zfenlly/gua/NotifySound;

    invoke-direct {v0}, Lzj/zfenlly/gua/NotifySound;-><init>()V

    sput-object v0, Lcom/apportable/activity/VerdeActivity;->ns:Lzj/zfenlly/gua/NotifySound;
    #@c
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/activity/VerdeActivity;)Lcom/apportable/activity/BackgroundLibraryLoader;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/activity/VerdeActivity;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/apportable/activity/VerdeActivity;->nativeRootGeometryChanged()V

    #@3
    return-void
.end method

.method static synthetic access$1000()V
    .registers 0

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnPause()V

    #@3
    return-void
.end method

.method static synthetic access$1100()V
    .registers 0

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnStop()V

    #@3
    return-void
.end method

.method static synthetic access$1200()V
    .registers 0

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnRestart()V

    #@3
    return-void
.end method

.method static synthetic access$1300()V
    .registers 0

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnDestroy()V

    #@3
    return-void
.end method

.method static synthetic access$1400(Landroid/content/res/Configuration;)V
    .registers 1

    #@0
    invoke-static {p0}, Lcom/apportable/activity/VerdeActivity;->nativeOnConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    return-void
.end method

.method static synthetic access$1502(Lcom/apportable/activity/VerdeActivity;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/activity/VerdeActivity;->mContentWidth:I

    #@2
    return p1
.end method

.method static synthetic access$1602(Lcom/apportable/activity/VerdeActivity;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/apportable/activity/VerdeActivity;->mContentHeight:I

    #@2
    return p1
.end method

.method static synthetic access$200(Lcom/apportable/activity/VerdeActivity;)Landroid/widget/FrameLayout;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;

    #@2
    return-object v0
.end method

.method static synthetic access$300()V
    .registers 0

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnCreate()V

    #@3
    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1

    #@0
    invoke-static {p0}, Lcom/apportable/activity/VerdeActivity;->nativeHandleUri(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic access$700(Lcom/apportable/activity/VerdeActivity;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/activity/VerdeActivity;->mPaused:Z

    #@2
    return v0
.end method

.method static synthetic access$702(Lcom/apportable/activity/VerdeActivity;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/apportable/activity/VerdeActivity;->mPaused:Z

    #@2
    return p1
.end method

.method static synthetic access$800()V
    .registers 0

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnStart()V

    #@3
    return-void
.end method

.method static synthetic access$900()V
    .registers 0

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnResume()V

    #@3
    return-void
.end method

.method private dispatchLowMemoryWarning()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@2
    invoke-virtual {v0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->nativeOnLowMemory()V

    #@b
    :cond_b
    return-void
.end method

.method public static getActivity()Lcom/apportable/activity/VerdeActivity;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/activity/VerdeActivity;->theVerdeActivity:Lcom/apportable/activity/VerdeActivity;

    #@2
    return-object v0
.end method

.method private static native nativeHandleUri(Ljava/lang/String;)V
.end method

.method private static native nativeOnActivityResult(IILandroid/content/Intent;)V
.end method

.method private static native nativeOnConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method private static native nativeOnCreate()V
.end method

.method private static native nativeOnDestroy()V
.end method

.method private static native nativeOnLowMemory()V
.end method

.method private static native nativeOnPause()V
.end method

.method private static native nativeOnRestart()V
.end method

.method private static native nativeOnResume()V
.end method

.method private static native nativeOnSoftKeyboardChanged(II)V
.end method

.method private static native nativeOnStart()V
.end method

.method private static native nativeOnStop()V
.end method

.method private native nativeRootGeometryChanged()V
.end method

.method private static native nativeSetEnv(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private prefsUuid()Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Lcom/apportable/activity/VerdeActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    #@4
    move-result-object v0

    #@5
    const-string v1, "_uuid_"

    #@7
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_26

    #@d
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@10
    move-result-object v1

    #@11
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    const-string v2, "_uuid_"

    #@1f
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@22
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@25
    :goto_25
    return-object v0

    #@26
    :cond_26
    const-string v1, "_uuid_"

    #@28
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    goto :goto_25
.end method

.method public static terminateProcess()V
    .registers 1

    #@0
    invoke-static {}, Landroid/os/Process;->myPid()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    #@7
    return-void
.end method


# virtual methods
.method public _getRequestedOrientation()I
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getRequestedOrientation()I

    #@3
    move-result v0

    #@4
    sparse-switch v0, :sswitch_data_12

    #@7
    const/4 v0, 0x0

    #@8
    :goto_8
    return v0

    #@9
    :sswitch_9
    const/4 v0, 0x1

    #@a
    goto :goto_8

    #@b
    :sswitch_b
    const/4 v0, 0x2

    #@c
    goto :goto_8

    #@d
    :sswitch_d
    const/4 v0, 0x3

    #@e
    goto :goto_8

    #@f
    :sswitch_f
    const/4 v0, 0x4

    #@10
    goto :goto_8

    #@11
    nop

    #@12
    :sswitch_data_12
    .sparse-switch
        0x0 -> :sswitch_d
        0x1 -> :sswitch_9
        0x8 -> :sswitch_f
        0x9 -> :sswitch_b
    .end sparse-switch
.end method

.method public _setRequestedOrientation(I)V
    .registers 6

    #@0
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/16 v1, 0x8

    #@4
    packed-switch p1, :pswitch_data_2a

    #@7
    :goto_7
    iget v0, p0, Lcom/apportable/activity/VerdeActivity;->mRequestedOrientation:I

    #@9
    invoke-virtual {p0, v0}, Lcom/apportable/activity/VerdeActivity;->setRequestedOrientation(I)V

    #@c
    return-void

    #@d
    :pswitch_d
    iput v3, p0, Lcom/apportable/activity/VerdeActivity;->mRequestedOrientation:I

    #@f
    goto :goto_7

    #@10
    :pswitch_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@12
    if-le v0, v1, :cond_19

    #@14
    const/16 v0, 0x9

    #@16
    iput v0, p0, Lcom/apportable/activity/VerdeActivity;->mRequestedOrientation:I

    #@18
    goto :goto_7

    #@19
    :cond_19
    iput v3, p0, Lcom/apportable/activity/VerdeActivity;->mRequestedOrientation:I

    #@1b
    goto :goto_7

    #@1c
    :pswitch_1c
    iput v2, p0, Lcom/apportable/activity/VerdeActivity;->mRequestedOrientation:I

    #@1e
    goto :goto_7

    #@1f
    :pswitch_1f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@21
    if-le v0, v1, :cond_26

    #@23
    iput v1, p0, Lcom/apportable/activity/VerdeActivity;->mRequestedOrientation:I

    #@25
    goto :goto_7

    #@26
    :cond_26
    iput v2, p0, Lcom/apportable/activity/VerdeActivity;->mRequestedOrientation:I

    #@28
    goto :goto_7

    #@29
    nop

    #@2a
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    #@0
    new-instance v0, Lcom/apportable/activity/VerdeActivity$5;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/activity/VerdeActivity$5;-><init>(Lcom/apportable/activity/VerdeActivity;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnThread(Ljava/lang/Runnable;I)V

    #@9
    return-void
.end method

.method public canSendEmail()Z
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v0, Landroid/content/Intent;

    #@3
    const-string v2, "android.intent.action.SEND"

    #@5
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    const-string v2, "message/rfc822"

    #@a
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@d
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@14
    move-result-object v2

    #@15
    sget-object v3, Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;

    #@17
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string v4, "canSendEmail:"

    #@1e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_3d

    #@28
    const-string v0, "yes"

    #@2a
    :goto_2a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_40

    #@3b
    const/4 v0, 0x1

    #@3c
    :goto_3c
    return v0

    #@3d
    :cond_3d
    const-string v0, "no"

    #@3f
    goto :goto_2a

    #@40
    :cond_40
    move v0, v1

    #@41
    goto :goto_3c
.end method

.method public createSharedContext(ILjavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 4

    #@0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1, p2}, Lcom/apportable/gl/GLSurfaceView;->createSharedContext(ILjavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGLContext;)Z
    .registers 3

    #@0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Lcom/apportable/gl/GLSurfaceView;->destroyContext(Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public gc()V
    .registers 1

    #@0
    return-void
.end method

.method public getAttributionId()Ljava/lang/String;
    .registers 7

    #@0
    const/4 v3, 0x0

    #@1
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v0

    #@5
    const-string v1, "content://com.facebook.katana.provider.AttributionIdProvider"

    #@7
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x1

    #@c
    new-array v2, v2, [Ljava/lang/String;

    #@e
    const/4 v4, 0x0

    #@f
    const-string v5, "aid"

    #@11
    aput-object v5, v2, v4

    #@13
    move-object v4, v3

    #@14
    move-object v5, v3

    #@15
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@18
    move-result-object v0

    #@19
    if-eqz v0, :cond_21

    #@1b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_22

    #@21
    :cond_21
    :goto_21
    return-object v3

    #@22
    :cond_22
    const-string v1, "aid"

    #@24
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@27
    move-result v1

    #@28
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@2f
    goto :goto_21
.end method

.method public getContentHeight()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/activity/VerdeActivity;->mContentHeight:I

    #@2
    if-lez v0, :cond_7

    #@4
    iget v0, p0, Lcom/apportable/activity/VerdeActivity;->mContentHeight:I

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getScreenHeight()I

    #@a
    move-result v0

    #@b
    goto :goto_6
.end method

.method public getContentWidth()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/activity/VerdeActivity;->mContentWidth:I

    #@2
    if-lez v0, :cond_7

    #@4
    iget v0, p0, Lcom/apportable/activity/VerdeActivity;->mContentWidth:I

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getScreenWidth()I

    #@a
    move-result v0

    #@b
    goto :goto_6
.end method

.method public getPrimaryContext()Ljavax/microedition/khronos/egl/EGLContext;
    .registers 2

    #@0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/apportable/gl/GLSurfaceView;->getPrimaryContext()Ljavax/microedition/khronos/egl/EGLContext;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getScreenHeight()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getScreenWidth()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;

    #@2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getSplashScreenHeight()I
    .registers 2

    #@0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getWindowManager()Landroid/view/WindowManager;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    #@f
    move-result v0

    #@10
    int-to-float v0, v0

    #@11
    float-to-int v0, v0

    #@12
    return v0
.end method

.method public getSplashScreenWidth()I
    .registers 2

    #@0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getWindowManager()Landroid/view/WindowManager;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    #@f
    move-result v0

    #@10
    int-to-float v0, v0

    #@11
    float-to-int v0, v0

    #@12
    return v0
.end method

.method public hasActivityForAction(Ljava/lang/String;)Z
    .registers 5

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v1

    #@9
    const/high16 v2, 0x10000

    #@b
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@12
    move-result v0

    #@13
    if-lez v0, :cond_17

    #@15
    const/4 v0, 0x1

    #@16
    :goto_16
    return v0

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    goto :goto_16
.end method

.method public hasSystemFeature(Ljava/lang/String;)I
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method

.method public hasWindowFocus()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/activity/VerdeActivity;->mPaused:Z

    #@2
    if-nez v0, :cond_6

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

.method public makeCurrentContext(Ljavax/microedition/khronos/egl/EGLContext;)Z
    .registers 3

    #@0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Lcom/apportable/gl/GLSurfaceView;->makeCurrentContext(Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@2
    invoke-virtual {v0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_b

    #@8
    invoke-static {p1, p2, p3}, Lcom/apportable/activity/VerdeActivity;->nativeOnActivityResult(IILandroid/content/Intent;)V

    #@b
    :cond_b
    :try_start_b
    const-string v0, "com.apportable.iap.ApportableIAP"

    #@d
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@10
    move-result-object v0

    #@11
    if-eqz v0, :cond_43

    #@13
    const-string v1, "handleActivityResult"

    #@15
    const/4 v2, 0x3

    #@16
    new-array v2, v2, [Ljava/lang/Class;

    #@18
    const/4 v3, 0x0

    #@19
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@1b
    aput-object v4, v2, v3

    #@1d
    const/4 v3, 0x1

    #@1e
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@20
    aput-object v4, v2, v3

    #@22
    const/4 v3, 0x2

    #@23
    const-class v4, Landroid/content/Intent;

    #@25
    aput-object v4, v2, v3

    #@27
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@2a
    move-result-object v0

    #@2b
    const/4 v1, 0x0

    #@2c
    const/4 v2, 0x3

    #@2d
    new-array v2, v2, [Ljava/lang/Object;

    #@2f
    const/4 v3, 0x0

    #@30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v4

    #@34
    aput-object v4, v2, v3

    #@36
    const/4 v3, 0x1

    #@37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v4

    #@3b
    aput-object v4, v2, v3

    #@3d
    const/4 v3, 0x2

    #@3e
    aput-object p3, v2, v3

    #@40
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_43} :catch_44

    #@43
    :cond_43
    :goto_43
    return-void

    #@44
    :catch_44
    move-exception v0

    #@45
    sget-object v1, Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;

    #@47
    const-string v2, "onActivityResult raised an exception"

    #@49
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    goto :goto_43
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    #@3
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@5
    invoke-virtual {v0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_14

    #@b
    new-instance v0, Lcom/apportable/activity/VerdeActivity$12;

    #@d
    invoke-direct {v0, p0, p1}, Lcom/apportable/activity/VerdeActivity$12;-><init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/res/Configuration;)V

    #@10
    const/4 v1, 0x1

    #@11
    invoke-virtual {p0, v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnThread(Ljava/lang/Runnable;I)V

    #@14
    :cond_14
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    #@0
    const/16 v2, 0x400

    #@2
    const/4 v1, 0x1

    #@3
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
    
    invoke-direct {p0}, Lcom/apportable/activity/VerdeActivity;->startFloatWin()V

	invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->vibrateInit()V
    #@a
    .line 104
	sget-object v0, Lcom/apportable/activity/VerdeActivity;->ns:Lzj/zfenlly/gua/NotifySound;

    invoke-static {p0}, Lzj/zfenlly/gua/NotifySound;->init(Landroid/content/Context;)Lzj/zfenlly/gua/NotifySound;
	

    #@6
    invoke-static {p0}, Lcom/apportable/media/BK2AndroidAudioManager;->getInstance(Landroid/content/Context;)Lcom/apportable/media/BK2AndroidAudioManager;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Lcom/apportable/media/BK2AndroidAudioManager;->onCreate()V

    #@d
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getWindow()Landroid/view/Window;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    #@14
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getWindow()Landroid/view/Window;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    #@1b
    new-instance v0, Lcom/apportable/activity/BackgroundLibraryLoader;

    #@1d
    invoke-direct {v0}, Lcom/apportable/activity/BackgroundLibraryLoader;-><init>()V

    #@20
    iput-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@22
    new-instance v0, Lcom/apportable/activity/VerdeActivity$1;

    #@24
    invoke-direct {v0, p0, p0}, Lcom/apportable/activity/VerdeActivity$1;-><init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/Context;)V

    #@27
    iput-object v0, p0, Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;

    #@29
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;

    #@2b
    invoke-static {v0}, Lcom/apportable/app/SplashScreen;->show(Landroid/widget/FrameLayout;)V

    #@2e
    invoke-static {p0}, Lcom/android/ViewServer;->get(Landroid/content/Context;)Lcom/android/ViewServer;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0, p0}, Lcom/android/ViewServer;->addWindow(Landroid/app/Activity;)V

    #@35
    sget-boolean v0, Lcom/apportable/activity/VerdeActivity;->mOnCreateRestartAttempted:Z

    #@37
    if-nez v0, :cond_56

    #@39
    invoke-static {}, Lcom/apportable/MainThread;->isStarted()Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_56

    #@3f
    sput-boolean v1, Lcom/apportable/activity/VerdeActivity;->mOnCreateRestartAttempted:Z

    #@41
    sget-object v0, Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;

    #@43
    const-string v1, "MainThread is already running! Possibly a library failed to load? Attempting to restart..."

    #@45
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    new-instance v0, Landroid/os/Handler;

    #@4a
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@4d
    new-instance v1, Lcom/apportable/activity/VerdeActivity$2;

    #@4f
    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$2;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    #@52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@55
    :goto_55
    return-void

    #@56
    :cond_56
    invoke-static {}, Lcom/apportable/MainThread;->start()V

    #@59
    new-instance v0, Lcom/apportable/activity/ExpansionFileDownloader;

    #@5b
    invoke-direct {v0}, Lcom/apportable/activity/ExpansionFileDownloader;-><init>()V

    #@5e
    new-instance v1, Lcom/apportable/activity/VerdeActivity$3;

    #@60
    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$3;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    #@63
    invoke-virtual {v0, p0, v1}, Lcom/apportable/activity/ExpansionFileDownloader;->load(Landroid/app/Activity;Lcom/apportable/activity/ExpansionFileDownloader$Callback;)V

    #@66
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@68
    new-instance v1, Lcom/apportable/activity/VerdeActivity$4;

    #@6a
    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$4;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    #@6d
    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onCreate(Ljava/lang/Runnable;)V

    #@70
    goto :goto_55
.end method

.method protected onDestroy()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    #@3
    invoke-static {p0}, Lcom/android/ViewServer;->get(Landroid/content/Context;)Lcom/android/ViewServer;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0, p0}, Lcom/android/ViewServer;->removeWindow(Landroid/app/Activity;)V

    #@a
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@c
    new-instance v1, Lcom/apportable/activity/VerdeActivity$11;

    #@e
    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$11;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    #@11
    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onDestroy(Ljava/lang/Runnable;)V

	sget-object v0, Lcom/apportable/activity/VerdeActivity;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    #@14
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xe

    #@4
    if-ge v0, v1, :cond_9

    #@6
    invoke-direct {p0}, Lcom/apportable/activity/VerdeActivity;->dispatchLowMemoryWarning()V

    #@9
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    #@c
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@2
    new-instance v1, Lcom/apportable/activity/VerdeActivity$13;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/apportable/activity/VerdeActivity$13;-><init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/Intent;)V

    #@7
    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onNewIntent(Ljava/lang/Runnable;)V

    #@a
    return-void
.end method

.method protected onPause()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    #@3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v1, 0x13

    #@7
    if-lt v0, v1, :cond_10

    #@9
    invoke-static {}, Lcom/apportable/MainThread;->getThread()Ljava/lang/Thread;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@10
    :cond_10
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@12
    invoke-virtual {v0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_22

    #@18
    invoke-static {}, Lcom/apportable/app/SplashScreen;->isShown()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_22

    #@1e
    const/4 v0, 0x0

    #@1f
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    #@22
    :cond_22
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@24
    new-instance v1, Lcom/apportable/activity/VerdeActivity$8;

    #@26
    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$8;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    #@29
    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onPause(Ljava/lang/Runnable;)V

    #@2c
    return-void
.end method

.method protected onRestart()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    #@3
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@5
    new-instance v1, Lcom/apportable/activity/VerdeActivity$10;

    #@7
    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$10;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    #@a
    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onRestart(Ljava/lang/Runnable;)V

    #@d
    return-void
.end method

.method protected onResume()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    #@3
    invoke-static {p0}, Lcom/apportable/media/BK2AndroidAudioManager;->getInstance(Landroid/content/Context;)Lcom/apportable/media/BK2AndroidAudioManager;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lcom/apportable/media/BK2AndroidAudioManager;->onResume()V

    #@a
    invoke-static {p0}, Lcom/android/ViewServer;->get(Landroid/content/Context;)Lcom/android/ViewServer;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p0}, Lcom/android/ViewServer;->setFocusedWindow(Landroid/app/Activity;)V

    #@11
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@13
    new-instance v1, Lcom/apportable/activity/VerdeActivity$7;

    #@15
    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$7;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    #@18
    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onResume(Ljava/lang/Runnable;)V

    #@1b
    return-void
.end method

.method public onSoftKeyboardChanged(II)V
    .registers 6

    #@0
    const/16 v2, 0x400

    #@2
    if-nez p2, :cond_20

    #@4
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@7
    move-result-object v0

    #@8
    const-string v1, "apportable.ui.resizeOnKeyboard"

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_20

    #@10
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getWindow()Landroid/view/Window;

    #@13
    move-result-object v0

    #@14
    const/16 v1, 0x800

    #@16
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    #@19
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getWindow()Landroid/view/Window;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    #@20
    :cond_20
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@22
    invoke-virtual {v0}, Lcom/apportable/activity/BackgroundLibraryLoader;->isLoaded()Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_2b

    #@28
    invoke-static {p1, p2}, Lcom/apportable/activity/VerdeActivity;->nativeOnSoftKeyboardChanged(II)V

    #@2b
    :cond_2b
    return-void
.end method

.method protected onStart()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    #@3
    new-instance v0, Lcom/apportable/BK2SocialShareManager;

    #@5
    invoke-direct {v0, p0}, Lcom/apportable/BK2SocialShareManager;-><init>(Landroid/app/Activity;)V

    #@8
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@a
    new-instance v1, Lcom/apportable/activity/VerdeActivity$6;

    #@c
    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$6;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    #@f
    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onStart(Ljava/lang/Runnable;)V

    #@12
    return-void
.end method

.method protected onStop()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    #@3
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->mLibraryLoader:Lcom/apportable/activity/BackgroundLibraryLoader;

    #@5
    new-instance v1, Lcom/apportable/activity/VerdeActivity$9;

    #@7
    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$9;-><init>(Lcom/apportable/activity/VerdeActivity;)V

    #@a
    invoke-virtual {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->onStop(Ljava/lang/Runnable;)V

    #@d
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3

    #@0
    const/16 v0, 0xa

    #@2
    if-lt p1, v0, :cond_7

    #@4
    invoke-direct {p0}, Lcom/apportable/activity/VerdeActivity;->dispatchLowMemoryWarning()V

    #@7
    :cond_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    #@a
    return-void
.end method

.method public primaryContainer()Landroid/widget/FrameLayout;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;

    #@2
    return-object v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 2

    #@0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@3
    return-void
.end method

.method public runOnThread(Ljava/lang/Runnable;I)V
    .registers 4

    #@0
    packed-switch p2, :pswitch_data_10

    #@3
    :goto_3
    return-void

    #@4
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@7
    goto :goto_3

    #@8
    :pswitch_8
    invoke-static {}, Lcom/apportable/MainThread;->getHandler()Landroid/os/Handler;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@f
    goto :goto_3

    #@10
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
    .end packed-switch
.end method

.method public savePreferenceEditorHack(Landroid/content/SharedPreferences$Editor;)V
    .registers 2

    #@0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@3
    return-void
.end method

.method public sendEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 13

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p1, :cond_28

    #@3
    const-string v0, "mounted"

    #@5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_10

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    :try_start_10
    const-string v0, "file"

    #@12
    const/4 v1, 0x0

    #@13
    invoke-virtual {p0, v1}, Lcom/apportable/activity/VerdeActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, p1, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    #@1a
    move-result-object v0

    #@1b
    new-instance v1, Ljava/io/FileOutputStream;

    #@1d
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@20
    const/4 v2, 0x0

    #@21
    array-length v3, p8

    #@22
    invoke-virtual {v1, p8, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    #@25
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_28} :catch_aa

    #@28
    :cond_28
    new-instance v1, Landroid/content/Intent;

    #@2a
    const-string v2, "android.intent.action.SEND"

    #@2c
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2f
    if-eqz v0, :cond_3d

    #@31
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@34
    const-string v2, "android.intent.extra.STREAM"

    #@36
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@3d
    :cond_3d
    if-eqz p4, :cond_a1

    #@3f
    const-string v0, "text/plain"

    #@41
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v0

    #@45
    if-nez v0, :cond_a1

    #@47
    move-object v0, p4

    #@48
    :goto_48
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@4b
    sget-object v0, Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;

    #@4d
    new-instance v2, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string v3, "mailIntent.setType:"

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    const-string v0, "android.intent.extra.SUBJECT"

    #@65
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@68
    if-eqz p5, :cond_75

    #@6a
    const-string v0, "android.intent.extra.EMAIL"

    #@6c
    const-string v2, ","

    #@6e
    invoke-virtual {p5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    #@75
    :cond_75
    if-eqz p6, :cond_7c

    #@77
    const-string v0, "android.intent.extra.CC"

    #@79
    invoke-virtual {v1, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@7c
    :cond_7c
    if-eqz p7, :cond_83

    #@7e
    const-string v0, "android.intent.extra.BCC"

    #@80
    invoke-virtual {v1, v0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@83
    :cond_83
    const-string v0, "text/html"

    #@85
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@88
    move-result v0

    #@89
    if-eqz v0, :cond_a4

    #@8b
    const-string v0, "android.intent.extra.TEXT"

    #@8d
    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    #@90
    move-result-object v2

    #@91
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@94
    :goto_94
    const-string v0, "Send"

    #@96
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@99
    move-result-object v0

    #@9a
    const/16 v1, 0x22b8

    #@9c
    invoke-virtual {p0, v0, v1}, Lcom/apportable/activity/VerdeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    #@9f
    goto/16 :goto_f

    #@a1
    :cond_a1
    const-string v0, "message/rfc822"

    #@a3
    goto :goto_48

    #@a4
    :cond_a4
    const-string v0, "android.intent.extra.TEXT"

    #@a6
    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@a9
    goto :goto_94

    #@aa
    :catch_aa
    move-exception v0

    #@ab
    goto/16 :goto_f
.end method

.method public setContentSize(FF)V
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/activity/VerdeActivity$14;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/activity/VerdeActivity$14;-><init>(Lcom/apportable/activity/VerdeActivity;FF)V

    #@5
    invoke-virtual {p0, v0}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    #@8
    return-void
.end method

.method public swapBuffers()Z
    .registers 2

    #@0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Lcom/apportable/gl/GLSurfaceView;->swapBuffers()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public uuid()Ljava/lang/String;
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v1

    #@5
    const-string v2, "android.permission.GET_ACCOUNTS"

    #@7
    invoke-virtual {p0}, Lcom/apportable/activity/VerdeActivity;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    move-result v1

    #@f
    if-ne v0, v1, :cond_16

    #@11
    invoke-direct {p0}, Lcom/apportable/activity/VerdeActivity;->prefsUuid()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    :goto_15
    return-object v0

    #@16
    :cond_16
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@19
    move-result-object v0

    #@1a
    if-nez v0, :cond_21

    #@1c
    invoke-direct {p0}, Lcom/apportable/activity/VerdeActivity;->prefsUuid()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    goto :goto_15

    #@21
    :cond_21
    const-string v1, "com.google"

    #@23
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    #@26
    move-result-object v0

    #@27
    array-length v1, v0

    #@28
    if-nez v1, :cond_2f

    #@2a
    invoke-direct {p0}, Lcom/apportable/activity/VerdeActivity;->prefsUuid()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    goto :goto_15

    #@2f
    :cond_2f
    const/4 v1, 0x0

    #@30
    aget-object v0, v0, v1

    #@32
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@34
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@37
    move-result-object v0

    #@38
    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    goto :goto_15
.end method

.method private startFloatWin()V
    .locals 2

    .prologue
    .line 513
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lzj/zfenlly/gua/FloatWinService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lzj/zfenlly/gua/FloatWinService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 516
    return-void
.end method

.method public static playSound()V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/apportable/activity/VerdeActivity;->ns:Lzj/zfenlly/gua/NotifySound;

    const/4 v0, 0x2

    invoke-static {v0}, Lzj/zfenlly/gua/NotifySound;->play(I)V

    .line 44
    return-void
.end method

.method public vibrateInit()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/apportable/activity/VerdeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lcom/apportable/activity/VerdeActivity;->vibrator:Landroid/os/Vibrator;

    .line 51
    return-void
.end method

.method public static doVibrate()V
    .locals 3

    .prologue
    .line 44
    const/4 v1, 0x6

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    .line 45
    .local v0, "pattern":[J
    sget-object v1, Lcom/apportable/activity/VerdeActivity;->vibrator:Landroid/os/Vibrator;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 46
    return-void

    .line 44
    nop

    :array_0
    .array-data 8
        0x64
        0xc8
        0x64
        0xc8
        0x64
        0xc8
    .end array-data
.end method