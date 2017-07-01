.class public Lcom/facebook/ads/internal/OpenUrlTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_ADDRESS:Ljava/lang/String; = "#"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private extraData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/ads/internal/OpenUrlTask;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/ads/internal/OpenUrlTask;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/facebook/ads/internal/OpenUrlTask;->extraData:Ljava/util/Map;

    #@6
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/ads/internal/OpenUrlTask;->extraData:Ljava/util/Map;

    #@5
    return-void
.end method

.method private addAnalogInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    :try_start_0
    const-string v0, "analog"

    #@2
    invoke-static {}, Lcom/facebook/ads/internal/AdAnalogData;->getAnalogInfo()Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-static {v1}, Lcom/facebook/ads/internal/AdUtilities;->jsonEncode(Ljava/util/Map;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/internal/OpenUrlTask;->addData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    #@d
    move-result-object p1

    #@e
    :goto_e
    return-object p1

    #@f
    :catch_f
    move-exception v0

    #@10
    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEvent;->newErrorEvent(Ljava/lang/Exception;)Lcom/facebook/ads/internal/AdClientEvent;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEventManager;->addClientEvent(Lcom/facebook/ads/internal/AdClientEvent;)V

    #@17
    goto :goto_e
.end method

.method private addData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    #@0
    invoke-static {p1}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_12

    #@6
    invoke-static {p2}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_12

    #@c
    invoke-static {p3}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_13

    #@12
    :cond_12
    :goto_12
    return-object p1

    #@13
    :cond_13
    const-string v0, "?"

    #@15
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_41

    #@1b
    const-string v0, "&"

    #@1d
    :goto_1d
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    const-string v1, "="

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object p1

    #@40
    goto :goto_12

    #@41
    :cond_41
    const-string v0, "?"

    #@43
    goto :goto_1d
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    check-cast p1, [Ljava/lang/String;

    #@2
    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/OpenUrlTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    aget-object v0, p1, v0

    #@3
    invoke-static {v0}, Lcom/facebook/ads/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_11

    #@9
    const-string v1, "#"

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_13

    #@11
    :cond_11
    :goto_11
    const/4 v0, 0x0

    #@12
    return-object v0

    #@13
    :cond_13
    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/OpenUrlTask;->addAnalogInfo(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lcom/facebook/ads/internal/OpenUrlTask;->extraData:Ljava/util/Map;

    #@19
    if-eqz v1, :cond_40

    #@1b
    iget-object v1, p0, Lcom/facebook/ads/internal/OpenUrlTask;->extraData:Ljava/util/Map;

    #@1d
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@20
    move-result-object v1

    #@21
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v3

    #@25
    move-object v2, v0

    #@26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_41

    #@2c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Ljava/lang/String;

    #@32
    iget-object v1, p0, Lcom/facebook/ads/internal/OpenUrlTask;->extraData:Ljava/util/Map;

    #@34
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, Ljava/lang/String;

    #@3a
    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/internal/OpenUrlTask;->addData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    move-object v2, v0

    #@3f
    goto :goto_26

    #@40
    :cond_40
    move-object v2, v0

    #@41
    :cond_41
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    #@43
    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    #@46
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    #@48
    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    #@4b
    :try_start_4b
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    #@4e
    goto :goto_11

    #@4f
    :catch_4f
    move-exception v0

    #@50
    sget-object v1, Lcom/facebook/ads/internal/OpenUrlTask;->TAG:Ljava/lang/String;

    #@52
    new-instance v3, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string v4, "Error opening url: "

    #@59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEvent;->newErrorEvent(Ljava/lang/Exception;)Lcom/facebook/ads/internal/AdClientEvent;

    #@6b
    move-result-object v0

    #@6c
    invoke-static {v0}, Lcom/facebook/ads/internal/AdClientEventManager;->addClientEvent(Lcom/facebook/ads/internal/AdClientEvent;)V

    #@6f
    goto :goto_11
.end method
