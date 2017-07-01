.class public final Lcom/android/dx/dex/file/Statistics;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/file/Statistics$Data;
    }
.end annotation


# instance fields
.field private final dataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/dx/dex/file/Statistics$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    const/16 v1, 0x32

    #@7
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/android/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    #@c
    return-void
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/file/Item;)V
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/file/Item;->typeName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    iget-object v0, p0, Lcom/android/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/dx/dex/file/Statistics$Data;

    #@c
    if-nez v0, :cond_19

    #@e
    iget-object v0, p0, Lcom/android/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    #@10
    new-instance v2, Lcom/android/dx/dex/file/Statistics$Data;

    #@12
    invoke-direct {v2, p1, v1}, Lcom/android/dx/dex/file/Statistics$Data;-><init>(Lcom/android/dx/dex/file/Item;Ljava/lang/String;)V

    #@15
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    :goto_18
    return-void

    #@19
    :cond_19
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/Statistics$Data;->add(Lcom/android/dx/dex/file/Item;)V

    #@1c
    goto :goto_18
.end method

.method public addAll(Lcom/android/dx/dex/file/Section;)V
    .registers 4

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_18

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/dx/dex/file/Item;

    #@14
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/file/Statistics;->add(Lcom/android/dx/dex/file/Item;)V

    #@17
    goto :goto_8

    #@18
    :cond_18
    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 6

    #@0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v0, "Statistics:\n"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    new-instance v2, Ljava/util/TreeMap;

    #@c
    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    #@f
    iget-object v0, p0, Lcom/android/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    #@11
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@14
    move-result-object v0

    #@15
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v3

    #@19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v0

    #@1d
    if-eqz v0, :cond_2d

    #@1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lcom/android/dx/dex/file/Statistics$Data;

    #@25
    # getter for: Lcom/android/dx/dex/file/Statistics$Data;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/dx/dex/file/Statistics$Data;->access$000(Lcom/android/dx/dex/file/Statistics$Data;)Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v2, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    goto :goto_19

    #@2d
    :cond_2d
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@30
    move-result-object v0

    #@31
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v2

    #@35
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v0

    #@39
    if-eqz v0, :cond_49

    #@3b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/android/dx/dex/file/Statistics$Data;

    #@41
    invoke-virtual {v0}, Lcom/android/dx/dex/file/Statistics$Data;->toHuman()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    goto :goto_35

    #@49
    :cond_49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    return-object v0
.end method

.method public final writeAnnotation(Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_9

    #@8
    :cond_8
    return-void

    #@9
    :cond_9
    const/4 v0, 0x0

    #@a
    const-string v1, "\nstatistics:\n"

    #@c
    invoke-interface {p1, v0, v1}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@f
    new-instance v1, Ljava/util/TreeMap;

    #@11
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    #@14
    iget-object v0, p0, Lcom/android/dx/dex/file/Statistics;->dataMap:Ljava/util/HashMap;

    #@16
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v2

    #@1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_32

    #@24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lcom/android/dx/dex/file/Statistics$Data;

    #@2a
    # getter for: Lcom/android/dx/dex/file/Statistics$Data;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/dx/dex/file/Statistics$Data;->access$000(Lcom/android/dx/dex/file/Statistics$Data;)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    goto :goto_1e

    #@32
    :cond_32
    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@35
    move-result-object v0

    #@36
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@39
    move-result-object v1

    #@3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_8

    #@40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Lcom/android/dx/dex/file/Statistics$Data;

    #@46
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/Statistics$Data;->writeAnnotation(Lcom/android/dx/util/AnnotatedOutput;)V

    #@49
    goto :goto_3a
.end method
