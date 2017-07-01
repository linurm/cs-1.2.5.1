.class public final Lcom/google/dexmaker/stock/ProxyBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FIELD_NAME_HANDLER:Ljava/lang/String; = "$__handler"

.field private static final FIELD_NAME_METHODS:Ljava/lang/String; = "$__methodArray"

.field private static final PRIMITIVE_TO_BOXED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final PRIMITIVE_TO_UNBOX_METHOD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/dexmaker/MethodId",
            "<**>;>;"
        }
    .end annotation
.end field

.field private static final PRIMITIVE_TYPE_TO_UNBOX_METHOD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/dexmaker/TypeId",
            "<*>;",
            "Lcom/google/dexmaker/MethodId",
            "<**>;>;"
        }
    .end annotation
.end field

.field private static final generatedProxyClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final baseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private constructorArgTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private constructorArgValues:[Ljava/lang/Object;

.field private dexCache:Ljava/io/File;

.field private handler:Ljava/lang/reflect/InvocationHandler;

.field private interfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private parentClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    #@0
    const/4 v6, 0x0

    #@1
    new-instance v0, Ljava/util/HashMap;

    #@3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->generatedProxyClasses:Ljava/util/Map;

    #@c
    new-instance v0, Ljava/util/HashMap;

    #@e
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@11
    sput-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    #@13
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    #@15
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@17
    const-class v2, Ljava/lang/Boolean;

    #@19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    #@1e
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@20
    const-class v2, Ljava/lang/Integer;

    #@22
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    #@27
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@29
    const-class v2, Ljava/lang/Byte;

    #@2b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    #@30
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@32
    const-class v2, Ljava/lang/Long;

    #@34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    #@39
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@3b
    const-class v2, Ljava/lang/Short;

    #@3d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    #@42
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@44
    const-class v2, Ljava/lang/Float;

    #@46
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    #@4b
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@4d
    const-class v2, Ljava/lang/Double;

    #@4f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    #@54
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@56
    const-class v2, Ljava/lang/Character;

    #@58
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    new-instance v0, Ljava/util/HashMap;

    #@5d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@60
    sput-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TYPE_TO_UNBOX_METHOD:Ljava/util/Map;

    #@62
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    #@64
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@67
    move-result-object v0

    #@68
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@6b
    move-result-object v2

    #@6c
    :goto_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_9d

    #@72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@75
    move-result-object v0

    #@76
    check-cast v0, Ljava/util/Map$Entry;

    #@78
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@7b
    move-result-object v1

    #@7c
    check-cast v1, Ljava/lang/Class;

    #@7e
    invoke-static {v1}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@81
    move-result-object v1

    #@82
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@85
    move-result-object v0

    #@86
    check-cast v0, Ljava/lang/Class;

    #@88
    invoke-static {v0}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@8b
    move-result-object v0

    #@8c
    const-string v3, "valueOf"

    #@8e
    const/4 v4, 0x1

    #@8f
    new-array v4, v4, [Lcom/google/dexmaker/TypeId;

    #@91
    aput-object v1, v4, v6

    #@93
    invoke-virtual {v0, v0, v3, v4}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    #@96
    move-result-object v0

    #@97
    sget-object v3, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TYPE_TO_UNBOX_METHOD:Ljava/util/Map;

    #@99
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9c
    goto :goto_6c

    #@9d
    :cond_9d
    new-instance v0, Ljava/util/HashMap;

    #@9f
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a2
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@a4
    const-class v2, Ljava/lang/Boolean;

    #@a6
    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@a9
    move-result-object v2

    #@aa
    sget-object v3, Lcom/google/dexmaker/TypeId;->BOOLEAN:Lcom/google/dexmaker/TypeId;

    #@ac
    const-string v4, "booleanValue"

    #@ae
    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    #@b0
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    #@b3
    move-result-object v2

    #@b4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b7
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@b9
    const-class v2, Ljava/lang/Integer;

    #@bb
    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@be
    move-result-object v2

    #@bf
    sget-object v3, Lcom/google/dexmaker/TypeId;->INT:Lcom/google/dexmaker/TypeId;

    #@c1
    const-string v4, "intValue"

    #@c3
    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    #@c5
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    #@c8
    move-result-object v2

    #@c9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cc
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@ce
    const-class v2, Ljava/lang/Byte;

    #@d0
    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@d3
    move-result-object v2

    #@d4
    sget-object v3, Lcom/google/dexmaker/TypeId;->BYTE:Lcom/google/dexmaker/TypeId;

    #@d6
    const-string v4, "byteValue"

    #@d8
    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    #@da
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    #@dd
    move-result-object v2

    #@de
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e1
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@e3
    const-class v2, Ljava/lang/Long;

    #@e5
    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@e8
    move-result-object v2

    #@e9
    sget-object v3, Lcom/google/dexmaker/TypeId;->LONG:Lcom/google/dexmaker/TypeId;

    #@eb
    const-string v4, "longValue"

    #@ed
    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    #@ef
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    #@f2
    move-result-object v2

    #@f3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f6
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@f8
    const-class v2, Ljava/lang/Short;

    #@fa
    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@fd
    move-result-object v2

    #@fe
    sget-object v3, Lcom/google/dexmaker/TypeId;->SHORT:Lcom/google/dexmaker/TypeId;

    #@100
    const-string v4, "shortValue"

    #@102
    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    #@104
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    #@107
    move-result-object v2

    #@108
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10b
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@10d
    const-class v2, Ljava/lang/Float;

    #@10f
    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@112
    move-result-object v2

    #@113
    sget-object v3, Lcom/google/dexmaker/TypeId;->FLOAT:Lcom/google/dexmaker/TypeId;

    #@115
    const-string v4, "floatValue"

    #@117
    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    #@119
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    #@11c
    move-result-object v2

    #@11d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@120
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@122
    const-class v2, Ljava/lang/Double;

    #@124
    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@127
    move-result-object v2

    #@128
    sget-object v3, Lcom/google/dexmaker/TypeId;->DOUBLE:Lcom/google/dexmaker/TypeId;

    #@12a
    const-string v4, "doubleValue"

    #@12c
    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    #@12e
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    #@131
    move-result-object v2

    #@132
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@135
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@137
    const-class v2, Ljava/lang/Character;

    #@139
    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@13c
    move-result-object v2

    #@13d
    sget-object v3, Lcom/google/dexmaker/TypeId;->CHAR:Lcom/google/dexmaker/TypeId;

    #@13f
    const-string v4, "charValue"

    #@141
    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    #@143
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    #@146
    move-result-object v2

    #@147
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14a
    sput-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_UNBOX_METHOD:Ljava/util/Map;

    #@14c
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const-class v0, Lcom/google/dexmaker/stock/ProxyBuilder;

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->parentClassLoader:Ljava/lang/ClassLoader;

    #@c
    new-array v0, v1, [Ljava/lang/Class;

    #@e
    iput-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgTypes:[Ljava/lang/Class;

    #@10
    new-array v0, v1, [Ljava/lang/Object;

    #@12
    iput-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgValues:[Ljava/lang/Object;

    #@14
    new-instance v0, Ljava/util/HashSet;

    #@16
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@19
    iput-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->interfaces:Ljava/util/Set;

    #@1b
    iput-object p1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    #@1d
    return-void
.end method

.method private static varargs asSet([Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    #@2
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    #@9
    return-object v0
.end method

.method private static boxIfRequired(Lcom/google/dexmaker/Code;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)Lcom/google/dexmaker/Local;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Code;",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/dexmaker/Local",
            "<*>;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TYPE_TO_UNBOX_METHOD:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->getType()Lcom/google/dexmaker/TypeId;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/google/dexmaker/MethodId;

    #@c
    if-nez v0, :cond_10

    #@e
    move-object p2, p1

    #@f
    :goto_f
    return-object p2

    #@10
    :cond_10
    const/4 v1, 0x1

    #@11
    new-array v1, v1, [Lcom/google/dexmaker/Local;

    #@13
    const/4 v2, 0x0

    #@14
    aput-object p1, v1, v2

    #@16
    invoke-virtual {p0, v0, p2, v1}, Lcom/google/dexmaker/Code;->invokeStatic(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    #@19
    goto :goto_f
.end method

.method public static varargs callSuper(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Lcom/google/dexmaker/stock/ProxyBuilder;->superMethodName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_13} :catch_15

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    :catch_15
    move-exception v0

    #@16
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@19
    move-result-object v0

    #@1a
    throw v0
.end method

.method private static check(ZLjava/lang/String;)V
    .registers 3

    #@0
    if-nez p0, :cond_8

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0

    #@8
    :cond_8
    return-void
.end method

.method private static classArrayToTypeArray([Ljava/lang/Class;)[Lcom/google/dexmaker/TypeId;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lcom/google/dexmaker/TypeId",
            "<*>;"
        }
    .end annotation

    #@0
    array-length v0, p0

    #@1
    new-array v1, v0, [Lcom/google/dexmaker/TypeId;

    #@3
    const/4 v0, 0x0

    #@4
    :goto_4
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_12

    #@7
    aget-object v2, p0, v0

    #@9
    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@c
    move-result-object v2

    #@d
    aput-object v2, v1, v0

    #@f
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_4

    #@12
    :cond_12
    return-object v1
.end method

.method public static forClass(Ljava/lang/Class;)Lcom/google/dexmaker/stock/ProxyBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/dexmaker/stock/ProxyBuilder",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/dexmaker/stock/ProxyBuilder;

    #@2
    invoke-direct {v0, p0}, Lcom/google/dexmaker/stock/ProxyBuilder;-><init>(Ljava/lang/Class;)V

    #@5
    return-object v0
.end method

.method private static generateCodeForAllMethods(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;[Ljava/lang/reflect/Method;Lcom/google/dexmaker/TypeId;)V
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "G:TT;>(",
            "Lcom/google/dexmaker/DexMaker;",
            "Lcom/google/dexmaker/TypeId",
            "<TG;>;[",
            "Ljava/lang/reflect/Method;",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    const-class v5, Ljava/lang/reflect/InvocationHandler;

    #@2
    invoke-static {v5}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@5
    move-result-object v8

    #@6
    const-class v5, [Ljava/lang/reflect/Method;

    #@8
    invoke-static {v5}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@b
    move-result-object v9

    #@c
    const-string v5, "$__handler"

    #@e
    move-object/from16 v0, p1

    #@10
    invoke-virtual {v0, v8, v5}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    #@13
    move-result-object v10

    #@14
    const-string v5, "$__methodArray"

    #@16
    move-object/from16 v0, p1

    #@18
    invoke-virtual {v0, v9, v5}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    #@1b
    move-result-object v11

    #@1c
    const-class v5, Ljava/lang/reflect/Method;

    #@1e
    invoke-static {v5}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@21
    move-result-object v12

    #@22
    const-class v5, [Ljava/lang/Object;

    #@24
    invoke-static {v5}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@27
    move-result-object v13

    #@28
    sget-object v5, Lcom/google/dexmaker/TypeId;->OBJECT:Lcom/google/dexmaker/TypeId;

    #@2a
    const-string v6, "invoke"

    #@2c
    const/4 v7, 0x3

    #@2d
    new-array v7, v7, [Lcom/google/dexmaker/TypeId;

    #@2f
    const/4 v14, 0x0

    #@30
    sget-object v15, Lcom/google/dexmaker/TypeId;->OBJECT:Lcom/google/dexmaker/TypeId;

    #@32
    aput-object v15, v7, v14

    #@34
    const/4 v14, 0x1

    #@35
    aput-object v12, v7, v14

    #@37
    const/4 v14, 0x2

    #@38
    aput-object v13, v7, v14

    #@3a
    invoke-virtual {v8, v5, v6, v7}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    #@3d
    move-result-object v14

    #@3e
    const/4 v5, 0x0

    #@3f
    move v6, v5

    #@40
    :goto_40
    move-object/from16 v0, p2

    #@42
    array-length v5, v0

    #@43
    if-ge v6, v5, :cond_271

    #@45
    aget-object v15, p2, v6

    #@47
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@4a
    move-result-object v7

    #@4b
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@4e
    move-result-object v16

    #@4f
    move-object/from16 v0, v16

    #@51
    array-length v5, v0

    #@52
    new-array v0, v5, [Lcom/google/dexmaker/TypeId;

    #@54
    move-object/from16 v17, v0

    #@56
    const/4 v5, 0x0

    #@57
    :goto_57
    move-object/from16 v0, v17

    #@59
    array-length v0, v0

    #@5a
    move/from16 v18, v0

    #@5c
    move/from16 v0, v18

    #@5e
    if-ge v5, v0, :cond_6b

    #@60
    aget-object v18, v16, v5

    #@62
    invoke-static/range {v18 .. v18}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@65
    move-result-object v18

    #@66
    aput-object v18, v17, v5

    #@68
    add-int/lit8 v5, v5, 0x1

    #@6a
    goto :goto_57

    #@6b
    :cond_6b
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@6e
    move-result-object v18

    #@6f
    invoke-static/range {v18 .. v18}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@72
    move-result-object v19

    #@73
    move-object/from16 v0, p3

    #@75
    move-object/from16 v1, v19

    #@77
    move-object/from16 v2, v17

    #@79
    invoke-virtual {v0, v1, v7, v2}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    #@7c
    move-result-object v20

    #@7d
    move-object/from16 v0, p1

    #@7f
    move-object/from16 v1, v19

    #@81
    move-object/from16 v2, v17

    #@83
    invoke-virtual {v0, v1, v7, v2}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    #@86
    move-result-object v5

    #@87
    const/4 v7, 0x1

    #@88
    move-object/from16 v0, p0

    #@8a
    invoke-virtual {v0, v5, v7}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/MethodId;I)Lcom/google/dexmaker/Code;

    #@8d
    move-result-object v21

    #@8e
    move-object/from16 v0, v21

    #@90
    move-object/from16 v1, p1

    #@92
    invoke-virtual {v0, v1}, Lcom/google/dexmaker/Code;->getThis(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@95
    move-result-object v22

    #@96
    move-object/from16 v0, v21

    #@98
    invoke-virtual {v0, v8}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@9b
    move-result-object v23

    #@9c
    sget-object v5, Lcom/google/dexmaker/TypeId;->OBJECT:Lcom/google/dexmaker/TypeId;

    #@9e
    move-object/from16 v0, v21

    #@a0
    invoke-virtual {v0, v5}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@a3
    move-result-object v24

    #@a4
    sget-object v5, Lcom/google/dexmaker/TypeId;->INT:Lcom/google/dexmaker/TypeId;

    #@a6
    move-object/from16 v0, v21

    #@a8
    invoke-virtual {v0, v5}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@ab
    move-result-object v25

    #@ac
    move-object/from16 v0, v21

    #@ae
    invoke-virtual {v0, v13}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@b1
    move-result-object v26

    #@b2
    sget-object v5, Lcom/google/dexmaker/TypeId;->INT:Lcom/google/dexmaker/TypeId;

    #@b4
    move-object/from16 v0, v21

    #@b6
    invoke-virtual {v0, v5}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@b9
    move-result-object v7

    #@ba
    sget-object v5, Lcom/google/dexmaker/TypeId;->OBJECT:Lcom/google/dexmaker/TypeId;

    #@bc
    move-object/from16 v0, v21

    #@be
    invoke-virtual {v0, v5}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@c1
    move-result-object v27

    #@c2
    move-object/from16 v0, v21

    #@c4
    move-object/from16 v1, v19

    #@c6
    invoke-virtual {v0, v1}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@c9
    move-result-object v28

    #@ca
    move-object/from16 v0, v21

    #@cc
    invoke-virtual {v0, v9}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@cf
    move-result-object v29

    #@d0
    move-object/from16 v0, v21

    #@d2
    invoke-virtual {v0, v12}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@d5
    move-result-object v30

    #@d6
    sget-object v5, Lcom/google/dexmaker/TypeId;->INT:Lcom/google/dexmaker/TypeId;

    #@d8
    move-object/from16 v0, v21

    #@da
    invoke-virtual {v0, v5}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@dd
    move-result-object v31

    #@de
    sget-object v5, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    #@e0
    move-object/from16 v0, v18

    #@e2
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e5
    move-result-object v5

    #@e6
    check-cast v5, Ljava/lang/Class;

    #@e8
    if-eqz v5, :cond_26e

    #@ea
    invoke-static {v5}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@ed
    move-result-object v5

    #@ee
    move-object/from16 v0, v21

    #@f0
    invoke-virtual {v0, v5}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@f3
    move-result-object v5

    #@f4
    :goto_f4
    move-object/from16 v0, v16

    #@f6
    array-length v0, v0

    #@f7
    move/from16 v32, v0

    #@f9
    move/from16 v0, v32

    #@fb
    new-array v0, v0, [Lcom/google/dexmaker/Local;

    #@fd
    move-object/from16 v32, v0

    #@ff
    move-object/from16 v0, v21

    #@101
    move-object/from16 v1, v19

    #@103
    invoke-virtual {v0, v1}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@106
    move-result-object v33

    #@107
    move-object/from16 v0, v21

    #@109
    invoke-virtual {v0, v8}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@10c
    move-result-object v34

    #@10d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@110
    move-result-object v35

    #@111
    move-object/from16 v0, v21

    #@113
    move-object/from16 v1, v31

    #@115
    move-object/from16 v2, v35

    #@117
    invoke-virtual {v0, v1, v2}, Lcom/google/dexmaker/Code;->loadConstant(Lcom/google/dexmaker/Local;Ljava/lang/Object;)V

    #@11a
    move-object/from16 v0, v21

    #@11c
    move-object/from16 v1, v29

    #@11e
    invoke-virtual {v0, v11, v1}, Lcom/google/dexmaker/Code;->sget(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;)V

    #@121
    move-object/from16 v0, v21

    #@123
    move-object/from16 v1, v30

    #@125
    move-object/from16 v2, v29

    #@127
    move-object/from16 v3, v31

    #@129
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/dexmaker/Code;->aget(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    #@12c
    move-object/from16 v0, v17

    #@12e
    array-length v0, v0

    #@12f
    move/from16 v29, v0

    #@131
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@134
    move-result-object v29

    #@135
    move-object/from16 v0, v21

    #@137
    move-object/from16 v1, v29

    #@139
    invoke-virtual {v0, v7, v1}, Lcom/google/dexmaker/Code;->loadConstant(Lcom/google/dexmaker/Local;Ljava/lang/Object;)V

    #@13c
    move-object/from16 v0, v21

    #@13e
    move-object/from16 v1, v26

    #@140
    invoke-virtual {v0, v1, v7}, Lcom/google/dexmaker/Code;->newArray(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    #@143
    move-object/from16 v0, v21

    #@145
    move-object/from16 v1, v23

    #@147
    move-object/from16 v2, v22

    #@149
    invoke-virtual {v0, v10, v1, v2}, Lcom/google/dexmaker/Code;->iget(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    #@14c
    const/4 v7, 0x0

    #@14d
    move-object/from16 v0, v21

    #@14f
    move-object/from16 v1, v34

    #@151
    invoke-virtual {v0, v1, v7}, Lcom/google/dexmaker/Code;->loadConstant(Lcom/google/dexmaker/Local;Ljava/lang/Object;)V

    #@154
    new-instance v29, Lcom/google/dexmaker/Label;

    #@156
    invoke-direct/range {v29 .. v29}, Lcom/google/dexmaker/Label;-><init>()V

    #@159
    sget-object v7, Lcom/google/dexmaker/Comparison;->EQ:Lcom/google/dexmaker/Comparison;

    #@15b
    move-object/from16 v0, v21

    #@15d
    move-object/from16 v1, v29

    #@15f
    move-object/from16 v2, v34

    #@161
    move-object/from16 v3, v23

    #@163
    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/google/dexmaker/Code;->compare(Lcom/google/dexmaker/Comparison;Lcom/google/dexmaker/Label;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    #@166
    const/4 v7, 0x0

    #@167
    :goto_167
    move-object/from16 v0, v17

    #@169
    array-length v0, v0

    #@16a
    move/from16 v31, v0

    #@16c
    move/from16 v0, v31

    #@16e
    if-ge v7, v0, :cond_19f

    #@170
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@173
    move-result-object v31

    #@174
    move-object/from16 v0, v21

    #@176
    move-object/from16 v1, v25

    #@178
    move-object/from16 v2, v31

    #@17a
    invoke-virtual {v0, v1, v2}, Lcom/google/dexmaker/Code;->loadConstant(Lcom/google/dexmaker/Local;Ljava/lang/Object;)V

    #@17d
    aget-object v31, v17, v7

    #@17f
    move-object/from16 v0, v21

    #@181
    move-object/from16 v1, v31

    #@183
    invoke-virtual {v0, v7, v1}, Lcom/google/dexmaker/Code;->getParameter(ILcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@186
    move-result-object v31

    #@187
    move-object/from16 v0, v21

    #@189
    move-object/from16 v1, v31

    #@18b
    move-object/from16 v2, v27

    #@18d
    invoke-static {v0, v1, v2}, Lcom/google/dexmaker/stock/ProxyBuilder;->boxIfRequired(Lcom/google/dexmaker/Code;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)Lcom/google/dexmaker/Local;

    #@190
    move-result-object v31

    #@191
    move-object/from16 v0, v21

    #@193
    move-object/from16 v1, v26

    #@195
    move-object/from16 v2, v25

    #@197
    move-object/from16 v3, v31

    #@199
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/dexmaker/Code;->aput(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    #@19c
    add-int/lit8 v7, v7, 0x1

    #@19e
    goto :goto_167

    #@19f
    :cond_19f
    const/4 v7, 0x3

    #@1a0
    new-array v7, v7, [Lcom/google/dexmaker/Local;

    #@1a2
    const/16 v25, 0x0

    #@1a4
    aput-object v22, v7, v25

    #@1a6
    const/16 v25, 0x1

    #@1a8
    aput-object v30, v7, v25

    #@1aa
    const/16 v25, 0x2

    #@1ac
    aput-object v26, v7, v25

    #@1ae
    move-object/from16 v0, v21

    #@1b0
    move-object/from16 v1, v24

    #@1b2
    move-object/from16 v2, v23

    #@1b4
    invoke-virtual {v0, v14, v1, v2, v7}, Lcom/google/dexmaker/Code;->invokeInterface(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    #@1b7
    move-object/from16 v0, v21

    #@1b9
    move-object/from16 v1, v18

    #@1bb
    move-object/from16 v2, v24

    #@1bd
    move-object/from16 v3, v28

    #@1bf
    invoke-static {v0, v1, v2, v3, v5}, Lcom/google/dexmaker/stock/ProxyBuilder;->generateCodeForReturnStatement(Lcom/google/dexmaker/Code;Ljava/lang/Class;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    #@1c2
    move-object/from16 v0, v21

    #@1c4
    move-object/from16 v1, v29

    #@1c6
    invoke-virtual {v0, v1}, Lcom/google/dexmaker/Code;->mark(Lcom/google/dexmaker/Label;)V

    #@1c9
    const/4 v5, 0x0

    #@1ca
    :goto_1ca
    move-object/from16 v0, v32

    #@1cc
    array-length v7, v0

    #@1cd
    if-ge v5, v7, :cond_1dc

    #@1cf
    aget-object v7, v17, v5

    #@1d1
    move-object/from16 v0, v21

    #@1d3
    invoke-virtual {v0, v5, v7}, Lcom/google/dexmaker/Code;->getParameter(ILcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@1d6
    move-result-object v7

    #@1d7
    aput-object v7, v32, v5

    #@1d9
    add-int/lit8 v5, v5, 0x1

    #@1db
    goto :goto_1ca

    #@1dc
    :cond_1dc
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@1de
    move-object/from16 v0, v18

    #@1e0
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e3
    move-result v5

    #@1e4
    if-eqz v5, :cond_22e

    #@1e6
    const/4 v5, 0x0

    #@1e7
    move-object/from16 v0, v21

    #@1e9
    move-object/from16 v1, v20

    #@1eb
    move-object/from16 v2, v22

    #@1ed
    move-object/from16 v3, v32

    #@1ef
    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/google/dexmaker/Code;->invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    #@1f2
    invoke-virtual/range {v21 .. v21}, Lcom/google/dexmaker/Code;->returnVoid()V

    #@1f5
    :goto_1f5
    invoke-static {v15}, Lcom/google/dexmaker/stock/ProxyBuilder;->superMethodName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    #@1f8
    move-result-object v5

    #@1f9
    move-object/from16 v0, p1

    #@1fb
    move-object/from16 v1, v19

    #@1fd
    move-object/from16 v2, v17

    #@1ff
    invoke-virtual {v0, v1, v5, v2}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    #@202
    move-result-object v5

    #@203
    const/4 v7, 0x1

    #@204
    move-object/from16 v0, p0

    #@206
    invoke-virtual {v0, v5, v7}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/MethodId;I)Lcom/google/dexmaker/Code;

    #@209
    move-result-object v7

    #@20a
    move-object/from16 v0, p1

    #@20c
    invoke-virtual {v7, v0}, Lcom/google/dexmaker/Code;->getThis(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@20f
    move-result-object v15

    #@210
    move-object/from16 v0, v16

    #@212
    array-length v5, v0

    #@213
    new-array v0, v5, [Lcom/google/dexmaker/Local;

    #@215
    move-object/from16 v16, v0

    #@217
    const/4 v5, 0x0

    #@218
    :goto_218
    move-object/from16 v0, v16

    #@21a
    array-length v0, v0

    #@21b
    move/from16 v21, v0

    #@21d
    move/from16 v0, v21

    #@21f
    if-ge v5, v0, :cond_243

    #@221
    aget-object v21, v17, v5

    #@223
    move-object/from16 v0, v21

    #@225
    invoke-virtual {v7, v5, v0}, Lcom/google/dexmaker/Code;->getParameter(ILcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@228
    move-result-object v21

    #@229
    aput-object v21, v16, v5

    #@22b
    add-int/lit8 v5, v5, 0x1

    #@22d
    goto :goto_218

    #@22e
    :cond_22e
    move-object/from16 v0, v20

    #@230
    move-object/from16 v1, v21

    #@232
    move-object/from16 v2, v22

    #@234
    move-object/from16 v3, v32

    #@236
    move-object/from16 v4, v33

    #@238
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/dexmaker/stock/ProxyBuilder;->invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Code;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    #@23b
    move-object/from16 v0, v21

    #@23d
    move-object/from16 v1, v33

    #@23f
    invoke-virtual {v0, v1}, Lcom/google/dexmaker/Code;->returnValue(Lcom/google/dexmaker/Local;)V

    #@242
    goto :goto_1f5

    #@243
    :cond_243
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@245
    move-object/from16 v0, v18

    #@247
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@24a
    move-result v5

    #@24b
    if-eqz v5, :cond_25d

    #@24d
    const/4 v5, 0x0

    #@24e
    move-object/from16 v0, v20

    #@250
    move-object/from16 v1, v16

    #@252
    invoke-virtual {v7, v0, v5, v15, v1}, Lcom/google/dexmaker/Code;->invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    #@255
    invoke-virtual {v7}, Lcom/google/dexmaker/Code;->returnVoid()V

    #@258
    :goto_258
    add-int/lit8 v5, v6, 0x1

    #@25a
    move v6, v5

    #@25b
    goto/16 :goto_40

    #@25d
    :cond_25d
    move-object/from16 v0, v19

    #@25f
    invoke-virtual {v7, v0}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@262
    move-result-object v5

    #@263
    move-object/from16 v0, v20

    #@265
    move-object/from16 v1, v16

    #@267
    invoke-static {v0, v7, v15, v1, v5}, Lcom/google/dexmaker/stock/ProxyBuilder;->invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Code;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    #@26a
    invoke-virtual {v7, v5}, Lcom/google/dexmaker/Code;->returnValue(Lcom/google/dexmaker/Local;)V

    #@26d
    goto :goto_258

    #@26e
    :cond_26e
    const/4 v5, 0x0

    #@26f
    goto/16 :goto_f4

    #@271
    :cond_271
    return-void
.end method

.method private static generateCodeForReturnStatement(Lcom/google/dexmaker/Code;Ljava/lang/Class;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .registers 7

    #@0
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_UNBOX_METHOD:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_19

    #@8
    invoke-virtual {p0, p4, p2}, Lcom/google/dexmaker/Code;->cast(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    #@b
    invoke-static {p1}, Lcom/google/dexmaker/stock/ProxyBuilder;->getUnboxMethodForPrimitive(Ljava/lang/Class;)Lcom/google/dexmaker/MethodId;

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x0

    #@10
    new-array v1, v1, [Lcom/google/dexmaker/Local;

    #@12
    invoke-virtual {p0, v0, p3, p4, v1}, Lcom/google/dexmaker/Code;->invokeVirtual(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    #@15
    invoke-virtual {p0, p3}, Lcom/google/dexmaker/Code;->returnValue(Lcom/google/dexmaker/Local;)V

    #@18
    :goto_18
    return-void

    #@19
    :cond_19
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@1b
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_25

    #@21
    invoke-virtual {p0}, Lcom/google/dexmaker/Code;->returnVoid()V

    #@24
    goto :goto_18

    #@25
    :cond_25
    invoke-virtual {p0, p3, p2}, Lcom/google/dexmaker/Code;->cast(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    #@28
    invoke-virtual {p0, p3}, Lcom/google/dexmaker/Code;->returnValue(Lcom/google/dexmaker/Local;)V

    #@2b
    goto :goto_18
.end method

.method private static generateConstructorsAndFields(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/Class;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "G:TT;>(",
            "Lcom/google/dexmaker/DexMaker;",
            "Lcom/google/dexmaker/TypeId",
            "<TG;>;",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    const-class v0, Ljava/lang/reflect/InvocationHandler;

    #@4
    invoke-static {v0}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@7
    move-result-object v0

    #@8
    const-class v2, [Ljava/lang/reflect/Method;

    #@a
    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@d
    move-result-object v2

    #@e
    const-string v3, "$__handler"

    #@10
    invoke-virtual {p1, v0, v3}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    #@13
    move-result-object v0

    #@14
    const/4 v3, 0x2

    #@15
    invoke-virtual {p0, v0, v3, v10}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/FieldId;ILjava/lang/Object;)V

    #@18
    const-string v0, "$__methodArray"

    #@1a
    invoke-virtual {p1, v2, v0}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    #@1d
    move-result-object v0

    #@1e
    const/16 v2, 0xa

    #@20
    invoke-virtual {p0, v0, v2, v10}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/FieldId;ILjava/lang/Object;)V

    #@23
    invoke-static {p3}, Lcom/google/dexmaker/stock/ProxyBuilder;->getConstructorsToOverwrite(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    #@26
    move-result-object v3

    #@27
    array-length v4, v3

    #@28
    move v2, v1

    #@29
    :goto_29
    if-ge v2, v4, :cond_6b

    #@2b
    aget-object v0, v3, v2

    #@2d
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    #@30
    move-result v5

    #@31
    const/16 v6, 0x10

    #@33
    if-ne v5, v6, :cond_39

    #@35
    :goto_35
    add-int/lit8 v0, v2, 0x1

    #@37
    move v2, v0

    #@38
    goto :goto_29

    #@39
    :cond_39
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    #@3c
    move-result-object v0

    #@3d
    invoke-static {v0}, Lcom/google/dexmaker/stock/ProxyBuilder;->classArrayToTypeArray([Ljava/lang/Class;)[Lcom/google/dexmaker/TypeId;

    #@40
    move-result-object v5

    #@41
    invoke-virtual {p1, v5}, Lcom/google/dexmaker/TypeId;->getConstructor([Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    #@44
    move-result-object v0

    #@45
    const/4 v6, 0x1

    #@46
    invoke-virtual {p0, v0, v6}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/MethodId;I)Lcom/google/dexmaker/Code;

    #@49
    move-result-object v6

    #@4a
    invoke-virtual {v6, p1}, Lcom/google/dexmaker/Code;->getThis(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@4d
    move-result-object v7

    #@4e
    array-length v0, v5

    #@4f
    new-array v8, v0, [Lcom/google/dexmaker/Local;

    #@51
    move v0, v1

    #@52
    :goto_52
    array-length v9, v8

    #@53
    if-ge v0, v9, :cond_60

    #@55
    aget-object v9, v5, v0

    #@57
    invoke-virtual {v6, v0, v9}, Lcom/google/dexmaker/Code;->getParameter(ILcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@5a
    move-result-object v9

    #@5b
    aput-object v9, v8, v0

    #@5d
    add-int/lit8 v0, v0, 0x1

    #@5f
    goto :goto_52

    #@60
    :cond_60
    invoke-virtual {p2, v5}, Lcom/google/dexmaker/TypeId;->getConstructor([Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {v6, v0, v10, v7, v8}, Lcom/google/dexmaker/Code;->invokeDirect(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    #@67
    invoke-virtual {v6}, Lcom/google/dexmaker/Code;->returnVoid()V

    #@6a
    goto :goto_35

    #@6b
    :cond_6b
    return-void
.end method

.method private static getConstructorsToOverwrite(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Ljava/lang/reflect/Constructor;

    #@6
    return-object v0
.end method

.method private getInterfacesAsTypeIds()[Lcom/google/dexmaker/TypeId;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/google/dexmaker/TypeId",
            "<*>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->interfaces:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@5
    move-result v0

    #@6
    new-array v2, v0, [Lcom/google/dexmaker/TypeId;

    #@8
    iget-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->interfaces:Ljava/util/Set;

    #@a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v3

    #@e
    const/4 v0, 0x0

    #@f
    move v1, v0

    #@10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_26

    #@16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/lang/Class;

    #@1c
    invoke-static {v0}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@1f
    move-result-object v0

    #@20
    aput-object v0, v2, v1

    #@22
    add-int/lit8 v0, v1, 0x1

    #@24
    move v1, v0

    #@25
    goto :goto_10

    #@26
    :cond_26
    return-object v2
.end method

.method public static getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .registers 4

    #@0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    const-string v1, "$__handler"

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@9
    move-result-object v0

    #@a
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@e
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/reflect/InvocationHandler;
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_14} :catch_1e

    #@14
    return-object v0

    #@15
    :catch_15
    move-exception v0

    #@16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@18
    const-string v2, "Not a valid proxy instance"

    #@1a
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1d
    throw v1

    #@1e
    :catch_1e
    move-exception v0

    #@1f
    new-instance v1, Ljava/lang/AssertionError;

    #@21
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@24
    throw v1
.end method

.method private static getMethodNameForProxyOf(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string v1, "_Proxy"

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method private getMethodsToProxy(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    #@4
    move-result-object v2

    #@5
    array-length v3, v2

    #@6
    move v1, v0

    #@7
    :goto_7
    if-ge v1, v3, :cond_4b

    #@9
    aget-object v4, v2, v1

    #@b
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    #@e
    move-result v5

    #@f
    and-int/lit8 v5, v5, 0x10

    #@11
    if-eqz v5, :cond_21

    #@13
    new-instance v5, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;

    #@15
    invoke-direct {v5, v4}, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;-><init>(Ljava/lang/reflect/Method;)V

    #@18
    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@1b
    invoke-interface {p1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@1e
    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_7

    #@21
    :cond_21
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    #@24
    move-result v5

    #@25
    and-int/lit8 v5, v5, 0x8

    #@27
    if-nez v5, :cond_1e

    #@29
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    const-string v6, "finalize"

    #@2f
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_3c

    #@35
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    #@38
    move-result-object v5

    #@39
    array-length v5, v5

    #@3a
    if-eqz v5, :cond_1e

    #@3c
    :cond_3c
    new-instance v5, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;

    #@3e
    invoke-direct {v5, v4}, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;-><init>(Ljava/lang/reflect/Method;)V

    #@41
    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@44
    move-result v4

    #@45
    if-nez v4, :cond_1e

    #@47
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4a
    goto :goto_1e

    #@4b
    :cond_4b
    invoke-virtual {p3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@4e
    move-result-object v1

    #@4f
    array-length v2, v1

    #@50
    :goto_50
    if-ge v0, v2, :cond_5a

    #@52
    aget-object v3, v1, v0

    #@54
    invoke-direct {p0, p1, p2, v3}, Lcom/google/dexmaker/stock/ProxyBuilder;->getMethodsToProxy(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    #@57
    add-int/lit8 v0, v0, 0x1

    #@59
    goto :goto_50

    #@5a
    :cond_5a
    return-void
.end method

.method private getMethodsToProxyRecursive()[Ljava/lang/reflect/Method;
    .registers 5

    #@0
    new-instance v1, Ljava/util/HashSet;

    #@2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@5
    new-instance v2, Ljava/util/HashSet;

    #@7
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@a
    iget-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    #@c
    :goto_c
    if-eqz v0, :cond_16

    #@e
    invoke-direct {p0, v1, v2, v0}, Lcom/google/dexmaker/stock/ProxyBuilder;->getMethodsToProxy(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    #@11
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    #@14
    move-result-object v0

    #@15
    goto :goto_c

    #@16
    :cond_16
    iget-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->interfaces:Ljava/util/Set;

    #@18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v3

    #@1c
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2c

    #@22
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Ljava/lang/Class;

    #@28
    invoke-direct {p0, v1, v2, v0}, Lcom/google/dexmaker/stock/ProxyBuilder;->getMethodsToProxy(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    #@2b
    goto :goto_1c

    #@2c
    :cond_2c
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@2f
    move-result v0

    #@30
    new-array v2, v0, [Ljava/lang/reflect/Method;

    #@32
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object v3

    #@36
    const/4 v0, 0x0

    #@37
    move v1, v0

    #@38
    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_4e

    #@3e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;

    #@44
    # getter for: Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->originalMethod:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->access$000(Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;)Ljava/lang/reflect/Method;

    #@47
    move-result-object v0

    #@48
    aput-object v0, v2, v1

    #@4a
    add-int/lit8 v0, v1, 0x1

    #@4c
    move v1, v0

    #@4d
    goto :goto_38

    #@4e
    :cond_4e
    return-object v2
.end method

.method private static getUnboxMethodForPrimitive(Ljava/lang/Class;)Lcom/google/dexmaker/MethodId;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/dexmaker/MethodId",
            "<**>;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_UNBOX_METHOD:Ljava/util/Map;

    #@2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/dexmaker/MethodId;

    #@8
    return-object v0
.end method

.method private static invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Code;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .registers 5

    #@0
    invoke-virtual {p1, p0, p4, p2, p3}, Lcom/google/dexmaker/Code;->invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    #@3
    return-void
.end method

.method public static isProxyClass(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    #@0
    :try_start_0
    const-string v0, "$__handler"

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    const/4 v0, 0x1

    #@6
    :goto_6
    return v0

    #@7
    :catch_7
    move-exception v0

    #@8
    const/4 v0, 0x0

    #@9
    goto :goto_6
.end method

.method private static launderCause(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/RuntimeException;
    .registers 3

    #@0
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    instance-of v1, v0, Ljava/lang/Error;

    #@6
    if-eqz v1, :cond_b

    #@8
    check-cast v0, Ljava/lang/Error;

    #@a
    throw v0

    #@b
    :cond_b
    instance-of v1, v0, Ljava/lang/RuntimeException;

    #@d
    if-eqz v1, :cond_12

    #@f
    check-cast v0, Ljava/lang/RuntimeException;

    #@11
    throw v0

    #@12
    :cond_12
    new-instance v1, Ljava/lang/reflect/UndeclaredThrowableException;

    #@14
    invoke-direct {v1, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    #@17
    throw v1
.end method

.method private loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static setHandlerInstanceField(Ljava/lang/Object;Ljava/lang/reflect/InvocationHandler;)V
    .registers 4

    #@0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    const-string v1, "$__handler"

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@9
    move-result-object v0

    #@a
    const/4 v1, 0x1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@e
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_11} :catch_19

    #@11
    return-void

    #@12
    :catch_12
    move-exception v0

    #@13
    new-instance v1, Ljava/lang/AssertionError;

    #@15
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@18
    throw v1

    #@19
    :catch_19
    move-exception v0

    #@1a
    new-instance v1, Ljava/lang/AssertionError;

    #@1c
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1f
    throw v1
.end method

.method private static setMethodsStaticField(Ljava/lang/Class;[Ljava/lang/reflect/Method;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    #@0
    :try_start_0
    const-string v0, "$__methodArray"

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@a
    const/4 v1, 0x0

    #@b
    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_e} :catch_16

    #@e
    return-void

    #@f
    :catch_f
    move-exception v0

    #@10
    new-instance v1, Ljava/lang/AssertionError;

    #@12
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@15
    throw v1

    #@16
    :catch_16
    move-exception v0

    #@17
    new-instance v1, Ljava/lang/AssertionError;

    #@19
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1c
    throw v1
.end method

.method private static superMethodName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 5

    #@0
    const/16 v3, 0x5f

    #@2
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v2, "super$"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string v2, "$"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const/16 v2, 0x2e

    #@25
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    const/16 v2, 0x5b

    #@2b
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    const/16 v2, 0x3b

    #@31
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    iget-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->handler:Ljava/lang/reflect/InvocationHandler;

    #@4
    if-eqz v0, :cond_2f

    #@6
    move v0, v1

    #@7
    :goto_7
    const-string v3, "handler == null"

    #@9
    invoke-static {v0, v3}, Lcom/google/dexmaker/stock/ProxyBuilder;->check(ZLjava/lang/String;)V

    #@c
    iget-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgTypes:[Ljava/lang/Class;

    #@e
    array-length v0, v0

    #@f
    iget-object v3, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgValues:[Ljava/lang/Object;

    #@11
    array-length v3, v3

    #@12
    if-ne v0, v3, :cond_31

    #@14
    :goto_14
    const-string v0, "constructorArgValues.length != constructorArgTypes.length"

    #@16
    invoke-static {v1, v0}, Lcom/google/dexmaker/stock/ProxyBuilder;->check(ZLjava/lang/String;)V

    #@19
    invoke-virtual {p0}, Lcom/google/dexmaker/stock/ProxyBuilder;->buildProxyClass()Ljava/lang/Class;

    #@1c
    move-result-object v0

    #@1d
    :try_start_1d
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgTypes:[Ljava/lang/Class;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1d .. :try_end_22} :catch_33

    #@22
    move-result-object v0

    #@23
    :try_start_23
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgValues:[Ljava/lang/Object;

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/InstantiationException; {:try_start_23 .. :try_end_28} :catch_63
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_28} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_28} :catch_71

    #@28
    move-result-object v0

    #@29
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->handler:Ljava/lang/reflect/InvocationHandler;

    #@2b
    invoke-static {v0, v1}, Lcom/google/dexmaker/stock/ProxyBuilder;->setHandlerInstanceField(Ljava/lang/Object;Ljava/lang/reflect/InvocationHandler;)V

    #@2e
    return-object v0

    #@2f
    :cond_2f
    move v0, v2

    #@30
    goto :goto_7

    #@31
    :cond_31
    move v1, v2

    #@32
    goto :goto_14

    #@33
    :catch_33
    move-exception v0

    #@34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@36
    new-instance v1, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string v2, "No constructor for "

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    #@43
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    const-string v2, " with parameter types "

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgTypes:[Ljava/lang/Class;

    #@53
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v0

    #@63
    :catch_63
    move-exception v0

    #@64
    new-instance v1, Ljava/lang/AssertionError;

    #@66
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@69
    throw v1

    #@6a
    :catch_6a
    move-exception v0

    #@6b
    new-instance v1, Ljava/lang/AssertionError;

    #@6d
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@70
    throw v1

    #@71
    :catch_71
    move-exception v0

    #@72
    invoke-static {v0}, Lcom/google/dexmaker/stock/ProxyBuilder;->launderCause(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/RuntimeException;

    #@75
    move-result-object v0

    #@76
    throw v0
.end method

.method public buildProxyClass()Ljava/lang/Class;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->generatedProxyClasses:Ljava/util/Map;

    #@2
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    #@4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Ljava/lang/Class;

    #@a
    if-eqz v0, :cond_29

    #@c
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@13
    move-result-object v1

    #@14
    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->parentClassLoader:Ljava/lang/ClassLoader;

    #@16
    if-ne v1, v2, :cond_29

    #@18
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->interfaces:Ljava/util/Set;

    #@1a
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v2}, Lcom/google/dexmaker/stock/ProxyBuilder;->asSet([Ljava/lang/Object;)Ljava/util/Set;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_29

    #@28
    :goto_28
    return-object v0

    #@29
    :cond_29
    new-instance v0, Lcom/google/dexmaker/DexMaker;

    #@2b
    invoke-direct {v0}, Lcom/google/dexmaker/DexMaker;-><init>()V

    #@2e
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    #@30
    invoke-static {v1}, Lcom/google/dexmaker/stock/ProxyBuilder;->getMethodNameForProxyOf(Ljava/lang/Class;)Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string v2, "L"

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    const-string v2, ";"

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-static {v1}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/String;)Lcom/google/dexmaker/TypeId;

    #@50
    move-result-object v1

    #@51
    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    #@53
    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    #@56
    move-result-object v4

    #@57
    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    #@59
    invoke-static {v0, v1, v4, v2}, Lcom/google/dexmaker/stock/ProxyBuilder;->generateConstructorsAndFields(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/Class;)V

    #@5c
    invoke-direct {p0}, Lcom/google/dexmaker/stock/ProxyBuilder;->getMethodsToProxyRecursive()[Ljava/lang/reflect/Method;

    #@5f
    move-result-object v7

    #@60
    invoke-static {v0, v1, v7, v4}, Lcom/google/dexmaker/stock/ProxyBuilder;->generateCodeForAllMethods(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;[Ljava/lang/reflect/Method;Lcom/google/dexmaker/TypeId;)V

    #@63
    new-instance v2, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    const-string v3, ".generated"

    #@6e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    const/4 v3, 0x1

    #@77
    invoke-direct {p0}, Lcom/google/dexmaker/stock/ProxyBuilder;->getInterfacesAsTypeIds()[Lcom/google/dexmaker/TypeId;

    #@7a
    move-result-object v5

    #@7b
    invoke-virtual/range {v0 .. v5}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/TypeId;Ljava/lang/String;ILcom/google/dexmaker/TypeId;[Lcom/google/dexmaker/TypeId;)V

    #@7e
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->parentClassLoader:Ljava/lang/ClassLoader;

    #@80
    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->dexCache:Ljava/io/File;

    #@82
    invoke-virtual {v0, v1, v2}, Lcom/google/dexmaker/DexMaker;->generateAndLoad(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;

    #@85
    move-result-object v0

    #@86
    :try_start_86
    invoke-direct {p0, v0, v6}, Lcom/google/dexmaker/stock/ProxyBuilder;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_89
    .catch Ljava/lang/IllegalAccessError; {:try_start_86 .. :try_end_89} :catch_95
    .catch Ljava/lang/ClassNotFoundException; {:try_start_86 .. :try_end_89} :catch_b1

    #@89
    move-result-object v0

    #@8a
    invoke-static {v0, v7}, Lcom/google/dexmaker/stock/ProxyBuilder;->setMethodsStaticField(Ljava/lang/Class;[Ljava/lang/reflect/Method;)V

    #@8d
    sget-object v1, Lcom/google/dexmaker/stock/ProxyBuilder;->generatedProxyClasses:Ljava/util/Map;

    #@8f
    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    #@91
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@94
    goto :goto_28

    #@95
    :catch_95
    move-exception v0

    #@96
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@98
    new-instance v2, Ljava/lang/StringBuilder;

    #@9a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9d
    const-string v3, "cannot proxy inaccessible class "

    #@9f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v2

    #@a3
    iget-object v3, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    #@a5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v2

    #@ad
    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@b0
    throw v1

    #@b1
    :catch_b1
    move-exception v0

    #@b2
    new-instance v1, Ljava/lang/AssertionError;

    #@b4
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b7
    throw v1
.end method

.method public varargs constructorArgTypes([Ljava/lang/Class;)Lcom/google/dexmaker/stock/ProxyBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/dexmaker/stock/ProxyBuilder",
            "<TT;>;"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgTypes:[Ljava/lang/Class;

    #@2
    return-object p0
.end method

.method public varargs constructorArgValues([Ljava/lang/Object;)Lcom/google/dexmaker/stock/ProxyBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/dexmaker/stock/ProxyBuilder",
            "<TT;>;"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgValues:[Ljava/lang/Object;

    #@2
    return-object p0
.end method

.method public dexCache(Ljava/io/File;)Lcom/google/dexmaker/stock/ProxyBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/google/dexmaker/stock/ProxyBuilder",
            "<TT;>;"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->dexCache:Ljava/io/File;

    #@2
    return-object p0
.end method

.method public handler(Ljava/lang/reflect/InvocationHandler;)Lcom/google/dexmaker/stock/ProxyBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/InvocationHandler;",
            ")",
            "Lcom/google/dexmaker/stock/ProxyBuilder",
            "<TT;>;"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->handler:Ljava/lang/reflect/InvocationHandler;

    #@2
    return-object p0
.end method

.method public varargs implementing([Ljava/lang/Class;)Lcom/google/dexmaker/stock/ProxyBuilder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/dexmaker/stock/ProxyBuilder",
            "<TT;>;"
        }
    .end annotation

    #@0
    array-length v1, p1

    #@1
    const/4 v0, 0x0

    #@2
    :goto_2
    if-ge v0, v1, :cond_31

    #@4
    aget-object v2, p1, v0

    #@6
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_29

    #@c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v3, "Not an interface: "

    #@15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    :cond_29
    iget-object v3, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->interfaces:Ljava/util/Set;

    #@2b
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@2e
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_2

    #@31
    :cond_31
    return-object p0
.end method

.method public parentClassLoader(Ljava/lang/ClassLoader;)Lcom/google/dexmaker/stock/ProxyBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/google/dexmaker/stock/ProxyBuilder",
            "<TT;>;"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->parentClassLoader:Ljava/lang/ClassLoader;

    #@2
    return-object p0
.end method
