.class public Lcom/facebook/ads/internal/AdWebViewInterface;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/ads/internal/AdWebViewInterface;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/ads/internal/AdWebViewInterface;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    #@0
    sget-object v0, Lcom/facebook/ads/internal/AdWebViewInterface;->TAG:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5
    return-void
.end method

.method public getAnalogInfo()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    #@0
    invoke-static {}, Lcom/facebook/ads/internal/AdAnalogData;->getAnalogInfo()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/facebook/ads/internal/AdUtilities;->jsonEncode(Ljava/util/Map;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
