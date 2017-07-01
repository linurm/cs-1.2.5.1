.class public abstract Lcom/android/dx/dex/file/MemberIdsSection;
.super Lcom/android/dx/dex/file/UniformItemSection;


# static fields
.field private static final MAX_MEMBERS:I = 0x10000


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;)V
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    #@4
    return-void
.end method


# virtual methods
.method protected orderItems()V
    .registers 6

    #@0
    const/high16 v4, 0x10000

    #@2
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MemberIdsSection;->items()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@9
    move-result v0

    #@a
    if-le v0, v4, :cond_4a

    #@c
    instance-of v0, p0, Lcom/android/dx/dex/file/MethodIdsSection;

    #@e
    if-eqz v0, :cond_47

    #@10
    const-string v0, "methods"

    #@12
    :goto_12
    new-instance v1, Lcom/android/dx/util/DexException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string v3, "Too many "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string v2, ": "

    #@25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MemberIdsSection;->items()Ljava/util/Collection;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    #@30
    move-result v2

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    const-string v2, "; max is "

    #@37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    #@46
    throw v1

    #@47
    :cond_47
    const-string v0, "fields"

    #@49
    goto :goto_12

    #@4a
    :cond_4a
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MemberIdsSection;->items()Ljava/util/Collection;

    #@4d
    move-result-object v0

    #@4e
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@51
    move-result-object v2

    #@52
    const/4 v0, 0x0

    #@53
    move v1, v0

    #@54
    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_67

    #@5a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, Lcom/android/dx/dex/file/MemberIdItem;

    #@60
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/MemberIdItem;->setIndex(I)V

    #@63
    add-int/lit8 v0, v1, 0x1

    #@65
    move v1, v0

    #@66
    goto :goto_54

    #@67
    :cond_67
    return-void
.end method
