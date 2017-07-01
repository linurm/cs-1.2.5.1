.class public Lcom/facebook/TestSession;
.super Lcom/facebook/Session;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/TestSession$FqlResponse;,
        Lcom/facebook/TestSession$FqlResult;,
        Lcom/facebook/TestSession$Mode;,
        Lcom/facebook/TestSession$TestAccount;,
        Lcom/facebook/TestSession$TestTokenCachingStrategy;,
        Lcom/facebook/TestSession$UserAccount;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOG_TAG:Ljava/lang/String; = "FacebookSDK.TestSession"

.field private static appTestAccounts:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/TestSession$TestAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L

.field private static testApplicationId:Ljava/lang/String;

.field private static testApplicationSecret:Ljava/lang/String;


# instance fields
.field private final mode:Lcom/facebook/TestSession$Mode;

.field private final requestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionUniqueUserTag:Ljava/lang/String;

.field private testAccountId:Ljava/lang/String;

.field private testAccountUserName:Ljava/lang/String;

.field private wasAskedToExtendAccessToken:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/TestSession;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_c

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    sput-boolean v0, Lcom/facebook/TestSession;->$assertionsDisabled:Z

    #@b
    return-void

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_9
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TokenCachingStrategy;Ljava/lang/String;Lcom/facebook/TestSession$Mode;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/TokenCachingStrategy;",
            "Ljava/lang/String;",
            "Lcom/facebook/TestSession$Mode;",
            ")V"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    #@2
    invoke-direct {p0, p1, v0, p3}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;)V

    #@5
    const-string v0, "permissions"

    #@7
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    #@c
    const-string v1, "testApplicationId"

    #@e
    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    sget-object v0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;

    #@13
    const-string v1, "testApplicationSecret"

    #@15
    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    iput-object p4, p0, Lcom/facebook/TestSession;->sessionUniqueUserTag:Ljava/lang/String;

    #@1a
    iput-object p5, p0, Lcom/facebook/TestSession;->mode:Lcom/facebook/TestSession$Mode;

    #@1c
    iput-object p2, p0, Lcom/facebook/TestSession;->requestedPermissions:Ljava/util/List;

    #@1e
    return-void
.end method

.method public static createSessionWithPrivateUser(Landroid/app/Activity;Ljava/util/List;)Lcom/facebook/TestSession;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/TestSession;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/facebook/TestSession$Mode;->PRIVATE:Lcom/facebook/TestSession$Mode;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {p0, p1, v0, v1}, Lcom/facebook/TestSession;->createTestSession(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TestSession$Mode;Ljava/lang/String;)Lcom/facebook/TestSession;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static createSessionWithSharedUser(Landroid/app/Activity;Ljava/util/List;)Lcom/facebook/TestSession;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/TestSession;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Lcom/facebook/TestSession;->createSessionWithSharedUser(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)Lcom/facebook/TestSession;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createSessionWithSharedUser(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)Lcom/facebook/TestSession;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/TestSession;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/facebook/TestSession$Mode;->SHARED:Lcom/facebook/TestSession$Mode;

    #@2
    invoke-static {p0, p1, v0, p2}, Lcom/facebook/TestSession;->createTestSession(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TestSession$Mode;Ljava/lang/String;)Lcom/facebook/TestSession;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private createTestAccountAndFinishAuth()Lcom/facebook/TestSession$TestAccount;
    .registers 9

    #@0
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    new-instance v2, Landroid/os/Bundle;

    #@5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@8
    const-string v0, "installed"

    #@a
    const-string v3, "true"

    #@c
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@f
    const-string v0, "permissions"

    #@11
    invoke-direct {p0}, Lcom/facebook/TestSession;->getPermissionsString()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    const-string v0, "access_token"

    #@1a
    invoke-static {}, Lcom/facebook/TestSession;->getAppAccessToken()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    iget-object v0, p0, Lcom/facebook/TestSession;->mode:Lcom/facebook/TestSession$Mode;

    #@23
    sget-object v3, Lcom/facebook/TestSession$Mode;->SHARED:Lcom/facebook/TestSession$Mode;

    #@25
    if-ne v0, v3, :cond_3a

    #@27
    const-string v0, "name"

    #@29
    const-string v3, "Shared %s Testuser"

    #@2b
    new-array v4, v7, [Ljava/lang/Object;

    #@2d
    invoke-direct {p0}, Lcom/facebook/TestSession;->getSharedTestAccountIdentifier()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    aput-object v5, v4, v6

    #@33
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@3a
    :cond_3a
    new-instance v0, Lcom/facebook/Request;

    #@3c
    const-string v3, "%s/accounts/test-users"

    #@3e
    new-array v4, v7, [Ljava/lang/Object;

    #@40
    sget-object v5, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    #@42
    aput-object v5, v4, v6

    #@44
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    #@4a
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    #@4d
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    #@54
    move-result-object v3

    #@55
    const-class v4, Lcom/facebook/TestSession$TestAccount;

    #@57
    invoke-virtual {v0, v4}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    #@5a
    move-result-object v0

    #@5b
    check-cast v0, Lcom/facebook/TestSession$TestAccount;

    #@5d
    if-eqz v3, :cond_68

    #@5f
    invoke-virtual {v3}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    #@62
    move-result-object v0

    #@63
    invoke-virtual {p0, v1, v0}, Lcom/facebook/TestSession;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    #@66
    move-object v0, v1

    #@67
    :goto_67
    return-object v0

    #@68
    :cond_68
    sget-boolean v1, Lcom/facebook/TestSession;->$assertionsDisabled:Z

    #@6a
    if-nez v1, :cond_74

    #@6c
    if-nez v0, :cond_74

    #@6e
    new-instance v0, Ljava/lang/AssertionError;

    #@70
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@73
    throw v0

    #@74
    :cond_74
    iget-object v1, p0, Lcom/facebook/TestSession;->mode:Lcom/facebook/TestSession$Mode;

    #@76
    sget-object v3, Lcom/facebook/TestSession$Mode;->SHARED:Lcom/facebook/TestSession$Mode;

    #@78
    if-ne v1, v3, :cond_86

    #@7a
    const-string v1, "name"

    #@7c
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    invoke-interface {v0, v1}, Lcom/facebook/TestSession$TestAccount;->setName(Ljava/lang/String;)V

    #@83
    invoke-static {v0}, Lcom/facebook/TestSession;->storeTestAccount(Lcom/facebook/TestSession$TestAccount;)V

    #@86
    :cond_86
    invoke-direct {p0, v0}, Lcom/facebook/TestSession;->finishAuthWithTestAccount(Lcom/facebook/TestSession$TestAccount;)V

    #@89
    goto :goto_67
.end method

.method private static createTestSession(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TestSession$Mode;Ljava/lang/String;)Lcom/facebook/TestSession;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/TestSession$Mode;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/TestSession;"
        }
    .end annotation

    #@0
    const-class v0, Lcom/facebook/TestSession;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    #@5
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_13

    #@b
    sget-object v0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;

    #@d
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_20

    #@13
    :cond_13
    new-instance v0, Lcom/facebook/FacebookException;

    #@15
    const-string v1, "Must provide app ID and secret"

    #@17
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1b

    #@1b
    :catchall_1b
    move-exception v0

    #@1c
    const-class v1, Lcom/facebook/TestSession;

    #@1e
    monitor-exit v1

    #@1f
    throw v0

    #@20
    :cond_20
    :try_start_20
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_49

    #@26
    const/4 v0, 0x2

    #@27
    new-array v0, v0, [Ljava/lang/String;

    #@29
    const/4 v1, 0x0

    #@2a
    const-string v2, "email"

    #@2c
    aput-object v2, v0, v1

    #@2e
    const/4 v1, 0x1

    #@2f
    const-string v2, "publish_actions"

    #@31
    aput-object v2, v0, v1

    #@33
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@36
    move-result-object v2

    #@37
    :goto_37
    new-instance v3, Lcom/facebook/TestSession$TestTokenCachingStrategy;

    #@39
    const/4 v0, 0x0

    #@3a
    invoke-direct {v3, v0}, Lcom/facebook/TestSession$TestTokenCachingStrategy;-><init>(Lcom/facebook/TestSession$1;)V

    #@3d
    new-instance v0, Lcom/facebook/TestSession;

    #@3f
    move-object v1, p0

    #@40
    move-object v4, p3

    #@41
    move-object v5, p2

    #@42
    invoke-direct/range {v0 .. v5}, Lcom/facebook/TestSession;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TokenCachingStrategy;Ljava/lang/String;Lcom/facebook/TestSession$Mode;)V
    :try_end_45
    .catchall {:try_start_20 .. :try_end_45} :catchall_1b

    #@45
    const-class v1, Lcom/facebook/TestSession;

    #@47
    monitor-exit v1

    #@48
    return-object v0

    #@49
    :cond_49
    move-object v2, p1

    #@4a
    goto :goto_37
.end method

.method private deleteTestAccount(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    #@0
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    new-instance v0, Landroid/os/Bundle;

    #@4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@7
    const-string v1, "access_token"

    #@9
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    new-instance v1, Lcom/facebook/Request;

    #@e
    const/4 v2, 0x0

    #@f
    sget-object v3, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    #@11
    invoke-direct {v1, v2, p1, v0, v3}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    #@14
    invoke-virtual {v1}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    #@1f
    move-result-object v0

    #@20
    if-eqz v1, :cond_3d

    #@22
    const-string v0, "FacebookSDK.TestSession"

    #@24
    const-string v2, "Could not delete test account %s: %s"

    #@26
    const/4 v3, 0x2

    #@27
    new-array v3, v3, [Ljava/lang/Object;

    #@29
    aput-object p1, v3, v4

    #@2b
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    aput-object v1, v3, v5

    #@35
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    :cond_3c
    :goto_3c
    return-void

    #@3d
    :cond_3d
    const-string v1, "FACEBOOK_NON_JSON_RESULT"

    #@3f
    invoke-interface {v0, v1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@46
    move-result-object v1

    #@47
    if-ne v0, v1, :cond_3c

    #@49
    const-string v0, "FacebookSDK.TestSession"

    #@4b
    const-string v1, "Could not delete test account %s: unknown reason"

    #@4d
    new-array v2, v5, [Ljava/lang/Object;

    #@4f
    aput-object p1, v2, v4

    #@51
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    goto :goto_3c
.end method

.method private findOrCreateSharedTestAccount()V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/facebook/TestSession;->getSharedTestAccountIdentifier()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/facebook/TestSession;->findTestAccountMatchingIdentifier(Ljava/lang/String;)Lcom/facebook/TestSession$TestAccount;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_e

    #@a
    invoke-direct {p0, v0}, Lcom/facebook/TestSession;->finishAuthWithTestAccount(Lcom/facebook/TestSession$TestAccount;)V

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    invoke-direct {p0}, Lcom/facebook/TestSession;->createTestAccountAndFinishAuth()Lcom/facebook/TestSession$TestAccount;

    #@11
    goto :goto_d
.end method

.method private static findTestAccountMatchingIdentifier(Ljava/lang/String;)Lcom/facebook/TestSession$TestAccount;
    .registers 4

    #@0
    const-class v0, Lcom/facebook/TestSession;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    invoke-static {}, Lcom/facebook/TestSession;->retrieveTestAccountsForAppIfNeeded()V

    #@6
    sget-object v0, Lcom/facebook/TestSession;->appTestAccounts:Ljava/util/Map;

    #@8
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2a

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/facebook/TestSession$TestAccount;

    #@1c
    invoke-interface {v0}, Lcom/facebook/TestSession$TestAccount;->getName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_2c

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_10

    #@26
    :goto_26
    const-class v1, Lcom/facebook/TestSession;

    #@28
    monitor-exit v1

    #@29
    return-object v0

    #@2a
    :cond_2a
    const/4 v0, 0x0

    #@2b
    goto :goto_26

    #@2c
    :catchall_2c
    move-exception v0

    #@2d
    const-class v1, Lcom/facebook/TestSession;

    #@2f
    monitor-exit v1

    #@30
    throw v0
.end method

.method private finishAuthWithTestAccount(Lcom/facebook/TestSession$TestAccount;)V
    .registers 5

    #@0
    invoke-interface {p1}, Lcom/facebook/TestSession$TestAccount;->getId()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/facebook/TestSession;->testAccountId:Ljava/lang/String;

    #@6
    invoke-interface {p1}, Lcom/facebook/TestSession$TestAccount;->getName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/facebook/TestSession;->testAccountUserName:Ljava/lang/String;

    #@c
    invoke-interface {p1}, Lcom/facebook/TestSession$TestAccount;->getAccessToken()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lcom/facebook/TestSession;->requestedPermissions:Ljava/util/List;

    #@12
    sget-object v2, Lcom/facebook/AccessTokenSource;->TEST_USER:Lcom/facebook/AccessTokenSource;

    #@14
    invoke-static {v0, v1, v2}, Lcom/facebook/AccessToken;->createFromString(Ljava/lang/String;Ljava/util/List;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    #@17
    move-result-object v0

    #@18
    const/4 v1, 0x0

    #@19
    invoke-virtual {p0, v0, v1}, Lcom/facebook/TestSession;->finishAuthOrReauth(Lcom/facebook/AccessToken;Ljava/lang/Exception;)V

    #@1c
    return-void
.end method

.method static final getAppAccessToken()Ljava/lang/String;
    .registers 2

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    sget-object v1, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string v1, "|"

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    sget-object v1, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method private getPermissionsString()Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, ","

    #@2
    iget-object v1, p0, Lcom/facebook/TestSession;->requestedPermissions:Ljava/util/List;

    #@4
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private getSharedTestAccountIdentifier()Ljava/lang/String;
    .registers 7

    #@0
    const-wide v4, 0xffffffffL

    #@5
    invoke-direct {p0}, Lcom/facebook/TestSession;->getPermissionsString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@c
    move-result v0

    #@d
    int-to-long v2, v0

    #@e
    iget-object v0, p0, Lcom/facebook/TestSession;->sessionUniqueUserTag:Ljava/lang/String;

    #@10
    if-eqz v0, :cond_21

    #@12
    iget-object v0, p0, Lcom/facebook/TestSession;->sessionUniqueUserTag:Ljava/lang/String;

    #@14
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@17
    move-result v0

    #@18
    int-to-long v0, v0

    #@19
    and-long/2addr v0, v4

    #@1a
    :goto_1a
    and-long/2addr v2, v4

    #@1b
    xor-long/2addr v0, v2

    #@1c
    invoke-direct {p0, v0, v1}, Lcom/facebook/TestSession;->validNameStringFromInteger(J)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0

    #@21
    :cond_21
    const-wide/16 v0, 0x0

    #@23
    goto :goto_1a
.end method

.method public static getTestApplicationId()Ljava/lang/String;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/TestSession;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9

    #@5
    const-class v1, Lcom/facebook/TestSession;

    #@7
    monitor-exit v1

    #@8
    return-object v0

    #@9
    :catchall_9
    move-exception v0

    #@a
    const-class v1, Lcom/facebook/TestSession;

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public static getTestApplicationSecret()Ljava/lang/String;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/TestSession;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9

    #@5
    const-class v1, Lcom/facebook/TestSession;

    #@7
    monitor-exit v1

    #@8
    return-object v0

    #@9
    :catchall_9
    move-exception v0

    #@a
    const-class v1, Lcom/facebook/TestSession;

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method private static populateTestAccounts(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/TestSession$TestAccount;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/TestSession$UserAccount;",
            ">;)V"
        }
    .end annotation

    #@0
    const-class v0, Lcom/facebook/TestSession;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1c

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/facebook/TestSession$TestAccount;

    #@13
    invoke-static {v0}, Lcom/facebook/TestSession;->storeTestAccount(Lcom/facebook/TestSession$TestAccount;)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    #@16
    goto :goto_7

    #@17
    :catchall_17
    move-exception v0

    #@18
    const-class v1, Lcom/facebook/TestSession;

    #@1a
    monitor-exit v1

    #@1b
    throw v0

    #@1c
    :cond_1c
    :try_start_1c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v2

    #@20
    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_42

    #@26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/facebook/TestSession$UserAccount;

    #@2c
    sget-object v1, Lcom/facebook/TestSession;->appTestAccounts:Ljava/util/Map;

    #@2e
    invoke-interface {v0}, Lcom/facebook/TestSession$UserAccount;->getUid()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v1

    #@36
    check-cast v1, Lcom/facebook/TestSession$TestAccount;

    #@38
    if-eqz v1, :cond_20

    #@3a
    invoke-interface {v0}, Lcom/facebook/TestSession$UserAccount;->getName()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    invoke-interface {v1, v0}, Lcom/facebook/TestSession$TestAccount;->setName(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_1c .. :try_end_41} :catchall_17

    #@41
    goto :goto_20

    #@42
    :cond_42
    const-class v0, Lcom/facebook/TestSession;

    #@44
    monitor-exit v0

    #@45
    return-void
.end method

.method private static retrieveTestAccountsForAppIfNeeded()V
    .registers 5

    #@0
    const-class v0, Lcom/facebook/TestSession;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/TestSession;->appTestAccounts:Ljava/util/Map;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_64

    #@5
    if-eqz v0, :cond_b

    #@7
    :goto_7
    const-class v0, Lcom/facebook/TestSession;

    #@9
    monitor-exit v0

    #@a
    return-void

    #@b
    :cond_b
    :try_start_b
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@10
    sput-object v0, Lcom/facebook/TestSession;->appTestAccounts:Ljava/util/Map;

    #@12
    const-string v0, "SELECT id,access_token FROM test_account WHERE app_id = %s"

    #@14
    const/4 v1, 0x1

    #@15
    new-array v1, v1, [Ljava/lang/Object;

    #@17
    const/4 v2, 0x0

    #@18
    sget-object v3, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    #@1a
    aput-object v3, v1, v2

    #@1c
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    new-instance v1, Landroid/os/Bundle;

    #@22
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_64

    #@25
    :try_start_25
    new-instance v2, Lorg/json/JSONObject;

    #@27
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    #@2a
    const-string v3, "test_accounts"

    #@2c
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@2f
    const-string v0, "users"

    #@31
    const-string v3, "SELECT uid,name FROM user WHERE uid IN (SELECT id FROM #test_accounts)"

    #@33
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_36} :catch_69
    .catchall {:try_start_25 .. :try_end_36} :catchall_64

    #@36
    :try_start_36
    const-string v0, "q"

    #@38
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@3f
    const-string v0, "access_token"

    #@41
    invoke-static {}, Lcom/facebook/TestSession;->getAppAccessToken()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    new-instance v0, Lcom/facebook/Request;

    #@4a
    const/4 v2, 0x0

    #@4b
    const-string v3, "fql"

    #@4d
    const/4 v4, 0x0

    #@4e
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    #@51
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    #@58
    move-result-object v1

    #@59
    if-eqz v1, :cond_70

    #@5b
    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    #@62
    move-result-object v0

    #@63
    throw v0
    :try_end_64
    .catchall {:try_start_36 .. :try_end_64} :catchall_64

    #@64
    :catchall_64
    move-exception v0

    #@65
    const-class v1, Lcom/facebook/TestSession;

    #@67
    monitor-exit v1

    #@68
    throw v0

    #@69
    :catch_69
    move-exception v0

    #@6a
    :try_start_6a
    new-instance v1, Lcom/facebook/FacebookException;

    #@6c
    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    #@6f
    throw v1

    #@70
    :cond_70
    const-class v1, Lcom/facebook/TestSession$FqlResponse;

    #@72
    invoke-virtual {v0, v1}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    #@75
    move-result-object v0

    #@76
    check-cast v0, Lcom/facebook/TestSession$FqlResponse;

    #@78
    invoke-interface {v0}, Lcom/facebook/TestSession$FqlResponse;->getData()Lcom/facebook/model/GraphObjectList;

    #@7b
    move-result-object v1

    #@7c
    if-eqz v1, :cond_85

    #@7e
    invoke-interface {v1}, Lcom/facebook/model/GraphObjectList;->size()I

    #@81
    move-result v0

    #@82
    const/4 v2, 0x2

    #@83
    if-eq v0, v2, :cond_8d

    #@85
    :cond_85
    new-instance v0, Lcom/facebook/FacebookException;

    #@87
    const-string v1, "Unexpected number of results from FQL query"

    #@89
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v0

    #@8d
    :cond_8d
    const/4 v0, 0x0

    #@8e
    invoke-interface {v1, v0}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;

    #@91
    move-result-object v0

    #@92
    check-cast v0, Lcom/facebook/TestSession$FqlResult;

    #@94
    invoke-interface {v0}, Lcom/facebook/TestSession$FqlResult;->getFqlResultSet()Lcom/facebook/model/GraphObjectList;

    #@97
    move-result-object v0

    #@98
    const-class v2, Lcom/facebook/TestSession$TestAccount;

    #@9a
    invoke-interface {v0, v2}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    #@9d
    move-result-object v2

    #@9e
    const/4 v0, 0x1

    #@9f
    invoke-interface {v1, v0}, Lcom/facebook/model/GraphObjectList;->get(I)Ljava/lang/Object;

    #@a2
    move-result-object v0

    #@a3
    check-cast v0, Lcom/facebook/TestSession$FqlResult;

    #@a5
    invoke-interface {v0}, Lcom/facebook/TestSession$FqlResult;->getFqlResultSet()Lcom/facebook/model/GraphObjectList;

    #@a8
    move-result-object v0

    #@a9
    const-class v1, Lcom/facebook/TestSession$UserAccount;

    #@ab
    invoke-interface {v0, v1}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    #@ae
    move-result-object v0

    #@af
    invoke-static {v2, v0}, Lcom/facebook/TestSession;->populateTestAccounts(Ljava/util/Collection;Ljava/util/Collection;)V
    :try_end_b2
    .catchall {:try_start_6a .. :try_end_b2} :catchall_64

    #@b2
    goto/16 :goto_7
.end method

.method public static setTestApplicationId(Ljava/lang/String;)V
    .registers 3

    #@0
    const-class v0, Lcom/facebook/TestSession;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_1c

    #@7
    sget-object v0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;

    #@9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1c

    #@f
    new-instance v0, Lcom/facebook/FacebookException;

    #@11
    const-string v1, "Can\'t have more than one test application ID"

    #@13
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_17

    #@17
    :catchall_17
    move-exception v0

    #@18
    const-class v1, Lcom/facebook/TestSession;

    #@1a
    monitor-exit v1

    #@1b
    throw v0

    #@1c
    :cond_1c
    :try_start_1c
    sput-object p0, Lcom/facebook/TestSession;->testApplicationId:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_17

    #@1e
    const-class v0, Lcom/facebook/TestSession;

    #@20
    monitor-exit v0

    #@21
    return-void
.end method

.method public static setTestApplicationSecret(Ljava/lang/String;)V
    .registers 3

    #@0
    const-class v0, Lcom/facebook/TestSession;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_1c

    #@7
    sget-object v0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;

    #@9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_1c

    #@f
    new-instance v0, Lcom/facebook/FacebookException;

    #@11
    const-string v1, "Can\'t have more than one test application secret"

    #@13
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_17

    #@17
    :catchall_17
    move-exception v0

    #@18
    const-class v1, Lcom/facebook/TestSession;

    #@1a
    monitor-exit v1

    #@1b
    throw v0

    #@1c
    :cond_1c
    :try_start_1c
    sput-object p0, Lcom/facebook/TestSession;->testApplicationSecret:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_17

    #@1e
    const-class v0, Lcom/facebook/TestSession;

    #@20
    monitor-exit v0

    #@21
    return-void
.end method

.method private static storeTestAccount(Lcom/facebook/TestSession$TestAccount;)V
    .registers 3

    #@0
    const-class v0, Lcom/facebook/TestSession;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/TestSession;->appTestAccounts:Ljava/util/Map;

    #@5
    invoke-interface {p0}, Lcom/facebook/TestSession$TestAccount;->getId()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    #@c
    const-class v0, Lcom/facebook/TestSession;

    #@e
    monitor-exit v0

    #@f
    return-void

    #@10
    :catchall_10
    move-exception v0

    #@11
    const-class v1, Lcom/facebook/TestSession;

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method private validNameStringFromInteger(J)Ljava/lang/String;
    .registers 10

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    const-string v2, "Perm"

    #@9
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    #@f
    move-result-object v4

    #@10
    array-length v5, v4

    #@11
    move v1, v0

    #@12
    move v2, v0

    #@13
    :goto_13
    if-ge v2, v5, :cond_29

    #@15
    aget-char v0, v4, v2

    #@17
    if-ne v0, v1, :cond_1c

    #@19
    add-int/lit8 v0, v0, 0xa

    #@1b
    int-to-char v0, v0

    #@1c
    :cond_1c
    add-int/lit8 v1, v0, 0x61

    #@1e
    add-int/lit8 v1, v1, -0x30

    #@20
    int-to-char v1, v1

    #@21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    add-int/lit8 v1, v2, 0x1

    #@26
    move v2, v1

    #@27
    move v1, v0

    #@28
    goto :goto_13

    #@29
    :cond_29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method


# virtual methods
.method authorize(Lcom/facebook/Session$AuthorizationRequest;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/facebook/TestSession;->mode:Lcom/facebook/TestSession$Mode;

    #@2
    sget-object v1, Lcom/facebook/TestSession$Mode;->PRIVATE:Lcom/facebook/TestSession$Mode;

    #@4
    if-ne v0, v1, :cond_a

    #@6
    invoke-direct {p0}, Lcom/facebook/TestSession;->createTestAccountAndFinishAuth()Lcom/facebook/TestSession$TestAccount;

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    invoke-direct {p0}, Lcom/facebook/TestSession;->findOrCreateSharedTestAccount()V

    #@d
    goto :goto_9
.end method

.method extendAccessToken()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/facebook/TestSession;->wasAskedToExtendAccessToken:Z

    #@3
    invoke-super {p0}, Lcom/facebook/Session;->extendAccessToken()V

    #@6
    return-void
.end method

.method fakeTokenRefreshAttempt()V
    .registers 2

    #@0
    new-instance v0, Lcom/facebook/Session$TokenRefreshRequest;

    #@2
    invoke-direct {v0, p0}, Lcom/facebook/Session$TokenRefreshRequest;-><init>(Lcom/facebook/Session;)V

    #@5
    invoke-virtual {p0, v0}, Lcom/facebook/TestSession;->setCurrentTokenRefreshRequest(Lcom/facebook/Session$TokenRefreshRequest;)V

    #@8
    return-void
.end method

.method forceExtendAccessToken(Z)V
    .registers 12

    #@0
    const-wide/16 v8, 0x0

    #@2
    invoke-virtual {p0}, Lcom/facebook/TestSession;->getTokenInfo()Lcom/facebook/AccessToken;

    #@5
    move-result-object v4

    #@6
    new-instance v0, Lcom/facebook/AccessToken;

    #@8
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    new-instance v2, Ljava/util/Date;

    #@e
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    #@11
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/List;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/List;

    #@18
    move-result-object v4

    #@19
    sget-object v5, Lcom/facebook/AccessTokenSource;->TEST_USER:Lcom/facebook/AccessTokenSource;

    #@1b
    new-instance v6, Ljava/util/Date;

    #@1d
    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    #@20
    invoke-direct/range {v0 .. v6}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V

    #@23
    invoke-virtual {p0, v0}, Lcom/facebook/TestSession;->setTokenInfo(Lcom/facebook/AccessToken;)V

    #@26
    new-instance v0, Ljava/util/Date;

    #@28
    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    #@2b
    invoke-virtual {p0, v0}, Lcom/facebook/TestSession;->setLastAttemptedTokenExtendDate(Ljava/util/Date;)V

    #@2e
    return-void
.end method

.method public final getTestUserId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/TestSession;->testAccountId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getTestUserName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/TestSession;->testAccountUserName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getWasAskedToExtendAccessToken()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/TestSession;->wasAskedToExtendAccessToken:Z

    #@2
    return v0
.end method

.method postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/facebook/TestSession;->testAccountId:Ljava/lang/String;

    #@2
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    #@5
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1a

    #@b
    if-eqz v0, :cond_1a

    #@d
    iget-object v1, p0, Lcom/facebook/TestSession;->mode:Lcom/facebook/TestSession$Mode;

    #@f
    sget-object v2, Lcom/facebook/TestSession$Mode;->PRIVATE:Lcom/facebook/TestSession$Mode;

    #@11
    if-ne v1, v2, :cond_1a

    #@13
    invoke-static {}, Lcom/facebook/TestSession;->getAppAccessToken()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-direct {p0, v0, v1}, Lcom/facebook/TestSession;->deleteTestAccount(Ljava/lang/String;Ljava/lang/String;)V

    #@1a
    :cond_1a
    return-void
.end method

.method shouldExtendAccessToken()Z
    .registers 3

    #@0
    invoke-super {p0}, Lcom/facebook/Session;->shouldExtendAccessToken()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    iput-boolean v1, p0, Lcom/facebook/TestSession;->wasAskedToExtendAccessToken:Z

    #@7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    #@0
    invoke-super {p0}, Lcom/facebook/Session;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string v2, "{TestSession"

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    const-string v2, " testUserId:"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p0, Lcom/facebook/TestSession;->testAccountId:Ljava/lang/String;

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, " "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    const-string v1, "}"

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    return-object v0
.end method
