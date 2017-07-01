.class Lcom/facebook/widget/WebDialog$DialogWebViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/WebDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/WebDialog;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@2
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/WebDialog;Lcom/facebook/widget/WebDialog$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/widget/WebDialog$DialogWebViewClient;-><init>(Lcom/facebook/widget/WebDialog;)V

    #@3
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    #@4
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@6
    # getter for: Lcom/facebook/widget/WebDialog;->isDetached:Z
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$400(Lcom/facebook/widget/WebDialog;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_15

    #@c
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@e
    # getter for: Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$500(Lcom/facebook/widget/WebDialog;)Landroid/app/ProgressDialog;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    #@15
    :cond_15
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@17
    # getter for: Lcom/facebook/widget/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$600(Lcom/facebook/widget/WebDialog;)Landroid/widget/FrameLayout;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    #@1e
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@20
    # getter for: Lcom/facebook/widget/WebDialog;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$700(Lcom/facebook/widget/WebDialog;)Landroid/webkit/WebView;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    #@27
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@29
    # getter for: Lcom/facebook/widget/WebDialog;->crossImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$800(Lcom/facebook/widget/WebDialog;)Landroid/widget/ImageView;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    #@30
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7

    #@0
    const-string v0, "FacebookSDK.WebDialog"

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string v2, "Webview loading URL: "

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    #@1b
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@1d
    # getter for: Lcom/facebook/widget/WebDialog;->isDetached:Z
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$400(Lcom/facebook/widget/WebDialog;)Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_2c

    #@23
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@25
    # getter for: Lcom/facebook/widget/WebDialog;->spinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$500(Lcom/facebook/widget/WebDialog;)Landroid/app/ProgressDialog;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    #@2c
    :cond_2c
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    #@0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    #@3
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@5
    new-instance v1, Lcom/facebook/FacebookDialogException;

    #@7
    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@a
    # invokes: Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Lcom/facebook/widget/WebDialog;->access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V

    #@d
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@f
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    #@12
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 8

    #@0
    const/4 v3, 0x0

    #@1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    #@4
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@6
    new-instance v1, Lcom/facebook/FacebookDialogException;

    #@8
    const/16 v2, -0xb

    #@a
    invoke-direct {v1, v3, v2, v3}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@d
    # invokes: Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Lcom/facebook/widget/WebDialog;->access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V

    #@10
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    #@13
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@15
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    #@18
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 10

    #@0
    const/4 v4, 0x1

    #@1
    const/4 v3, -0x1

    #@2
    const-string v0, "FacebookSDK.WebDialog"

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string v2, "Redirect URL: "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    const-string v0, "fbconnect://success"

    #@1c
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_97

    #@22
    invoke-static {p2}, Lcom/facebook/android/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    #@25
    move-result-object v5

    #@26
    const-string v0, "error"

    #@28
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    if-nez v0, :cond_34

    #@2e
    const-string v0, "error_type"

    #@30
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    :cond_34
    const-string v1, "error_msg"

    #@36
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    if-nez v1, :cond_42

    #@3c
    const-string v1, "error_description"

    #@3e
    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    :cond_42
    const-string v2, "error_code"

    #@44
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v2

    #@48
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@4b
    move-result v6

    #@4c
    if-nez v6, :cond_cb

    #@4e
    :try_start_4e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_51} :catch_6c

    #@51
    move-result v2

    #@52
    :goto_52
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@55
    move-result v6

    #@56
    if-eqz v6, :cond_6f

    #@58
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@5b
    move-result v6

    #@5c
    if-eqz v6, :cond_6f

    #@5e
    if-ne v2, v3, :cond_6f

    #@60
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@62
    # invokes: Lcom/facebook/widget/WebDialog;->sendSuccessToListener(Landroid/os/Bundle;)V
    invoke-static {v0, v5}, Lcom/facebook/widget/WebDialog;->access$200(Lcom/facebook/widget/WebDialog;Landroid/os/Bundle;)V

    #@65
    :goto_65
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@67
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    #@6a
    move v0, v4

    #@6b
    :goto_6b
    return v0

    #@6c
    :catch_6c
    move-exception v2

    #@6d
    move v2, v3

    #@6e
    goto :goto_52

    #@6f
    :cond_6f
    if-eqz v0, :cond_87

    #@71
    const-string v3, "access_denied"

    #@73
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v3

    #@77
    if-nez v3, :cond_81

    #@79
    const-string v3, "OAuthAccessDeniedException"

    #@7b
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v3

    #@7f
    if-eqz v3, :cond_87

    #@81
    :cond_81
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@83
    # invokes: Lcom/facebook/widget/WebDialog;->sendCancelToListener()V
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$000(Lcom/facebook/widget/WebDialog;)V

    #@86
    goto :goto_65

    #@87
    :cond_87
    new-instance v3, Lcom/facebook/FacebookRequestError;

    #@89
    invoke-direct {v3, v2, v0, v1}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@8c
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@8e
    new-instance v2, Lcom/facebook/FacebookServiceException;

    #@90
    invoke-direct {v2, v3, v1}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    #@93
    # invokes: Lcom/facebook/widget/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V
    invoke-static {v0, v2}, Lcom/facebook/widget/WebDialog;->access$300(Lcom/facebook/widget/WebDialog;Ljava/lang/Throwable;)V

    #@96
    goto :goto_65

    #@97
    :cond_97
    const-string v0, "fbconnect://cancel"

    #@99
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@9c
    move-result v0

    #@9d
    if-eqz v0, :cond_ab

    #@9f
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@a1
    # invokes: Lcom/facebook/widget/WebDialog;->sendCancelToListener()V
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$000(Lcom/facebook/widget/WebDialog;)V

    #@a4
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@a6
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    #@a9
    move v0, v4

    #@aa
    goto :goto_6b

    #@ab
    :cond_ab
    const-string v0, "touch"

    #@ad
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@b0
    move-result v0

    #@b1
    if-eqz v0, :cond_b5

    #@b3
    const/4 v0, 0x0

    #@b4
    goto :goto_6b

    #@b5
    :cond_b5
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$DialogWebViewClient;->this$0:Lcom/facebook/widget/WebDialog;

    #@b7
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->getContext()Landroid/content/Context;

    #@ba
    move-result-object v0

    #@bb
    new-instance v1, Landroid/content/Intent;

    #@bd
    const-string v2, "android.intent.action.VIEW"

    #@bf
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@c2
    move-result-object v3

    #@c3
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@c6
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@c9
    move v0, v4

    #@ca
    goto :goto_6b

    #@cb
    :cond_cb
    move v2, v3

    #@cc
    goto :goto_52
.end method
