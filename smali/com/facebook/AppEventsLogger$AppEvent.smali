.class Lcom/facebook/AppEventsLogger$AppEvent;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AppEventsLogger$AppEvent$SerializationProxyV1;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L

.field private static final validatedIdentifiers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isImplicit:Z

.field private jsonObject:Lorg/json/JSONObject;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    sput-object v0, Lcom/facebook/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    #@7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V
    .registers 13

    #@0
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    invoke-direct {p0, p1}, Lcom/facebook/AppEventsLogger$AppEvent;->validateIdentifier(Ljava/lang/String;)V

    #@8
    iput-object p1, p0, Lcom/facebook/AppEventsLogger$AppEvent;->name:Ljava/lang/String;

    #@a
    iput-boolean p4, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    #@c
    new-instance v0, Lorg/json/JSONObject;

    #@e
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@11
    iput-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    #@13
    :try_start_13
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    #@15
    const-string v1, "_eventName"

    #@17
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@1a
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    #@1c
    const-string v1, "_logTime"

    #@1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@21
    move-result-wide v2

    #@22
    const-wide/16 v4, 0x3e8

    #@24
    div-long/2addr v2, v4

    #@25
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    #@28
    if-eqz p2, :cond_35

    #@2a
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    #@2c
    const-string v1, "_valueToSum"

    #@2e
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    #@31
    move-result-wide v2

    #@32
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    #@35
    :cond_35
    iget-boolean v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    #@37
    if-eqz v0, :cond_42

    #@39
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    #@3b
    const-string v1, "_implicitlyLogged"

    #@3d
    const-string v2, "1"

    #@3f
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@42
    :cond_42
    invoke-static {}, Lcom/facebook/Settings;->getAppVersion()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    if-eqz v0, :cond_4f

    #@48
    iget-object v1, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    #@4a
    const-string v2, "_appVersion"

    #@4c
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@4f
    :cond_4f
    if-eqz p3, :cond_a9

    #@51
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@54
    move-result-object v0

    #@55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@58
    move-result-object v1

    #@59
    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5c
    move-result v0

    #@5d
    if-eqz v0, :cond_a9

    #@5f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@62
    move-result-object v0

    #@63
    check-cast v0, Ljava/lang/String;

    #@65
    invoke-direct {p0, v0}, Lcom/facebook/AppEventsLogger$AppEvent;->validateIdentifier(Ljava/lang/String;)V

    #@68
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@6b
    move-result-object v2

    #@6c
    instance-of v3, v2, Ljava/lang/String;

    #@6e
    if-nez v3, :cond_9f

    #@70
    instance-of v3, v2, Ljava/lang/Number;

    #@72
    if-nez v3, :cond_9f

    #@74
    new-instance v1, Lcom/facebook/FacebookException;

    #@76
    const-string v3, "Parameter value \'%s\' for key \'%s\' should be a string or a numeric type."

    #@78
    const/4 v4, 0x2

    #@79
    new-array v4, v4, [Ljava/lang/Object;

    #@7b
    const/4 v5, 0x0

    #@7c
    aput-object v2, v4, v5

    #@7e
    const/4 v2, 0x1

    #@7f
    aput-object v0, v4, v2

    #@81
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@84
    move-result-object v0

    #@85
    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@88
    throw v1
    :try_end_89
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_89} :catch_89

    #@89
    :catch_89
    move-exception v0

    #@8a
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    #@8c
    const-string v2, "AppEvents"

    #@8e
    const-string v3, "JSON encoding for app event failed: \'%s\'"

    #@90
    new-array v4, v7, [Ljava/lang/Object;

    #@92
    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    #@95
    move-result-object v0

    #@96
    aput-object v0, v4, v6

    #@98
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #@9b
    const/4 v0, 0x0

    #@9c
    iput-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    #@9e
    :cond_9e
    :goto_9e
    return-void

    #@9f
    :cond_9f
    :try_start_9f
    iget-object v3, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    #@a1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@a8
    goto :goto_59

    #@a9
    :cond_a9
    iget-boolean v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    #@ab
    if-nez v0, :cond_9e

    #@ad
    sget-object v0, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    #@af
    const-string v1, "AppEvents"

    #@b1
    const-string v2, "Created app event \'%s\'"

    #@b3
    const/4 v3, 0x1

    #@b4
    new-array v3, v3, [Ljava/lang/Object;

    #@b6
    const/4 v4, 0x0

    #@b7
    iget-object v5, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    #@b9
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@bc
    move-result-object v5

    #@bd
    aput-object v5, v3, v4

    #@bf
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c2
    .catch Lorg/json/JSONException; {:try_start_9f .. :try_end_c2} :catch_89

    #@c2
    goto :goto_9e
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lorg/json/JSONObject;

    #@5
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@8
    iput-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    #@a
    iput-boolean p2, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    #@c
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/facebook/AppEventsLogger$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    invoke-direct {p0, p1, p2}, Lcom/facebook/AppEventsLogger$AppEvent;-><init>(Ljava/lang/String;Z)V

    #@3
    return-void
.end method

.method private validateIdentifier(Ljava/lang/String;)V
    .registers 8

    #@0
    const/16 v5, 0x28

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    if-eqz p1, :cond_12

    #@6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_12

    #@c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v0

    #@10
    if-le v0, v5, :cond_2d

    #@12
    :cond_12
    if-nez p1, :cond_16

    #@14
    const-string p1, "<None Provided>"

    #@16
    :cond_16
    new-instance v0, Lcom/facebook/FacebookException;

    #@18
    const-string v1, "Identifier \'%s\' must be less than %d characters"

    #@1a
    const/4 v2, 0x2

    #@1b
    new-array v2, v2, [Ljava/lang/Object;

    #@1d
    aput-object p1, v2, v3

    #@1f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v3

    #@23
    aput-object v3, v2, v4

    #@25
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    :cond_2d
    sget-object v1, Lcom/facebook/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    #@2f
    monitor-enter v1

    #@30
    :try_start_30
    sget-object v0, Lcom/facebook/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    #@32
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_4b

    #@37
    if-nez v0, :cond_4a

    #@39
    const-string v0, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    #@3b
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_51

    #@41
    sget-object v1, Lcom/facebook/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    #@43
    monitor-enter v1

    #@44
    :try_start_44
    sget-object v0, Lcom/facebook/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    #@46
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_4e

    #@4a
    :cond_4a
    return-void

    #@4b
    :catchall_4b
    move-exception v0

    #@4c
    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    #@4d
    throw v0

    #@4e
    :catchall_4e
    move-exception v0

    #@4f
    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    #@50
    throw v0

    #@51
    :cond_51
    new-instance v0, Lcom/facebook/FacebookException;

    #@53
    const-string v1, "Skipping event named \'%s\' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen."

    #@55
    new-array v2, v4, [Ljava/lang/Object;

    #@57
    aput-object p1, v2, v3

    #@59
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@60
    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 5

    #@0
    new-instance v0, Lcom/facebook/AppEventsLogger$AppEvent$SerializationProxyV1;

    #@2
    iget-object v1, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    #@4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    iget-boolean v2, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    #@a
    const/4 v3, 0x0

    #@b
    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/AppEventsLogger$AppEvent$SerializationProxyV1;-><init>(Ljava/lang/String;ZLcom/facebook/AppEventsLogger$1;)V

    #@e
    return-object v0
.end method


# virtual methods
.method public getIsImplicit()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    #@2
    return v0
.end method

.method public getJSONObject()Lorg/json/JSONObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    #@0
    const-string v0, "\"%s\", implicit: %b, json: %s"

    #@2
    const/4 v1, 0x3

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    iget-object v3, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    #@8
    const-string v4, "_eventName"

    #@a
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    aput-object v3, v1, v2

    #@10
    const/4 v2, 0x1

    #@11
    iget-boolean v3, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    #@13
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16
    move-result-object v3

    #@17
    aput-object v3, v1, v2

    #@19
    const/4 v2, 0x2

    #@1a
    iget-object v3, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    #@1c
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    aput-object v3, v1, v2

    #@22
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method
