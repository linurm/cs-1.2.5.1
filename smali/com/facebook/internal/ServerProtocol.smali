.class public final Lcom/facebook/internal/ServerProtocol;
.super Ljava/lang/Object;


# static fields
.field private static final DIALOG_AUTHORITY_FORMAT:Ljava/lang/String; = "m.%s"

.field public static final DIALOG_PARAM_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final DIALOG_PARAM_APP_ID:Ljava/lang/String; = "app_id"

.field public static final DIALOG_PARAM_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field public static final DIALOG_PARAM_CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final DIALOG_PARAM_DISPLAY:Ljava/lang/String; = "display"

.field public static final DIALOG_PARAM_E2E:Ljava/lang/String; = "e2e"

.field public static final DIALOG_PARAM_LEGACY_OVERRIDE:Ljava/lang/String; = "legacy_override"

.field public static final DIALOG_PARAM_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field public static final DIALOG_PARAM_RESPONSE_TYPE:Ljava/lang/String; = "response_type"

.field public static final DIALOG_PARAM_RETURN_SCOPES:Ljava/lang/String; = "return_scopes"

.field public static final DIALOG_PARAM_SCOPE:Ljava/lang/String; = "scope"

.field public static final DIALOG_PATH:Ljava/lang/String; = "dialog/"

.field public static final DIALOG_REREQUEST_AUTH_TYPE:Ljava/lang/String; = "rerequest"

.field public static final DIALOG_RESPONSE_TYPE_TOKEN:Ljava/lang/String; = "token"

.field public static final DIALOG_RETURN_SCOPES_TRUE:Ljava/lang/String; = "true"

.field public static final GRAPH_API_VERSION:Ljava/lang/String; = "v2.0"

.field private static final GRAPH_URL_FORMAT:Ljava/lang/String; = "https://graph.%s"

.field private static final GRAPH_VIDEO_URL_FORMAT:Ljava/lang/String; = "https://graph-video.%s"

.field private static final LEGACY_API_VERSION:Ljava/lang/String; = "v1.0"

.field public static final REST_METHOD_BASE:Ljava/lang/String; = "method"

.field private static final REST_URL_FORMAT:Ljava/lang/String; = "https://api.%s"

.field public static final errorsProxyAuthDisabled:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final errorsUserCanceled:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    new-array v0, v4, [Ljava/lang/String;

    #@5
    const-string v1, "service_disabled"

    #@7
    aput-object v1, v0, v2

    #@9
    const-string v1, "AndroidAuthKillSwitchException"

    #@b
    aput-object v1, v0, v3

    #@d
    invoke-static {v0}, Lcom/facebook/internal/Utility;->unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;

    #@10
    move-result-object v0

    #@11
    sput-object v0, Lcom/facebook/internal/ServerProtocol;->errorsProxyAuthDisabled:Ljava/util/Collection;

    #@13
    new-array v0, v4, [Ljava/lang/String;

    #@15
    const-string v1, "access_denied"

    #@17
    aput-object v1, v0, v2

    #@19
    const-string v1, "OAuthAccessDeniedException"

    #@1b
    aput-object v1, v0, v3

    #@1d
    invoke-static {v0}, Lcom/facebook/internal/Utility;->unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;

    #@20
    move-result-object v0

    #@21
    sput-object v0, Lcom/facebook/internal/ServerProtocol;->errorsUserCanceled:Ljava/util/Collection;

    #@23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final getAPIVersion()Ljava/lang/String;
    .registers 1

    #@0
    invoke-static {}, Lcom/facebook/Settings;->getPlatformCompatibilityEnabled()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_9

    #@6
    const-string v0, "v1.0"

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    const-string v0, "v2.0"

    #@b
    goto :goto_8
.end method

.method public static final getDialogAuthority()Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, "m.%s"

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {}, Lcom/facebook/Settings;->getFacebookDomain()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    aput-object v3, v1, v2

    #@c
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public static final getGraphUrlBase()Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, "https://graph.%s"

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {}, Lcom/facebook/Settings;->getFacebookDomain()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    aput-object v3, v1, v2

    #@c
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public static final getGraphVideoUrlBase()Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, "https://graph-video.%s"

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {}, Lcom/facebook/Settings;->getFacebookDomain()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    aput-object v3, v1, v2

    #@c
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public static final getRestUrlBase()Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, "https://api.%s"

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {}, Lcom/facebook/Settings;->getFacebookDomain()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    aput-object v3, v1, v2

    #@c
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method
