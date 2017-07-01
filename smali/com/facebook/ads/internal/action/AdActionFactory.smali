.class public Lcom/facebook/ads/internal/action/AdActionFactory;
.super Ljava/lang/Object;


# static fields
.field private static final AD_ACTION_APP_AD:Ljava/lang/String; = "store"

.field private static final AD_ACTION_LINK_AD:Ljava/lang/String; = "open_link"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAdAction(Landroid/content/Context;Landroid/net/Uri;)Lcom/facebook/ads/internal/action/AdAction;
    .registers 4

    #@0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string v1, "store"

    #@6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_12

    #@c
    new-instance v0, Lcom/facebook/ads/internal/action/AppAdAction;

    #@e
    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/action/AppAdAction;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    #@11
    :goto_11
    return-object v0

    #@12
    :cond_12
    const-string v1, "open_link"

    #@14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_20

    #@1a
    new-instance v0, Lcom/facebook/ads/internal/action/LinkAdAction;

    #@1c
    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/action/LinkAdAction;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    #@1f
    goto :goto_11

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    goto :goto_11
.end method
