.class public Lcom/facebook/ads/internal/action/LinkAdAction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/action/AdAction;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/ads/internal/action/LinkAdAction;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/ads/internal/action/LinkAdAction;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/ads/internal/action/LinkAdAction;->context:Landroid/content/Context;

    #@5
    iput-object p2, p0, Lcom/facebook/ads/internal/action/LinkAdAction;->uri:Landroid/net/Uri;

    #@7
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 5

    #@0
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string v1, "android.intent.action.VIEW"

    #@4
    iget-object v2, p0, Lcom/facebook/ads/internal/action/LinkAdAction;->uri:Landroid/net/Uri;

    #@6
    const-string v3, "link"

    #@8
    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@f
    move-result-object v2

    #@10
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@13
    :try_start_13
    iget-object v1, p0, Lcom/facebook/ads/internal/action/LinkAdAction;->context:Landroid/content/Context;

    #@15
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_19

    #@18
    :goto_18
    return-void

    #@19
    :catch_19
    move-exception v0

    #@1a
    sget-object v1, Lcom/facebook/ads/internal/action/LinkAdAction;->TAG:Ljava/lang/String;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string v3, "Failed to open market url: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    iget-object v3, p0, Lcom/facebook/ads/internal/action/LinkAdAction;->uri:Landroid/net/Uri;

    #@29
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    goto :goto_18
.end method
