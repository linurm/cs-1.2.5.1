.class public final Lcom/android/dx/dex/file/ClassDataItem;
.super Lcom/android/dx/dex/file/OffsettedItem;


# instance fields
.field private final directMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/file/EncodedMethod;",
            ">;"
        }
    .end annotation
.end field

.field private encodedForm:[B

.field private final instanceFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/file/EncodedField;",
            ">;"
        }
    .end annotation
.end field

.field private final staticFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/file/EncodedField;",
            ">;"
        }
    .end annotation
.end field

.field private final staticValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/dx/dex/file/EncodedField;",
            "Lcom/android/dx/rop/cst/Constant;",
            ">;"
        }
    .end annotation
.end field

.field private staticValuesConstant:Lcom/android/dx/rop/cst/CstArray;

.field private final thisClass:Lcom/android/dx/rop/cst/CstType;

.field private final virtualMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/file/EncodedMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstType;)V
    .registers 5

    #@0
    const/16 v2, 0x14

    #@2
    const/4 v0, 0x1

    #@3
    const/4 v1, -0x1

    #@4
    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    #@7
    if-nez p1, :cond_11

    #@9
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    const-string v1, "thisClass == null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_11
    iput-object p1, p0, Lcom/android/dx/dex/file/ClassDataItem;->thisClass:Lcom/android/dx/rop/cst/CstType;

    #@13
    new-instance v0, Ljava/util/ArrayList;

    #@15
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@18
    iput-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    #@1a
    new-instance v0, Ljava/util/HashMap;

    #@1c
    const/16 v1, 0x28

    #@1e
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@21
    iput-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    #@23
    new-instance v0, Ljava/util/ArrayList;

    #@25
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@28
    iput-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    #@2a
    new-instance v0, Ljava/util/ArrayList;

    #@2c
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@2f
    iput-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    #@31
    new-instance v0, Ljava/util/ArrayList;

    #@33
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@36
    iput-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    #@38
    const/4 v0, 0x0

    #@39
    iput-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/android/dx/rop/cst/CstArray;

    #@3b
    return-void
.end method

.method private static encodeList(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/dex/file/DexFile;",
            "Lcom/android/dx/util/AnnotatedOutput;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/android/dx/dex/file/EncodedMember;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_8

    #@7
    :cond_7
    return-void

    #@8
    :cond_8
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_2a

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v2, "  "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string v2, ":"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-interface {p1, v0, v1}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@2a
    :cond_2a
    move v1, v0

    #@2b
    move v2, v0

    #@2c
    :goto_2c
    if-ge v2, v3, :cond_7

    #@2e
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lcom/android/dx/dex/file/EncodedMember;

    #@34
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/android/dx/dex/file/EncodedMember;->encode(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;II)I

    #@37
    move-result v0

    #@38
    add-int/lit8 v1, v2, 0x1

    #@3a
    move v2, v1

    #@3b
    move v1, v0

    #@3c
    goto :goto_2c
.end method

.method private encodeOutput(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 7

    #@0
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_2b

    #@6
    const/4 v1, 0x0

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-virtual {p0}, Lcom/android/dx/dex/file/ClassDataItem;->offsetString()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string v3, " class data for "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    iget-object v3, p0, Lcom/android/dx/dex/file/ClassDataItem;->thisClass:Lcom/android/dx/rop/cst/CstType;

    #@1c
    invoke-virtual {v3}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-interface {p2, v1, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@2b
    :cond_2b
    const-string v1, "static_fields"

    #@2d
    iget-object v2, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@32
    move-result v2

    #@33
    invoke-static {p1, p2, v1, v2}, Lcom/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    #@36
    const-string v1, "instance_fields"

    #@38
    iget-object v2, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@3d
    move-result v2

    #@3e
    invoke-static {p1, p2, v1, v2}, Lcom/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    #@41
    const-string v1, "direct_methods"

    #@43
    iget-object v2, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v2

    #@49
    invoke-static {p1, p2, v1, v2}, Lcom/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    #@4c
    const-string v1, "virtual_methods"

    #@4e
    iget-object v2, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    #@50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@53
    move-result v2

    #@54
    invoke-static {p1, p2, v1, v2}, Lcom/android/dx/dex/file/ClassDataItem;->encodeSize(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;Ljava/lang/String;I)V

    #@57
    const-string v1, "static_fields"

    #@59
    iget-object v2, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    #@5b
    invoke-static {p1, p2, v1, v2}, Lcom/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    #@5e
    const-string v1, "instance_fields"

    #@60
    iget-object v2, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    #@62
    invoke-static {p1, p2, v1, v2}, Lcom/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    #@65
    const-string v1, "direct_methods"

    #@67
    iget-object v2, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    #@69
    invoke-static {p1, p2, v1, v2}, Lcom/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    #@6c
    const-string v1, "virtual_methods"

    #@6e
    iget-object v2, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    #@70
    invoke-static {p1, p2, v1, v2}, Lcom/android/dx/dex/file/ClassDataItem;->encodeList(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;Ljava/lang/String;Ljava/util/ArrayList;)V

    #@73
    if-eqz v0, :cond_78

    #@75
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->endAnnotation()V

    #@78
    :cond_78
    return-void
.end method

.method private static encodeSize(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;Ljava/lang/String;I)V
    .registers 9

    #@0
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_2f

    #@6
    const-string v0, "  %-21s %08x"

    #@8
    const/4 v1, 0x2

    #@9
    new-array v1, v1, [Ljava/lang/Object;

    #@b
    const/4 v2, 0x0

    #@c
    new-instance v3, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    const-string v4, "_size:"

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    aput-object v3, v1, v2

    #@21
    const/4 v2, 0x1

    #@22
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v3

    #@26
    aput-object v3, v1, v2

    #@28
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    #@2f
    :cond_2f
    invoke-interface {p1, p3}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    #@32
    return-void
.end method

.method private makeStaticValuesConstant()Lcom/android/dx/rop/cst/CstArray;
    .registers 7

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@5
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v0

    #@b
    move v3, v0

    #@c
    :goto_c
    if-lez v3, :cond_30

    #@e
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    #@10
    add-int/lit8 v1, v3, -0x1

    #@12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Lcom/android/dx/dex/file/EncodedField;

    #@18
    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    #@1a
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    check-cast v0, Lcom/android/dx/rop/cst/Constant;

    #@20
    instance-of v1, v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@22
    if-eqz v1, :cond_34

    #@24
    check-cast v0, Lcom/android/dx/rop/cst/CstLiteralBits;

    #@26
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstLiteralBits;->getLongBits()J

    #@29
    move-result-wide v0

    #@2a
    const-wide/16 v4, 0x0

    #@2c
    cmp-long v0, v0, v4

    #@2e
    if-eqz v0, :cond_36

    #@30
    :cond_30
    if-nez v3, :cond_3a

    #@32
    const/4 v0, 0x0

    #@33
    :goto_33
    return-object v0

    #@34
    :cond_34
    if-nez v0, :cond_30

    #@36
    :cond_36
    add-int/lit8 v0, v3, -0x1

    #@38
    move v3, v0

    #@39
    goto :goto_c

    #@3a
    :cond_3a
    new-instance v4, Lcom/android/dx/rop/cst/CstArray$List;

    #@3c
    invoke-direct {v4, v3}, Lcom/android/dx/rop/cst/CstArray$List;-><init>(I)V

    #@3f
    const/4 v0, 0x0

    #@40
    move v2, v0

    #@41
    :goto_41
    if-ge v2, v3, :cond_68

    #@43
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    check-cast v0, Lcom/android/dx/dex/file/EncodedField;

    #@4b
    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    #@4d
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@50
    move-result-object v1

    #@51
    check-cast v1, Lcom/android/dx/rop/cst/Constant;

    #@53
    if-nez v1, :cond_61

    #@55
    invoke-virtual {v0}, Lcom/android/dx/dex/file/EncodedField;->getRef()Lcom/android/dx/rop/cst/CstFieldRef;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstFieldRef;->getType()Lcom/android/dx/rop/type/Type;

    #@5c
    move-result-object v0

    #@5d
    invoke-static {v0}, Lcom/android/dx/rop/cst/Zeroes;->zeroFor(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/Constant;

    #@60
    move-result-object v1

    #@61
    :cond_61
    invoke-virtual {v4, v2, v1}, Lcom/android/dx/rop/cst/CstArray$List;->set(ILcom/android/dx/rop/cst/Constant;)V

    #@64
    add-int/lit8 v0, v2, 0x1

    #@66
    move v2, v0

    #@67
    goto :goto_41

    #@68
    :cond_68
    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstArray$List;->setImmutable()V

    #@6b
    new-instance v0, Lcom/android/dx/rop/cst/CstArray;

    #@6d
    invoke-direct {v0, v4}, Lcom/android/dx/rop/cst/CstArray;-><init>(Lcom/android/dx/rop/cst/CstArray$List;)V

    #@70
    goto :goto_33
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_21

    #@8
    invoke-virtual {p0}, Lcom/android/dx/dex/file/ClassDataItem;->getStaticValuesConstant()Lcom/android/dx/rop/cst/CstArray;

    #@b
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_21

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Lcom/android/dx/dex/file/EncodedField;

    #@1d
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/EncodedField;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    #@20
    goto :goto_11

    #@21
    :cond_21
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@26
    move-result v0

    #@27
    if-nez v0, :cond_44

    #@29
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    #@2b
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@2e
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v1

    #@34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_44

    #@3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Lcom/android/dx/dex/file/EncodedField;

    #@40
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/EncodedField;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    #@43
    goto :goto_34

    #@44
    :cond_44
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@49
    move-result v0

    #@4a
    if-nez v0, :cond_67

    #@4c
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    #@4e
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@51
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@56
    move-result-object v1

    #@57
    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@5a
    move-result v0

    #@5b
    if-eqz v0, :cond_67

    #@5d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@60
    move-result-object v0

    #@61
    check-cast v0, Lcom/android/dx/dex/file/EncodedMethod;

    #@63
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/EncodedMethod;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    #@66
    goto :goto_57

    #@67
    :cond_67
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    #@69
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@6c
    move-result v0

    #@6d
    if-nez v0, :cond_8a

    #@6f
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    #@71
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@74
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    #@76
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@79
    move-result-object v1

    #@7a
    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7d
    move-result v0

    #@7e
    if-eqz v0, :cond_8a

    #@80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@83
    move-result-object v0

    #@84
    check-cast v0, Lcom/android/dx/dex/file/EncodedMethod;

    #@86
    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/EncodedMethod;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    #@89
    goto :goto_7a

    #@8a
    :cond_8a
    return-void
.end method

.method public addDirectMethod(Lcom/android/dx/dex/file/EncodedMethod;)V
    .registers 4

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "method == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f
    return-void
.end method

.method public addInstanceField(Lcom/android/dx/dex/file/EncodedField;)V
    .registers 4

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "field == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f
    return-void
.end method

.method public addStaticField(Lcom/android/dx/dex/file/EncodedField;Lcom/android/dx/rop/cst/Constant;)V
    .registers 5

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "field == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/android/dx/rop/cst/CstArray;

    #@c
    if-eqz v0, :cond_16

    #@e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@10
    const-string v1, "static fields already sorted"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    :cond_16
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValues:Ljava/util/HashMap;

    #@1d
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    return-void
.end method

.method public addVirtualMethod(Lcom/android/dx/dex/file/EncodedMethod;)V
    .registers 4

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "method == null"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f
    return-void
.end method

.method public debugPrint(Ljava/io/Writer;Z)V
    .registers 9

    #@0
    const/4 v1, 0x0

    #@1
    invoke-static {p1}, Lcom/android/dx/util/Writers;->printWriterFor(Ljava/io/Writer;)Ljava/io/PrintWriter;

    #@4
    move-result-object v3

    #@5
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v2

    #@b
    move v0, v1

    #@c
    :goto_c
    if-ge v0, v2, :cond_37

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v5, "  sfields["

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    const-string v5, "]: "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    iget-object v5, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@34
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_c

    #@37
    :cond_37
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    #@39
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@3c
    move-result v2

    #@3d
    move v0, v1

    #@3e
    :goto_3e
    if-ge v0, v2, :cond_69

    #@40
    new-instance v4, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string v5, "  ifields["

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    const-string v5, "]: "

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    iget-object v5, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    #@57
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    add-int/lit8 v0, v0, 0x1

    #@68
    goto :goto_3e

    #@69
    :cond_69
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    #@6b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6e
    move-result v4

    #@6f
    move v2, v1

    #@70
    :goto_70
    if-ge v2, v4, :cond_9d

    #@72
    new-instance v0, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string v5, "  dmeths["

    #@79
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v0

    #@7d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    const-string v5, "]:"

    #@83
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v0

    #@87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v0

    #@8b
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8e
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    #@90
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@93
    move-result-object v0

    #@94
    check-cast v0, Lcom/android/dx/dex/file/EncodedMethod;

    #@96
    invoke-virtual {v0, v3, p2}, Lcom/android/dx/dex/file/EncodedMethod;->debugPrint(Ljava/io/PrintWriter;Z)V

    #@99
    add-int/lit8 v0, v2, 0x1

    #@9b
    move v2, v0

    #@9c
    goto :goto_70

    #@9d
    :cond_9d
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    #@9f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@a2
    move-result v2

    #@a3
    :goto_a3
    if-ge v1, v2, :cond_d0

    #@a5
    new-instance v0, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string v4, "  vmeths["

    #@ac
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v0

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v0

    #@b4
    const-string v4, "]:"

    #@b6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v0

    #@ba
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v0

    #@be
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c1
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    #@c3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c6
    move-result-object v0

    #@c7
    check-cast v0, Lcom/android/dx/dex/file/EncodedMethod;

    #@c9
    invoke-virtual {v0, v3, p2}, Lcom/android/dx/dex/file/EncodedMethod;->debugPrint(Ljava/io/PrintWriter;Z)V

    #@cc
    add-int/lit8 v0, v1, 0x1

    #@ce
    move v1, v0

    #@cf
    goto :goto_a3

    #@d0
    :cond_d0
    return-void
.end method

.method public getMethods()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/file/EncodedMethod;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v1

    #@8
    iget-object v2, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v2

    #@e
    add-int/2addr v1, v2

    #@f
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@12
    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@17
    iget-object v1, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@1c
    return-object v0
.end method

.method public getStaticValuesConstant()Lcom/android/dx/rop/cst/CstArray;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/android/dx/rop/cst/CstArray;

    #@2
    if-nez v0, :cond_12

    #@4
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_12

    #@c
    invoke-direct {p0}, Lcom/android/dx/dex/file/ClassDataItem;->makeStaticValuesConstant()Lcom/android/dx/rop/cst/CstArray;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/android/dx/rop/cst/CstArray;

    #@12
    :cond_12
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticValuesConstant:Lcom/android/dx/rop/cst/CstArray;

    #@14
    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->staticFields:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_22

    #@8
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->instanceFields:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_22

    #@10
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->directMethods:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_22

    #@18
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->virtualMethods:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_22

    #@20
    const/4 v0, 0x1

    #@21
    :goto_21
    return v0

    #@22
    :cond_22
    const/4 v0, 0x0

    #@23
    goto :goto_21
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .registers 2

    #@0
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_CLASS_DATA_ITEM:Lcom/android/dx/dex/file/ItemType;

    #@2
    return-object v0
.end method

.method protected place0(Lcom/android/dx/dex/file/Section;I)V
    .registers 5

    #@0
    new-instance v0, Lcom/android/dx/util/ByteArrayAnnotatedOutput;

    #@2
    invoke-direct {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;-><init>()V

    #@5
    invoke-virtual {p1}, Lcom/android/dx/dex/file/Section;->getFile()Lcom/android/dx/dex/file/DexFile;

    #@8
    move-result-object v1

    #@9
    invoke-direct {p0, v1, v0}, Lcom/android/dx/dex/file/ClassDataItem;->encodeOutput(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V

    #@c
    invoke-virtual {v0}, Lcom/android/dx/util/ByteArrayAnnotatedOutput;->toByteArray()[B

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->encodedForm:[B

    #@12
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->encodedForm:[B

    #@14
    array-length v0, v0

    #@15
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/file/ClassDataItem;->setWriteSize(I)V

    #@18
    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    #@0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .registers 4

    #@0
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_a

    #@6
    invoke-direct {p0, p1, p2}, Lcom/android/dx/dex/file/ClassDataItem;->encodeOutput(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    iget-object v0, p0, Lcom/android/dx/dex/file/ClassDataItem;->encodedForm:[B

    #@c
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->write([B)V

    #@f
    goto :goto_9
.end method
