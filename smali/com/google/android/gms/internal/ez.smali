.class public Lcom/google/android/gms/internal/ez;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private final lN:Lcom/google/android/gms/internal/ex;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ex;)V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/ez;->lN:Lcom/google/android/gms/internal/ex;

    #@5
    return-void
.end method

.method private static a(Landroid/app/AlertDialog$Builder;Ljava/lang/String;Landroid/webkit/JsResult;)V
    .registers 6

    #@0
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@3
    move-result-object v0

    #@4
    const v1, 0x104000a

    #@7
    new-instance v2, Lcom/google/android/gms/internal/ez$3;

    #@9
    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ez$3;-><init>(Landroid/webkit/JsResult;)V

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@f
    move-result-object v0

    #@10
    const/high16 v1, 0x1040000

    #@12
    new-instance v2, Lcom/google/android/gms/internal/ez$2;

    #@14
    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ez$2;-><init>(Landroid/webkit/JsResult;)V

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@1a
    move-result-object v0

    #@1b
    new-instance v1, Lcom/google/android/gms/internal/ez$1;

    #@1d
    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ez$1;-><init>(Landroid/webkit/JsResult;)V

    #@20
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    #@2b
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
    .registers 9

    #@0
    new-instance v0, Landroid/widget/LinearLayout;

    #@2
    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    #@9
    new-instance v1, Landroid/widget/TextView;

    #@b
    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@e
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@11
    new-instance v2, Landroid/widget/EditText;

    #@13
    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    #@16
    invoke-virtual {v2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    #@19
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@1c
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    #@1f
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    #@22
    move-result-object v0

    #@23
    const v1, 0x104000a

    #@26
    new-instance v3, Lcom/google/android/gms/internal/ez$6;

    #@28
    invoke-direct {v3, p4, v2}, Lcom/google/android/gms/internal/ez$6;-><init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    #@2b
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@2e
    move-result-object v0

    #@2f
    const/high16 v1, 0x1040000

    #@31
    new-instance v2, Lcom/google/android/gms/internal/ez$5;

    #@33
    invoke-direct {v2, p4}, Lcom/google/android/gms/internal/ez$5;-><init>(Landroid/webkit/JsPromptResult;)V

    #@36
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@39
    move-result-object v0

    #@3a
    new-instance v1, Lcom/google/android/gms/internal/ez$4;

    #@3c
    invoke-direct {v1, p4}, Lcom/google/android/gms/internal/ez$4;-><init>(Landroid/webkit/JsPromptResult;)V

    #@3f
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    #@4a
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->ca()Lcom/google/android/gms/internal/cf;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_11

    #@8
    const-string v0, "Could not get ad overlay when showing custom view."

    #@a
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@d
    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    #@10
    :goto_10
    return-void

    #@11
    :cond_11
    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/internal/cf;->a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    #@14
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cf;->setRequestedOrientation(I)V

    #@17
    goto :goto_10
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z
    .registers 10

    #@0
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #@2
    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@5
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@8
    if-eqz p7, :cond_f

    #@a
    invoke-static {p1, v0, p3, p4, p6}, Lcom/google/android/gms/internal/ez;->a(Landroid/content/Context;Landroid/app/AlertDialog$Builder;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V

    #@d
    :goto_d
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    :cond_f
    invoke-static {v0, p3, p5}, Lcom/google/android/gms/internal/ez;->a(Landroid/app/AlertDialog$Builder;Ljava/lang/String;Landroid/webkit/JsResult;)V
    :try_end_12
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_12} :catch_13

    #@12
    goto :goto_d

    #@13
    :catch_13
    move-exception v0

    #@14
    const-string v1, "Fail to display Dialog."

    #@16
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/eu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@19
    goto :goto_d
.end method

.method public final onCloseWindow(Landroid/webkit/WebView;)V
    .registers 3

    #@0
    instance-of v0, p1, Lcom/google/android/gms/internal/ex;

    #@2
    if-nez v0, :cond_a

    #@4
    const-string v0, "Tried to close a WebView that wasn\'t an AdWebView."

    #@6
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ex;

    #@c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->ca()Lcom/google/android/gms/internal/cf;

    #@f
    move-result-object v0

    #@10
    if-nez v0, :cond_18

    #@12
    const-string v0, "Tried to close an AdWebView not associated with an overlay."

    #@14
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@17
    goto :goto_9

    #@18
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->close()V

    #@1b
    goto :goto_9
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 5

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "JS: "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string v1, " ("

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string v1, ":"

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    #@2a
    move-result v1

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    const-string v1, ")"

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    sget-object v1, Lcom/google/android/gms/internal/ez$7;->sS:[I

    #@3b
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    #@42
    move-result v2

    #@43
    aget v1, v1, v2

    #@45
    packed-switch v1, :pswitch_data_60

    #@48
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@4b
    :goto_4b
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    #@4e
    move-result v0

    #@4f
    return v0

    #@50
    :pswitch_50
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->A(Ljava/lang/String;)V

    #@53
    goto :goto_4b

    #@54
    :pswitch_54
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@57
    goto :goto_4b

    #@58
    :pswitch_58
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->B(Ljava/lang/String;)V

    #@5b
    goto :goto_4b

    #@5c
    :pswitch_5c
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->z(Ljava/lang/String;)V

    #@5f
    goto :goto_4b

    #@60
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_50
        :pswitch_54
        :pswitch_58
        :pswitch_58
        :pswitch_5c
    .end packed-switch
.end method

.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 8

    #@0
    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2
    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    #@4
    new-instance v1, Landroid/webkit/WebView;

    #@6
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    #@9
    move-result-object v2

    #@a
    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    #@d
    iget-object v2, p0, Lcom/google/android/gms/internal/ez;->lN:Lcom/google/android/gms/internal/ex;

    #@f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ex;->cb()Lcom/google/android/gms/internal/ey;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    #@16
    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    #@19
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    #@1c
    const/4 v0, 0x1

    #@1d
    return v0
.end method

.method public final onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 15

    #@0
    const-wide/32 v0, 0x500000

    #@3
    sub-long/2addr v0, p7

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v2, v0, v2

    #@8
    if-gtz v2, :cond_e

    #@a
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    const-wide/16 v2, 0x0

    #@10
    cmp-long v2, p3, v2

    #@12
    if-nez v2, :cond_26

    #@14
    cmp-long v0, p5, v0

    #@16
    if-gtz v0, :cond_23

    #@18
    const-wide/32 v0, 0x100000

    #@1b
    cmp-long v0, p5, v0

    #@1d
    if-gtz v0, :cond_23

    #@1f
    :goto_1f
    invoke-interface {p9, p5, p6}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    #@22
    goto :goto_d

    #@23
    :cond_23
    const-wide/16 p5, 0x0

    #@25
    goto :goto_1f

    #@26
    :cond_26
    const-wide/16 v2, 0x0

    #@28
    cmp-long v2, p5, v2

    #@2a
    if-nez v2, :cond_3c

    #@2c
    const-wide/32 v2, 0x20000

    #@2f
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@32
    move-result-wide v0

    #@33
    add-long/2addr v0, p3

    #@34
    const-wide/32 v2, 0x100000

    #@37
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@3a
    move-result-wide p5

    #@3b
    goto :goto_1f

    #@3c
    :cond_3c
    const-wide/32 v2, 0x100000

    #@3f
    sub-long/2addr v2, p3

    #@40
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    #@43
    move-result-wide v0

    #@44
    cmp-long v0, p5, v0

    #@46
    if-gtz v0, :cond_4a

    #@48
    add-long/2addr p5, p3

    #@49
    goto :goto_1f

    #@4a
    :cond_4a
    move-wide p5, p3

    #@4b
    goto :goto_1f
.end method

.method public final onHideCustomView()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ez;->lN:Lcom/google/android/gms/internal/ex;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->ca()Lcom/google/android/gms/internal/cf;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_e

    #@8
    const-string v0, "Could not get ad overlay when hiding custom view."

    #@a
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cf;->aR()V

    #@11
    goto :goto_d
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 13

    #@0
    const/4 v7, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    instance-of v0, p1, Lcom/google/android/gms/internal/ex;

    #@4
    if-eqz v0, :cond_1f

    #@6
    move-object v0, p1

    #@7
    check-cast v0, Lcom/google/android/gms/internal/ex;

    #@9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->cf()Landroid/content/Context;

    #@c
    move-result-object v0

    #@d
    if-eqz v0, :cond_1f

    #@f
    check-cast p1, Lcom/google/android/gms/internal/ex;

    #@11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ex;->cf()Landroid/content/Context;

    #@14
    move-result-object v1

    #@15
    move-object v0, p0

    #@16
    move-object v2, p2

    #@17
    move-object v3, p3

    #@18
    move-object v5, p4

    #@19
    move-object v6, v4

    #@1a
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ez;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    #@1d
    move-result v0

    #@1e
    :goto_1e
    return v0

    #@1f
    :cond_1f
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    #@22
    move-result-object v1

    #@23
    move-object v0, p0

    #@24
    move-object v2, p2

    #@25
    move-object v3, p3

    #@26
    move-object v5, p4

    #@27
    move-object v6, v4

    #@28
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ez;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    #@2b
    move-result v0

    #@2c
    goto :goto_1e
.end method

.method public final onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 13

    #@0
    const/4 v4, 0x0

    #@1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    #@4
    move-result-object v1

    #@5
    const/4 v7, 0x0

    #@6
    move-object v0, p0

    #@7
    move-object v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object v5, p4

    #@a
    move-object v6, v4

    #@b
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ez;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 13

    #@0
    const/4 v4, 0x0

    #@1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    #@4
    move-result-object v1

    #@5
    const/4 v7, 0x0

    #@6
    move-object v0, p0

    #@7
    move-object v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object v5, p4

    #@a
    move-object v6, v4

    #@b
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ez;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 14

    #@0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    const/4 v5, 0x0

    #@5
    const/4 v7, 0x1

    #@6
    move-object v0, p0

    #@7
    move-object v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object v4, p4

    #@a
    move-object v6, p5

    #@b
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ez;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;Landroid/webkit/JsPromptResult;Z)Z

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .registers 11

    #@0
    const-wide/32 v0, 0x20000

    #@3
    add-long/2addr v0, p1

    #@4
    const-wide/32 v2, 0x500000

    #@7
    sub-long/2addr v2, p3

    #@8
    cmp-long v2, v2, v0

    #@a
    if-gez v2, :cond_12

    #@c
    const-wide/16 v0, 0x0

    #@e
    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    #@11
    :goto_11
    return-void

    #@12
    :cond_12
    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    #@15
    goto :goto_11
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4

    #@0
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ez;->a(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    #@4
    return-void
.end method
