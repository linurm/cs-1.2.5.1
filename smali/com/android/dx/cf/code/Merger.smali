.class public final Lcom/android/dx/cf/code/Merger;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static mergeType(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/type/TypeBearer;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_9

    #@3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_a

    #@9
    :cond_9
    :goto_9
    return-object p0

    #@a
    :cond_a
    if-nez p1, :cond_e

    #@c
    move-object p0, v0

    #@d
    goto :goto_9

    #@e
    :cond_e
    invoke-interface {p0}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    #@11
    move-result-object v1

    #@12
    invoke-interface {p1}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    #@15
    move-result-object p0

    #@16
    if-eq v1, p0, :cond_64

    #@18
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isReference()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_53

    #@1e
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isReference()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_53

    #@24
    sget-object v0, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    #@26
    if-eq v1, v0, :cond_9

    #@28
    sget-object v0, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    #@2a
    if-eq p0, v0, :cond_64

    #@2c
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isArray()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_50

    #@32
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isArray()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_50

    #@38
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    #@3f
    move-result-object v1

    #@40
    invoke-static {v0, v1}, Lcom/android/dx/cf/code/Merger;->mergeType(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/type/TypeBearer;

    #@43
    move-result-object v0

    #@44
    if-nez v0, :cond_49

    #@46
    sget-object p0, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    #@48
    goto :goto_9

    #@49
    :cond_49
    check-cast v0, Lcom/android/dx/rop/type/Type;

    #@4b
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    #@4e
    move-result-object p0

    #@4f
    goto :goto_9

    #@50
    :cond_50
    sget-object p0, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    #@52
    goto :goto_9

    #@53
    :cond_53
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isIntlike()Z

    #@56
    move-result v1

    #@57
    if-eqz v1, :cond_62

    #@59
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isIntlike()Z

    #@5c
    move-result v1

    #@5d
    if-eqz v1, :cond_62

    #@5f
    sget-object p0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    #@61
    goto :goto_9

    #@62
    :cond_62
    move-object p0, v0

    #@63
    goto :goto_9

    #@64
    :cond_64
    move-object p0, v1

    #@65
    goto :goto_9
.end method
