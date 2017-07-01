.class Lcom/google/dexmaker/DexMaker$MethodDeclaration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/DexMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MethodDeclaration"
.end annotation


# instance fields
.field private final code:Lcom/google/dexmaker/Code;

.field private final flags:I

.field final method:Lcom/google/dexmaker/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/MethodId",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/dexmaker/MethodId;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/MethodId",
            "<**>;I)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->method:Lcom/google/dexmaker/MethodId;

    #@5
    iput p2, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->flags:I

    #@7
    new-instance v0, Lcom/google/dexmaker/Code;

    #@9
    invoke-direct {v0, p0}, Lcom/google/dexmaker/Code;-><init>(Lcom/google/dexmaker/DexMaker$MethodDeclaration;)V

    #@c
    iput-object v0, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->code:Lcom/google/dexmaker/Code;

    #@e
    return-void
.end method

.method static synthetic access$600(Lcom/google/dexmaker/DexMaker$MethodDeclaration;)Lcom/google/dexmaker/Code;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->code:Lcom/google/dexmaker/Code;

    #@2
    return-object v0
.end method


# virtual methods
.method isDirect()Z
    .registers 3

    #@0
    iget v0, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->flags:I

    #@2
    const v1, 0x1000a

    #@5
    and-int/2addr v0, v1

    #@6
    if-eqz v0, :cond_a

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    return v0

    #@a
    :cond_a
    const/4 v0, 0x0

    #@b
    goto :goto_9
.end method

.method isNative()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->flags:I

    #@2
    and-int/lit16 v0, v0, 0x100

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method isStatic()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->flags:I

    #@2
    and-int/lit8 v0, v0, 0x8

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method toEncodedMethod(Lcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/file/EncodedMethod;
    .registers 7

    #@0
    const/4 v4, 0x0

    #@1
    invoke-virtual {p0}, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->isNative()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_15

    #@7
    new-instance v0, Lcom/android/dx/dex/file/EncodedMethod;

    #@9
    iget-object v1, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->method:Lcom/google/dexmaker/MethodId;

    #@b
    iget-object v1, v1, Lcom/google/dexmaker/MethodId;->constant:Lcom/android/dx/rop/cst/CstMethodRef;

    #@d
    iget v2, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->flags:I

    #@f
    sget-object v3, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    #@11
    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/dx/dex/file/EncodedMethod;-><init>(Lcom/android/dx/rop/cst/CstMethodRef;ILcom/android/dx/dex/code/DalvCode;Lcom/android/dx/rop/type/TypeList;)V

    #@14
    :goto_14
    return-object v0

    #@15
    :cond_15
    new-instance v0, Lcom/android/dx/rop/code/RopMethod;

    #@17
    iget-object v1, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->code:Lcom/google/dexmaker/Code;

    #@19
    invoke-virtual {v1}, Lcom/google/dexmaker/Code;->toBasicBlocks()Lcom/android/dx/rop/code/BasicBlockList;

    #@1c
    move-result-object v1

    #@1d
    const/4 v2, 0x0

    #@1e
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/code/RopMethod;-><init>(Lcom/android/dx/rop/code/BasicBlockList;I)V

    #@21
    const/4 v1, 0x1

    #@22
    iget-object v2, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->code:Lcom/google/dexmaker/Code;

    #@24
    invoke-virtual {v2}, Lcom/google/dexmaker/Code;->paramSize()I

    #@27
    move-result v2

    #@28
    invoke-static {v0, v1, v4, v2, p1}, Lcom/android/dx/dex/code/RopTranslator;->translate(Lcom/android/dx/rop/code/RopMethod;ILcom/android/dx/rop/code/LocalVariableInfo;ILcom/android/dx/dex/DexOptions;)Lcom/android/dx/dex/code/DalvCode;

    #@2b
    move-result-object v1

    #@2c
    new-instance v0, Lcom/android/dx/dex/file/EncodedMethod;

    #@2e
    iget-object v2, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->method:Lcom/google/dexmaker/MethodId;

    #@30
    iget-object v2, v2, Lcom/google/dexmaker/MethodId;->constant:Lcom/android/dx/rop/cst/CstMethodRef;

    #@32
    iget v3, p0, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->flags:I

    #@34
    sget-object v4, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    #@36
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/dx/dex/file/EncodedMethod;-><init>(Lcom/android/dx/rop/cst/CstMethodRef;ILcom/android/dx/dex/code/DalvCode;Lcom/android/dx/rop/type/TypeList;)V

    #@39
    goto :goto_14
.end method
