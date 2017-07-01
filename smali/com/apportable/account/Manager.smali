.class public Lcom/apportable/account/Manager;
.super Ljava/lang/Object;


# static fields
.field private static sManager:Landroid/accounts/AccountManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    sget-object v0, Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;

    #@5
    if-nez v0, :cond_d

    #@7
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;

    #@d
    :cond_d
    iput-object p1, p0, Lcom/apportable/account/Manager;->mContext:Landroid/content/Context;

    #@f
    new-instance v0, Lcom/apportable/account/Manager$1;

    #@11
    invoke-direct {v0, p0}, Lcom/apportable/account/Manager$1;-><init>(Lcom/apportable/account/Manager;)V

    #@14
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@17
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/account/Manager;)Landroid/os/Handler;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/account/Manager;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic access$002(Lcom/apportable/account/Manager;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/apportable/account/Manager;->mHandler:Landroid/os/Handler;

    #@2
    return-object p1
.end method

.method static synthetic access$100(Lcom/apportable/account/Manager;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/account/Manager;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic access$200()Landroid/accounts/AccountManager;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;

    #@2
    return-object v0
.end method


# virtual methods
.method public getAccounts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;

    #@2
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getAccountsForType(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;

    #@2
    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/apportable/account/Callback;)V
    .registers 11

    #@0
    sget-object v0, Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p2, v1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    new-instance v0, Lcom/apportable/account/Manager$2;

    #@8
    move-object v1, p0

    #@9
    move-object v2, p1

    #@a
    move-object v3, p2

    #@b
    move-object v4, p3

    #@c
    move-object v5, p4

    #@d
    invoke-direct/range {v0 .. v5}, Lcom/apportable/account/Manager$2;-><init>(Lcom/apportable/account/Manager;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/apportable/account/Callback;)V

    #@10
    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@13
    return-void
.end method
