.class public Lcom/dd/plist/NSSet;
.super Lcom/dd/plist/NSObject;


# instance fields
.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dd/plist/NSObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    new-instance v0, Ljava/util/LinkedHashSet;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@a
    return-void
.end method

.method public varargs constructor <init>([Lcom/dd/plist/NSObject;)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    new-instance v0, Ljava/util/LinkedHashSet;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@a
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@c
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@f
    move-result-object v1

    #@10
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@13
    return-void
.end method


# virtual methods
.method public addObject(Lcom/dd/plist/NSObject;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public allObjects()[Lcom/dd/plist/NSObject;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@2
    invoke-virtual {p0}, Lcom/dd/plist/NSSet;->count()I

    #@5
    move-result v1

    #@6
    new-array v1, v1, [Lcom/dd/plist/NSObject;

    #@8
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, [Lcom/dd/plist/NSObject;

    #@e
    return-object v0
.end method

.method public anyObject()Lcom/dd/plist/NSObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    :goto_9
    return-object v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@c
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/dd/plist/NSObject;

    #@16
    goto :goto_9
.end method

.method assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .registers 4

    #@0
    invoke-super {p0, p1}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    #@3
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_19

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/dd/plist/NSObject;

    #@15
    invoke-virtual {v0, p1}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    #@18
    goto :goto_9

    #@19
    :cond_19
    return-void
.end method

.method public containsObject(Lcom/dd/plist/NSObject;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public count()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    :cond_3
    :goto_3
    return v0

    #@4
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    if-ne v1, v2, :cond_3

    #@e
    check-cast p1, Lcom/dd/plist/NSSet;

    #@10
    iget-object v1, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@12
    iget-object v2, p1, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@14
    if-eq v1, v2, :cond_24

    #@16
    iget-object v1, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@18
    if-eqz v1, :cond_3

    #@1a
    iget-object v1, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@1c
    iget-object v2, p1, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@1e
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_3

    #@24
    :cond_24
    const/4 v0, 0x1

    #@25
    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@2
    if-eqz v0, :cond_d

    #@4
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@6
    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    #@9
    move-result v0

    #@a
    :goto_a
    add-int/lit16 v0, v0, 0xcb

    #@c
    return v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_a
.end method

.method public intersectsSet(Lcom/dd/plist/NSSet;)Z
    .registers 4

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1a

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/dd/plist/NSObject;

    #@12
    invoke-virtual {p1, v0}, Lcom/dd/plist/NSSet;->containsObject(Lcom/dd/plist/NSObject;)Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_6

    #@18
    const/4 v0, 0x1

    #@19
    :goto_19
    return v0

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    goto :goto_19
.end method

.method public isSubsetOfSet(Lcom/dd/plist/NSSet;)Z
    .registers 4

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1a

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/dd/plist/NSObject;

    #@12
    invoke-virtual {p1, v0}, Lcom/dd/plist/NSSet;->containsObject(Lcom/dd/plist/NSObject;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_6

    #@18
    const/4 v0, 0x0

    #@19
    :goto_19
    return v0

    #@1a
    :cond_1a
    const/4 v0, 0x1

    #@1b
    goto :goto_19
.end method

.method public member(Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_19

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/dd/plist/NSObject;

    #@12
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_6

    #@18
    :goto_18
    return-object v0

    #@19
    :cond_19
    const/4 v0, 0x0

    #@1a
    goto :goto_18
.end method

.method public objectIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dd/plist/NSObject;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public removeObject(Lcom/dd/plist/NSObject;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .registers 5

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Not supported yet."

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .registers 5

    #@0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string v1, "Not supported yet."

    #@4
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/16 v0, 0xc

    #@2
    iget-object v1, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@4
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeIntHeader(II)V

    #@b
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_25

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/dd/plist/NSObject;

    #@1d
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->getID(Lcom/dd/plist/NSObject;)I

    #@20
    move-result v0

    #@21
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeID(I)V

    #@24
    goto :goto_11

    #@25
    :cond_25
    return-void
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .registers 6

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSSet;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    const-string v0, "<array>"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    #@f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2a

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/dd/plist/NSObject;

    #@1f
    add-int/lit8 v2, p2, 0x1

    #@21
    invoke-virtual {v0, p1, v2}, Lcom/dd/plist/NSObject;->toXML(Ljava/lang/StringBuilder;I)V

    #@24
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    goto :goto_13

    #@2a
    :cond_2a
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSSet;->indent(Ljava/lang/StringBuilder;I)V

    #@2d
    const-string v0, "</array>"

    #@2f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    return-void
.end method
