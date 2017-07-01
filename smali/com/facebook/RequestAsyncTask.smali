.class public Lcom/facebook/RequestAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/facebook/Response;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static executeOnExecutorMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private exception:Ljava/lang/Exception;

.field private final requests:Lcom/facebook/RequestBatch;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    const-class v0, Lcom/facebook/RequestAsyncTask;

    #@3
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lcom/facebook/RequestAsyncTask;->TAG:Ljava/lang/String;

    #@9
    const-class v0, Landroid/os/AsyncTask;

    #@b
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    #@e
    move-result-object v2

    #@f
    array-length v3, v2

    #@10
    move v0, v1

    #@11
    :goto_11
    if-ge v0, v3, :cond_3a

    #@13
    aget-object v4, v2, v0

    #@15
    const-string v5, "executeOnExecutor"

    #@17
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_3b

    #@21
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@24
    move-result-object v5

    #@25
    array-length v6, v5

    #@26
    const/4 v7, 0x2

    #@27
    if-ne v6, v7, :cond_3b

    #@29
    aget-object v6, v5, v1

    #@2b
    const-class v7, Ljava/util/concurrent/Executor;

    #@2d
    if-ne v6, v7, :cond_3b

    #@2f
    const/4 v6, 0x1

    #@30
    aget-object v5, v5, v6

    #@32
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    #@35
    move-result v5

    #@36
    if-eqz v5, :cond_3b

    #@38
    sput-object v4, Lcom/facebook/RequestAsyncTask;->executeOnExecutorMethod:Ljava/lang/reflect/Method;

    #@3a
    :cond_3a
    return-void

    #@3b
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    #@3d
    goto :goto_11
.end method

.method public constructor <init>(Lcom/facebook/RequestBatch;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    #@4
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V
    .registers 3

    #@0
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@3
    iput-object p2, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    #@5
    iput-object p1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    #@7
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/RequestBatch;

    #@2
    invoke-direct {v0, p2}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    #@5
    invoke-direct {p0, p1, v0}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    #@8
    return-void
.end method

.method public varargs constructor <init>(Ljava/net/HttpURLConnection;[Lcom/facebook/Request;)V
    .registers 4

    #@0
    new-instance v0, Lcom/facebook/RequestBatch;

    #@2
    invoke-direct {v0, p2}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    #@5
    invoke-direct {p0, p1, v0}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    #@8
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    new-instance v1, Lcom/facebook/RequestBatch;

    #@3
    invoke-direct {v1, p1}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    #@6
    invoke-direct {p0, v0, v1}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    #@9
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/Request;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    new-instance v1, Lcom/facebook/RequestBatch;

    #@3
    invoke-direct {v1, p1}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    #@6
    invoke-direct {p0, v0, v1}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    #@9
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    check-cast p1, [Ljava/lang/Void;

    #@2
    invoke-virtual {p0, p1}, Lcom/facebook/RequestAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    #@2
    if-nez v0, :cond_b

    #@4
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    #@6
    invoke-virtual {v0}, Lcom/facebook/RequestBatch;->executeAndWait()Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    #@d
    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    #@f
    invoke-static {v0, v1}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    #@12
    move-result-object v0

    #@13
    goto :goto_a

    #@14
    :catch_14
    move-exception v0

    #@15
    iput-object v0, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    #@17
    const/4 v0, 0x0

    #@18
    goto :goto_a
.end method

.method executeOnSettingsExecutor()Lcom/facebook/RequestAsyncTask;
    .registers 6

    #@0
    const/4 v4, 0x0

    #@1
    :try_start_1
    sget-object v0, Lcom/facebook/RequestAsyncTask;->executeOnExecutorMethod:Ljava/lang/reflect/Method;

    #@3
    if-eqz v0, :cond_1a

    #@5
    sget-object v0, Lcom/facebook/RequestAsyncTask;->executeOnExecutorMethod:Ljava/lang/reflect/Method;

    #@7
    const/4 v1, 0x2

    #@8
    new-array v1, v1, [Ljava/lang/Object;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    #@e
    move-result-object v3

    #@f
    aput-object v3, v1, v2

    #@11
    const/4 v2, 0x1

    #@12
    const/4 v3, 0x0

    #@13
    aput-object v3, v1, v2

    #@15
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_18} :catch_20

    #@18
    :goto_18
    return-object p0

    #@19
    :catch_19
    move-exception v0

    #@1a
    :cond_1a
    :goto_1a
    new-array v0, v4, [Ljava/lang/Void;

    #@1c
    invoke-virtual {p0, v0}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@1f
    goto :goto_18

    #@20
    :catch_20
    move-exception v0

    #@21
    goto :goto_1a
.end method

.method protected final getException()Ljava/lang/Exception;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    #@2
    return-object v0
.end method

.method protected final getRequests()Lcom/facebook/RequestBatch;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    #@2
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Ljava/util/List;

    #@2
    invoke-virtual {p0, p1}, Lcom/facebook/RequestAsyncTask;->onPostExecute(Ljava/util/List;)V

    #@5
    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    #@3
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    #@5
    if-eqz v0, :cond_1e

    #@7
    sget-object v0, Lcom/facebook/RequestAsyncTask;->TAG:Ljava/lang/String;

    #@9
    const-string v1, "onPostExecute: exception encountered during request: %s"

    #@b
    const/4 v2, 0x1

    #@c
    new-array v2, v2, [Ljava/lang/Object;

    #@e
    const/4 v3, 0x0

    #@f
    iget-object v4, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    #@11
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    aput-object v4, v2, v3

    #@17
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    :cond_1e
    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    #@0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    #@3
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    #@5
    invoke-virtual {v0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    #@8
    move-result-object v0

    #@9
    if-nez v0, :cond_15

    #@b
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    #@d
    new-instance v1, Landroid/os/Handler;

    #@f
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    #@12
    invoke-virtual {v0, v1}, Lcom/facebook/RequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    #@15
    :cond_15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "{RequestAsyncTask: "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string v1, " connection: "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string v1, ", requests: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string v1, "}"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method
