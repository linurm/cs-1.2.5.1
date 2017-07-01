.class final Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
.super Lcom/facebook/model/GraphObject$Factory$ProxyBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/model/GraphObject$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GraphObjectProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/model/GraphObject$Factory$ProxyBase",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final CASTTOMAP_METHOD:Ljava/lang/String; = "asMap"

.field private static final CAST_METHOD:Ljava/lang/String; = "cast"

.field private static final CLEAR_METHOD:Ljava/lang/String; = "clear"

.field private static final CONTAINSKEY_METHOD:Ljava/lang/String; = "containsKey"

.field private static final CONTAINSVALUE_METHOD:Ljava/lang/String; = "containsValue"

.field private static final ENTRYSET_METHOD:Ljava/lang/String; = "entrySet"

.field private static final GETINNERJSONOBJECT_METHOD:Ljava/lang/String; = "getInnerJSONObject"

.field private static final GETPROPERTYASLIST_METHOD:Ljava/lang/String; = "getPropertyAsList"

.field private static final GETPROPERTYAS_METHOD:Ljava/lang/String; = "getPropertyAs"

.field private static final GETPROPERTY_METHOD:Ljava/lang/String; = "getProperty"

.field private static final GET_METHOD:Ljava/lang/String; = "get"

.field private static final ISEMPTY_METHOD:Ljava/lang/String; = "isEmpty"

.field private static final KEYSET_METHOD:Ljava/lang/String; = "keySet"

.field private static final PUTALL_METHOD:Ljava/lang/String; = "putAll"

.field private static final PUT_METHOD:Ljava/lang/String; = "put"

.field private static final REMOVEPROPERTY_METHOD:Ljava/lang/String; = "removeProperty"

.field private static final REMOVE_METHOD:Ljava/lang/String; = "remove"

.field private static final SETPROPERTY_METHOD:Ljava/lang/String; = "setProperty"

.field private static final SIZE_METHOD:Ljava/lang/String; = "size"

.field private static final VALUES_METHOD:Ljava/lang/String; = "values"


# instance fields
.field private final graphObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/model/GraphObject$Factory$ProxyBase;-><init>(Ljava/lang/Object;)V

    #@3
    iput-object p2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    #@5
    return-void
.end method

.method private createGraphObjectsFromParameters(Lcom/facebook/model/CreateGraphObject;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    #@0
    if-eqz p1, :cond_45

    #@2
    invoke-interface {p1}, Lcom/facebook/model/CreateGraphObject;->value()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_45

    #@c
    invoke-interface {p1}, Lcom/facebook/model/CreateGraphObject;->value()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-class v0, Ljava/util/List;

    #@12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_3d

    #@1c
    const-class v0, Lcom/facebook/model/GraphObject;

    #@1e
    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->createList(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    #@21
    move-result-object v0

    #@22
    check-cast p2, Ljava/util/List;

    #@24
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v2

    #@28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_46

    #@2e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    #@35
    move-result-object v4

    #@36
    invoke-interface {v4, v1, v3}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@39
    invoke-interface {v0, v4}, Lcom/facebook/model/GraphObjectList;->add(Ljava/lang/Object;)Z

    #@3c
    goto :goto_28

    #@3d
    :cond_3d
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    #@40
    move-result-object v0

    #@41
    invoke-interface {v0, v1, p2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    #@44
    move-object p2, v0

    #@45
    :cond_45
    :goto_45
    return-object p2

    #@46
    :cond_46
    move-object p2, v0

    #@47
    goto :goto_45
.end method

.method private final proxyGraphObjectGettersAndSetters(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    array-length v3, v0

    #@a
    const-class v0, Lcom/facebook/model/PropertyName;

    #@c
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/facebook/model/PropertyName;

    #@12
    if-eqz v0, :cond_36

    #@14
    invoke-interface {v0}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    move-object v2, v0

    #@19
    :goto_19
    if-nez v3, :cond_41

    #@1b
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@1d
    check-cast v0, Lorg/json/JSONObject;

    #@1f
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    #@2a
    move-result-object v0

    #@2b
    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    #@2d
    if-eqz v4, :cond_64

    #@2f
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    #@31
    :goto_31
    invoke-static {v2, v3, v0}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    :goto_35
    return-object v1

    #@36
    :cond_36
    const/4 v0, 0x3

    #@37
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->convertCamelCaseToLowercaseWithUnderscores(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    move-object v2, v0

    #@40
    goto :goto_19

    #@41
    :cond_41
    const/4 v0, 0x1

    #@42
    if-ne v3, v0, :cond_5f

    #@44
    const-class v0, Lcom/facebook/model/CreateGraphObject;

    #@46
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, Lcom/facebook/model/CreateGraphObject;

    #@4c
    const/4 v3, 0x0

    #@4d
    aget-object v3, p2, v3

    #@4f
    invoke-direct {p0, v0, v3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->createGraphObjectsFromParameters(Lcom/facebook/model/CreateGraphObject;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    move-result-object v0

    #@53
    # invokes: Lcom/facebook/model/GraphObject$Factory;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->access$200(Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    move-result-object v3

    #@57
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@59
    check-cast v0, Lorg/json/JSONObject;

    #@5b
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@5e
    goto :goto_35

    #@5f
    :cond_5f
    invoke-virtual {p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    #@62
    move-result-object v1

    #@63
    goto :goto_35

    #@64
    :cond_64
    move-object v0, v1

    #@65
    goto :goto_31
.end method

.method private final proxyGraphObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    const-string v1, "cast"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_27

    #@f
    aget-object v0, p3, v3

    #@11
    check-cast v0, Ljava/lang/Class;

    #@13
    if-eqz v0, :cond_1e

    #@15
    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1e

    #@1d
    :goto_1d
    return-object p1

    #@1e
    :cond_1e
    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@20
    check-cast v1, Lorg/json/JSONObject;

    #@22
    # invokes: Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    invoke-static {v0, v1}, Lcom/facebook/model/GraphObject$Factory;->access$000(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    #@25
    move-result-object p1

    #@26
    goto :goto_1d

    #@27
    :cond_27
    const-string v1, "getInnerJSONObject"

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_38

    #@2f
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    #@35
    iget-object p1, v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@37
    goto :goto_1d

    #@38
    :cond_38
    const-string v1, "asMap"

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_49

    #@40
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@42
    check-cast v0, Lorg/json/JSONObject;

    #@44
    # invokes: Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;
    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->access$100(Lorg/json/JSONObject;)Ljava/util/Map;

    #@47
    move-result-object p1

    #@48
    goto :goto_1d

    #@49
    :cond_49
    const-string v1, "getProperty"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_5e

    #@51
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@53
    check-cast v0, Lorg/json/JSONObject;

    #@55
    aget-object v1, p3, v3

    #@57
    check-cast v1, Ljava/lang/String;

    #@59
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@5c
    move-result-object p1

    #@5d
    goto :goto_1d

    #@5e
    :cond_5e
    const-string v1, "getPropertyAs"

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v1

    #@64
    if-eqz v1, :cond_7b

    #@66
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@68
    check-cast v0, Lorg/json/JSONObject;

    #@6a
    aget-object v1, p3, v3

    #@6c
    check-cast v1, Ljava/lang/String;

    #@6e
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@71
    move-result-object v1

    #@72
    aget-object v0, p3, v4

    #@74
    check-cast v0, Ljava/lang/Class;

    #@76
    invoke-static {v1, v0, v2}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    #@79
    move-result-object p1

    #@7a
    goto :goto_1d

    #@7b
    :cond_7b
    const-string v1, "getPropertyAsList"

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v1

    #@81
    if-eqz v1, :cond_a0

    #@83
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@85
    check-cast v0, Lorg/json/JSONObject;

    #@87
    aget-object v1, p3, v3

    #@89
    check-cast v1, Ljava/lang/String;

    #@8b
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@8e
    move-result-object v1

    #@8f
    const-class v2, Lcom/facebook/model/GraphObjectList;

    #@91
    new-instance v3, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;

    #@93
    aget-object v0, p3, v4

    #@95
    check-cast v0, Ljava/lang/Class;

    #@97
    invoke-direct {v3, p0, v0}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;-><init>(Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;Ljava/lang/Class;)V

    #@9a
    invoke-static {v1, v2, v3}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    #@9d
    move-result-object p1

    #@9e
    goto/16 :goto_1d

    #@a0
    :cond_a0
    const-string v1, "setProperty"

    #@a2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a5
    move-result v1

    #@a6
    if-eqz v1, :cond_ae

    #@a8
    invoke-direct {p0, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;

    #@ab
    move-result-object p1

    #@ac
    goto/16 :goto_1d

    #@ae
    :cond_ae
    const-string v1, "removeProperty"

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v0

    #@b4
    if-eqz v0, :cond_c4

    #@b6
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@b8
    check-cast v0, Lorg/json/JSONObject;

    #@ba
    aget-object v1, p3, v3

    #@bc
    check-cast v1, Ljava/lang/String;

    #@be
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    #@c1
    move-object p1, v2

    #@c2
    goto/16 :goto_1d

    #@c4
    :cond_c4
    invoke-virtual {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    #@c7
    move-result-object p1

    #@c8
    goto/16 :goto_1d
.end method

.method private final proxyMapMethods(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string v3, "clear"

    #@8
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_17

    #@e
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@10
    check-cast v0, Lorg/json/JSONObject;

    #@12
    invoke-static {v0}, Lcom/facebook/model/JsonUtil;->jsonObjectClear(Lorg/json/JSONObject;)V

    #@15
    move-object v0, v2

    #@16
    :goto_16
    return-object v0

    #@17
    :cond_17
    const-string v3, "containsKey"

    #@19
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_30

    #@1f
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@21
    check-cast v0, Lorg/json/JSONObject;

    #@23
    aget-object v1, p2, v1

    #@25
    check-cast v1, Ljava/lang/String;

    #@27
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    #@2a
    move-result v0

    #@2b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2e
    move-result-object v0

    #@2f
    goto :goto_16

    #@30
    :cond_30
    const-string v3, "containsValue"

    #@32
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_47

    #@38
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@3a
    check-cast v0, Lorg/json/JSONObject;

    #@3c
    aget-object v1, p2, v1

    #@3e
    invoke-static {v0, v1}, Lcom/facebook/model/JsonUtil;->jsonObjectContainsValue(Lorg/json/JSONObject;Ljava/lang/Object;)Z

    #@41
    move-result v0

    #@42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@45
    move-result-object v0

    #@46
    goto :goto_16

    #@47
    :cond_47
    const-string v3, "entrySet"

    #@49
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_58

    #@4f
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@51
    check-cast v0, Lorg/json/JSONObject;

    #@53
    invoke-static {v0}, Lcom/facebook/model/JsonUtil;->jsonObjectEntrySet(Lorg/json/JSONObject;)Ljava/util/Set;

    #@56
    move-result-object v0

    #@57
    goto :goto_16

    #@58
    :cond_58
    const-string v3, "get"

    #@5a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v3

    #@5e
    if-eqz v3, :cond_6d

    #@60
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@62
    check-cast v0, Lorg/json/JSONObject;

    #@64
    aget-object v1, p2, v1

    #@66
    check-cast v1, Ljava/lang/String;

    #@68
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@6b
    move-result-object v0

    #@6c
    goto :goto_16

    #@6d
    :cond_6d
    const-string v3, "isEmpty"

    #@6f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v3

    #@73
    if-eqz v3, :cond_87

    #@75
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@77
    check-cast v0, Lorg/json/JSONObject;

    #@79
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    #@7c
    move-result v0

    #@7d
    if-nez v0, :cond_85

    #@7f
    const/4 v0, 0x1

    #@80
    :goto_80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@83
    move-result-object v0

    #@84
    goto :goto_16

    #@85
    :cond_85
    move v0, v1

    #@86
    goto :goto_80

    #@87
    :cond_87
    const-string v3, "keySet"

    #@89
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v3

    #@8d
    if-eqz v3, :cond_99

    #@8f
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@91
    check-cast v0, Lorg/json/JSONObject;

    #@93
    invoke-static {v0}, Lcom/facebook/model/JsonUtil;->jsonObjectKeySet(Lorg/json/JSONObject;)Ljava/util/Set;

    #@96
    move-result-object v0

    #@97
    goto/16 :goto_16

    #@99
    :cond_99
    const-string v3, "put"

    #@9b
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9e
    move-result v3

    #@9f
    if-eqz v3, :cond_a7

    #@a1
    invoke-direct {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    move-result-object v0

    #@a5
    goto/16 :goto_16

    #@a7
    :cond_a7
    const-string v3, "putAll"

    #@a9
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v3

    #@ad
    if-eqz v3, :cond_d7

    #@af
    aget-object v0, p2, v1

    #@b1
    instance-of v0, v0, Ljava/util/Map;

    #@b3
    if-eqz v0, :cond_c4

    #@b5
    aget-object v0, p2, v1

    #@b7
    check-cast v0, Ljava/util/Map;

    #@b9
    move-object v1, v0

    #@ba
    :goto_ba
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@bc
    check-cast v0, Lorg/json/JSONObject;

    #@be
    invoke-static {v0, v1}, Lcom/facebook/model/JsonUtil;->jsonObjectPutAll(Lorg/json/JSONObject;Ljava/util/Map;)V

    #@c1
    move-object v0, v2

    #@c2
    goto/16 :goto_16

    #@c4
    :cond_c4
    aget-object v0, p2, v1

    #@c6
    instance-of v0, v0, Lcom/facebook/model/GraphObject;

    #@c8
    if-eqz v0, :cond_d4

    #@ca
    aget-object v0, p2, v1

    #@cc
    check-cast v0, Lcom/facebook/model/GraphObject;

    #@ce
    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    #@d1
    move-result-object v0

    #@d2
    move-object v1, v0

    #@d3
    goto :goto_ba

    #@d4
    :cond_d4
    move-object v0, v2

    #@d5
    goto/16 :goto_16

    #@d7
    :cond_d7
    const-string v3, "remove"

    #@d9
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dc
    move-result v3

    #@dd
    if-eqz v3, :cond_ed

    #@df
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@e1
    check-cast v0, Lorg/json/JSONObject;

    #@e3
    aget-object v1, p2, v1

    #@e5
    check-cast v1, Ljava/lang/String;

    #@e7
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    #@ea
    move-object v0, v2

    #@eb
    goto/16 :goto_16

    #@ed
    :cond_ed
    const-string v1, "size"

    #@ef
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f2
    move-result v1

    #@f3
    if-eqz v1, :cond_103

    #@f5
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@f7
    check-cast v0, Lorg/json/JSONObject;

    #@f9
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    #@fc
    move-result v0

    #@fd
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@100
    move-result-object v0

    #@101
    goto/16 :goto_16

    #@103
    :cond_103
    const-string v1, "values"

    #@105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@108
    move-result v0

    #@109
    if-eqz v0, :cond_115

    #@10b
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@10d
    check-cast v0, Lorg/json/JSONObject;

    #@10f
    invoke-static {v0}, Lcom/facebook/model/JsonUtil;->jsonObjectValues(Lorg/json/JSONObject;)Ljava/util/Collection;

    #@112
    move-result-object v0

    #@113
    goto/16 :goto_16

    #@115
    :cond_115
    invoke-virtual {p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    #@118
    move-result-object v0

    #@119
    goto/16 :goto_16
.end method

.method private setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    aget-object v0, p1, v0

    #@3
    check-cast v0, Ljava/lang/String;

    #@5
    const/4 v1, 0x1

    #@6
    aget-object v1, p1, v1

    #@8
    # invokes: Lcom/facebook/model/GraphObject$Factory;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v1}, Lcom/facebook/model/GraphObject$Factory;->access$200(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    :try_start_c
    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@e
    check-cast v1, Lorg/json/JSONObject;

    #@10
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_13} :catch_15

    #@13
    const/4 v0, 0x0

    #@14
    return-object v0

    #@15
    :catch_15
    move-exception v0

    #@16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@18
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    #@1b
    throw v1
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    const-class v1, Ljava/lang/Object;

    #@6
    if-ne v0, v1, :cond_d

    #@8
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    const-class v1, Ljava/util/Map;

    #@f
    if-ne v0, v1, :cond_16

    #@11
    invoke-direct {p0, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyMapMethods(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    goto :goto_c

    #@16
    :cond_16
    const-class v1, Lcom/facebook/model/GraphObject;

    #@18
    if-ne v0, v1, :cond_1f

    #@1a
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyGraphObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    goto :goto_c

    #@1f
    :cond_1f
    const-class v1, Lcom/facebook/model/GraphObject;

    #@21
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_2c

    #@27
    invoke-direct {p0, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyGraphObjectGettersAndSetters(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    goto :goto_c

    #@2c
    :cond_2c
    invoke-virtual {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    const-string v0, "GraphObject{graphObjectClass=%s, state=%s}"

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    #@8
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    aput-object v3, v1, v2

    #@e
    const/4 v2, 0x1

    #@f
    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    #@11
    aput-object v3, v1, v2

    #@13
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method
