.class Lcom/facebook/AppEventsLogger$SessionEventsState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SessionEventsState"
.end annotation


# static fields
.field public static final ENCODED_EVENTS_KEY:Ljava/lang/String; = "encoded_events"

.field public static final EVENT_COUNT_KEY:Ljava/lang/String; = "event_count"

.field public static final NUM_SKIPPED_KEY:Ljava/lang/String; = "num_skipped"


# instance fields
.field private final MAX_ACCUMULATED_LOG_EVENTS:I

.field private accumulatedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

.field private hashedDeviceAndAppId:Ljava/lang/String;

.field private inFlightEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation
.end field

.field private numSkippedEventsDueToFullBuffer:I

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    #@a
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    #@11
    const/16 v0, 0x3e8

    #@13
    iput v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->MAX_ACCUMULATED_LOG_EVENTS:I

    #@15
    iput-object p1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    #@17
    iput-object p2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->packageName:Ljava/lang/String;

    #@19
    iput-object p3, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->hashedDeviceAndAppId:Ljava/lang/String;

    #@1b
    return-void
.end method

.method private getStringAsByteArray(Ljava/lang/String;)[B
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    const-string v1, "UTF-8"

    #@3
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_8

    #@6
    move-result-object v0

    #@7
    :goto_7
    return-object v0

    #@8
    :catch_8
    move-exception v1

    #@9
    const-string v2, "Encoding exception: "

    #@b
    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    #@e
    goto :goto_7
.end method

.method private populateRequest(Lcom/facebook/Request;ILorg/json/JSONArray;ZZ)V
    .registers 10

    #@0
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    #@3
    move-result-object v0

    #@4
    const-string v1, "event"

    #@6
    const-string v2, "CUSTOM_APP_EVENTS"

    #@8
    invoke-interface {v0, v1, v2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@b
    iget v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    #@d
    if-lez v1, :cond_18

    #@f
    const-string v1, "num_skipped_events"

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v2

    #@15
    invoke-interface {v0, v1, v2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@18
    :cond_18
    if-eqz p4, :cond_21

    #@1a
    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;

    #@1c
    iget-object v2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->hashedDeviceAndAppId:Ljava/lang/String;

    #@1e
    invoke-static {v0, v1, v2, p5}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lcom/facebook/model/GraphObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V

    #@21
    :cond_21
    const-string v1, "application_package_name"

    #@23
    iget-object v2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->packageName:Ljava/lang/String;

    #@25
    invoke-interface {v0, v1, v2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@28
    invoke-virtual {p1, v0}, Lcom/facebook/Request;->setGraphObject(Lcom/facebook/model/GraphObject;)V

    #@2b
    invoke-virtual {p1}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    #@2e
    move-result-object v0

    #@2f
    if-nez v0, :cond_36

    #@31
    new-instance v0, Landroid/os/Bundle;

    #@33
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@36
    :cond_36
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    if-eqz v1, :cond_48

    #@3c
    const-string v2, "custom_events_file"

    #@3e
    invoke-direct {p0, v1}, Lcom/facebook/AppEventsLogger$SessionEventsState;->getStringAsByteArray(Ljava/lang/String;)[B

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@45
    invoke-virtual {p1, v1}, Lcom/facebook/Request;->setTag(Ljava/lang/Object;)V

    #@48
    :cond_48
    invoke-virtual {p1, v0}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    #@4b
    return-void
.end method


# virtual methods
.method public accumulatePersistedEvents(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;)V"
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    #@3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    #@6
    monitor-exit p0

    #@7
    return-void

    #@8
    :catchall_8
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public addEvent(Lcom/facebook/AppEventsLogger$AppEvent;)V
    .registers 4

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    #@3
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@6
    move-result v0

    #@7
    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    #@9
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@c
    move-result v1

    #@d
    add-int/2addr v0, v1

    #@e
    const/16 v1, 0x3e8

    #@10
    if-lt v0, v1, :cond_1a

    #@12
    iget v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    iput v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_20

    #@18
    :goto_18
    monitor-exit p0

    #@19
    return-void

    #@1a
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    #@1c
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_20

    #@1f
    goto :goto_18

    #@20
    :catchall_20
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0
.end method

.method public clearInFlightAndStats(Z)V
    .registers 4

    #@0
    monitor-enter p0

    #@1
    if-eqz p1, :cond_a

    #@3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    #@5
    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    #@7
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@a
    :cond_a
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    #@c
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@f
    const/4 v0, 0x0

    #@10
    iput v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    #@12
    monitor-exit p0

    #@13
    return-void

    #@14
    :catchall_14
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public getAccumulatedEventCount()I
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    #@3
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_9
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public getEventsToPersist()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AppEventsLogger$AppEvent;",
            ">;"
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    #@3
    new-instance v1, Ljava/util/ArrayList;

    #@5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    #@a
    monitor-exit p0

    #@b
    return-object v0

    #@c
    :catchall_c
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public populateRequest(Lcom/facebook/Request;ZZZ)I
    .registers 11

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget v2, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->numSkippedEventsDueToFullBuffer:I

    #@3
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    #@5
    iget-object v1, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    #@7
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@a
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatedEvents:Ljava/util/List;

    #@c
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@f
    new-instance v3, Lorg/json/JSONArray;

    #@11
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    #@14
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$SessionEventsState;->inFlightEvents:Ljava/util/List;

    #@16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_39

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/facebook/AppEventsLogger$AppEvent;

    #@26
    if-nez p2, :cond_2e

    #@28
    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$AppEvent;->getIsImplicit()Z

    #@2b
    move-result v4

    #@2c
    if-nez v4, :cond_1a

    #@2e
    :cond_2e
    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$AppEvent;->getJSONObject()Lorg/json/JSONObject;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@35
    goto :goto_1a

    #@36
    :catchall_36
    move-exception v0

    #@37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_36

    #@38
    throw v0

    #@39
    :cond_39
    :try_start_39
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_42

    #@3f
    const/4 v0, 0x0

    #@40
    monitor-exit p0

    #@41
    :goto_41
    return v0

    #@42
    :cond_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_36

    #@43
    move-object v0, p0

    #@44
    move-object v1, p1

    #@45
    move v4, p3

    #@46
    move v5, p4

    #@47
    invoke-direct/range {v0 .. v5}, Lcom/facebook/AppEventsLogger$SessionEventsState;->populateRequest(Lcom/facebook/Request;ILorg/json/JSONArray;ZZ)V

    #@4a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    #@4d
    move-result v0

    #@4e
    goto :goto_41
.end method
