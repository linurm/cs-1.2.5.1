.class public final Lcom/google/dexmaker/TypeId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BOOLEAN:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final BYTE:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final CHAR:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOUBLE:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLOAT:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final OBJECT:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIMITIVE_TO_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/dexmaker/TypeId",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final SHORT:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VOID:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final constant:Lcom/android/dx/rop/cst/CstType;

.field final name:Ljava/lang/String;

.field final ropType:Lcom/android/dx/rop/type/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    new-instance v0, Lcom/google/dexmaker/TypeId;

    #@2
    sget-object v1, Lcom/android/dx/rop/type/Type;->BOOLEAN:Lcom/android/dx/rop/type/Type;

    #@4
    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@7
    sput-object v0, Lcom/google/dexmaker/TypeId;->BOOLEAN:Lcom/google/dexmaker/TypeId;

    #@9
    new-instance v0, Lcom/google/dexmaker/TypeId;

    #@b
    sget-object v1, Lcom/android/dx/rop/type/Type;->BYTE:Lcom/android/dx/rop/type/Type;

    #@d
    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@10
    sput-object v0, Lcom/google/dexmaker/TypeId;->BYTE:Lcom/google/dexmaker/TypeId;

    #@12
    new-instance v0, Lcom/google/dexmaker/TypeId;

    #@14
    sget-object v1, Lcom/android/dx/rop/type/Type;->CHAR:Lcom/android/dx/rop/type/Type;

    #@16
    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@19
    sput-object v0, Lcom/google/dexmaker/TypeId;->CHAR:Lcom/google/dexmaker/TypeId;

    #@1b
    new-instance v0, Lcom/google/dexmaker/TypeId;

    #@1d
    sget-object v1, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    #@1f
    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@22
    sput-object v0, Lcom/google/dexmaker/TypeId;->DOUBLE:Lcom/google/dexmaker/TypeId;

    #@24
    new-instance v0, Lcom/google/dexmaker/TypeId;

    #@26
    sget-object v1, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    #@28
    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@2b
    sput-object v0, Lcom/google/dexmaker/TypeId;->FLOAT:Lcom/google/dexmaker/TypeId;

    #@2d
    new-instance v0, Lcom/google/dexmaker/TypeId;

    #@2f
    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    #@31
    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@34
    sput-object v0, Lcom/google/dexmaker/TypeId;->INT:Lcom/google/dexmaker/TypeId;

    #@36
    new-instance v0, Lcom/google/dexmaker/TypeId;

    #@38
    sget-object v1, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    #@3a
    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@3d
    sput-object v0, Lcom/google/dexmaker/TypeId;->LONG:Lcom/google/dexmaker/TypeId;

    #@3f
    new-instance v0, Lcom/google/dexmaker/TypeId;

    #@41
    sget-object v1, Lcom/android/dx/rop/type/Type;->SHORT:Lcom/android/dx/rop/type/Type;

    #@43
    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@46
    sput-object v0, Lcom/google/dexmaker/TypeId;->SHORT:Lcom/google/dexmaker/TypeId;

    #@48
    new-instance v0, Lcom/google/dexmaker/TypeId;

    #@4a
    sget-object v1, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    #@4c
    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@4f
    sput-object v0, Lcom/google/dexmaker/TypeId;->VOID:Lcom/google/dexmaker/TypeId;

    #@51
    new-instance v0, Lcom/google/dexmaker/TypeId;

    #@53
    sget-object v1, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    #@55
    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@58
    sput-object v0, Lcom/google/dexmaker/TypeId;->OBJECT:Lcom/google/dexmaker/TypeId;

    #@5a
    new-instance v0, Lcom/google/dexmaker/TypeId;

    #@5c
    sget-object v1, Lcom/android/dx/rop/type/Type;->STRING:Lcom/android/dx/rop/type/Type;

    #@5e
    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    #@61
    sput-object v0, Lcom/google/dexmaker/TypeId;->STRING:Lcom/google/dexmaker/TypeId;

    #@63
    new-instance v0, Ljava/util/HashMap;

    #@65
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@68
    sput-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    #@6a
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    #@6c
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@6e
    sget-object v2, Lcom/google/dexmaker/TypeId;->BOOLEAN:Lcom/google/dexmaker/TypeId;

    #@70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@73
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    #@75
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@77
    sget-object v2, Lcom/google/dexmaker/TypeId;->BYTE:Lcom/google/dexmaker/TypeId;

    #@79
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7c
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    #@7e
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@80
    sget-object v2, Lcom/google/dexmaker/TypeId;->CHAR:Lcom/google/dexmaker/TypeId;

    #@82
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@85
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    #@87
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@89
    sget-object v2, Lcom/google/dexmaker/TypeId;->DOUBLE:Lcom/google/dexmaker/TypeId;

    #@8b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8e
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    #@90
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@92
    sget-object v2, Lcom/google/dexmaker/TypeId;->FLOAT:Lcom/google/dexmaker/TypeId;

    #@94
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@97
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    #@99
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@9b
    sget-object v2, Lcom/google/dexmaker/TypeId;->INT:Lcom/google/dexmaker/TypeId;

    #@9d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a0
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    #@a2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@a4
    sget-object v2, Lcom/google/dexmaker/TypeId;->LONG:Lcom/google/dexmaker/TypeId;

    #@a6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a9
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    #@ab
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@ad
    sget-object v2, Lcom/google/dexmaker/TypeId;->SHORT:Lcom/google/dexmaker/TypeId;

    #@af
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b2
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    #@b4
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@b6
    sget-object v2, Lcom/google/dexmaker/TypeId;->VOID:Lcom/google/dexmaker/TypeId;

    #@b8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bb
    return-void
.end method

.method constructor <init>(Lcom/android/dx/rop/type/Type;)V
    .registers 3

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Lcom/google/dexmaker/TypeId;-><init>(Ljava/lang/String;Lcom/android/dx/rop/type/Type;)V

    #@7
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/dx/rop/type/Type;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-eqz p1, :cond_7

    #@5
    if-nez p2, :cond_d

    #@7
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    #@9
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@c
    throw v0

    #@d
    :cond_d
    iput-object p1, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    #@f
    iput-object p2, p0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@11
    invoke-static {p2}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    #@17
    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_f

    #@6
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    #@8
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/google/dexmaker/TypeId;

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    const/16 v1, 0x2e

    #@15
    const/16 v2, 0x2f

    #@17
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_26

    #@21
    :goto_21
    invoke-static {v0}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/String;)Lcom/google/dexmaker/TypeId;

    #@24
    move-result-object v0

    #@25
    goto :goto_e

    #@26
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const/16 v2, 0x4c

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    const/16 v1, 0x3b

    #@37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    goto :goto_21
.end method

.method public static get(Ljava/lang/String;)Lcom/google/dexmaker/TypeId;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/dexmaker/TypeId;

    #@2
    invoke-static {p0}, Lcom/android/dx/rop/type/Type;->internReturnType(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Ljava/lang/String;Lcom/android/dx/rop/type/Type;)V

    #@9
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/google/dexmaker/TypeId;

    #@2
    if-eqz v0, :cond_12

    #@4
    check-cast p1, Lcom/google/dexmaker/TypeId;

    #@6
    iget-object v0, p1, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    #@8
    iget-object v1, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_12

    #@10
    const/4 v0, 0x1

    #@11
    :goto_11
    return v0

    #@12
    :cond_12
    const/4 v0, 0x0

    #@13
    goto :goto_11
.end method

.method public varargs getConstructor([Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)",
            "Lcom/google/dexmaker/MethodId",
            "<TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/dexmaker/MethodId;

    #@2
    sget-object v1, Lcom/google/dexmaker/TypeId;->VOID:Lcom/google/dexmaker/TypeId;

    #@4
    const-string v2, "<init>"

    #@6
    new-instance v3, Lcom/google/dexmaker/TypeList;

    #@8
    invoke-direct {v3, p1}, Lcom/google/dexmaker/TypeList;-><init>([Lcom/google/dexmaker/TypeId;)V

    #@b
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/dexmaker/MethodId;-><init>(Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/String;Lcom/google/dexmaker/TypeList;)V

    #@e
    return-object v0
.end method

.method public getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/TypeId",
            "<TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/dexmaker/FieldId",
            "<TT;TV;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/dexmaker/FieldId;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/dexmaker/FieldId;-><init>(Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public varargs getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/TypeId",
            "<TR;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)",
            "Lcom/google/dexmaker/MethodId",
            "<TT;TR;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/dexmaker/MethodId;

    #@2
    new-instance v1, Lcom/google/dexmaker/TypeList;

    #@4
    invoke-direct {v1, p3}, Lcom/google/dexmaker/TypeList;-><init>([Lcom/google/dexmaker/TypeId;)V

    #@7
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/dexmaker/MethodId;-><init>(Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/String;Lcom/google/dexmaker/TypeList;)V

    #@a
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
