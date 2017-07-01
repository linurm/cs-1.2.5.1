.class public Lcom/facebook/widget/WebDialog;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/WebDialog$Builder;,
        Lcom/facebook/widget/WebDialog$BuilderBase;,
        Lcom/facebook/widget/WebDialog$DialogWebViewClient;,
        Lcom/facebook/widget/WebDialog$FeedDialogBuilder;,
        Lcom/facebook/widget/WebDialog$OnCompleteListener;,
        Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;
    }
.end annotation


# static fields
.field private static final BACKGROUND_GRAY:I = -0x34000000

.field static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field public static final DEFAULT_THEME:I = 0x1030010

.field static final DISABLE_SSL_CHECK_FOR_TESTING:Z = false

.field private static final DISPLAY_TOUCH:Ljava/lang/String; = "touch"

.field private static final LOG_TAG:Ljava/lang/String; = "FacebookSDK.WebDialog"

.field private static final MAX_PADDING_SCREEN_HEIGHT:I = 0x500

.field private static final MAX_PADDING_SCREEN_WIDTH:I = 0x320

.field private static final MIN_SCALE_FACTOR:D = 0.5

.field private static final NO_PADDING_SCREEN_HEIGHT:I = 0x320

.field private static final NO_PADDING_SCREEN_WIDTH:I = 0x1e0

.field static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field private static final USER_AGENT:Ljava/lang/String; = "user_agent"


# instance fields
.field private contentFrameLayout:Landroid/widget/FrameLayout;

.field private crossImageView:Landroid/widget/ImageView;

.field private isDetached:Z

.field private listenerCalled:Z

.field private onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

.field private spinner:Landroid/app/ProgressDialog;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    #@0
    const v0, 0x1030010

    #@3
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/widget/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@4
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    #@6
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    #@8
    iput-object p2, p0, Lcom/facebook/widget/WebDialog;->url:Ljava/lang/String;

    #@a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/WebDialog$OnCompleteListener;)V
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@4
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    #@6
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    #@8
    if-nez p3, :cond_f

    #@a
    new-instance p3, Landroid/os/Bundle;

    #@c
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    #@f
    :cond_f
    const-string v0, "redirect_uri"

    #@11
    const-string v1, "fbconnect://success"

    #@13
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@16
    const-string v0, "display"

    #@18
    const-string v1, "touch"

    #@1a
    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    new-instance v1, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getAPIVersion()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string v2, "/"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    const-string v2, "dialog/"

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-static {v0, v1, p3}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    iput-object v0, p0, Lcom/facebook/widget/WebDialog;->url:Ljava/lang/String;

    #@4c
    iput-object p5, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    #@4e
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/WebDialog;)V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/facebook/widget/WebDialog;->sendCancelToListener()V

    #@3
    return-void
.end method

.method static synthetic access$200(Lcom/facebook/widget/WebDialog;Landroid/os/Bundle;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/widget/WebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V

    #@3
    return-void
.end method

.method static synthetic access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    #@3
    return-void
.end method

.method static synthetic access$400(Lcom/facebook/widget/WebDialog;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    #@2
    return v0
.end method

.method static synthetic access$500(Lcom/facebook/widget/WebDialog;)Landroid/app/ProgressDialog;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    #@2
    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/widget/WebDialog;)Landroid/widget/FrameLayout;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    #@2
    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/widget/WebDialog;)Landroid/webkit/WebView;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    #@2
    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/widget/WebDialog;)Landroid/widget/ImageView;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    #@2
    return-object v0
.end method

.method private calculateSize()V
    .registers 7

    #@0
    const/16 v5, 0x320

    #@2
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string v1, "window"

    #@8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/view/WindowManager;

    #@e
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    #@11
    move-result-object v0

    #@12
    new-instance v2, Landroid/util/DisplayMetrics;

    #@14
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    #@17
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    #@1a
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@1c
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@1e
    if-ge v0, v1, :cond_4e

    #@20
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@22
    :goto_22
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@24
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@26
    if-ge v1, v3, :cond_51

    #@28
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@2a
    :goto_2a
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    #@2c
    const/16 v4, 0x1e0

    #@2e
    invoke-direct {p0, v0, v3, v4, v5}, Lcom/facebook/widget/WebDialog;->getScaledSize(IFII)I

    #@31
    move-result v0

    #@32
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@34
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    #@37
    move-result v0

    #@38
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    #@3a
    const/16 v4, 0x500

    #@3c
    invoke-direct {p0, v1, v3, v5, v4}, Lcom/facebook/widget/WebDialog;->getScaledSize(IFII)I

    #@3f
    move-result v1

    #@40
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@42
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@45
    move-result v1

    #@46
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getWindow()Landroid/view/Window;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    #@4d
    return-void

    #@4e
    :cond_4e
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    #@50
    goto :goto_22

    #@51
    :cond_51
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    #@53
    goto :goto_2a
.end method

.method private createCrossImage()V
    .registers 3

    #@0
    new-instance v0, Landroid/widget/ImageView;

    #@2
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #@9
    iput-object v0, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    #@b
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    #@d
    new-instance v1, Lcom/facebook/widget/WebDialog$3;

    #@f
    invoke-direct {v1, p0}, Lcom/facebook/widget/WebDialog$3;-><init>(Lcom/facebook/widget/WebDialog;)V

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@15
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c
    move-result-object v0

    #@1d
    const v1, 0x7f02000a

    #@20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@23
    move-result-object v0

    #@24
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    #@26
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@29
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    #@2b
    const/4 v1, 0x4

    #@2c
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@2f
    return-void
.end method

.method private getScaledSize(IFII)I
    .registers 11

    #@0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    #@2
    int-to-float v2, p1

    #@3
    div-float/2addr v2, p2

    #@4
    float-to-int v2, v2

    #@5
    if-gt v2, p3, :cond_d

    #@7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@9
    :cond_9
    :goto_9
    int-to-double v2, p1

    #@a
    mul-double/2addr v0, v2

    #@b
    double-to-int v0, v0

    #@c
    return v0

    #@d
    :cond_d
    if-ge v2, p4, :cond_9

    #@f
    sub-int v2, p4, v2

    #@11
    int-to-double v2, v2

    #@12
    sub-int v4, p4, p3

    #@14
    int-to-double v4, v4

    #@15
    div-double/2addr v2, v4

    #@16
    mul-double/2addr v2, v0

    #@17
    add-double/2addr v0, v2

    #@18
    goto :goto_9
.end method

.method private sendCancelToListener()V
    .registers 2

    #@0
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    #@2
    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    #@5
    invoke-direct {p0, v0}, Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    #@8
    return-void
.end method

.method private sendErrorToListener(Ljava/lang/Throwable;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    #@2
    if-eqz v0, :cond_17

    #@4
    iget-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    #@6
    if-nez v0, :cond_17

    #@8
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    #@b
    instance-of v0, p1, Lcom/facebook/FacebookException;

    #@d
    if-eqz v0, :cond_18

    #@f
    check-cast p1, Lcom/facebook/FacebookException;

    #@11
    :goto_11
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    #@13
    const/4 v1, 0x0

    #@14
    invoke-interface {v0, v1, p1}, Lcom/facebook/widget/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    #@17
    :cond_17
    return-void

    #@18
    :cond_18
    new-instance v0, Lcom/facebook/FacebookException;

    #@1a
    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    #@1d
    move-object p1, v0

    #@1e
    goto :goto_11
.end method

.method private sendSuccessToListener(Landroid/os/Bundle;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    #@2
    if-eqz v0, :cond_11

    #@4
    iget-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    #@6
    if-nez v0, :cond_11

    #@8
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->listenerCalled:Z

    #@b
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-interface {v0, p1, v1}, Lcom/facebook/widget/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    #@11
    :cond_11
    return-void
.end method

.method private setUpWebView(I)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    #@0
    const/4 v5, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    new-instance v0, Landroid/widget/LinearLayout;

    #@4
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@b
    new-instance v1, Landroid/webkit/WebView;

    #@d
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    #@10
    move-result-object v2

    #@11
    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    #@14
    iput-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    #@16
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    #@18
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    #@1b
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    #@1d
    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    #@20
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    #@22
    new-instance v2, Lcom/facebook/widget/WebDialog$DialogWebViewClient;

    #@24
    const/4 v3, 0x0

    #@25
    invoke-direct {v2, p0, v3}, Lcom/facebook/widget/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/widget/WebDialog;Lcom/facebook/widget/WebDialog$1;)V

    #@28
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    #@2b
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    #@2d
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    #@30
    move-result-object v1

    #@31
    const/4 v2, 0x1

    #@32
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    #@35
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    #@37
    iget-object v2, p0, Lcom/facebook/widget/WebDialog;->url:Ljava/lang/String;

    #@39
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    #@3c
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    #@3e
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    #@40
    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@43
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@46
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    #@48
    const/4 v2, 0x4

    #@49
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    #@4c
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    #@4e
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    #@51
    move-result-object v1

    #@52
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    #@55
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    #@57
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    #@5e
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    #@61
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    #@63
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@66
    const/high16 v1, -0x34000000    # -3.3554432E7f

    #@68
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    #@6b
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    #@6d
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    #@70
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    #@2
    if-eqz v0, :cond_9

    #@4
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;

    #@6
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    #@9
    :cond_9
    iget-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    #@b
    if-nez v0, :cond_1d

    #@d
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    #@f
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1a

    #@15
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    #@17
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    #@1a
    :cond_1a
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    #@1d
    :cond_1d
    return-void
.end method

.method public getOnCompleteListener()Lcom/facebook/widget/WebDialog$OnCompleteListener;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    #@2
    return-object v0
.end method

.method public onAttachedToWindow()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    #@3
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    #@6
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v3, -0x2

    #@2
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    #@5
    new-instance v0, Lcom/facebook/widget/WebDialog$1;

    #@7
    invoke-direct {v0, p0}, Lcom/facebook/widget/WebDialog$1;-><init>(Lcom/facebook/widget/WebDialog;)V

    #@a
    invoke-virtual {p0, v0}, Lcom/facebook/widget/WebDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    #@d
    new-instance v0, Landroid/app/ProgressDialog;

    #@f
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #@16
    iput-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    #@18
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    #@1a
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    #@1d
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    #@1f
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    #@22
    move-result-object v1

    #@23
    const v2, 0x7f070011

    #@26
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@2d
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;

    #@2f
    new-instance v1, Lcom/facebook/widget/WebDialog$2;

    #@31
    invoke-direct {v1, p0}, Lcom/facebook/widget/WebDialog$2;-><init>(Lcom/facebook/widget/WebDialog;)V

    #@34
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    #@37
    invoke-virtual {p0, v4}, Lcom/facebook/widget/WebDialog;->requestWindowFeature(I)Z

    #@3a
    new-instance v0, Landroid/widget/FrameLayout;

    #@3c
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@43
    iput-object v0, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    #@45
    invoke-direct {p0}, Lcom/facebook/widget/WebDialog;->calculateSize()V

    #@48
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getWindow()Landroid/view/Window;

    #@4b
    move-result-object v0

    #@4c
    const/16 v1, 0x11

    #@4e
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    #@51
    invoke-virtual {p0}, Lcom/facebook/widget/WebDialog;->getWindow()Landroid/view/Window;

    #@54
    move-result-object v0

    #@55
    const/16 v1, 0x10

    #@57
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    #@5a
    invoke-direct {p0}, Lcom/facebook/widget/WebDialog;->createCrossImage()V

    #@5d
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    #@5f
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@66
    move-result v0

    #@67
    div-int/lit8 v0, v0, 0x2

    #@69
    add-int/lit8 v0, v0, 0x1

    #@6b
    invoke-direct {p0, v0}, Lcom/facebook/widget/WebDialog;->setUpWebView(I)V

    #@6e
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    #@70
    iget-object v1, p0, Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;

    #@72
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    #@74
    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@77
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@7a
    iget-object v0, p0, Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    #@7c
    invoke-virtual {p0, v0}, Lcom/facebook/widget/WebDialog;->setContentView(Landroid/view/View;)V

    #@7f
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/facebook/widget/WebDialog;->isDetached:Z

    #@3
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    #@6
    return-void
.end method

.method public setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/WebDialog;->onCompleteListener:Lcom/facebook/widget/WebDialog$OnCompleteListener;

    #@2
    return-void
.end method
