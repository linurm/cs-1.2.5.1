.class public Lcom/facebook/ads/internal/AdWebViewUtils;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_IMPRESSION_DELAY_MS:J = 0x3e8L

.field public static final FBAD_SCHEME:Ljava/lang/String; = "fbad"

.field public static final WEBVIEW_BASE_URL:Ljava/lang/String; = "https://www.facebook.com/"

.field private static userAgentString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/facebook/ads/internal/AdWebViewUtils;->userAgentString:Ljava/lang/String;

    #@3
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static config(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Lcom/facebook/ads/internal/AdWebViewInterface;)V
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    #@4
    move-result-object v0

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    #@9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    #@10
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    #@13
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    #@16
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    #@19
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    #@1c
    const-string v0, "AdControl"

    #@1e
    invoke-virtual {p0, p2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    #@21
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    #@24
    return-void
.end method

.method public static getUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    #@0
    sget-object v0, Lcom/facebook/ads/internal/AdWebViewUtils;->userAgentString:Ljava/lang/String;

    #@2
    if-nez v0, :cond_1a

    #@4
    new-instance v0, Landroid/webkit/WebView;

    #@6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    #@d
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    sput-object v1, Lcom/facebook/ads/internal/AdWebViewUtils;->userAgentString:Ljava/lang/String;

    #@17
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    #@1a
    :cond_1a
    sget-object v0, Lcom/facebook/ads/internal/AdWebViewUtils;->userAgentString:Ljava/lang/String;

    #@1c
    return-object v0
.end method
