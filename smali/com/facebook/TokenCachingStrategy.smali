.class public abstract Lcom/facebook/TokenCachingStrategy;
.super Ljava/lang/Object;


# static fields
.field public static final DECLINED_PERMISSIONS_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.DeclinedPermissions"

.field public static final EXPIRATION_DATE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.ExpirationDate"

.field private static final INVALID_BUNDLE_MILLISECONDS:J = -0x8000000000000000L

.field private static final IS_SSO_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.IsSSO"

.field public static final LAST_REFRESH_DATE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.LastRefreshDate"

.field public static final PERMISSIONS_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.Permissions"

.field public static final TOKEN_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.Token"

.field public static final TOKEN_SOURCE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.AccessTokenSource"

.field public static final USER_FBID_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.UserFBID"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
    .registers 8

    #@0
    const-wide/high16 v4, -0x8000000000000000L

    #@2
    const/4 v0, 0x0

    #@3
    if-nez p0, :cond_6

    #@5
    :cond_5
    :goto_5
    return-object v0

    #@6
    :cond_6
    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    #@9
    move-result-wide v2

    #@a
    cmp-long v1, v2, v4

    #@c
    if-eqz v1, :cond_5

    #@e
    new-instance v0, Ljava/util/Date;

    #@10
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@13
    goto :goto_5
.end method

.method public static getExpirationDate(Landroid/os/Bundle;)Ljava/util/Date;
    .registers 2

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    #@7
    invoke-static {p0, v0}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getExpirationMilliseconds(Landroid/os/Bundle;)J
    .registers 3

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    #@7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public static getLastRefreshDate(Landroid/os/Bundle;)Ljava/util/Date;
    .registers 2

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    #@7
    invoke-static {p0, v0}, Lcom/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getLastRefreshMilliseconds(Landroid/os/Bundle;)J
    .registers 3

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    #@7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public static getPermissions(Landroid/os/Bundle;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "com.facebook.TokenCachingStrategy.Permissions"

    #@7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getSource(Landroid/os/Bundle;)Lcom/facebook/AccessTokenSource;
    .registers 2

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    #@7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_16

    #@d
    const-string v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    #@f
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/facebook/AccessTokenSource;

    #@15
    :goto_15
    return-object v0

    #@16
    :cond_16
    const-string v0, "com.facebook.TokenCachingStrategy.IsSSO"

    #@18
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_21

    #@1e
    sget-object v0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    #@20
    goto :goto_15

    #@21
    :cond_21
    sget-object v0, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    #@23
    goto :goto_15
.end method

.method public static getToken(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "com.facebook.TokenCachingStrategy.Token"

    #@7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static hasTokenInformation(Landroid/os/Bundle;)Z
    .registers 7

    #@0
    const-wide/16 v4, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    if-nez p0, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    const-string v1, "com.facebook.TokenCachingStrategy.Token"

    #@8
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_5

    #@e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_5

    #@14
    const-string v1, "com.facebook.TokenCachingStrategy.ExpirationDate"

    #@16
    invoke-virtual {p0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    #@19
    move-result-wide v2

    #@1a
    cmp-long v1, v2, v4

    #@1c
    if-eqz v1, :cond_5

    #@1e
    const/4 v0, 0x1

    #@1f
    goto :goto_5
.end method

.method static putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
    .registers 5

    #@0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@7
    return-void
.end method

.method public static putDeclinedPermissions(Landroid/os/Bundle;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "value"

    #@7
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    instance-of v0, p1, Ljava/util/ArrayList;

    #@c
    if-eqz v0, :cond_16

    #@e
    check-cast p1, Ljava/util/ArrayList;

    #@10
    :goto_10
    const-string v0, "com.facebook.TokenCachingStrategy.DeclinedPermissions"

    #@12
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@15
    return-void

    #@16
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1b
    move-object p1, v0

    #@1c
    goto :goto_10
.end method

.method public static putExpirationDate(Landroid/os/Bundle;Ljava/util/Date;)V
    .registers 3

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "value"

    #@7
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    #@c
    invoke-static {p0, v0, p1}, Lcom/facebook/TokenCachingStrategy;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    #@f
    return-void
.end method

.method public static putExpirationMilliseconds(Landroid/os/Bundle;J)V
    .registers 4

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    #@7
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@a
    return-void
.end method

.method public static putLastRefreshDate(Landroid/os/Bundle;Ljava/util/Date;)V
    .registers 3

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "value"

    #@7
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    #@c
    invoke-static {p0, v0, p1}, Lcom/facebook/TokenCachingStrategy;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    #@f
    return-void
.end method

.method public static putLastRefreshMilliseconds(Landroid/os/Bundle;J)V
    .registers 4

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    #@7
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@a
    return-void
.end method

.method public static putPermissions(Landroid/os/Bundle;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "value"

    #@7
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    instance-of v0, p1, Ljava/util/ArrayList;

    #@c
    if-eqz v0, :cond_16

    #@e
    check-cast p1, Ljava/util/ArrayList;

    #@10
    :goto_10
    const-string v0, "com.facebook.TokenCachingStrategy.Permissions"

    #@12
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@15
    return-void

    #@16
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    #@18
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1b
    move-object p1, v0

    #@1c
    goto :goto_10
.end method

.method public static putSource(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)V
    .registers 3

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    #@7
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    #@a
    return-void
.end method

.method public static putToken(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    #@0
    const-string v0, "bundle"

    #@2
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "value"

    #@7
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    const-string v0, "com.facebook.TokenCachingStrategy.Token"

    #@c
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract load()Landroid/os/Bundle;
.end method

.method public abstract save(Landroid/os/Bundle;)V
.end method
