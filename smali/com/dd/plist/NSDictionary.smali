.class public Lcom/dd/plist/NSDictionary;
.super Lcom/dd/plist/NSObject;


# instance fields
.field private dict:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
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
    new-instance v0, Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@a
    return-void
.end method


# virtual methods
.method public allKeys()[Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    new-array v1, v1, [Ljava/lang/String;

    #@9
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [Ljava/lang/String;

    #@f
    return-object v0
.end method

.method assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .registers 6

    #@0
    invoke-super {p0, p1}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    #@3
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@5
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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
    if-eqz v0, :cond_31

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/Map$Entry;

    #@19
    new-instance v3, Lcom/dd/plist/NSString;

    #@1b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/lang/String;

    #@21
    invoke-direct {v3, v1}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    #@24
    invoke-virtual {v3, p1}, Lcom/dd/plist/NSString;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    #@27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Lcom/dd/plist/NSObject;

    #@2d
    invoke-virtual {v0, p1}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    #@30
    goto :goto_d

    #@31
    :cond_31
    return-void
.end method

.method public count()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1c

    #@e
    check-cast p1, Lcom/dd/plist/NSDictionary;

    #@10
    iget-object v0, p1, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@12
    iget-object v1, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@14
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_1c

    #@1a
    const/4 v0, 0x1

    #@1b
    :goto_1b
    return v0

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    goto :goto_1b
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@2
    if-eqz v0, :cond_d

    #@4
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@6
    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    #@9
    move-result v0

    #@a
    :goto_a
    add-int/lit16 v0, v0, 0x245

    #@c
    return v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    goto :goto_a
.end method

.method public objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/dd/plist/NSObject;

    #@8
    return-object v0
.end method

.method public put(Ljava/lang/String;D)V
    .registers 6

    #@0
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@2
    invoke-direct {v0, p2, p3}, Lcom/dd/plist/NSNumber;-><init>(D)V

    #@5
    invoke-virtual {p0, p1, v0}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)V

    #@8
    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .registers 4

    #@0
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@2
    invoke-direct {v0, p2}, Lcom/dd/plist/NSNumber;-><init>(I)V

    #@5
    invoke-virtual {p0, p1, v0}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)V

    #@8
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .registers 8

    #@0
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@2
    long-to-double v2, p2

    #@3
    invoke-direct {v0, v2, v3}, Lcom/dd/plist/NSNumber;-><init>(D)V

    #@6
    invoke-virtual {p0, p1, v0}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)V

    #@9
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/dd/plist/NSObject;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    new-instance v0, Lcom/dd/plist/NSString;

    #@2
    invoke-direct {v0, p2}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, p1, v0}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)V

    #@8
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/util/Date;)V
    .registers 4

    #@0
    new-instance v0, Lcom/dd/plist/NSDate;

    #@2
    invoke-direct {v0, p2}, Lcom/dd/plist/NSDate;-><init>(Ljava/util/Date;)V

    #@5
    invoke-virtual {p0, p1, v0}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)V

    #@8
    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .registers 4

    #@0
    new-instance v0, Lcom/dd/plist/NSNumber;

    #@2
    invoke-direct {v0, p2}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    #@5
    invoke-virtual {p0, p1, v0}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)V

    #@8
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .registers 4

    #@0
    new-instance v0, Lcom/dd/plist/NSData;

    #@2
    invoke-direct {v0, p2}, Lcom/dd/plist/NSData;-><init>([B)V

    #@5
    invoke-virtual {p0, p1, v0}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)V

    #@8
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    #@4
    const/16 v0, 0x7b

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@10
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@13
    move-result-object v0

    #@14
    new-array v1, v2, [Ljava/lang/String;

    #@16
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, [Ljava/lang/String;

    #@1c
    move v1, v2

    #@1d
    :goto_1d
    array-length v3, v0

    #@1e
    if-ge v1, v3, :cond_9e

    #@20
    aget-object v3, v0, v1

    #@22
    invoke-virtual {p0, v3}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    #@25
    move-result-object v4

    #@26
    add-int/lit8 v5, p2, 0x1

    #@28
    invoke-virtual {p0, p1, v5}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    #@2b
    const-string v5, "\""

    #@2d
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    invoke-static {v3}, Lcom/dd/plist/NSString;->escapeStringForASCII(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    const-string v3, "\" ="

    #@39
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3f
    move-result-object v3

    #@40
    const-class v5, Lcom/dd/plist/NSDictionary;

    #@42
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v5

    #@46
    if-nez v5, :cond_58

    #@48
    const-class v5, Lcom/dd/plist/NSArray;

    #@4a
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v5

    #@4e
    if-nez v5, :cond_58

    #@50
    const-class v5, Lcom/dd/plist/NSData;

    #@52
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v5

    #@56
    if-eqz v5, :cond_74

    #@58
    :cond_58
    sget-object v5, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    #@5a
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    add-int/lit8 v5, p2, 0x2

    #@5f
    invoke-virtual {v4, p1, v5}, Lcom/dd/plist/NSObject;->toASCII(Ljava/lang/StringBuilder;I)V

    #@62
    :goto_62
    const/16 v4, 0x3b

    #@64
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@67
    array-length v4, v0

    #@68
    add-int/lit8 v4, v4, -0x1

    #@6a
    if-eq v1, v4, :cond_7d

    #@6c
    sget-object v3, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    #@6e
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    :cond_71
    :goto_71
    add-int/lit8 v1, v1, 0x1

    #@73
    goto :goto_1d

    #@74
    :cond_74
    const-string v5, " "

    #@76
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    invoke-virtual {v4, p1, v2}, Lcom/dd/plist/NSObject;->toASCII(Ljava/lang/StringBuilder;I)V

    #@7c
    goto :goto_62

    #@7d
    :cond_7d
    const-class v4, Lcom/dd/plist/NSDictionary;

    #@7f
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v4

    #@83
    if-nez v4, :cond_95

    #@85
    const-class v4, Lcom/dd/plist/NSArray;

    #@87
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v4

    #@8b
    if-nez v4, :cond_95

    #@8d
    const-class v4, Lcom/dd/plist/NSData;

    #@8f
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v3

    #@93
    if-eqz v3, :cond_71

    #@95
    :cond_95
    sget-object v3, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    #@97
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    #@9d
    goto :goto_71

    #@9e
    :cond_9e
    const/16 v0, 0x7d

    #@a0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a3
    return-void
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .registers 9

    #@0
    const/4 v2, 0x0

    #@1
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    #@4
    const/16 v0, 0x7b

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@10
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@13
    move-result-object v0

    #@14
    new-array v1, v2, [Ljava/lang/String;

    #@16
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, [Ljava/lang/String;

    #@1c
    move v1, v2

    #@1d
    :goto_1d
    array-length v3, v0

    #@1e
    if-ge v1, v3, :cond_9e

    #@20
    aget-object v3, v0, v1

    #@22
    invoke-virtual {p0, v3}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    #@25
    move-result-object v4

    #@26
    add-int/lit8 v5, p2, 0x1

    #@28
    invoke-virtual {p0, p1, v5}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    #@2b
    const-string v5, "\""

    #@2d
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    invoke-static {v3}, Lcom/dd/plist/NSString;->escapeStringForASCII(Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    const-string v3, "\" ="

    #@39
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3f
    move-result-object v3

    #@40
    const-class v5, Lcom/dd/plist/NSDictionary;

    #@42
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v5

    #@46
    if-nez v5, :cond_58

    #@48
    const-class v5, Lcom/dd/plist/NSArray;

    #@4a
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v5

    #@4e
    if-nez v5, :cond_58

    #@50
    const-class v5, Lcom/dd/plist/NSData;

    #@52
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@55
    move-result v5

    #@56
    if-eqz v5, :cond_74

    #@58
    :cond_58
    sget-object v5, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    #@5a
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    add-int/lit8 v5, p2, 0x2

    #@5f
    invoke-virtual {v4, p1, v5}, Lcom/dd/plist/NSObject;->toASCIIGnuStep(Ljava/lang/StringBuilder;I)V

    #@62
    :goto_62
    const/16 v4, 0x3b

    #@64
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@67
    array-length v4, v0

    #@68
    add-int/lit8 v4, v4, -0x1

    #@6a
    if-eq v1, v4, :cond_7d

    #@6c
    sget-object v3, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    #@6e
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    :cond_71
    :goto_71
    add-int/lit8 v1, v1, 0x1

    #@73
    goto :goto_1d

    #@74
    :cond_74
    const-string v5, " "

    #@76
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    invoke-virtual {v4, p1, v2}, Lcom/dd/plist/NSObject;->toASCIIGnuStep(Ljava/lang/StringBuilder;I)V

    #@7c
    goto :goto_62

    #@7d
    :cond_7d
    const-class v4, Lcom/dd/plist/NSDictionary;

    #@7f
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v4

    #@83
    if-nez v4, :cond_95

    #@85
    const-class v4, Lcom/dd/plist/NSArray;

    #@87
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v4

    #@8b
    if-nez v4, :cond_95

    #@8d
    const-class v4, Lcom/dd/plist/NSData;

    #@8f
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v3

    #@93
    if-eqz v3, :cond_71

    #@95
    :cond_95
    sget-object v3, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    #@97
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    #@9d
    goto :goto_71

    #@9e
    :cond_9e
    const/16 v0, 0x7d

    #@a0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a3
    return-void
.end method

.method public toASCIIPropertyList()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/NSDictionary;->toASCII(Ljava/lang/StringBuilder;I)V

    #@9
    sget-object v1, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/16 v0, 0xd

    #@2
    iget-object v1, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@4
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeIntHeader(II)V

    #@b
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@d
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@10
    move-result-object v1

    #@11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_34

    #@1b
    new-instance v3, Lcom/dd/plist/NSString;

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/util/Map$Entry;

    #@23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/lang/String;

    #@29
    invoke-direct {v3, v0}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    #@2c
    invoke-virtual {p1, v3}, Lcom/dd/plist/BinaryPropertyListWriter;->getID(Lcom/dd/plist/NSObject;)I

    #@2f
    move-result v0

    #@30
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeID(I)V

    #@33
    goto :goto_15

    #@34
    :cond_34
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@37
    move-result-object v1

    #@38
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_52

    #@3e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Ljava/util/Map$Entry;

    #@44
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    check-cast v0, Lcom/dd/plist/NSObject;

    #@4a
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->getID(Lcom/dd/plist/NSObject;)I

    #@4d
    move-result v0

    #@4e
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeID(I)V

    #@51
    goto :goto_38

    #@52
    :cond_52
    return-void
.end method

.method public toGnuStepASCIIPropertyList()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/NSDictionary;->toASCIIGnuStep(Ljava/lang/StringBuilder;I)V

    #@9
    sget-object v1, Lcom/dd/plist/NSDictionary;->NEWLINE:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .registers 8

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    const-string v0, "<dict>"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    iget-object v0, p0, Lcom/dd/plist/NSDictionary;->dict:Ljava/util/HashMap;

    #@f
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_77

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/String;

    #@23
    invoke-virtual {p0, v0}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    #@26
    move-result-object v2

    #@27
    add-int/lit8 v3, p2, 0x1

    #@29
    invoke-virtual {p0, p1, v3}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    #@2c
    const-string v3, "<key>"

    #@2e
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    const-string v3, "&"

    #@33
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@36
    move-result v3

    #@37
    if-nez v3, :cond_49

    #@39
    const-string v3, "<"

    #@3b
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@3e
    move-result v3

    #@3f
    if-nez v3, :cond_49

    #@41
    const-string v3, ">"

    #@43
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_73

    #@49
    :cond_49
    const-string v3, "<![CDATA["

    #@4b
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    const-string v3, "]]>"

    #@50
    const-string v4, "]]]]><![CDATA[>"

    #@52
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    const-string v0, "]]>"

    #@5b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    :goto_5e
    const-string v0, "</key>"

    #@60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@65
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    add-int/lit8 v0, p2, 0x1

    #@6a
    invoke-virtual {v2, p1, v0}, Lcom/dd/plist/NSObject;->toXML(Ljava/lang/StringBuilder;I)V

    #@6d
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@6f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    goto :goto_17

    #@73
    :cond_73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    goto :goto_5e

    #@77
    :cond_77
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSDictionary;->indent(Ljava/lang/StringBuilder;I)V

    #@7a
    const-string v0, "</dict>"

    #@7c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    return-void
.end method
