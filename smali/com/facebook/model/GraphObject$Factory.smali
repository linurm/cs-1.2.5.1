.class public final Lcom/facebook/model/GraphObject$Factory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/model/GraphObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;,
        Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;,
        Lcom/facebook/model/GraphObject$Factory$ProxyBase;
    }
.end annotation


# static fields
.field private static final dateFormats:[Ljava/text/SimpleDateFormat;

.field private static final verifiedGraphObjectClasses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    sput-object v0, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    #@7
    const/4 v0, 0x3

    #@8
    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    #@a
    const/4 v1, 0x0

    #@b
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@d
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    #@f
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@11
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@14
    aput-object v2, v0, v1

    #@16
    const/4 v1, 0x1

    #@17
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@19
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    #@1b
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1d
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@20
    aput-object v2, v0, v1

    #@22
    const/4 v1, 0x2

    #@23
    new-instance v2, Ljava/text/SimpleDateFormat;

    #@25
    const-string v3, "yyyy-MM-dd"

    #@27
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@29
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    #@2c
    aput-object v2, v0, v1

    #@2e
    sput-object v0, Lcom/facebook/model/GraphObject$Factory;->dateFormats:[Ljava/text/SimpleDateFormat;

    #@30
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    .registers 3

    #@0
    invoke-static {p0, p1}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$100(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TU;>;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")TU;"
        }
    .end annotation

    #@0
    const/4 v5, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-nez p0, :cond_2b

    #@4
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@6
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_11

    #@c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f
    move-result-object p0

    #@10
    :cond_10
    :goto_10
    return-object p0

    #@11
    :cond_11
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@13
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1e

    #@19
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@1c
    move-result-object p0

    #@1d
    goto :goto_10

    #@1e
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_29

    #@24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@27
    move-result-object p0

    #@28
    goto :goto_10

    #@29
    :cond_29
    const/4 p0, 0x0

    #@2a
    goto :goto_10

    #@2b
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@32
    move-result v2

    #@33
    if-nez v2, :cond_10

    #@35
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    #@38
    move-result v2

    #@39
    if-nez v2, :cond_10

    #@3b
    const-class v2, Lcom/facebook/model/GraphObject;

    #@3d
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@40
    move-result v2

    #@41
    if-eqz v2, :cond_7e

    #@43
    const-class v1, Lorg/json/JSONObject;

    #@45
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@48
    move-result v1

    #@49
    if-eqz v1, :cond_52

    #@4b
    check-cast p0, Lorg/json/JSONObject;

    #@4d
    invoke-static {p1, p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    #@50
    move-result-object p0

    #@51
    goto :goto_10

    #@52
    :cond_52
    const-class v1, Lcom/facebook/model/GraphObject;

    #@54
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_61

    #@5a
    check-cast p0, Lcom/facebook/model/GraphObject;

    #@5c
    invoke-interface {p0, p1}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    #@5f
    move-result-object p0

    #@60
    goto :goto_10

    #@61
    :cond_61
    new-instance v1, Lcom/facebook/FacebookGraphObjectException;

    #@63
    new-instance v2, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string v4, "Can\'t create GraphObject from "

    #@6a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v2

    #@7a
    invoke-direct {v1, v2}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v1

    #@7e
    :cond_7e
    const-class v2, Ljava/lang/Iterable;

    #@80
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v2

    #@84
    if-nez v2, :cond_9e

    #@86
    const-class v2, Ljava/util/Collection;

    #@88
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@8b
    move-result v2

    #@8c
    if-nez v2, :cond_9e

    #@8e
    const-class v2, Ljava/util/List;

    #@90
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v2

    #@94
    if-nez v2, :cond_9e

    #@96
    const-class v2, Lcom/facebook/model/GraphObjectList;

    #@98
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v2

    #@9c
    if-eqz v2, :cond_105

    #@9e
    :cond_9e
    if-nez p2, :cond_bd

    #@a0
    new-instance v1, Lcom/facebook/FacebookGraphObjectException;

    #@a2
    new-instance v2, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string v3, "can\'t infer generic type of: "

    #@a9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v2

    #@ad
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    #@b0
    move-result-object v3

    #@b1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v2

    #@b5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v2

    #@b9
    invoke-direct {v1, v2}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v1

    #@bd
    :cond_bd
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    #@c0
    move-result-object v2

    #@c1
    if-eqz v2, :cond_cc

    #@c3
    array-length v4, v2

    #@c4
    if-ne v4, v5, :cond_cc

    #@c6
    aget-object v4, v2, v1

    #@c8
    instance-of v4, v4, Ljava/lang/Class;

    #@ca
    if-nez v4, :cond_d4

    #@cc
    :cond_cc
    new-instance v1, Lcom/facebook/FacebookGraphObjectException;

    #@ce
    const-string v2, "Expect collection properties to be of a type with exactly one generic parameter."

    #@d0
    invoke-direct {v1, v2}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    #@d3
    throw v1

    #@d4
    :cond_d4
    aget-object v1, v2, v1

    #@d6
    check-cast v1, Ljava/lang/Class;

    #@d8
    const-class v2, Lorg/json/JSONArray;

    #@da
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@dd
    move-result v2

    #@de
    if-eqz v2, :cond_e8

    #@e0
    check-cast p0, Lorg/json/JSONArray;

    #@e2
    invoke-static {p0, v1}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    #@e5
    move-result-object p0

    #@e6
    goto/16 :goto_10

    #@e8
    :cond_e8
    new-instance v1, Lcom/facebook/FacebookGraphObjectException;

    #@ea
    new-instance v2, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string v4, "Can\'t create Collection from "

    #@f1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v2

    #@f5
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@f8
    move-result-object v3

    #@f9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v2

    #@fd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@100
    move-result-object v2

    #@101
    invoke-direct {v1, v2}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    #@104
    throw v1

    #@105
    :cond_105
    const-class v2, Ljava/lang/String;

    #@107
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@10a
    move-result v2

    #@10b
    if-eqz v2, :cond_13d

    #@10d
    const-class v2, Ljava/lang/Double;

    #@10f
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@112
    move-result v2

    #@113
    if-nez v2, :cond_11d

    #@115
    const-class v2, Ljava/lang/Float;

    #@117
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@11a
    move-result v2

    #@11b
    if-eqz v2, :cond_129

    #@11d
    :cond_11d
    const-string v2, "%f"

    #@11f
    new-array v3, v5, [Ljava/lang/Object;

    #@121
    aput-object p0, v3, v1

    #@123
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@126
    move-result-object p0

    #@127
    goto/16 :goto_10

    #@129
    :cond_129
    const-class v2, Ljava/lang/Number;

    #@12b
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@12e
    move-result v2

    #@12f
    if-eqz v2, :cond_167

    #@131
    const-string v2, "%d"

    #@133
    new-array v3, v5, [Ljava/lang/Object;

    #@135
    aput-object p0, v3, v1

    #@137
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@13a
    move-result-object p0

    #@13b
    goto/16 :goto_10

    #@13d
    :cond_13d
    const-class v2, Ljava/util/Date;

    #@13f
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@142
    move-result v2

    #@143
    if-eqz v2, :cond_167

    #@145
    const-class v2, Ljava/lang/String;

    #@147
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@14a
    move-result v2

    #@14b
    if-eqz v2, :cond_167

    #@14d
    sget-object v4, Lcom/facebook/model/GraphObject$Factory;->dateFormats:[Ljava/text/SimpleDateFormat;

    #@14f
    array-length v5, v4

    #@150
    move v2, v1

    #@151
    :goto_151
    if-ge v2, v5, :cond_167

    #@153
    aget-object v6, v4, v2

    #@155
    :try_start_155
    move-object v0, p0

    #@156
    check-cast v0, Ljava/lang/String;

    #@158
    move-object v1, v0

    #@159
    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_15c
    .catch Ljava/text/ParseException; {:try_start_155 .. :try_end_15c} :catch_162

    #@15c
    move-result-object v1

    #@15d
    if-eqz v1, :cond_163

    #@15f
    move-object p0, v1

    #@160
    goto/16 :goto_10

    #@162
    :catch_162
    move-exception v1

    #@163
    :cond_163
    add-int/lit8 v1, v2, 0x1

    #@165
    move v2, v1

    #@166
    goto :goto_151

    #@167
    :cond_167
    new-instance v1, Lcom/facebook/FacebookGraphObjectException;

    #@169
    new-instance v2, Ljava/lang/StringBuilder;

    #@16b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16e
    const-string v4, "Can\'t convert type"

    #@170
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v2

    #@174
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@177
    move-result-object v3

    #@178
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v2

    #@17c
    const-string v3, " to "

    #@17e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v2

    #@182
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@185
    move-result-object v3

    #@186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v2

    #@18a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18d
    move-result-object v2

    #@18e
    invoke-direct {v1, v2}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    #@191
    throw v1
.end method

.method static convertCamelCaseToLowercaseWithUnderscores(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, "([a-z])([A-Z])"

    #@2
    const-string v1, "$1_$2"

    #@4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static create()Lcom/facebook/model/GraphObject;
    .registers 1

    #@0
    const-class v0, Lcom/facebook/model/GraphObject;

    #@2
    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    new-instance v0, Lorg/json/JSONObject;

    #@2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    #@5
    invoke-static {p0, v0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    .registers 2

    #@0
    const-class v0, Lcom/facebook/model/GraphObject;

    #@2
    invoke-static {p0, v0}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static create(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    invoke-static {p1, p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    #@0
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->verifyCanProxyClass(Ljava/lang/Class;)V

    #@3
    new-instance v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    #@5
    invoke-direct {v0, p1, p0}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    #@8
    const-class v1, Lcom/facebook/model/GraphObject;

    #@a
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x1

    #@f
    new-array v2, v2, [Ljava/lang/Class;

    #@11
    const/4 v3, 0x0

    #@12
    aput-object p0, v2, v3

    #@14
    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Lcom/facebook/model/GraphObject;

    #@1a
    return-object v0
.end method

.method private static createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    #@2
    const-class v1, Ljava/util/Map;

    #@4
    invoke-direct {v0, p0, v1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    #@7
    const-class v1, Lcom/facebook/model/GraphObject;

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x1

    #@e
    new-array v2, v2, [Ljava/lang/Class;

    #@10
    const/4 v3, 0x0

    #@11
    const-class v4, Ljava/util/Map;

    #@13
    aput-object v4, v2, v3

    #@15
    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/Map;

    #@1b
    return-object v0
.end method

.method public static createList(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/model/GraphObjectList",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lorg/json/JSONArray;

    #@2
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@5
    invoke-static {v0, p0}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/model/GraphObjectList",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    #@5
    return-object v0
.end method

.method private static getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    :cond_3
    :goto_3
    return-object p0

    #@4
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v0

    #@8
    const-class v1, Lcom/facebook/model/GraphObject;

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_17

    #@10
    check-cast p0, Lcom/facebook/model/GraphObject;

    #@12
    invoke-interface {p0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    #@15
    move-result-object p0

    #@16
    goto :goto_3

    #@17
    :cond_17
    const-class v1, Lcom/facebook/model/GraphObjectList;

    #@19
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_26

    #@1f
    check-cast p0, Lcom/facebook/model/GraphObjectList;

    #@21
    invoke-interface {p0}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    #@24
    move-result-object p0

    #@25
    goto :goto_3

    #@26
    :cond_26
    const-class v1, Ljava/lang/Iterable;

    #@28
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_3

    #@2e
    new-instance v1, Lorg/json/JSONArray;

    #@30
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    #@33
    check-cast p0, Ljava/lang/Iterable;

    #@35
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v2

    #@39
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_5d

    #@3f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v0

    #@43
    const-class v3, Lcom/facebook/model/GraphObject;

    #@45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_59

    #@4f
    check-cast v0, Lcom/facebook/model/GraphObject;

    #@51
    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@58
    goto :goto_39

    #@59
    :cond_59
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@5c
    goto :goto_39

    #@5d
    :cond_5d
    move-object p0, v1

    #@5e
    goto :goto_3
.end method

.method private static hasClassBeenVerified(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    #@0
    const-class v0, Lcom/facebook/model/GraphObject$Factory;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_d

    #@8
    move-result v0

    #@9
    const-class v1, Lcom/facebook/model/GraphObject$Factory;

    #@b
    monitor-exit v1

    #@c
    return v0

    #@d
    :catchall_d
    move-exception v0

    #@e
    const-class v1, Lcom/facebook/model/GraphObject$Factory;

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public static hasSameId(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_1d

    #@3
    if-eqz p1, :cond_1d

    #@5
    invoke-interface {p0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    #@8
    move-result-object v1

    #@9
    const-string v2, "id"

    #@b
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1d

    #@11
    invoke-interface {p1}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    #@14
    move-result-object v1

    #@15
    const-string v2, "id"

    #@17
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_1e

    #@1d
    :cond_1d
    :goto_1d
    return v0

    #@1e
    :cond_1e
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_26

    #@24
    const/4 v0, 0x1

    #@25
    goto :goto_1d

    #@26
    :cond_26
    const-string v1, "id"

    #@28
    invoke-interface {p0, v1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    const-string v2, "id"

    #@2e
    invoke-interface {p1, v2}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    if-eqz v1, :cond_1d

    #@34
    if-eqz v2, :cond_1d

    #@36
    instance-of v3, v1, Ljava/lang/String;

    #@38
    if-eqz v3, :cond_1d

    #@3a
    instance-of v3, v2, Ljava/lang/String;

    #@3c
    if-eqz v3, :cond_1d

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    goto :goto_1d
.end method

.method private static recordClassHasBeenVerified(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    const-class v0, Lcom/facebook/model/GraphObject$Factory;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    #@5
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_c

    #@8
    const-class v0, Lcom/facebook/model/GraphObject$Factory;

    #@a
    monitor-exit v0

    #@b
    return-void

    #@c
    :catchall_c
    move-exception v0

    #@d
    const-class v1, Lcom/facebook/model/GraphObject$Factory;

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method private static verifyCanProxyClass(Ljava/lang/Class;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    const/4 v10, 0x3

    #@1
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->hasClassBeenVerified(Ljava/lang/Class;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_8

    #@7
    :goto_7
    return-void

    #@8
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_2b

    #@e
    new-instance v0, Lcom/facebook/FacebookGraphObjectException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string v2, "Factory can only wrap interfaces, not class: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    #@2e
    move-result-object v2

    #@2f
    array-length v3, v2

    #@30
    const/4 v0, 0x0

    #@31
    move v1, v0

    #@32
    :goto_32
    if-ge v1, v3, :cond_ca

    #@34
    aget-object v4, v2, v1

    #@36
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@3d
    move-result-object v5

    #@3e
    array-length v5, v5

    #@3f
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@42
    move-result-object v6

    #@43
    const-class v7, Lcom/facebook/model/PropertyName;

    #@45
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    #@48
    move-result v7

    #@49
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    #@4c
    move-result-object v8

    #@4d
    const-class v9, Lcom/facebook/model/GraphObject;

    #@4f
    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@52
    move-result v8

    #@53
    if-eqz v8, :cond_59

    #@55
    :cond_55
    :goto_55
    add-int/lit8 v0, v1, 0x1

    #@57
    move v1, v0

    #@58
    goto :goto_32

    #@59
    :cond_59
    const/4 v8, 0x1

    #@5a
    if-ne v5, v8, :cond_a0

    #@5c
    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@5e
    if-ne v6, v8, :cond_a0

    #@60
    if-eqz v7, :cond_91

    #@62
    const-class v0, Lcom/facebook/model/PropertyName;

    #@64
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@67
    move-result-object v0

    #@68
    check-cast v0, Lcom/facebook/model/PropertyName;

    #@6a
    invoke-interface {v0}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    #@6d
    move-result-object v0

    #@6e
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@71
    move-result v0

    #@72
    if-eqz v0, :cond_55

    #@74
    :cond_74
    new-instance v0, Lcom/facebook/FacebookGraphObjectException;

    #@76
    new-instance v1, Ljava/lang/StringBuilder;

    #@78
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7b
    const-string v2, "Factory can\'t proxy method: "

    #@7d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v1

    #@89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v1

    #@8d
    invoke-direct {v0, v1}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    #@90
    throw v0

    #@91
    :cond_91
    const-string v5, "set"

    #@93
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@96
    move-result v5

    #@97
    if-eqz v5, :cond_74

    #@99
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@9c
    move-result v0

    #@9d
    if-le v0, v10, :cond_74

    #@9f
    goto :goto_55

    #@a0
    :cond_a0
    if-nez v5, :cond_74

    #@a2
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@a4
    if-eq v6, v5, :cond_74

    #@a6
    if-eqz v7, :cond_bb

    #@a8
    const-class v0, Lcom/facebook/model/PropertyName;

    #@aa
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@ad
    move-result-object v0

    #@ae
    check-cast v0, Lcom/facebook/model/PropertyName;

    #@b0
    invoke-interface {v0}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    #@b3
    move-result-object v0

    #@b4
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@b7
    move-result v0

    #@b8
    if-nez v0, :cond_74

    #@ba
    goto :goto_55

    #@bb
    :cond_bb
    const-string v5, "get"

    #@bd
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c0
    move-result v5

    #@c1
    if-eqz v5, :cond_74

    #@c3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@c6
    move-result v0

    #@c7
    if-le v0, v10, :cond_74

    #@c9
    goto :goto_55

    #@ca
    :cond_ca
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->recordClassHasBeenVerified(Ljava/lang/Class;)V

    #@cd
    goto/16 :goto_7
.end method
