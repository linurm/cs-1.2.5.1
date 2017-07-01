.class public Lcom/facebook/internal/Logger;
.super Ljava/lang/Object;


# static fields
.field public static final LOG_TAG_BASE:Ljava/lang/String; = "FacebookSDK."

.field private static final stringsToReplace:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final behavior:Lcom/facebook/LoggingBehavior;

.field private contents:Ljava/lang/StringBuilder;

.field private priority:I

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    sput-object v0, Lcom/facebook/internal/Logger;->stringsToReplace:Ljava/util/HashMap;

    #@7
    return-void
.end method

.method public constructor <init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x3

    #@4
    iput v0, p0, Lcom/facebook/internal/Logger;->priority:I

    #@6
    const-string v0, "tag"

    #@8
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    iput-object p1, p0, Lcom/facebook/internal/Logger;->behavior:Lcom/facebook/LoggingBehavior;

    #@d
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string v1, "FacebookSDK."

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/facebook/internal/Logger;->tag:Ljava/lang/String;

    #@22
    new-instance v0, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    iput-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;

    #@29
    return-void
.end method

.method public static log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    #@0
    invoke-static {p0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_34

    #@6
    invoke-static {p3}, Lcom/facebook/internal/Logger;->replaceStrings(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    const-string v1, "FacebookSDK."

    #@c
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_25

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "FacebookSDK."

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object p2

    #@25
    :cond_25
    invoke-static {p1, p2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    #@28
    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    #@2a
    if-ne p0, v0, :cond_34

    #@2c
    new-instance v0, Ljava/lang/Exception;

    #@2e
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    #@31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@34
    :cond_34
    return-void
.end method

.method public static log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    const/4 v0, 0x3

    #@1
    invoke-static {p0, v0, p1, p2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    #@4
    return-void
.end method

.method public static varargs log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    #@0
    invoke-static {p0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    const/4 v0, 0x3

    #@7
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {p0, v0, p1, v1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    #@e
    :cond_e
    return-void
.end method

.method public static registerAccessToken(Ljava/lang/String;)V
    .registers 3

    #@0
    const-class v0, Lcom/facebook/internal/Logger;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    #@5
    invoke-static {v0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_10

    #@b
    const-string v0, "ACCESS_TOKEN_REMOVED"

    #@d
    invoke-static {p0, v0}, Lcom/facebook/internal/Logger;->registerStringToReplace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    #@10
    :cond_10
    const-class v0, Lcom/facebook/internal/Logger;

    #@12
    monitor-exit v0

    #@13
    return-void

    #@14
    :catchall_14
    move-exception v0

    #@15
    const-class v1, Lcom/facebook/internal/Logger;

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method public static registerStringToReplace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    const-class v0, Lcom/facebook/internal/Logger;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/internal/Logger;->stringsToReplace:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_c

    #@8
    const-class v0, Lcom/facebook/internal/Logger;

    #@a
    monitor-exit v0

    #@b
    return-void

    #@c
    :catchall_c
    move-exception v0

    #@d
    const-class v1, Lcom/facebook/internal/Logger;

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private static replaceStrings(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    const-class v0, Lcom/facebook/internal/Logger;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/internal/Logger;->stringsToReplace:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2a

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/Map$Entry;

    #@19
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/lang/CharSequence;

    #@1f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/lang/CharSequence;

    #@25
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2e

    #@28
    move-result-object p0

    #@29
    goto :goto_d

    #@2a
    :cond_2a
    const-class v0, Lcom/facebook/internal/Logger;

    #@2c
    monitor-exit v0

    #@2d
    return-object p0

    #@2e
    :catchall_2e
    move-exception v0

    #@2f
    const-class v1, Lcom/facebook/internal/Logger;

    #@31
    monitor-exit v1

    #@32
    throw v0
.end method

.method private shouldLog()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/Logger;->behavior:Lcom/facebook/LoggingBehavior;

    #@2
    invoke-static {v0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/facebook/internal/Logger;->shouldLog()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    iget-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;

    #@8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    :cond_b
    return-void
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    #@0
    invoke-direct {p0}, Lcom/facebook/internal/Logger;->shouldLog()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    iget-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;

    #@8
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    :cond_f
    return-void
.end method

.method public append(Ljava/lang/StringBuilder;)V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/facebook/internal/Logger;->shouldLog()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_b

    #@6
    iget-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;

    #@8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@b
    :cond_b
    return-void
.end method

.method public appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    #@0
    const-string v0, "  %s:\t%s\n"

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object p1, v1, v2

    #@8
    const/4 v2, 0x1

    #@9
    aput-object p2, v1, v2

    #@b
    invoke-virtual {p0, v0, v1}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    #@e
    return-void
.end method

.method public getContents()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/facebook/internal/Logger;->replaceStrings(Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getPriority()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/internal/Logger;->priority:I

    #@2
    return v0
.end method

.method public log()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/facebook/internal/Logger;->logString(Ljava/lang/String;)V

    #@9
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    iput-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;

    #@10
    return-void
.end method

.method public logString(Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/facebook/internal/Logger;->behavior:Lcom/facebook/LoggingBehavior;

    #@2
    iget v1, p0, Lcom/facebook/internal/Logger;->priority:I

    #@4
    iget-object v2, p0, Lcom/facebook/internal/Logger;->tag:Ljava/lang/String;

    #@6
    invoke-static {v0, v1, v2, p1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    #@9
    return-void
.end method

.method public setPriority(I)V
    .registers 12

    #@0
    const/4 v9, 0x6

    #@1
    const/4 v8, 0x5

    #@2
    const/4 v7, 0x4

    #@3
    const/4 v6, 0x3

    #@4
    const/4 v5, 0x2

    #@5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v0

    #@9
    const-string v1, "value"

    #@b
    new-array v2, v9, [Ljava/lang/Object;

    #@d
    const/4 v3, 0x0

    #@e
    const/4 v4, 0x7

    #@f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v4

    #@13
    aput-object v4, v2, v3

    #@15
    const/4 v3, 0x1

    #@16
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v4

    #@1a
    aput-object v4, v2, v3

    #@1c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v3

    #@20
    aput-object v3, v2, v5

    #@22
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v3

    #@26
    aput-object v3, v2, v6

    #@28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v3

    #@2c
    aput-object v3, v2, v7

    #@2e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v3

    #@32
    aput-object v3, v2, v8

    #@34
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Validate;->oneOf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@37
    iput p1, p0, Lcom/facebook/internal/Logger;->priority:I

    #@39
    return-void
.end method
