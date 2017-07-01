.class public final Lcom/facebook/internal/NativeProtocol;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;,
        Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;,
        Lcom/facebook/internal/NativeProtocol$NativeAppInfo;,
        Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;
    }
.end annotation


# static fields
.field public static final ACTION_FEED_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.FEED_DIALOG"

.field public static final ACTION_FEED_DIALOG_REPLY:Ljava/lang/String; = "com.facebook.platform.action.reply.FEED_DIALOG"

.field public static final ACTION_MESSAGE_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.MESSAGE_DIALOG"

.field public static final ACTION_MESSAGE_DIALOG_REPLY:Ljava/lang/String; = "com.facebook.platform.action.reply.MESSAGE_DIALOG"

.field public static final ACTION_OGACTIONPUBLISH_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

.field public static final ACTION_OGACTIONPUBLISH_DIALOG_REPLY:Ljava/lang/String; = "com.facebook.platform.action.reply.OGACTIONPUBLISH_DIALOG"

.field public static final ACTION_OGMESSAGEPUBLISH_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

.field public static final ACTION_OGMESSAGEPUBLISH_DIALOG_REPLY:Ljava/lang/String; = "com.facebook.platform.action.reply.OGMESSAGEPUBLISH_DIALOG"

.field public static final AUDIENCE_EVERYONE:Ljava/lang/String; = "EVERYONE"

.field public static final AUDIENCE_FRIENDS:Ljava/lang/String; = "ALL_FRIENDS"

.field public static final AUDIENCE_ME:Ljava/lang/String; = "SELF"

.field private static final CONTENT_SCHEME:Ljava/lang/String; = "content://"

.field public static final DIALOG_REQUEST_CODE:I = 0xfacf

.field public static final ERROR_APPLICATION_ERROR:Ljava/lang/String; = "ApplicationError"

.field public static final ERROR_NETWORK_ERROR:Ljava/lang/String; = "NetworkError"

.field public static final ERROR_PERMISSION_DENIED:Ljava/lang/String; = "PermissionDenied"

.field public static final ERROR_PROTOCOL_ERROR:Ljava/lang/String; = "ProtocolError"

.field public static final ERROR_SERVICE_DISABLED:Ljava/lang/String; = "ServiceDisabled"

.field public static final ERROR_UNKNOWN_ERROR:Ljava/lang/String; = "UnknownError"

.field public static final ERROR_USER_CANCELED:Ljava/lang/String; = "UserCanceled"

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "com.facebook.platform.extra.ACCESS_TOKEN"

.field public static final EXTRA_ACTION:Ljava/lang/String; = "com.facebook.platform.extra.ACTION"

.field public static final EXTRA_ACTION_TYPE:Ljava/lang/String; = "com.facebook.platform.extra.ACTION_TYPE"

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.facebook.platform.extra.APPLICATION_ID"

.field public static final EXTRA_APPLICATION_NAME:Ljava/lang/String; = "com.facebook.platform.extra.APPLICATION_NAME"

.field public static final EXTRA_DATA_FAILURES_FATAL:Ljava/lang/String; = "com.facebook.platform.extra.DATA_FAILURES_FATAL"

.field public static final EXTRA_DESCRIPTION:Ljava/lang/String; = "com.facebook.platform.extra.DESCRIPTION"

.field public static final EXTRA_EXPIRES_SECONDS_SINCE_EPOCH:Ljava/lang/String; = "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

.field public static final EXTRA_FRIEND_TAGS:Ljava/lang/String; = "com.facebook.platform.extra.FRIENDS"

.field public static final EXTRA_GET_INSTALL_DATA_PACKAGE:Ljava/lang/String; = "com.facebook.platform.extra.INSTALLDATA_PACKAGE"

.field public static final EXTRA_IMAGE:Ljava/lang/String; = "com.facebook.platform.extra.IMAGE"

.field public static final EXTRA_LINK:Ljava/lang/String; = "com.facebook.platform.extra.LINK"

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "com.facebook.platform.extra.PERMISSIONS"

.field public static final EXTRA_PHOTOS:Ljava/lang/String; = "com.facebook.platform.extra.PHOTOS"

.field public static final EXTRA_PLACE_TAG:Ljava/lang/String; = "com.facebook.platform.extra.PLACE"

.field public static final EXTRA_PREVIEW_PROPERTY_NAME:Ljava/lang/String; = "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME"

.field public static final EXTRA_PROTOCOL_ACTION:Ljava/lang/String; = "com.facebook.platform.protocol.PROTOCOL_ACTION"

.field public static final EXTRA_PROTOCOL_CALL_ID:Ljava/lang/String; = "com.facebook.platform.protocol.CALL_ID"

.field public static final EXTRA_PROTOCOL_VERSION:Ljava/lang/String; = "com.facebook.platform.protocol.PROTOCOL_VERSION"

.field static final EXTRA_PROTOCOL_VERSIONS:Ljava/lang/String; = "com.facebook.platform.extra.PROTOCOL_VERSIONS"

.field public static final EXTRA_REF:Ljava/lang/String; = "com.facebook.platform.extra.REF"

.field public static final EXTRA_SUBTITLE:Ljava/lang/String; = "com.facebook.platform.extra.SUBTITLE"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "com.facebook.platform.extra.TITLE"

.field private static final FACEBOOK_APP_INFO:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

.field private static final FACEBOOK_PROXY_AUTH_ACTIVITY:Ljava/lang/String; = "com.facebook.katana.ProxyAuth"

.field public static final FACEBOOK_PROXY_AUTH_APP_ID_KEY:Ljava/lang/String; = "client_id"

.field public static final FACEBOOK_PROXY_AUTH_E2E_KEY:Ljava/lang/String; = "e2e"

.field public static final FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY:Ljava/lang/String; = "scope"

.field private static final FACEBOOK_TOKEN_REFRESH_ACTIVITY:Ljava/lang/String; = "com.facebook.katana.platform.TokenRefreshService"

.field public static final IMAGE_URL_KEY:Ljava/lang/String; = "url"

.field public static final IMAGE_USER_GENERATED_KEY:Ljava/lang/String; = "user_generated"

.field static final INTENT_ACTION_PLATFORM_ACTIVITY:Ljava/lang/String; = "com.facebook.platform.PLATFORM_ACTIVITY"

.field static final INTENT_ACTION_PLATFORM_SERVICE:Ljava/lang/String; = "com.facebook.platform.PLATFORM_SERVICE"

.field private static final KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_GET_ACCESS_TOKEN_REPLY:I = 0x10001

.field public static final MESSAGE_GET_ACCESS_TOKEN_REQUEST:I = 0x10000

.field public static final MESSAGE_GET_INSTALL_DATA_REPLY:I = 0x10005

.field public static final MESSAGE_GET_INSTALL_DATA_REQUEST:I = 0x10004

.field static final MESSAGE_GET_PROTOCOL_VERSIONS_REPLY:I = 0x10003

.field static final MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST:I = 0x10002

.field public static final NO_PROTOCOL_AVAILABLE:I = -0x1

.field public static final OPEN_GRAPH_CREATE_OBJECT_KEY:Ljava/lang/String; = "fbsdk:create_object"

.field private static final PLATFORM_ASYNC_APPCALL_ACTION:Ljava/lang/String; = "com.facebook.platform.AppCallResultBroadcast"

.field private static final PLATFORM_PROVIDER_VERSIONS:Ljava/lang/String; = ".provider.PlatformProvider/versions"

.field private static final PLATFORM_PROVIDER_VERSION_COLUMN:Ljava/lang/String; = "version"

.field public static final PROTOCOL_VERSION_20121101:I = 0x133060d

.field public static final PROTOCOL_VERSION_20130502:I = 0x1332ac6

.field public static final PROTOCOL_VERSION_20130618:I = 0x1332b3a

.field public static final PROTOCOL_VERSION_20131107:I = 0x1332d23

.field public static final PROTOCOL_VERSION_20140204:I = 0x13350ac

.field public static final PROTOCOL_VERSION_20140324:I = 0x1335124

.field public static final STATUS_ERROR_CODE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_CODE"

.field public static final STATUS_ERROR_DESCRIPTION:Ljava/lang/String; = "com.facebook.platform.status.ERROR_DESCRIPTION"

.field public static final STATUS_ERROR_JSON:Ljava/lang/String; = "com.facebook.platform.status.ERROR_JSON"

.field public static final STATUS_ERROR_SUBCODE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_SUBCODE"

.field public static final STATUS_ERROR_TYPE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_TYPE"

.field private static actionToAppInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static facebookAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    new-instance v0, Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$1;)V

    #@6
    sput-object v0, Lcom/facebook/internal/NativeProtocol;->FACEBOOK_APP_INFO:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    #@8
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->buildFacebookAppList()Ljava/util/List;

    #@b
    move-result-object v0

    #@c
    sput-object v0, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    #@e
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->buildActionToAppInfoMap()Ljava/util/Map;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Lcom/facebook/internal/NativeProtocol;->actionToAppInfoMap:Ljava/util/Map;

    #@14
    const/4 v0, 0x6

    #@15
    new-array v0, v0, [Ljava/lang/Integer;

    #@17
    const/4 v1, 0x0

    #@18
    const v2, 0x1335124

    #@1b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v2

    #@1f
    aput-object v2, v0, v1

    #@21
    const/4 v1, 0x1

    #@22
    const v2, 0x13350ac

    #@25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v2

    #@29
    aput-object v2, v0, v1

    #@2b
    const/4 v1, 0x2

    #@2c
    const v2, 0x1332d23

    #@2f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v2

    #@33
    aput-object v2, v0, v1

    #@35
    const/4 v1, 0x3

    #@36
    const v2, 0x1332b3a

    #@39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3c
    move-result-object v2

    #@3d
    aput-object v2, v0, v1

    #@3f
    const/4 v1, 0x4

    #@40
    const v2, 0x1332ac6

    #@43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@46
    move-result-object v2

    #@47
    aput-object v2, v0, v1

    #@49
    const/4 v1, 0x5

    #@4a
    const v2, 0x133060d

    #@4d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v2

    #@51
    aput-object v2, v0, v1

    #@53
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@56
    move-result-object v0

    #@57
    sput-object v0, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;

    #@59
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static buildActionToAppInfoMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;>;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@a
    new-instance v2, Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;

    #@c
    const/4 v3, 0x0

    #@d
    invoke-direct {v2, v3}, Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$1;)V

    #@10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    const-string v2, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    #@15
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    #@17
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    const-string v2, "com.facebook.platform.action.request.FEED_DIALOG"

    #@1c
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    #@1e
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    const-string v2, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    #@23
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    const-string v2, "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

    #@28
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    return-object v0
.end method

.method private static buildFacebookAppList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    sget-object v1, Lcom/facebook/internal/NativeProtocol;->FACEBOOK_APP_INFO:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    #@7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a
    new-instance v1, Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;

    #@c
    const/4 v2, 0x0

    #@d
    invoke-direct {v1, v2}, Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$1;)V

    #@10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    return-object v0
.end method

.method private static buildPlatformProviderVersionURI(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/net/Uri;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "content://"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string v1, ".provider.PlatformProvider/versions"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@20
    move-result-object v0

    #@21
    return-object v0
.end method

.method public static createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;
    .registers 7

    #@0
    const-string v0, "com.facebook.platform.PLATFORM_ACTIVITY"

    #@2
    invoke-static {p0, v0, p1}, Lcom/facebook/internal/NativeProtocol;->findActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@d
    move-result-object v1

    #@e
    const-string v2, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    #@10
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@13
    move-result-object v1

    #@14
    const-string v2, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    #@16
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@19
    goto :goto_9
.end method

.method public static createPlatformServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5

    #@0
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_2e

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    #@12
    new-instance v2, Landroid/content/Intent;

    #@14
    const-string v3, "com.facebook.platform.PLATFORM_SERVICE"

    #@16
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@19
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@20
    move-result-object v2

    #@21
    const-string v3, "android.intent.category.DEFAULT"

    #@23
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@26
    move-result-object v2

    #@27
    invoke-static {p0, v2, v0}, Lcom/facebook/internal/NativeProtocol;->validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    #@2a
    move-result-object v0

    #@2b
    if-eqz v0, :cond_6

    #@2d
    :goto_2d
    return-object v0

    #@2e
    :cond_2e
    const/4 v0, 0x0

    #@2f
    goto :goto_2d
.end method

.method public static createProxyAuthIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_6e

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    #@12
    new-instance v2, Landroid/content/Intent;

    #@14
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@17
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    const-string v4, "com.facebook.katana.ProxyAuth"

    #@1d
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@20
    move-result-object v2

    #@21
    const-string v3, "client_id"

    #@23
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@26
    move-result-object v2

    #@27
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_38

    #@2d
    const-string v3, "scope"

    #@2f
    const-string v4, ","

    #@31
    invoke-static {v4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@38
    :cond_38
    invoke-static {p3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@3b
    move-result v3

    #@3c
    if-nez v3, :cond_43

    #@3e
    const-string v3, "e2e"

    #@40
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@43
    :cond_43
    const-string v3, "response_type"

    #@45
    const-string v4, "token"

    #@47
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@4a
    const-string v3, "return_scopes"

    #@4c
    const-string v4, "true"

    #@4e
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@51
    invoke-static {}, Lcom/facebook/Settings;->getPlatformCompatibilityEnabled()Z

    #@54
    move-result v3

    #@55
    if-nez v3, :cond_67

    #@57
    const-string v3, "legacy_override"

    #@59
    const-string v4, "v2.0"

    #@5b
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@5e
    if-eqz p4, :cond_67

    #@60
    const-string v3, "auth_type"

    #@62
    const-string v4, "rerequest"

    #@64
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@67
    :cond_67
    invoke-static {p0, v2, v0}, Lcom/facebook/internal/NativeProtocol;->validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    #@6a
    move-result-object v0

    #@6b
    if-eqz v0, :cond_6

    #@6d
    :goto_6d
    return-object v0

    #@6e
    :cond_6e
    const/4 v0, 0x0

    #@6f
    goto :goto_6d
.end method

.method public static createTokenRefreshIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 6

    #@0
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_28

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    #@12
    new-instance v2, Landroid/content/Intent;

    #@14
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    #@17
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    const-string v4, "com.facebook.katana.platform.TokenRefreshService"

    #@1d
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@20
    move-result-object v2

    #@21
    invoke-static {p0, v2, v0}, Lcom/facebook/internal/NativeProtocol;->validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    #@24
    move-result-object v0

    #@25
    if-eqz v0, :cond_6

    #@27
    :goto_27
    return-object v0

    #@28
    :cond_28
    const/4 v0, 0x0

    #@29
    goto :goto_27
.end method

.method private static findActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->actionToAppInfoMap:Ljava/util/Map;

    #@3
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/util/List;

    #@9
    if-nez v0, :cond_d

    #@b
    move-object v0, v1

    #@c
    :cond_c
    :goto_c
    return-object v0

    #@d
    :cond_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    move-object v0, v1

    #@12
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_c

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    #@1e
    new-instance v1, Landroid/content/Intent;

    #@20
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@23
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@2e
    move-result-object v1

    #@2f
    const-string v3, "android.intent.category.DEFAULT"

    #@31
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@34
    move-result-object v1

    #@35
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/NativeProtocol;->validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    #@38
    move-result-object v0

    #@39
    if-eqz v0, :cond_12

    #@3b
    goto :goto_c
.end method

.method public static getErrorFromResult(Landroid/content/Intent;)Ljava/lang/Exception;
    .registers 4

    #@0
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->isErrorResult(Landroid/content/Intent;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    const-string v0, "com.facebook.platform.status.ERROR_TYPE"

    #@a
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    #@10
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    const-string v2, "UserCanceled"

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_22

    #@1c
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    #@1e
    invoke-direct {v0, v1}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    #@21
    goto :goto_7

    #@22
    :cond_22
    new-instance v0, Lcom/facebook/FacebookException;

    #@24
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@27
    goto :goto_7
.end method

.method public static getLatestAvailableProtocolVersionForAction(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4

    #@0
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->actionToAppInfoMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    invoke-static {p0, v0, p2}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAppInfoList(Landroid/content/Context;Ljava/util/List;I)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method private static getLatestAvailableProtocolVersionForAppInfo(Landroid/content/Context;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;I)I
    .registers 11

    #@0
    const/4 v6, -0x1

    #@1
    const/4 v7, 0x0

    #@2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    invoke-static {p1}, Lcom/facebook/internal/NativeProtocol;->buildPlatformProviderVersionURI(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/net/Uri;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x1

    #@b
    :try_start_b
    new-array v2, v2, [Ljava/lang/String;

    #@d
    const/4 v3, 0x0

    #@e
    const-string v4, "version"

    #@10
    aput-object v4, v2, v3

    #@12
    const/4 v3, 0x0

    #@13
    const/4 v4, 0x0

    #@14
    const/4 v5, 0x0

    #@15
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_7c

    #@18
    move-result-object v1

    #@19
    if-nez v1, :cond_22

    #@1b
    if-eqz v1, :cond_20

    #@1d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@20
    :cond_20
    move v0, v6

    #@21
    :cond_21
    :goto_21
    return v0

    #@22
    :cond_22
    :try_start_22
    new-instance v2, Ljava/util/HashSet;

    #@24
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@27
    :goto_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_46

    #@2d
    const-string v0, "version"

    #@2f
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    #@32
    move-result v0

    #@33
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    #@36
    move-result v0

    #@37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3a
    move-result-object v0

    #@3b
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_22 .. :try_end_3e} :catchall_3f

    #@3e
    goto :goto_27

    #@3f
    :catchall_3f
    move-exception v0

    #@40
    :goto_40
    if-eqz v1, :cond_45

    #@42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@45
    :cond_45
    throw v0

    #@46
    :cond_46
    :try_start_46
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;

    #@48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@4b
    move-result-object v3

    #@4c
    :cond_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_75

    #@52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Ljava/lang/Integer;

    #@58
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_5b
    .catchall {:try_start_46 .. :try_end_5b} :catchall_3f

    #@5b
    move-result v4

    #@5c
    if-ge v4, p2, :cond_65

    #@5e
    if-eqz v1, :cond_63

    #@60
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@63
    :cond_63
    move v0, v6

    #@64
    goto :goto_21

    #@65
    :cond_65
    :try_start_65
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@68
    move-result v4

    #@69
    if-eqz v4, :cond_4c

    #@6b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_3f

    #@6e
    move-result v0

    #@6f
    if-eqz v1, :cond_21

    #@71
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@74
    goto :goto_21

    #@75
    :cond_75
    if-eqz v1, :cond_7a

    #@77
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@7a
    :cond_7a
    move v0, v6

    #@7b
    goto :goto_21

    #@7c
    :catchall_7c
    move-exception v0

    #@7d
    move-object v1, v7

    #@7e
    goto :goto_40
.end method

.method private static getLatestAvailableProtocolVersionForAppInfoList(Landroid/content/Context;Ljava/util/List;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;I)I"
        }
    .end annotation

    #@0
    const/4 v1, -0x1

    #@1
    if-nez p1, :cond_5

    #@3
    move v0, v1

    #@4
    :goto_4
    return v0

    #@5
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1c

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    #@15
    invoke-static {p0, v0, p2}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAppInfo(Landroid/content/Context;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;I)I

    #@18
    move-result v0

    #@19
    if-eq v0, v1, :cond_9

    #@1b
    goto :goto_4

    #@1c
    :cond_1c
    move v0, v1

    #@1d
    goto :goto_4
.end method

.method public static getLatestAvailableProtocolVersionForService(Landroid/content/Context;I)I
    .registers 3

    #@0
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    #@2
    invoke-static {p0, v0, p1}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAppInfoList(Landroid/content/Context;Ljava/util/List;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public static isErrorResult(Landroid/content/Intent;)Z
    .registers 2

    #@0
    const-string v0, "com.facebook.platform.status.ERROR_TYPE"

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method static validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_5

    #@3
    move-object p1, v0

    #@4
    :cond_4
    :goto_4
    return-object p1

    #@5
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@d
    move-result-object v1

    #@e
    if-nez v1, :cond_12

    #@10
    move-object p1, v0

    #@11
    goto :goto_4

    #@12
    :cond_12
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@14
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@16
    invoke-virtual {p2, p0, v1}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_4

    #@1c
    move-object p1, v0

    #@1d
    goto :goto_4
.end method

.method static validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_5

    #@3
    move-object p1, v0

    #@4
    :cond_4
    :goto_4
    return-object p1

    #@5
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@d
    move-result-object v1

    #@e
    if-nez v1, :cond_12

    #@10
    move-object p1, v0

    #@11
    goto :goto_4

    #@12
    :cond_12
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@14
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@16
    invoke-virtual {p2, p0, v1}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    #@19
    move-result v1

    #@1a
    if-nez v1, :cond_4

    #@1c
    move-object p1, v0

    #@1d
    goto :goto_4
.end method
