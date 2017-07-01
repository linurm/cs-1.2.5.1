.class public Lbolts/AppLinkNavigation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/AppLinkNavigation$NavigationResult;
    }
.end annotation


# static fields
.field private static final KEY_NAME_USER_AGENT:Ljava/lang/String; = "user_agent"

.field private static final KEY_NAME_VERSION:Ljava/lang/String; = "version"

.field private static final VERSION:Ljava/lang/String; = "1.0"

.field private static defaultResolver:Lbolts/AppLinkResolver;


# instance fields
.field private final appLink:Lbolts/AppLink;

.field private final appLinkData:Landroid/os/Bundle;

.field private final extras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lbolts/AppLink;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "appLink must not be null."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    if-nez p2, :cond_14

    #@f
    new-instance p2, Landroid/os/Bundle;

    #@11
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    #@14
    :cond_14
    if-nez p3, :cond_1b

    #@16
    new-instance p3, Landroid/os/Bundle;

    #@18
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    #@1b
    :cond_1b
    iput-object p1, p0, Lbolts/AppLinkNavigation;->appLink:Lbolts/AppLink;

    #@1d
    iput-object p2, p0, Lbolts/AppLinkNavigation;->extras:Landroid/os/Bundle;

    #@1f
    iput-object p3, p0, Lbolts/AppLinkNavigation;->appLinkData:Landroid/os/Bundle;

    #@21
    return-void
.end method

.method private buildAppLinkDataForNavigation()Landroid/os/Bundle;
    .registers 4

    #@0
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    invoke-virtual {p0}, Lbolts/AppLinkNavigation;->getAppLinkData()Landroid/os/Bundle;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@c
    const-string v1, "target_url"

    #@e
    invoke-virtual {p0}, Lbolts/AppLinkNavigation;->getAppLink()Lbolts/AppLink;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Lbolts/AppLink;->getSourceUrl()Landroid/net/Uri;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    const-string v1, "version"

    #@1f
    const-string v2, "1.0"

    #@21
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    const-string v1, "user_agent"

    #@26
    const-string v2, "Bolts Android 1.1.0"

    #@28
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@2b
    const-string v1, "extras"

    #@2d
    invoke-virtual {p0}, Lbolts/AppLinkNavigation;->getExtras()Landroid/os/Bundle;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@34
    return-object v0
.end method

.method public static getDefaultResolver()Lbolts/AppLinkResolver;
    .registers 1

    #@0
    sget-object v0, Lbolts/AppLinkNavigation;->defaultResolver:Lbolts/AppLinkResolver;

    #@2
    return-object v0
.end method

.method private getJSONForBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    new-instance v1, Lorg/json/JSONObject;

    #@2
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    #@5
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

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
    if-eqz v0, :cond_25

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/String;

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@1c
    move-result-object v3

    #@1d
    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@24
    goto :goto_d

    #@25
    :cond_25
    return-object v1
.end method

.method private getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    instance-of v0, p1, Landroid/os/Bundle;

    #@3
    if-eqz v0, :cond_c

    #@5
    check-cast p1, Landroid/os/Bundle;

    #@7
    invoke-direct {p0, p1}, Lbolts/AppLinkNavigation;->getJSONForBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;

    #@a
    move-result-object p1

    #@b
    :cond_b
    :goto_b
    return-object p1

    #@c
    :cond_c
    instance-of v0, p1, Ljava/lang/CharSequence;

    #@e
    if-eqz v0, :cond_15

    #@10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@13
    move-result-object p1

    #@14
    goto :goto_b

    #@15
    :cond_15
    instance-of v0, p1, Ljava/util/List;

    #@17
    if-eqz v0, :cond_36

    #@19
    new-instance v0, Lorg/json/JSONArray;

    #@1b
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@1e
    check-cast p1, Ljava/util/List;

    #@20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v1

    #@24
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_1af

    #@2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {p0, v2}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@35
    goto :goto_24

    #@36
    :cond_36
    instance-of v0, p1, Landroid/util/SparseArray;

    #@38
    if-eqz v0, :cond_59

    #@3a
    new-instance v0, Lorg/json/JSONArray;

    #@3c
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@3f
    check-cast p1, Landroid/util/SparseArray;

    #@41
    :goto_41
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    #@44
    move-result v2

    #@45
    if-ge v1, v2, :cond_1ac

    #@47
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@4a
    move-result v2

    #@4b
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@4e
    move-result-object v3

    #@4f
    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    #@56
    add-int/lit8 v1, v1, 0x1

    #@58
    goto :goto_41

    #@59
    :cond_59
    instance-of v0, p1, Ljava/lang/Character;

    #@5b
    if-eqz v0, :cond_62

    #@5d
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@60
    move-result-object p1

    #@61
    goto :goto_b

    #@62
    :cond_62
    instance-of v0, p1, Ljava/lang/Boolean;

    #@64
    if-nez v0, :cond_b

    #@66
    instance-of v0, p1, Ljava/lang/Number;

    #@68
    if-eqz v0, :cond_88

    #@6a
    instance-of v0, p1, Ljava/lang/Double;

    #@6c
    if-nez v0, :cond_72

    #@6e
    instance-of v0, p1, Ljava/lang/Float;

    #@70
    if-eqz v0, :cond_7d

    #@72
    :cond_72
    check-cast p1, Ljava/lang/Number;

    #@74
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    #@77
    move-result-wide v0

    #@78
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@7b
    move-result-object p1

    #@7c
    goto :goto_b

    #@7d
    :cond_7d
    check-cast p1, Ljava/lang/Number;

    #@7f
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    #@82
    move-result-wide v0

    #@83
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@86
    move-result-object p1

    #@87
    goto :goto_b

    #@88
    :cond_88
    instance-of v0, p1, [Z

    #@8a
    if-eqz v0, :cond_a6

    #@8c
    new-instance v0, Lorg/json/JSONArray;

    #@8e
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@91
    check-cast p1, [Z

    #@93
    array-length v2, p1

    #@94
    :goto_94
    if-ge v1, v2, :cond_1a9

    #@96
    aget-boolean v3, p1, v1

    #@98
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9b
    move-result-object v3

    #@9c
    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    move-result-object v3

    #@a0
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@a3
    add-int/lit8 v1, v1, 0x1

    #@a5
    goto :goto_94

    #@a6
    :cond_a6
    instance-of v0, p1, [C

    #@a8
    if-eqz v0, :cond_c4

    #@aa
    new-instance v0, Lorg/json/JSONArray;

    #@ac
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@af
    check-cast p1, [C

    #@b1
    array-length v2, p1

    #@b2
    :goto_b2
    if-ge v1, v2, :cond_1a6

    #@b4
    aget-char v3, p1, v1

    #@b6
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@b9
    move-result-object v3

    #@ba
    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@bd
    move-result-object v3

    #@be
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@c1
    add-int/lit8 v1, v1, 0x1

    #@c3
    goto :goto_b2

    #@c4
    :cond_c4
    instance-of v0, p1, [Ljava/lang/CharSequence;

    #@c6
    if-eqz v0, :cond_de

    #@c8
    new-instance v0, Lorg/json/JSONArray;

    #@ca
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@cd
    check-cast p1, [Ljava/lang/CharSequence;

    #@cf
    array-length v2, p1

    #@d0
    :goto_d0
    if-ge v1, v2, :cond_1a3

    #@d2
    aget-object v3, p1, v1

    #@d4
    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@d7
    move-result-object v3

    #@d8
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@db
    add-int/lit8 v1, v1, 0x1

    #@dd
    goto :goto_d0

    #@de
    :cond_de
    instance-of v0, p1, [D

    #@e0
    if-eqz v0, :cond_fc

    #@e2
    new-instance v0, Lorg/json/JSONArray;

    #@e4
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@e7
    check-cast p1, [D

    #@e9
    array-length v2, p1

    #@ea
    :goto_ea
    if-ge v1, v2, :cond_1a0

    #@ec
    aget-wide v4, p1, v1

    #@ee
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@f1
    move-result-object v3

    #@f2
    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@f5
    move-result-object v3

    #@f6
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@f9
    add-int/lit8 v1, v1, 0x1

    #@fb
    goto :goto_ea

    #@fc
    :cond_fc
    instance-of v0, p1, [F

    #@fe
    if-eqz v0, :cond_11a

    #@100
    new-instance v0, Lorg/json/JSONArray;

    #@102
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@105
    check-cast p1, [F

    #@107
    array-length v2, p1

    #@108
    :goto_108
    if-ge v1, v2, :cond_19d

    #@10a
    aget v3, p1, v1

    #@10c
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@10f
    move-result-object v3

    #@110
    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@113
    move-result-object v3

    #@114
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@117
    add-int/lit8 v1, v1, 0x1

    #@119
    goto :goto_108

    #@11a
    :cond_11a
    instance-of v0, p1, [I

    #@11c
    if-eqz v0, :cond_138

    #@11e
    new-instance v0, Lorg/json/JSONArray;

    #@120
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@123
    check-cast p1, [I

    #@125
    array-length v2, p1

    #@126
    :goto_126
    if-ge v1, v2, :cond_19a

    #@128
    aget v3, p1, v1

    #@12a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12d
    move-result-object v3

    #@12e
    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@131
    move-result-object v3

    #@132
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@135
    add-int/lit8 v1, v1, 0x1

    #@137
    goto :goto_126

    #@138
    :cond_138
    instance-of v0, p1, [J

    #@13a
    if-eqz v0, :cond_156

    #@13c
    new-instance v0, Lorg/json/JSONArray;

    #@13e
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@141
    check-cast p1, [J

    #@143
    array-length v2, p1

    #@144
    :goto_144
    if-ge v1, v2, :cond_197

    #@146
    aget-wide v4, p1, v1

    #@148
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14b
    move-result-object v3

    #@14c
    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@14f
    move-result-object v3

    #@150
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@153
    add-int/lit8 v1, v1, 0x1

    #@155
    goto :goto_144

    #@156
    :cond_156
    instance-of v0, p1, [S

    #@158
    if-eqz v0, :cond_174

    #@15a
    new-instance v0, Lorg/json/JSONArray;

    #@15c
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@15f
    check-cast p1, [S

    #@161
    array-length v2, p1

    #@162
    :goto_162
    if-ge v1, v2, :cond_194

    #@164
    aget-short v3, p1, v1

    #@166
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@169
    move-result-object v3

    #@16a
    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@16d
    move-result-object v3

    #@16e
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@171
    add-int/lit8 v1, v1, 0x1

    #@173
    goto :goto_162

    #@174
    :cond_174
    instance-of v0, p1, [Ljava/lang/String;

    #@176
    if-eqz v0, :cond_18e

    #@178
    new-instance v0, Lorg/json/JSONArray;

    #@17a
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@17d
    check-cast p1, [Ljava/lang/String;

    #@17f
    array-length v2, p1

    #@180
    :goto_180
    if-ge v1, v2, :cond_191

    #@182
    aget-object v3, p1, v1

    #@184
    invoke-direct {p0, v3}, Lbolts/AppLinkNavigation;->getJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@187
    move-result-object v3

    #@188
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@18b
    add-int/lit8 v1, v1, 0x1

    #@18d
    goto :goto_180

    #@18e
    :cond_18e
    const/4 p1, 0x0

    #@18f
    goto/16 :goto_b

    #@191
    :cond_191
    move-object p1, v0

    #@192
    goto/16 :goto_b

    #@194
    :cond_194
    move-object p1, v0

    #@195
    goto/16 :goto_b

    #@197
    :cond_197
    move-object p1, v0

    #@198
    goto/16 :goto_b

    #@19a
    :cond_19a
    move-object p1, v0

    #@19b
    goto/16 :goto_b

    #@19d
    :cond_19d
    move-object p1, v0

    #@19e
    goto/16 :goto_b

    #@1a0
    :cond_1a0
    move-object p1, v0

    #@1a1
    goto/16 :goto_b

    #@1a3
    :cond_1a3
    move-object p1, v0

    #@1a4
    goto/16 :goto_b

    #@1a6
    :cond_1a6
    move-object p1, v0

    #@1a7
    goto/16 :goto_b

    #@1a9
    :cond_1a9
    move-object p1, v0

    #@1aa
    goto/16 :goto_b

    #@1ac
    :cond_1ac
    move-object p1, v0

    #@1ad
    goto/16 :goto_b

    #@1af
    :cond_1af
    move-object p1, v0

    #@1b0
    goto/16 :goto_b
.end method

.method private static getResolver(Landroid/content/Context;)Lbolts/AppLinkResolver;
    .registers 2

    #@0
    invoke-static {}, Lbolts/AppLinkNavigation;->getDefaultResolver()Lbolts/AppLinkResolver;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    invoke-static {}, Lbolts/AppLinkNavigation;->getDefaultResolver()Lbolts/AppLinkResolver;

    #@9
    move-result-object v0

    #@a
    :goto_a
    return-object v0

    #@b
    :cond_b
    new-instance v0, Lbolts/WebViewAppLinkResolver;

    #@d
    invoke-direct {v0, p0}, Lbolts/WebViewAppLinkResolver;-><init>(Landroid/content/Context;)V

    #@10
    goto :goto_a
.end method

.method public static navigate(Landroid/content/Context;Lbolts/AppLink;)Lbolts/AppLinkNavigation$NavigationResult;
    .registers 4

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v0, Lbolts/AppLinkNavigation;

    #@3
    invoke-direct {v0, p1, v1, v1}, Lbolts/AppLinkNavigation;-><init>(Lbolts/AppLink;Landroid/os/Bundle;Landroid/os/Bundle;)V

    #@6
    invoke-virtual {v0, p0}, Lbolts/AppLinkNavigation;->navigate(Landroid/content/Context;)Lbolts/AppLinkNavigation$NavigationResult;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static navigateInBackground(Landroid/content/Context;Landroid/net/Uri;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    #@0
    invoke-static {p0}, Lbolts/AppLinkNavigation;->getResolver(Landroid/content/Context;)Lbolts/AppLinkResolver;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Landroid/net/Uri;Lbolts/AppLinkResolver;)Lbolts/Task;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static navigateInBackground(Landroid/content/Context;Landroid/net/Uri;Lbolts/AppLinkResolver;)Lbolts/Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lbolts/AppLinkResolver;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    #@0
    invoke-interface {p2, p1}, Lbolts/AppLinkResolver;->getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lbolts/AppLinkNavigation$1;

    #@6
    invoke-direct {v1, p0}, Lbolts/AppLinkNavigation$1;-><init>(Landroid/content/Context;)V

    #@9
    sget-object v2, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    #@b
    invoke-virtual {v0, v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public static navigateInBackground(Landroid/content/Context;Ljava/lang/String;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    #@0
    invoke-static {p0}, Lbolts/AppLinkNavigation;->getResolver(Landroid/content/Context;)Lbolts/AppLinkResolver;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Ljava/lang/String;Lbolts/AppLinkResolver;)Lbolts/Task;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static navigateInBackground(Landroid/content/Context;Ljava/lang/String;Lbolts/AppLinkResolver;)Lbolts/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lbolts/AppLinkResolver;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    #@0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p2}, Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Landroid/net/Uri;Lbolts/AppLinkResolver;)Lbolts/Task;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static navigateInBackground(Landroid/content/Context;Ljava/net/URL;)Lbolts/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    #@0
    invoke-static {p0}, Lbolts/AppLinkNavigation;->getResolver(Landroid/content/Context;)Lbolts/AppLinkResolver;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Ljava/net/URL;Lbolts/AppLinkResolver;)Lbolts/Task;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static navigateInBackground(Landroid/content/Context;Ljava/net/URL;Lbolts/AppLinkResolver;)Lbolts/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/net/URL;",
            "Lbolts/AppLinkResolver;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLinkNavigation$NavigationResult;",
            ">;"
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@7
    move-result-object v0

    #@8
    invoke-static {p0, v0, p2}, Lbolts/AppLinkNavigation;->navigateInBackground(Landroid/content/Context;Landroid/net/Uri;Lbolts/AppLinkResolver;)Lbolts/Task;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static setDefaultResolver(Lbolts/AppLinkResolver;)V
    .registers 1

    #@0
    sput-object p0, Lbolts/AppLinkNavigation;->defaultResolver:Lbolts/AppLinkResolver;

    #@2
    return-void
.end method


# virtual methods
.method public getAppLink()Lbolts/AppLink;
    .registers 2

    #@0
    iget-object v0, p0, Lbolts/AppLinkNavigation;->appLink:Lbolts/AppLink;

    #@2
    return-object v0
.end method

.method public getAppLinkData()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lbolts/AppLinkNavigation;->appLinkData:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    #@0
    iget-object v0, p0, Lbolts/AppLinkNavigation;->extras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public navigate(Landroid/content/Context;)Lbolts/AppLinkNavigation$NavigationResult;
    .registers 9

    #@0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v3

    #@4
    invoke-direct {p0}, Lbolts/AppLinkNavigation;->buildAppLinkDataForNavigation()Landroid/os/Bundle;

    #@7
    move-result-object v4

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {p0}, Lbolts/AppLinkNavigation;->getAppLink()Lbolts/AppLink;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Lbolts/AppLink;->getTargets()Ljava/util/List;

    #@10
    move-result-object v0

    #@11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v5

    #@15
    :cond_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_a4

    #@1b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lbolts/AppLink$Target;

    #@21
    new-instance v1, Landroid/content/Intent;

    #@23
    const-string v6, "android.intent.action.VIEW"

    #@25
    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@28
    invoke-virtual {v0}, Lbolts/AppLink$Target;->getUrl()Landroid/net/Uri;

    #@2b
    move-result-object v6

    #@2c
    if-eqz v6, :cond_63

    #@2e
    invoke-virtual {v0}, Lbolts/AppLink$Target;->getUrl()Landroid/net/Uri;

    #@31
    move-result-object v6

    #@32
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@35
    :goto_35
    invoke-virtual {v0}, Lbolts/AppLink$Target;->getPackageName()Ljava/lang/String;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@3c
    invoke-virtual {v0}, Lbolts/AppLink$Target;->getClassName()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    if-eqz v6, :cond_4d

    #@42
    invoke-virtual {v0}, Lbolts/AppLink$Target;->getPackageName()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v0}, Lbolts/AppLink$Target;->getClassName()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@4d
    :cond_4d
    const-string v0, "al_applink_data"

    #@4f
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    #@52
    const/high16 v0, 0x10000

    #@54
    invoke-virtual {v3, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@57
    move-result-object v0

    #@58
    if-eqz v0, :cond_15

    #@5a
    move-object v0, v1

    #@5b
    :goto_5b
    if-eqz v0, :cond_6d

    #@5d
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@60
    sget-object v0, Lbolts/AppLinkNavigation$NavigationResult;->APP:Lbolts/AppLinkNavigation$NavigationResult;

    #@62
    :goto_62
    return-object v0

    #@63
    :cond_63
    iget-object v6, p0, Lbolts/AppLinkNavigation;->appLink:Lbolts/AppLink;

    #@65
    invoke-virtual {v6}, Lbolts/AppLink;->getSourceUrl()Landroid/net/Uri;

    #@68
    move-result-object v6

    #@69
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@6c
    goto :goto_35

    #@6d
    :cond_6d
    invoke-virtual {p0}, Lbolts/AppLinkNavigation;->getAppLink()Lbolts/AppLink;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {v0}, Lbolts/AppLink;->getWebUrl()Landroid/net/Uri;

    #@74
    move-result-object v0

    #@75
    if-eqz v0, :cond_a1

    #@77
    :try_start_77
    invoke-direct {p0, v4}, Lbolts/AppLinkNavigation;->getJSONForBundle(Landroid/os/Bundle;)Lorg/json/JSONObject;
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_77 .. :try_end_7a} :catch_9a

    #@7a
    move-result-object v1

    #@7b
    new-instance v2, Landroid/content/Intent;

    #@7d
    const-string v3, "android.intent.action.VIEW"

    #@7f
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    #@82
    move-result-object v0

    #@83
    const-string v4, "al_applink_data"

    #@85
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v0, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    #@8c
    move-result-object v0

    #@8d
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@90
    move-result-object v0

    #@91
    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@94
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    #@97
    sget-object v0, Lbolts/AppLinkNavigation$NavigationResult;->WEB:Lbolts/AppLinkNavigation$NavigationResult;

    #@99
    goto :goto_62

    #@9a
    :catch_9a
    move-exception v0

    #@9b
    new-instance v1, Ljava/lang/RuntimeException;

    #@9d
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@a0
    throw v1

    #@a1
    :cond_a1
    sget-object v0, Lbolts/AppLinkNavigation$NavigationResult;->FAILED:Lbolts/AppLinkNavigation$NavigationResult;

    #@a3
    goto :goto_62

    #@a4
    :cond_a4
    move-object v0, v2

    #@a5
    goto :goto_5b
.end method
