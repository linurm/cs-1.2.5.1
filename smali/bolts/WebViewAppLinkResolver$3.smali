.class Lbolts/WebViewAppLinkResolver$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/WebViewAppLinkResolver;->getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/WebViewAppLinkResolver;

.field final synthetic val$content:Lbolts/Capture;

.field final synthetic val$contentType:Lbolts/Capture;

.field final synthetic val$url:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lbolts/WebViewAppLinkResolver;Landroid/net/Uri;Lbolts/Capture;Lbolts/Capture;)V
    .registers 5

    #@0
    iput-object p1, p0, Lbolts/WebViewAppLinkResolver$3;->this$0:Lbolts/WebViewAppLinkResolver;

    #@2
    iput-object p2, p0, Lbolts/WebViewAppLinkResolver$3;->val$url:Landroid/net/Uri;

    #@4
    iput-object p3, p0, Lbolts/WebViewAppLinkResolver$3;->val$content:Lbolts/Capture;

    #@6
    iput-object p4, p0, Lbolts/WebViewAppLinkResolver$3;->val$contentType:Lbolts/Capture;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lbolts/WebViewAppLinkResolver$3;->call()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    new-instance v0, Ljava/net/URL;

    #@3
    iget-object v1, p0, Lbolts/WebViewAppLinkResolver$3;->val$url:Landroid/net/Uri;

    #@5
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@c
    move-object v1, v0

    #@d
    move-object v0, v2

    #@e
    :goto_e
    if-eqz v1, :cond_57

    #@10
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@13
    move-result-object v1

    #@14
    instance-of v0, v1, Ljava/net/HttpURLConnection;

    #@16
    if-eqz v0, :cond_1f

    #@18
    move-object v0, v1

    #@19
    check-cast v0, Ljava/net/HttpURLConnection;

    #@1b
    const/4 v3, 0x1

    #@1c
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    #@1f
    :cond_1f
    const-string v0, "Prefer-Html-Meta-Tags"

    #@21
    const-string v3, "al"

    #@23
    invoke-virtual {v1, v0, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@26
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    #@29
    instance-of v0, v1, Ljava/net/HttpURLConnection;

    #@2b
    if-eqz v0, :cond_54

    #@2d
    move-object v0, v1

    #@2e
    check-cast v0, Ljava/net/HttpURLConnection;

    #@30
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@33
    move-result v3

    #@34
    const/16 v4, 0x12c

    #@36
    if-lt v3, v4, :cond_51

    #@38
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@3b
    move-result v3

    #@3c
    const/16 v4, 0x190

    #@3e
    if-ge v3, v4, :cond_51

    #@40
    new-instance v3, Ljava/net/URL;

    #@42
    const-string v4, "Location"

    #@44
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@4b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    #@4e
    move-object v0, v1

    #@4f
    move-object v1, v3

    #@50
    goto :goto_e

    #@51
    :cond_51
    move-object v0, v1

    #@52
    move-object v1, v2

    #@53
    goto :goto_e

    #@54
    :cond_54
    move-object v0, v1

    #@55
    move-object v1, v2

    #@56
    goto :goto_e

    #@57
    :cond_57
    :try_start_57
    iget-object v1, p0, Lbolts/WebViewAppLinkResolver$3;->val$content:Lbolts/Capture;

    #@59
    # invokes: Lbolts/WebViewAppLinkResolver;->readFromConnection(Ljava/net/URLConnection;)Ljava/lang/String;
    invoke-static {v0}, Lbolts/WebViewAppLinkResolver;->access$300(Ljava/net/URLConnection;)Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    invoke-virtual {v1, v3}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    #@60
    iget-object v1, p0, Lbolts/WebViewAppLinkResolver$3;->val$contentType:Lbolts/Capture;

    #@62
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v1, v3}, Lbolts/Capture;->set(Ljava/lang/Object;)V
    :try_end_69
    .catchall {:try_start_57 .. :try_end_69} :catchall_73

    #@69
    instance-of v1, v0, Ljava/net/HttpURLConnection;

    #@6b
    if-eqz v1, :cond_72

    #@6d
    check-cast v0, Ljava/net/HttpURLConnection;

    #@6f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    #@72
    :cond_72
    return-object v2

    #@73
    :catchall_73
    move-exception v1

    #@74
    instance-of v2, v0, Ljava/net/HttpURLConnection;

    #@76
    if-eqz v2, :cond_7d

    #@78
    check-cast v0, Ljava/net/HttpURLConnection;

    #@7a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    #@7d
    :cond_7d
    throw v1
.end method
