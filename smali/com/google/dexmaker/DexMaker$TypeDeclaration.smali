.class Lcom/google/dexmaker/DexMaker$TypeDeclaration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/DexMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeDeclaration"
.end annotation


# instance fields
.field private declared:Z

.field private final fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/dexmaker/FieldId;",
            "Lcom/google/dexmaker/DexMaker$FieldDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private flags:I

.field private interfaces:Lcom/google/dexmaker/TypeList;

.field private final methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/dexmaker/MethodId;",
            "Lcom/google/dexmaker/DexMaker$MethodDeclaration;",
            ">;"
        }
    .end annotation
.end field

.field private sourceFile:Ljava/lang/String;

.field private supertype:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<*>;"
        }
    .end annotation
.end field

.field private final type:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/dexmaker/TypeId;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->fields:Ljava/util/Map;

    #@a
    new-instance v0, Ljava/util/LinkedHashMap;

    #@c
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->methods:Ljava/util/Map;

    #@11
    iput-object p1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->type:Lcom/google/dexmaker/TypeId;

    #@13
    return-void
.end method

.method static synthetic access$000(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->declared:Z

    #@2
    return v0
.end method

.method static synthetic access$002(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Z)Z
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->declared:Z

    #@2
    return p1
.end method

.method static synthetic access$102(Lcom/google/dexmaker/DexMaker$TypeDeclaration;I)I
    .registers 2

    #@0
    iput p1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->flags:I

    #@2
    return p1
.end method

.method static synthetic access$202(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/TypeId;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->supertype:Lcom/google/dexmaker/TypeId;

    #@2
    return-object p1
.end method

.method static synthetic access$302(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->sourceFile:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic access$402(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Lcom/google/dexmaker/TypeList;)Lcom/google/dexmaker/TypeList;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->interfaces:Lcom/google/dexmaker/TypeList;

    #@2
    return-object p1
.end method

.method static synthetic access$500(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Ljava/util/Map;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->methods:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic access$700(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Ljava/util/Map;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->fields:Ljava/util/Map;

    #@2
    return-object v0
.end method


# virtual methods
.method toClassDefItem()Lcom/android/dx/dex/file/ClassDefItem;
    .registers 9

    #@0
    iget-boolean v0, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->declared:Z

    #@2
    if-nez v0, :cond_3f

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v2, "Undeclared type "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    iget-object v2, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->type:Lcom/google/dexmaker/TypeId;

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    const-string v2, " declares members: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->fields:Ljava/util/Map;

    #@1f
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string v2, " "

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget-object v2, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->methods:Ljava/util/Map;

    #@2f
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    :cond_3f
    new-instance v6, Lcom/android/dx/dex/DexOptions;

    #@41
    invoke-direct {v6}, Lcom/android/dx/dex/DexOptions;-><init>()V

    #@44
    const/16 v0, 0xd

    #@46
    iput v0, v6, Lcom/android/dx/dex/DexOptions;->targetApiLevel:I

    #@48
    new-instance v0, Lcom/android/dx/dex/file/ClassDefItem;

    #@4a
    iget-object v1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->type:Lcom/google/dexmaker/TypeId;

    #@4c
    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    #@4e
    iget v2, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->flags:I

    #@50
    iget-object v3, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->supertype:Lcom/google/dexmaker/TypeId;

    #@52
    iget-object v3, v3, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    #@54
    iget-object v4, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->interfaces:Lcom/google/dexmaker/TypeList;

    #@56
    iget-object v4, v4, Lcom/google/dexmaker/TypeList;->ropTypes:Lcom/android/dx/rop/type/StdTypeList;

    #@58
    new-instance v5, Lcom/android/dx/rop/cst/CstString;

    #@5a
    iget-object v7, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->sourceFile:Ljava/lang/String;

    #@5c
    invoke-direct {v5, v7}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    #@5f
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/ClassDefItem;-><init>(Lcom/android/dx/rop/cst/CstType;ILcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/CstString;)V

    #@62
    iget-object v1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->methods:Ljava/util/Map;

    #@64
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@67
    move-result-object v1

    #@68
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@6b
    move-result-object v2

    #@6c
    :goto_6c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@6f
    move-result v1

    #@70
    if-eqz v1, :cond_8a

    #@72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@75
    move-result-object v1

    #@76
    check-cast v1, Lcom/google/dexmaker/DexMaker$MethodDeclaration;

    #@78
    invoke-virtual {v1, v6}, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->toEncodedMethod(Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/file/EncodedMethod;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v1}, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->isDirect()Z

    #@7f
    move-result v1

    #@80
    if-eqz v1, :cond_86

    #@82
    invoke-virtual {v0, v3}, Lcom/android/dx/dex/file/ClassDefItem;->addDirectMethod(Lcom/android/dx/dex/file/EncodedMethod;)V

    #@85
    goto :goto_6c

    #@86
    :cond_86
    invoke-virtual {v0, v3}, Lcom/android/dx/dex/file/ClassDefItem;->addVirtualMethod(Lcom/android/dx/dex/file/EncodedMethod;)V

    #@89
    goto :goto_6c

    #@8a
    :cond_8a
    iget-object v1, p0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->fields:Ljava/util/Map;

    #@8c
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@8f
    move-result-object v1

    #@90
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@93
    move-result-object v2

    #@94
    :goto_94
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@97
    move-result v1

    #@98
    if-eqz v1, :cond_ba

    #@9a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9d
    move-result-object v1

    #@9e
    check-cast v1, Lcom/google/dexmaker/DexMaker$FieldDeclaration;

    #@a0
    invoke-virtual {v1}, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->toEncodedField()Lcom/android/dx/dex/file/EncodedField;

    #@a3
    move-result-object v3

    #@a4
    invoke-virtual {v1}, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->isStatic()Z

    #@a7
    move-result v4

    #@a8
    if-eqz v4, :cond_b6

    #@aa
    # getter for: Lcom/google/dexmaker/DexMaker$FieldDeclaration;->staticValue:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/dexmaker/DexMaker$FieldDeclaration;->access$800(Lcom/google/dexmaker/DexMaker$FieldDeclaration;)Ljava/lang/Object;

    #@ad
    move-result-object v1

    #@ae
    invoke-static {v1}, Lcom/google/dexmaker/Constants;->getConstant(Ljava/lang/Object;)Lcom/android/dx/rop/cst/TypedConstant;

    #@b1
    move-result-object v1

    #@b2
    invoke-virtual {v0, v3, v1}, Lcom/android/dx/dex/file/ClassDefItem;->addStaticField(Lcom/android/dx/dex/file/EncodedField;Lcom/android/dx/rop/cst/Constant;)V

    #@b5
    goto :goto_94

    #@b6
    :cond_b6
    invoke-virtual {v0, v3}, Lcom/android/dx/dex/file/ClassDefItem;->addInstanceField(Lcom/android/dx/dex/file/EncodedField;)V

    #@b9
    goto :goto_94

    #@ba
    :cond_ba
    return-object v0
.end method
