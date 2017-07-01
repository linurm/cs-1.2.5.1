.class public final Lcom/facebook/AccessToken;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AccessToken$SerializationProxyV1;,
        Lcom/facebook/AccessToken$SerializationProxyV2;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final ACCESS_TOKEN_KEY:Ljava/lang/String; = "access_token"

.field private static final ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

.field private static final DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/facebook/AccessTokenSource;

.field private static final DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

.field private static final DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

.field static final EXPIRES_IN_KEY:Ljava/lang/String; = "expires_in"

.field private static final MAX_DATE:Ljava/util/Date;

.field private static final MIN_DATE:Ljava/util/Date;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final declinedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final expires:Ljava/util/Date;

.field private final lastRefresh:Ljava/util/Date;

.field private final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final source:Lcom/facebook/AccessTokenSource;

.field private final token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const-class v0, Lcom/facebook/AccessToken;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_34

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    sput-boolean v0, Lcom/facebook/AccessToken;->$assertionsDisabled:Z

    #@b
    new-instance v0, Ljava/util/Date;

    #@d
    const-wide/high16 v2, -0x8000000000000000L

    #@f
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@12
    sput-object v0, Lcom/facebook/AccessToken;->MIN_DATE:Ljava/util/Date;

    #@14
    new-instance v0, Ljava/util/Date;

    #@16
    const-wide v2, 0x7fffffffffffffffL

    #@1b
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@1e
    sput-object v0, Lcom/facebook/AccessToken;->MAX_DATE:Ljava/util/Date;

    #@20
    sget-object v0, Lcom/facebook/AccessToken;->MAX_DATE:Ljava/util/Date;

    #@22
    sput-object v0, Lcom/facebook/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

    #@24
    new-instance v0, Ljava/util/Date;

    #@26
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@29
    sput-object v0, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    #@2b
    sget-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    #@2d
    sput-object v0, Lcom/facebook/AccessToken;->DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/facebook/AccessTokenSource;

    #@2f
    sget-object v0, Lcom/facebook/AccessToken;->MIN_DATE:Ljava/util/Date;

    #@31
    sput-object v0, Lcom/facebook/AccessToken;->ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

    #@33
    return-void

    #@34
    :cond_34
    const/4 v0, 0x0

    #@35
    goto :goto_9
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p3, :cond_9

    #@5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@8
    move-result-object p3

    #@9
    :cond_9
    if-nez p4, :cond_f

    #@b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@e
    move-result-object p4

    #@f
    :cond_f
    iput-object p2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    #@11
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    #@17
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Lcom/facebook/AccessToken;->declinedPermissions:Ljava/util/List;

    #@1d
    iput-object p1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    #@1f
    iput-object p5, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    #@21
    iput-object p6, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    #@23
    return-void
.end method

.method private appendPermissions(Ljava/lang/StringBuilder;)V
    .registers 4

    #@0
    const-string v0, " permissions:"

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5
    iget-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    #@7
    if-nez v0, :cond_f

    #@9
    const-string v0, "null"

    #@b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    :goto_e
    return-void

    #@f
    :cond_f
    const-string v0, "["

    #@11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    const-string v0, ", "

    #@16
    iget-object v1, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    #@18
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    const-string v0, "]"

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    goto :goto_e
.end method

.method static createEmptyToken()Lcom/facebook/AccessToken;
    .registers 7

    #@0
    const/4 v3, 0x0

    #@1
    new-instance v0, Lcom/facebook/AccessToken;

    #@3
    const-string v1, ""

    #@5
    sget-object v2, Lcom/facebook/AccessToken;->ALREADY_EXPIRED_EXPIRATION_TIME:Ljava/util/Date;

    #@7
    sget-object v5, Lcom/facebook/AccessTokenSource;->NONE:Lcom/facebook/AccessTokenSource;

    #@9
    sget-object v6, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    #@b
    move-object v4, v3

    #@c
    invoke-direct/range {v0 .. v6}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    #@f
    return-object v0
.end method

.method private static createFromBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)Lcom/facebook/AccessToken;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/util/Date;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    #@0
    const/4 v4, 0x0

    #@1
    const-string v0, "access_token"

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    const-string v0, "expires_in"

    #@9
    invoke-static {p1, v0, p3}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    #@c
    move-result-object v2

    #@d
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_15

    #@13
    if-nez v2, :cond_17

    #@15
    :cond_15
    move-object v0, v4

    #@16
    :goto_16
    return-object v0

    #@17
    :cond_17
    new-instance v0, Lcom/facebook/AccessToken;

    #@19
    new-instance v6, Ljava/util/Date;

    #@1b
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    #@1e
    move-object v3, p0

    #@1f
    move-object v5, p2

    #@20
    invoke-direct/range {v0 .. v6}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    #@23
    goto :goto_16
.end method

.method static createFromCache(Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .registers 8

    #@0
    const-string v0, "com.facebook.TokenCachingStrategy.Permissions"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/AccessToken;->getPermissionsFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    #@5
    move-result-object v3

    #@6
    const-string v0, "com.facebook.TokenCachingStrategy.DeclinedPermissions"

    #@8
    invoke-static {p0, v0}, Lcom/facebook/AccessToken;->getPermissionsFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    #@b
    move-result-object v4

    #@c
    new-instance v0, Lcom/facebook/AccessToken;

    #@e
    const-string v1, "com.facebook.TokenCachingStrategy.Token"

    #@10
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    const-string v2, "com.facebook.TokenCachingStrategy.ExpirationDate"

    #@16
    invoke-static {p0, v2}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    #@19
    move-result-object v2

    #@1a
    invoke-static {p0}, Lcom/facebook/TokenCachingStrategy;->getSource(Landroid/os/Bundle;)Lcom/facebook/AccessTokenSource;

    #@1d
    move-result-object v5

    #@1e
    const-string v6, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    #@20
    invoke-static {p0, v6}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    #@23
    move-result-object v6

    #@24
    invoke-direct/range {v0 .. v6}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    #@27
    return-object v0
.end method

.method public static createFromExistingAccessToken(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcom/facebook/AccessTokenSource;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    #@0
    if-nez p1, :cond_19

    #@2
    sget-object v2, Lcom/facebook/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

    #@4
    :goto_4
    if-nez p2, :cond_17

    #@6
    sget-object v6, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    #@8
    :goto_8
    if-nez p3, :cond_15

    #@a
    sget-object v5, Lcom/facebook/AccessToken;->DEFAULT_ACCESS_TOKEN_SOURCE:Lcom/facebook/AccessTokenSource;

    #@c
    :goto_c
    new-instance v0, Lcom/facebook/AccessToken;

    #@e
    const/4 v4, 0x0

    #@f
    move-object v1, p0

    #@10
    move-object v3, p4

    #@11
    invoke-direct/range {v0 .. v6}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    #@14
    return-object v0

    #@15
    :cond_15
    move-object v5, p3

    #@16
    goto :goto_c

    #@17
    :cond_17
    move-object v6, p2

    #@18
    goto :goto_8

    #@19
    :cond_19
    move-object v2, p1

    #@1a
    goto :goto_4
.end method

.method public static createFromNativeLinkingIntent(Landroid/content/Intent;)Lcom/facebook/AccessToken;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "intent"

    #@3
    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@6
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@9
    move-result-object v1

    #@a
    if-nez v1, :cond_d

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@10
    move-result-object v1

    #@11
    sget-object v2, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    #@13
    new-instance v3, Ljava/util/Date;

    #@15
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    #@18
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/AccessToken;->createFromBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)Lcom/facebook/AccessToken;

    #@1b
    move-result-object v0

    #@1c
    goto :goto_c
.end method

.method static createFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .registers 6

    #@0
    const-string v0, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    #@2
    new-instance v1, Ljava/util/Date;

    #@4
    const-wide/16 v2, 0x0

    #@6
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@9
    invoke-static {p0, v0, v1}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    #@c
    move-result-object v0

    #@d
    const-string v1, "com.facebook.platform.extra.PERMISSIONS"

    #@f
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x0

    #@14
    const-string v3, "com.facebook.platform.extra.ACCESS_TOKEN"

    #@16
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-static {v1, v2, v3, v0, p1}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method static createFromRefresh(Lcom/facebook/AccessToken;Landroid/os/Bundle;)Lcom/facebook/AccessToken;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "FieldGetter"
        }
    .end annotation

    #@0
    sget-boolean v0, Lcom/facebook/AccessToken;->$assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1c

    #@4
    iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    #@6
    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    #@8
    if-eq v0, v1, :cond_1c

    #@a
    iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    #@c
    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/facebook/AccessTokenSource;

    #@e
    if-eq v0, v1, :cond_1c

    #@10
    iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    #@12
    sget-object v1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    #@14
    if-eq v0, v1, :cond_1c

    #@16
    new-instance v0, Ljava/lang/AssertionError;

    #@18
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@1b
    throw v0

    #@1c
    :cond_1c
    const-string v0, "expires_in"

    #@1e
    new-instance v1, Ljava/util/Date;

    #@20
    const-wide/16 v2, 0x0

    #@22
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@25
    invoke-static {p1, v0, v1}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    #@28
    move-result-object v0

    #@29
    const-string v1, "access_token"

    #@2b
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/List;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {p0}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/List;

    #@36
    move-result-object v3

    #@37
    iget-object v4, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    #@39
    invoke-static {v2, v3, v1, v0, v4}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method

.method static createFromString(Ljava/lang/String;Ljava/util/List;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/AccessTokenSource;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/AccessToken;

    #@2
    sget-object v2, Lcom/facebook/AccessToken;->DEFAULT_EXPIRATION_TIME:Ljava/util/Date;

    #@4
    const/4 v4, 0x0

    #@5
    sget-object v6, Lcom/facebook/AccessToken;->DEFAULT_LAST_REFRESH_TIME:Ljava/util/Date;

    #@7
    move-object v1, p0

    #@8
    move-object v3, p1

    #@9
    move-object v5, p2

    #@a
    invoke-direct/range {v0 .. v6}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    #@d
    return-object v0
.end method

.method static createFromTokenWithRefreshedPermissions(Lcom/facebook/AccessToken;Ljava/util/List;Ljava/util/List;)Lcom/facebook/AccessToken;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/AccessToken;

    #@2
    iget-object v1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    #@4
    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    #@6
    iget-object v5, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    #@8
    iget-object v6, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    #@a
    move-object v3, p1

    #@b
    move-object v4, p2

    #@c
    invoke-direct/range {v0 .. v6}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    #@f
    return-object v0
.end method

.method static createFromWebBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/facebook/AccessTokenSource;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    #@0
    const-string v0, "expires_in"

    #@2
    new-instance v1, Ljava/util/Date;

    #@4
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    #@7
    invoke-static {p1, v0, v1}, Lcom/facebook/AccessToken;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    #@a
    move-result-object v1

    #@b
    const-string v0, "access_token"

    #@d
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    const-string v0, "granted_scopes"

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@1a
    move-result v3

    #@1b
    if-nez v3, :cond_2c

    #@1d
    new-instance p0, Ljava/util/ArrayList;

    #@1f
    const-string v3, ","

    #@21
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@28
    move-result-object v0

    #@29
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@2c
    :cond_2c
    const-string v0, "denied_scopes"

    #@2e
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    const/4 v0, 0x0

    #@33
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@36
    move-result v4

    #@37
    if-nez v4, :cond_48

    #@39
    new-instance v0, Ljava/util/ArrayList;

    #@3b
    const-string v4, ","

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@44
    move-result-object v3

    #@45
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@48
    :cond_48
    invoke-static {p0, v0, v2, v1, p2}, Lcom/facebook/AccessToken;->createNew(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    #@4b
    move-result-object v0

    #@4c
    return-object v0
.end method

.method private static createNew(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Lcom/facebook/AccessTokenSource;",
            ")",
            "Lcom/facebook/AccessToken;"
        }
    .end annotation

    #@0
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    if-nez p3, :cond_d

    #@8
    :cond_8
    invoke-static {}, Lcom/facebook/AccessToken;->createEmptyToken()Lcom/facebook/AccessToken;

    #@b
    move-result-object v0

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    new-instance v0, Lcom/facebook/AccessToken;

    #@f
    new-instance v6, Ljava/util/Date;

    #@11
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    #@14
    move-object v1, p2

    #@15
    move-object v2, p3

    #@16
    move-object v3, p0

    #@17
    move-object v4, p1

    #@18
    move-object v5, p4

    #@19
    invoke-direct/range {v0 .. v6}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    #@1c
    goto :goto_c
.end method

.method private static getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .registers 9

    #@0
    const/4 v1, 0x0

    #@1
    if-nez p0, :cond_5

    #@3
    move-object v0, v1

    #@4
    :goto_4
    return-object v0

    #@5
    :cond_5
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    instance-of v2, v0, Ljava/lang/Long;

    #@b
    if-eqz v2, :cond_25

    #@d
    check-cast v0, Ljava/lang/Long;

    #@f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@12
    move-result-wide v0

    #@13
    move-wide v2, v0

    #@14
    :goto_14
    const-wide/16 v0, 0x0

    #@16
    cmp-long v0, v2, v0

    #@18
    if-nez v0, :cond_36

    #@1a
    new-instance v0, Ljava/util/Date;

    #@1c
    const-wide v2, 0x7fffffffffffffffL

    #@21
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@24
    goto :goto_4

    #@25
    :cond_25
    instance-of v2, v0, Ljava/lang/String;

    #@27
    if-eqz v2, :cond_34

    #@29
    :try_start_29
    check-cast v0, Ljava/lang/String;

    #@2b
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_2e} :catch_31

    #@2e
    move-result-wide v0

    #@2f
    move-wide v2, v0

    #@30
    goto :goto_14

    #@31
    :catch_31
    move-exception v0

    #@32
    move-object v0, v1

    #@33
    goto :goto_4

    #@34
    :cond_34
    move-object v0, v1

    #@35
    goto :goto_4

    #@36
    :cond_36
    new-instance v0, Ljava/util/Date;

    #@38
    const-wide/16 v4, 0x3e8

    #@3a
    mul-long/2addr v2, v4

    #@3b
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    #@3e
    move-result-wide v4

    #@3f
    add-long/2addr v2, v4

    #@40
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@43
    goto :goto_4
.end method

.method static getPermissionsFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_b

    #@6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    #@d
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@10
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    goto :goto_a
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/io/InvalidObjectException;

    #@2
    const-string v1, "Cannot readObject, serialization proxy required"

    #@4
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method private tokenToString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    #@2
    if-nez v0, :cond_7

    #@4
    const-string v0, "null"

    #@6
    :goto_6
    return-object v0

    #@7
    :cond_7
    sget-object v0, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    #@9
    invoke-static {v0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_12

    #@f
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    #@11
    goto :goto_6

    #@12
    :cond_12
    const-string v0, "ACCESS_TOKEN_REMOVED"

    #@14
    goto :goto_6
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 9

    #@0
    new-instance v0, Lcom/facebook/AccessToken$SerializationProxyV2;

    #@2
    iget-object v1, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    #@4
    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    #@6
    iget-object v3, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    #@8
    iget-object v4, p0, Lcom/facebook/AccessToken;->declinedPermissions:Ljava/util/List;

    #@a
    iget-object v5, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    #@c
    iget-object v6, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    #@e
    const/4 v7, 0x0

    #@f
    invoke-direct/range {v0 .. v7}, Lcom/facebook/AccessToken$SerializationProxyV2;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Lcom/facebook/AccessToken$1;)V

    #@12
    return-object v0
.end method


# virtual methods
.method public getDeclinedPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/AccessToken;->declinedPermissions:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getLastRefresh()Ljava/util/Date;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getSource()Lcom/facebook/AccessTokenSource;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    #@2
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method isInvalid()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    #@2
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_15

    #@8
    new-instance v0, Ljava/util/Date;

    #@a
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@d
    iget-object v1, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    #@f
    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_17

    #@15
    :cond_15
    const/4 v0, 0x1

    #@16
    :goto_16
    return v0

    #@17
    :cond_17
    const/4 v0, 0x0

    #@18
    goto :goto_16
.end method

.method toCacheBundle()Landroid/os/Bundle;
    .registers 5

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    const-string v1, "com.facebook.TokenCachingStrategy.Token"

    #@7
    iget-object v2, p0, Lcom/facebook/AccessToken;->token:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    const-string v1, "com.facebook.TokenCachingStrategy.ExpirationDate"

    #@e
    iget-object v2, p0, Lcom/facebook/AccessToken;->expires:Ljava/util/Date;

    #@10
    invoke-static {v0, v1, v2}, Lcom/facebook/TokenCachingStrategy;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    #@13
    const-string v1, "com.facebook.TokenCachingStrategy.Permissions"

    #@15
    new-instance v2, Ljava/util/ArrayList;

    #@17
    iget-object v3, p0, Lcom/facebook/AccessToken;->permissions:Ljava/util/List;

    #@19
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@1f
    const-string v1, "com.facebook.TokenCachingStrategy.DeclinedPermissions"

    #@21
    new-instance v2, Ljava/util/ArrayList;

    #@23
    iget-object v3, p0, Lcom/facebook/AccessToken;->declinedPermissions:Ljava/util/List;

    #@25
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@28
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@2b
    const-string v1, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    #@2d
    iget-object v2, p0, Lcom/facebook/AccessToken;->source:Lcom/facebook/AccessTokenSource;

    #@2f
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    #@32
    const-string v1, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    #@34
    iget-object v2, p0, Lcom/facebook/AccessToken;->lastRefresh:Ljava/util/Date;

    #@36
    invoke-static {v0, v1, v2}, Lcom/facebook/TokenCachingStrategy;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    #@39
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "{AccessToken"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    const-string v1, " token:"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-direct {p0}, Lcom/facebook/AccessToken;->tokenToString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    invoke-direct {p0, v0}, Lcom/facebook/AccessToken;->appendPermissions(Ljava/lang/StringBuilder;)V

    #@1a
    const-string v1, "}"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
