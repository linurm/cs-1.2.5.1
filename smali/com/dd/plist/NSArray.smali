.class public Lcom/dd/plist/NSArray;
.super Lcom/dd/plist/NSObject;


# instance fields
.field private array:[Lcom/dd/plist/NSObject;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    new-array v0, p1, [Lcom/dd/plist/NSObject;

    #@5
    iput-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@7
    return-void
.end method

.method public varargs constructor <init>([Lcom/dd/plist/NSObject;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    #@3
    iput-object p1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@5
    return-void
.end method


# virtual methods
.method assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .registers 6

    #@0
    invoke-super {p0, p1}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    #@3
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@5
    array-length v2, v1

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    if-ge v0, v2, :cond_11

    #@9
    aget-object v3, v1, v0

    #@b
    invoke-virtual {v3, p1}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    #@e
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_7

    #@11
    :cond_11
    return-void
.end method

.method public containsObject(Lcom/dd/plist/NSObject;)Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v2, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@3
    array-length v3, v2

    #@4
    move v1, v0

    #@5
    :goto_5
    if-ge v1, v3, :cond_10

    #@7
    aget-object v4, v2, v1

    #@9
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_11

    #@f
    const/4 v0, 0x1

    #@10
    :cond_10
    return v0

    #@11
    :cond_11
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_5
.end method

.method public count()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@2
    array-length v0, v0

    #@3
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
    if-eqz v0, :cond_1e

    #@e
    check-cast p1, Lcom/dd/plist/NSArray;

    #@10
    invoke-virtual {p1}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@16
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1e

    #@1c
    const/4 v0, 0x1

    #@1d
    :goto_1d
    return v0

    #@1e
    :cond_1e
    const/4 v0, 0x0

    #@1f
    goto :goto_1d
.end method

.method public getArray()[Lcom/dd/plist/NSObject;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    add-int/lit16 v0, v0, 0x26f

    #@8
    return v0
.end method

.method public indexOfIdenticalObject(Lcom/dd/plist/NSObject;)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_10

    #@6
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@8
    aget-object v1, v1, v0

    #@a
    if-ne v1, p1, :cond_d

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_1

    #@10
    :cond_10
    const/4 v0, -0x1

    #@11
    goto :goto_c
.end method

.method public indexOfObject(Lcom/dd/plist/NSObject;)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_14

    #@6
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@8
    aget-object v1, v1, v0

    #@a
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_11

    #@10
    :goto_10
    return v0

    #@11
    :cond_11
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_1

    #@14
    :cond_14
    const/4 v0, -0x1

    #@15
    goto :goto_10
.end method

.method public lastObject()Lcom/dd/plist/NSObject;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@2
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@4
    array-length v1, v1

    #@5
    add-int/lit8 v1, v1, -0x1

    #@7
    aget-object v0, v0, v1

    #@9
    return-object v0
.end method

.method public objectAtIndex(I)Lcom/dd/plist/NSObject;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public varargs objectsAtIndexes([I)[Lcom/dd/plist/NSObject;
    .registers 6

    #@0
    array-length v0, p1

    #@1
    new-array v1, v0, [Lcom/dd/plist/NSObject;

    #@3
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    array-length v2, p1

    #@8
    if-ge v0, v2, :cond_15

    #@a
    iget-object v2, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@c
    aget v3, p1, v0

    #@e
    aget-object v2, v2, v3

    #@10
    aput-object v2, v1, v0

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_7

    #@15
    :cond_15
    return-object v1
.end method

.method public remove(I)V
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@3
    array-length v0, v0

    #@4
    if-ge p1, v0, :cond_8

    #@6
    if-gez p1, :cond_2e

    #@8
    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v2, "invalid index:"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string v2, ";the array length is "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@21
    array-length v2, v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    :cond_2e
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@30
    array-length v0, v0

    #@31
    add-int/lit8 v0, v0, -0x1

    #@33
    new-array v0, v0, [Lcom/dd/plist/NSObject;

    #@35
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@37
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3a
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@3c
    add-int/lit8 v2, p1, 0x1

    #@3e
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@40
    array-length v3, v3

    #@41
    sub-int/2addr v3, p1

    #@42
    add-int/lit8 v3, v3, -0x1

    #@44
    invoke-static {v1, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@47
    iput-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@49
    return-void
.end method

.method public setValue(ILcom/dd/plist/NSObject;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@2
    aput-object p2, v0, p1

    #@4
    return-void
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSArray;->indent(Ljava/lang/StringBuilder;I)V

    #@4
    const/16 v0, 0x28

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9
    sget-object v0, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    move v2, v0

    #@10
    move v0, v1

    #@11
    :goto_11
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@13
    array-length v3, v3

    #@14
    if-ge v0, v3, :cond_7e

    #@16
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@18
    aget-object v3, v3, v0

    #@1a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v3

    #@1e
    const-class v4, Lcom/dd/plist/NSDictionary;

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-nez v4, :cond_36

    #@26
    const-class v4, Lcom/dd/plist/NSArray;

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    if-nez v4, :cond_36

    #@2e
    const-class v4, Lcom/dd/plist/NSData;

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_6f

    #@36
    :cond_36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@39
    move-result v3

    #@3a
    if-eq v2, v3, :cond_6f

    #@3c
    sget-object v2, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

    #@3e
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@44
    move-result v2

    #@45
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@47
    aget-object v3, v3, v0

    #@49
    add-int/lit8 v4, p2, 0x1

    #@4b
    invoke-virtual {v3, p1, v4}, Lcom/dd/plist/NSObject;->toASCII(Ljava/lang/StringBuilder;I)V

    #@4e
    :goto_4e
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@50
    array-length v3, v3

    #@51
    add-int/lit8 v3, v3, -0x1

    #@53
    if-eq v0, v3, :cond_5a

    #@55
    const/16 v3, 0x2c

    #@57
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    :cond_5a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@5d
    move-result v3

    #@5e
    sub-int/2addr v3, v2

    #@5f
    const/16 v4, 0x50

    #@61
    if-le v3, v4, :cond_6c

    #@63
    sget-object v2, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

    #@65
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@6b
    move-result v2

    #@6c
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    #@6e
    goto :goto_11

    #@6f
    :cond_6f
    if-eqz v0, :cond_76

    #@71
    const-string v3, " "

    #@73
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    :cond_76
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@78
    aget-object v3, v3, v0

    #@7a
    invoke-virtual {v3, p1, v1}, Lcom/dd/plist/NSObject;->toASCII(Ljava/lang/StringBuilder;I)V

    #@7d
    goto :goto_4e

    #@7e
    :cond_7e
    const/16 v0, 0x29

    #@80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@83
    return-void
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSArray;->indent(Ljava/lang/StringBuilder;I)V

    #@4
    const/16 v0, 0x28

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9
    sget-object v0, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

    #@b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    #@e
    move-result v0

    #@f
    move v2, v0

    #@10
    move v0, v1

    #@11
    :goto_11
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@13
    array-length v3, v3

    #@14
    if-ge v0, v3, :cond_7e

    #@16
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@18
    aget-object v3, v3, v0

    #@1a
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1d
    move-result-object v3

    #@1e
    const-class v4, Lcom/dd/plist/NSDictionary;

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-nez v4, :cond_36

    #@26
    const-class v4, Lcom/dd/plist/NSArray;

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    if-nez v4, :cond_36

    #@2e
    const-class v4, Lcom/dd/plist/NSData;

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_6f

    #@36
    :cond_36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@39
    move-result v3

    #@3a
    if-eq v2, v3, :cond_6f

    #@3c
    sget-object v2, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

    #@3e
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@44
    move-result v2

    #@45
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@47
    aget-object v3, v3, v0

    #@49
    add-int/lit8 v4, p2, 0x1

    #@4b
    invoke-virtual {v3, p1, v4}, Lcom/dd/plist/NSObject;->toASCIIGnuStep(Ljava/lang/StringBuilder;I)V

    #@4e
    :goto_4e
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@50
    array-length v3, v3

    #@51
    add-int/lit8 v3, v3, -0x1

    #@53
    if-eq v0, v3, :cond_5a

    #@55
    const/16 v3, 0x2c

    #@57
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a
    :cond_5a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@5d
    move-result v3

    #@5e
    sub-int/2addr v3, v2

    #@5f
    const/16 v4, 0x50

    #@61
    if-le v3, v4, :cond_6c

    #@63
    sget-object v2, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

    #@65
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    #@6b
    move-result v2

    #@6c
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    #@6e
    goto :goto_11

    #@6f
    :cond_6f
    if-eqz v0, :cond_76

    #@71
    const-string v3, " "

    #@73
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    :cond_76
    iget-object v3, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@78
    aget-object v3, v3, v0

    #@7a
    invoke-virtual {v3, p1, v1}, Lcom/dd/plist/NSObject;->toASCIIGnuStep(Ljava/lang/StringBuilder;I)V

    #@7d
    goto :goto_4e

    #@7e
    :cond_7e
    const/16 v0, 0x29

    #@80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@83
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
    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/NSArray;->toASCII(Ljava/lang/StringBuilder;I)V

    #@9
    sget-object v1, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

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
    const/16 v0, 0xa

    #@2
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@4
    array-length v1, v1

    #@5
    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeIntHeader(II)V

    #@8
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@a
    array-length v2, v1

    #@b
    const/4 v0, 0x0

    #@c
    :goto_c
    if-ge v0, v2, :cond_1a

    #@e
    aget-object v3, v1, v0

    #@10
    invoke-virtual {p1, v3}, Lcom/dd/plist/BinaryPropertyListWriter;->getID(Lcom/dd/plist/NSObject;)I

    #@13
    move-result v3

    #@14
    invoke-virtual {p1, v3}, Lcom/dd/plist/BinaryPropertyListWriter;->writeID(I)V

    #@17
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_c

    #@1a
    :cond_1a
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
    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/NSArray;->toASCIIGnuStep(Ljava/lang/StringBuilder;I)V

    #@9
    sget-object v1, Lcom/dd/plist/NSArray;->NEWLINE:Ljava/lang/String;

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
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSArray;->indent(Ljava/lang/StringBuilder;I)V

    #@3
    const-string v0, "<array>"

    #@5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    iget-object v1, p0, Lcom/dd/plist/NSArray;->array:[Lcom/dd/plist/NSObject;

    #@f
    array-length v2, v1

    #@10
    const/4 v0, 0x0

    #@11
    :goto_11
    if-ge v0, v2, :cond_22

    #@13
    aget-object v3, v1, v0

    #@15
    add-int/lit8 v4, p2, 0x1

    #@17
    invoke-virtual {v3, p1, v4}, Lcom/dd/plist/NSObject;->toXML(Ljava/lang/StringBuilder;I)V

    #@1a
    sget-object v3, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    #@1c
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_11

    #@22
    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSArray;->indent(Ljava/lang/StringBuilder;I)V

    #@25
    const-string v0, "</array>"

    #@27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    return-void
.end method
