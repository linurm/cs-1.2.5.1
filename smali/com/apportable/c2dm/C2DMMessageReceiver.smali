.class public Lcom/apportable/c2dm/C2DMMessageReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "C2DMMessageReceiver"

.field private static notificationKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const/4 v0, 0x0

    #@1
    sput-object v0, Lcom/apportable/c2dm/C2DMMessageReceiver;->notificationKey:Ljava/lang/String;

    #@3
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #@3
    return-void
.end method

.method private static native forwardRemoteNotification(Ljava/lang/String;)V
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    const-string v1, "C2DMMessageReceiver"

    #@7
    const-string v3, "Message Receiver called"

    #@9
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_139

    #@14
    const-string v0, "C2DMMessageReceiver"

    #@16
    const-string v1, "Received message"

    #@18
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@22
    move-result-object v0

    #@23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v1

    #@27
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_5e

    #@2d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Ljava/lang/String;

    #@33
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    const-string v5, "C2DMMessageReceiver"

    #@39
    new-instance v6, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string v7, "Message extra "

    #@40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v0

    #@48
    const-string v6, ": "

    #@4a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    goto :goto_27

    #@5e
    :cond_5e
    const-string v0, "payload"

    #@60
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    if-nez v0, :cond_6c

    #@66
    const-string v0, "data"

    #@68
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@6b
    move-result-object v0

    #@6c
    :cond_6c
    const-string v1, "C2DMMessageReceiver"

    #@6e
    const-string v4, "MESSAGE RECEIVED"

    #@70
    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    :try_start_73
    sget-object v1, Lcom/apportable/c2dm/C2DMMessageReceiver;->notificationKey:Ljava/lang/String;

    #@75
    if-nez v1, :cond_a3

    #@77
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_73 .. :try_end_7a} :catch_154
    .catch Ljava/lang/NullPointerException; {:try_start_73 .. :try_end_7a} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7a} :catch_166

    #@7a
    move-result-object v1

    #@7b
    :try_start_7b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    const/16 v5, 0x80

    #@81
    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_84
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7b .. :try_end_84} :catch_13e
    .catch Lorg/json/JSONException; {:try_start_7b .. :try_end_84} :catch_154
    .catch Ljava/lang/NullPointerException; {:try_start_7b .. :try_end_84} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_84} :catch_166

    #@84
    move-result-object v1

    #@85
    :goto_85
    if-eqz v1, :cond_91

    #@87
    :try_start_87
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@89
    const-string v4, "apportable.c2dm.remotenotificationkey"

    #@8b
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    sput-object v1, Lcom/apportable/c2dm/C2DMMessageReceiver;->notificationKey:Ljava/lang/String;

    #@91
    :cond_91
    sget-object v1, Lcom/apportable/c2dm/C2DMMessageReceiver;->notificationKey:Ljava/lang/String;

    #@93
    if-eqz v1, :cond_9f

    #@95
    sget-object v1, Lcom/apportable/c2dm/C2DMMessageReceiver;->notificationKey:Ljava/lang/String;

    #@97
    const-string v4, ""

    #@99
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v1

    #@9d
    if-eqz v1, :cond_a3

    #@9f
    :cond_9f
    const-string v1, "aps"

    #@a1
    sput-object v1, Lcom/apportable/c2dm/C2DMMessageReceiver;->notificationKey:Ljava/lang/String;

    #@a3
    :cond_a3
    if-nez v0, :cond_d9

    #@a5
    new-instance v1, Lorg/json/JSONObject;

    #@a7
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    #@aa
    new-instance v4, Lorg/json/JSONObject;

    #@ac
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    #@af
    sget-object v0, Lcom/apportable/c2dm/C2DMMessageReceiver;->notificationKey:Ljava/lang/String;

    #@b1
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b4
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_b4} :catch_154
    .catch Ljava/lang/NullPointerException; {:try_start_87 .. :try_end_b4} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_b4} :catch_166

    #@b4
    :try_start_b4
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@b7
    move-result-object v0

    #@b8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@bb
    move-result-object v5

    #@bc
    :goto_bc
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@bf
    move-result v0

    #@c0
    if-eqz v0, :cond_d5

    #@c2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c5
    move-result-object v0

    #@c6
    check-cast v0, Ljava/lang/String;

    #@c8
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@cb
    move-result-object v6

    #@cc
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@cf
    move-result-object v6

    #@d0
    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d3
    .catch Lorg/json/JSONException; {:try_start_b4 .. :try_end_d3} :catch_d4
    .catch Ljava/lang/NullPointerException; {:try_start_b4 .. :try_end_d3} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_d3} :catch_166

    #@d3
    goto :goto_bc

    #@d4
    :catch_d4
    move-exception v0

    #@d5
    :cond_d5
    :try_start_d5
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@d8
    move-result-object v0

    #@d9
    :cond_d9
    new-instance v1, Lorg/json/JSONObject;

    #@db
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    #@de
    sget-object v3, Lcom/apportable/c2dm/C2DMMessageReceiver;->notificationKey:Ljava/lang/String;

    #@e0
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@e3
    move-result-object v3

    #@e4
    const-string v1, "alert"

    #@e6
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    #@e9
    move-result-object v1

    #@ea
    if-eqz v1, :cond_149

    #@ec
    const-string v4, "body"

    #@ee
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@f1
    move-result-object v1

    #@f2
    :goto_f2
    const-string v4, "sound"

    #@f4
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    #@f7
    move-result-object v3

    #@f8
    invoke-static {}, Lcom/apportable/Lifecycle;->isNativeApplicationStarted()Z

    #@fb
    move-result v4

    #@fc
    if-eqz v4, :cond_104

    #@fe
    invoke-static {}, Lcom/apportable/Lifecycle;->isInBackground()Z

    #@101
    move-result v4

    #@102
    if-eqz v4, :cond_150

    #@104
    :cond_104
    const-string v4, "com.apportable.notifications.Notifications"

    #@106
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@109
    move-result-object v4

    #@10a
    const-string v5, "postNotification"

    #@10c
    const/4 v6, 0x4

    #@10d
    new-array v6, v6, [Ljava/lang/Class;

    #@10f
    const/4 v7, 0x0

    #@110
    const-class v8, Landroid/content/Context;

    #@112
    aput-object v8, v6, v7

    #@114
    const/4 v7, 0x1

    #@115
    const-class v8, Ljava/lang/String;

    #@117
    aput-object v8, v6, v7

    #@119
    const/4 v7, 0x2

    #@11a
    const-class v8, Ljava/lang/String;

    #@11c
    aput-object v8, v6, v7

    #@11e
    const/4 v7, 0x3

    #@11f
    const-class v8, Ljava/lang/String;

    #@121
    aput-object v8, v6, v7

    #@123
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@126
    move-result-object v5

    #@127
    const/4 v6, 0x4

    #@128
    new-array v6, v6, [Ljava/lang/Object;

    #@12a
    const/4 v7, 0x0

    #@12b
    aput-object p1, v6, v7

    #@12d
    const/4 v7, 0x1

    #@12e
    aput-object v1, v6, v7

    #@130
    const/4 v1, 0x2

    #@131
    aput-object v3, v6, v1

    #@133
    const/4 v1, 0x3

    #@134
    aput-object v0, v6, v1

    #@136
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_139
    .catch Lorg/json/JSONException; {:try_start_d5 .. :try_end_139} :catch_154
    .catch Ljava/lang/NullPointerException; {:try_start_d5 .. :try_end_139} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_139} :catch_166

    #@139
    :cond_139
    :goto_139
    const/4 v0, -0x1

    #@13a
    invoke-virtual {p0, v0, v2, v2}, Lcom/apportable/c2dm/C2DMMessageReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    #@13d
    return-void

    #@13e
    :catch_13e
    move-exception v1

    #@13f
    :try_start_13f
    const-string v4, "MetaData"

    #@141
    const-string v5, "Unable to fetch application info"

    #@143
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@146
    move-object v1, v2

    #@147
    goto/16 :goto_85

    #@149
    :cond_149
    const-string v1, "alert"

    #@14b
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@14e
    move-result-object v1

    #@14f
    goto :goto_f2

    #@150
    :cond_150
    invoke-static {v0}, Lcom/apportable/c2dm/C2DMMessageReceiver;->forwardRemoteNotification(Ljava/lang/String;)V
    :try_end_153
    .catch Lorg/json/JSONException; {:try_start_13f .. :try_end_153} :catch_154
    .catch Ljava/lang/NullPointerException; {:try_start_13f .. :try_end_153} :catch_15d
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_153} :catch_166

    #@153
    goto :goto_139

    #@154
    :catch_154
    move-exception v0

    #@155
    const-string v1, "C2DMMessageReceiver"

    #@157
    const-string v3, " caught exception processing message and failing silently to prevent force close."

    #@159
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@15c
    goto :goto_139

    #@15d
    :catch_15d
    move-exception v0

    #@15e
    const-string v1, "C2DMMessageReceiver"

    #@160
    const-string v3, " caught exception processing message and failing silently to prevent force close."

    #@162
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@165
    goto :goto_139

    #@166
    :catch_166
    move-exception v0

    #@167
    const-string v1, "C2DMMessageReceiver"

    #@169
    const-string v3, " caught exception processing message and failing silently to prevent force close."

    #@16b
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@16e
    goto :goto_139
.end method
