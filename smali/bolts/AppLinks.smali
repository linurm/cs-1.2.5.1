.class public final Lbolts/AppLinks;
.super Ljava/lang/Object;


# static fields
.field static final KEY_NAME_APPLINK_DATA:Ljava/lang/String; = "al_applink_data"

.field static final KEY_NAME_EXTRAS:Ljava/lang/String; = "extras"

.field static final KEY_NAME_TARGET:Ljava/lang/String; = "target_url"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 2

    #@0
    const-string v0, "al_applink_data"

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getAppLinkExtras(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 3

    #@0
    invoke-static {p0}, Lbolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    const-string v1, "extras"

    #@a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@d
    move-result-object v0

    #@e
    goto :goto_7
.end method

.method public static getTargetUrl(Landroid/content/Intent;)Landroid/net/Uri;
    .registers 3

    #@0
    invoke-static {p0}, Lbolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_13

    #@6
    const-string v1, "target_url"

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_13

    #@e
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@11
    move-result-object v0

    #@12
    :goto_12
    return-object v0

    #@13
    :cond_13
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@16
    move-result-object v0

    #@17
    goto :goto_12
.end method
