.class public final Lcom/google/dexmaker/Code;
.super Ljava/lang/Object;


# instance fields
.field private final catchLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/Label;",
            ">;"
        }
    .end annotation
.end field

.field private final catchTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/TypeId",
            "<*>;>;"
        }
    .end annotation
.end field

.field private catches:Lcom/android/dx/rop/type/StdTypeList;

.field private currentLabel:Lcom/google/dexmaker/Label;

.field private final labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/Label;",
            ">;"
        }
    .end annotation
.end field

.field private final locals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/Local",
            "<*>;>;"
        }
    .end annotation
.end field

.field private localsInitialized:Z

.field private final method:Lcom/google/dexmaker/MethodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/MethodId",
            "<**>;"
        }
    .end annotation
.end field

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/Local",
            "<*>;>;"
        }
    .end annotation
.end field

.field private sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

.field private final thisLocal:Lcom/google/dexmaker/Local;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/Local",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/dexmaker/DexMaker$MethodDeclaration;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/dexmaker/Code;->labels:Ljava/util/List;

    #@a
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/dexmaker/Code;->parameters:Ljava/util/List;

    #@11
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Lcom/google/dexmaker/Code;->locals:Ljava/util/List;

    #@18
    sget-object v0, Lcom/android/dx/rop/code/SourcePosition;->NO_INFO:Lcom/android/dx/rop/code/SourcePosition;

    #@1a
    iput-object v0, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@1c
    new-instance v0, Ljava/util/ArrayList;

    #@1e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@21
    iput-object v0, p0, Lcom/google/dexmaker/Code;->catchTypes:Ljava/util/List;

    #@23
    new-instance v0, Ljava/util/ArrayList;

    #@25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@28
    iput-object v0, p0, Lcom/google/dexmaker/Code;->catchLabels:Ljava/util/List;

    #@2a
    sget-object v0, Lcom/android/dx/rop/type/StdTypeList;->EMPTY:Lcom/android/dx/rop/type/StdTypeList;

    #@2c
    iput-object v0, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@2e
    iget-object v0, p1, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->method:Lcom/google/dexmaker/MethodId;

    #@30
    iput-object v0, p0, Lcom/google/dexmaker/Code;->method:Lcom/google/dexmaker/MethodId;

    #@32
    invoke-virtual {p1}, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->isStatic()Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_53

    #@38
    const/4 v0, 0x0

    #@39
    iput-object v0, p0, Lcom/google/dexmaker/Code;->thisLocal:Lcom/google/dexmaker/Local;

    #@3b
    :goto_3b
    iget-object v0, p0, Lcom/google/dexmaker/Code;->method:Lcom/google/dexmaker/MethodId;

    #@3d
    iget-object v0, v0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    #@3f
    iget-object v1, v0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    #@41
    array-length v2, v1

    #@42
    const/4 v0, 0x0

    #@43
    :goto_43
    if-ge v0, v2, :cond_65

    #@45
    aget-object v3, v1, v0

    #@47
    iget-object v4, p0, Lcom/google/dexmaker/Code;->parameters:Ljava/util/List;

    #@49
    invoke-static {p0, v3}, Lcom/google/dexmaker/Local;->get(Lcom/google/dexmaker/Code;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@4c
    move-result-object v3

    #@4d
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@50
    add-int/lit8 v0, v0, 0x1

    #@52
    goto :goto_43

    #@53
    :cond_53
    iget-object v0, p0, Lcom/google/dexmaker/Code;->method:Lcom/google/dexmaker/MethodId;

    #@55
    iget-object v0, v0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@57
    invoke-static {p0, v0}, Lcom/google/dexmaker/Local;->get(Lcom/google/dexmaker/Code;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@5a
    move-result-object v0

    #@5b
    iput-object v0, p0, Lcom/google/dexmaker/Code;->thisLocal:Lcom/google/dexmaker/Local;

    #@5d
    iget-object v0, p0, Lcom/google/dexmaker/Code;->parameters:Ljava/util/List;

    #@5f
    iget-object v1, p0, Lcom/google/dexmaker/Code;->thisLocal:Lcom/google/dexmaker/Local;

    #@61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@64
    goto :goto_3b

    #@65
    :cond_65
    new-instance v0, Lcom/google/dexmaker/Label;

    #@67
    invoke-direct {v0}, Lcom/google/dexmaker/Label;-><init>()V

    #@6a
    iput-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@6c
    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@6e
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->adopt(Lcom/google/dexmaker/Label;)V

    #@71
    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@73
    const/4 v1, 0x1

    #@74
    iput-boolean v1, v0, Lcom/google/dexmaker/Label;->marked:Z

    #@76
    return-void
.end method

.method private addInstruction(Lcom/android/dx/rop/code/Insn;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;Lcom/google/dexmaker/Label;)V

    #@4
    return-void
.end method

.method private addInstruction(Lcom/android/dx/rop/code/Insn;Lcom/google/dexmaker/Label;)V
    .registers 6

    #@0
    const/4 v2, 0x0

    #@1
    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@3
    if-eqz v0, :cond_b

    #@5
    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@7
    iget-boolean v0, v0, Lcom/google/dexmaker/Label;->marked:Z

    #@9
    if-nez v0, :cond_13

    #@b
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    const-string v1, "no current label"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    :cond_13
    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@15
    iget-object v0, v0, Lcom/google/dexmaker/Label;->instructions:Ljava/util/List;

    #@17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1a
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Insn;->getOpcode()Lcom/android/dx/rop/code/Rop;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@21
    move-result v0

    #@22
    packed-switch v0, :pswitch_data_ae

    #@25
    :pswitch_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2a
    throw v0

    #@2b
    :pswitch_2b
    if-eqz p2, :cond_63

    #@2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string v2, "unexpected branch: "

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0

    #@46
    :pswitch_46
    if-eqz p2, :cond_61

    #@48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4a
    new-instance v1, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string v2, "unexpected branch: "

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v1

    #@5d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@60
    throw v0

    #@61
    :cond_61
    iput-object v2, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@63
    :cond_63
    :goto_63
    return-void

    #@64
    :pswitch_64
    if-nez p2, :cond_6e

    #@66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@68
    const-string v1, "branch == null"

    #@6a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v0

    #@6e
    :cond_6e
    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@70
    iput-object p2, v0, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    #@72
    iput-object v2, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@74
    goto :goto_63

    #@75
    :pswitch_75
    if-nez p2, :cond_7f

    #@77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@79
    const-string v1, "branch == null"

    #@7b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v0

    #@7f
    :cond_7f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@82
    move-result-object v0

    #@83
    invoke-direct {p0, p2, v0}, Lcom/google/dexmaker/Code;->splitCurrentLabel(Lcom/google/dexmaker/Label;Ljava/util/List;)V

    #@86
    goto :goto_63

    #@87
    :pswitch_87
    if-eqz p2, :cond_a2

    #@89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8b
    new-instance v1, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string v2, "unexpected branch: "

    #@92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v1

    #@96
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v1

    #@9a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v1

    #@9e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v0

    #@a2
    :cond_a2
    new-instance v0, Ljava/util/ArrayList;

    #@a4
    iget-object v1, p0, Lcom/google/dexmaker/Code;->catchLabels:Ljava/util/List;

    #@a6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@a9
    invoke-direct {p0, v2, v0}, Lcom/google/dexmaker/Code;->splitCurrentLabel(Lcom/google/dexmaker/Label;Ljava/util/List;)V

    #@ac
    goto :goto_63

    #@ad
    nop

    #@ae
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_46
        :pswitch_64
        :pswitch_75
        :pswitch_25
        :pswitch_87
    .end packed-switch
.end method

.method private adopt(Lcom/google/dexmaker/Label;)V
    .registers 4

    #@0
    iget-object v0, p1, Lcom/google/dexmaker/Label;->code:Lcom/google/dexmaker/Code;

    #@2
    if-ne v0, p0, :cond_5

    #@4
    :goto_4
    return-void

    #@5
    :cond_5
    iget-object v0, p1, Lcom/google/dexmaker/Label;->code:Lcom/google/dexmaker/Code;

    #@7
    if-eqz v0, :cond_11

    #@9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string v1, "Cannot adopt label; it belongs to another Code"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    :cond_11
    iput-object p0, p1, Lcom/google/dexmaker/Label;->code:Lcom/google/dexmaker/Code;

    #@13
    iget-object v0, p0, Lcom/google/dexmaker/Code;->labels:Ljava/util/List;

    #@15
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@18
    goto :goto_4
.end method

.method private cleanUpLabels()V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/Code;->labels:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_28

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/google/dexmaker/Label;

    #@14
    invoke-virtual {v0}, Lcom/google/dexmaker/Label;->isEmpty()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_20

    #@1a
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@1d
    move v0, v1

    #@1e
    :goto_1e
    move v1, v0

    #@1f
    goto :goto_8

    #@20
    :cond_20
    invoke-virtual {v0}, Lcom/google/dexmaker/Label;->compact()V

    #@23
    iput v1, v0, Lcom/google/dexmaker/Label;->id:I

    #@25
    add-int/lit8 v0, v1, 0x1

    #@27
    goto :goto_1e

    #@28
    :cond_28
    return-void
.end method

.method private coerce(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;)",
            "Lcom/google/dexmaker/Local",
            "<TT;>;"
        }
    .end annotation

    #@0
    iget-object v0, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@2
    invoke-virtual {v0, p2}, Lcom/google/dexmaker/TypeId;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_2d

    #@8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v2, "requested "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string v2, " but was "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget-object v2, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    :cond_2d
    return-object p1
.end method

.method private static concatenate(Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)",
            "Lcom/android/dx/rop/code/RegisterSpecList;"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    if-eqz p0, :cond_25

    #@3
    const/4 v0, 0x1

    #@4
    :goto_4
    new-instance v2, Lcom/android/dx/rop/code/RegisterSpecList;

    #@6
    array-length v3, p1

    #@7
    add-int/2addr v3, v0

    #@8
    invoke-direct {v2, v3}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    #@b
    if-eqz p0, :cond_14

    #@d
    invoke-virtual {p0}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v2, v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@14
    :cond_14
    :goto_14
    array-length v3, p1

    #@15
    if-ge v1, v3, :cond_27

    #@17
    add-int v3, v1, v0

    #@19
    aget-object v4, p1, v1

    #@1b
    invoke-virtual {v4}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v2, v3, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@22
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_14

    #@25
    :cond_25
    move v0, v1

    #@26
    goto :goto_4

    #@27
    :cond_27
    return-object v2
.end method

.method private getCastRop(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/code/Rop;
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/type/Type;->getBasicType()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x6

    #@5
    if-ne v0, v1, :cond_e

    #@7
    invoke-virtual {p2}, Lcom/android/dx/rop/type/Type;->getBasicType()I

    #@a
    move-result v0

    #@b
    sparse-switch v0, :sswitch_data_1c

    #@e
    :cond_e
    invoke-static {p2, p1}, Lcom/android/dx/rop/code/Rops;->opConv(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@11
    move-result-object v0

    #@12
    :goto_12
    return-object v0

    #@13
    :sswitch_13
    sget-object v0, Lcom/android/dx/rop/code/Rops;->TO_SHORT:Lcom/android/dx/rop/code/Rop;

    #@15
    goto :goto_12

    #@16
    :sswitch_16
    sget-object v0, Lcom/android/dx/rop/code/Rops;->TO_CHAR:Lcom/android/dx/rop/code/Rop;

    #@18
    goto :goto_12

    #@19
    :sswitch_19
    sget-object v0, Lcom/android/dx/rop/code/Rops;->TO_BYTE:Lcom/android/dx/rop/code/Rop;

    #@1b
    goto :goto_12

    #@1c
    :sswitch_data_1c
    .sparse-switch
        0x2 -> :sswitch_19
        0x3 -> :sswitch_16
        0x8 -> :sswitch_13
    .end sparse-switch
.end method

.method private varargs invoke(Lcom/android/dx/rop/code/Rop;Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/dx/rop/code/Rop;",
            "Lcom/google/dexmaker/MethodId",
            "<TD;TR;>;",
            "Lcom/google/dexmaker/Local",
            "<-TR;>;",
            "Lcom/google/dexmaker/Local",
            "<+TD;>;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    #@2
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@4
    invoke-static {p4, p5}, Lcom/google/dexmaker/Code;->concatenate(Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@7
    move-result-object v3

    #@8
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@a
    iget-object v5, p2, Lcom/google/dexmaker/MethodId;->constant:Lcom/android/dx/rop/cst/CstMethodRef;

    #@c
    move-object v1, p1

    #@d
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    #@10
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@13
    if-eqz p3, :cond_19

    #@15
    const/4 v0, 0x0

    #@16
    invoke-direct {p0, p3, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    #@19
    :cond_19
    return-void
.end method

.method private moveResult(Lcom/google/dexmaker/Local;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;Z)V"
        }
    .end annotation

    #@0
    if-eqz p2, :cond_1b

    #@2
    iget-object v0, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@4
    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@6
    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@9
    move-result-object v0

    #@a
    :goto_a
    new-instance v1, Lcom/android/dx/rop/code/PlainInsn;

    #@c
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@e
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@11
    move-result-object v3

    #@12
    sget-object v4, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@14
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@17
    invoke-direct {p0, v1}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@1a
    return-void

    #@1b
    :cond_1b
    iget-object v0, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@1d
    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@1f
    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opMoveResult(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@22
    move-result-object v0

    #@23
    goto :goto_a
.end method

.method private splitCurrentLabel(Lcom/google/dexmaker/Label;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Label;",
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/Label;",
            ">;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/dexmaker/Label;

    #@2
    invoke-direct {v0}, Lcom/google/dexmaker/Label;-><init>()V

    #@5
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->adopt(Lcom/google/dexmaker/Label;)V

    #@8
    iget-object v1, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@a
    iput-object v0, v1, Lcom/google/dexmaker/Label;->primarySuccessor:Lcom/google/dexmaker/Label;

    #@c
    iget-object v1, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@e
    iput-object p1, v1, Lcom/google/dexmaker/Label;->alternateSuccessor:Lcom/google/dexmaker/Label;

    #@10
    iget-object v1, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@12
    iput-object p2, v1, Lcom/google/dexmaker/Label;->catchLabels:Ljava/util/List;

    #@14
    iput-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@16
    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@18
    const/4 v1, 0x1

    #@19
    iput-boolean v1, v0, Lcom/google/dexmaker/Label;->marked:Z

    #@1b
    return-void
.end method

.method private toTypeList(Ljava/util/List;)Lcom/android/dx/rop/type/StdTypeList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/TypeId",
            "<*>;>;)",
            "Lcom/android/dx/rop/type/StdTypeList;"
        }
    .end annotation

    #@0
    new-instance v2, Lcom/android/dx/rop/type/StdTypeList;

    #@2
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    invoke-direct {v2, v0}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    #@9
    const/4 v0, 0x0

    #@a
    move v1, v0

    #@b
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@e
    move-result v0

    #@f
    if-ge v1, v0, :cond_20

    #@11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/google/dexmaker/TypeId;

    #@17
    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@19
    invoke-virtual {v2, v1, v0}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    #@1c
    add-int/lit8 v0, v1, 0x1

    #@1e
    move v1, v0

    #@1f
    goto :goto_b

    #@20
    :cond_20
    return-object v2
.end method


# virtual methods
.method public addCatchClause(Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/Label;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/google/dexmaker/Label;",
            ")V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/Code;->catchTypes:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_21

    #@8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v2, "Already caught: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    :cond_21
    invoke-direct {p0, p2}, Lcom/google/dexmaker/Code;->adopt(Lcom/google/dexmaker/Label;)V

    #@24
    iget-object v0, p0, Lcom/google/dexmaker/Code;->catchTypes:Ljava/util/List;

    #@26
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    iget-object v0, p0, Lcom/google/dexmaker/Code;->catchTypes:Ljava/util/List;

    #@2b
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->toTypeList(Ljava/util/List;)Lcom/android/dx/rop/type/StdTypeList;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@31
    iget-object v0, p0, Lcom/google/dexmaker/Code;->catchLabels:Ljava/util/List;

    #@33
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    return-void
.end method

.method public aget(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    #@2
    iget-object v1, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@4
    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@6
    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opAget(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@c
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@13
    move-result-object v4

    #@14
    invoke-static {v3, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@17
    move-result-object v3

    #@18
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@1a
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    #@1d
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@20
    const/4 v0, 0x1

    #@21
    invoke-direct {p0, p1, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    #@24
    return-void
.end method

.method public aput(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    #@2
    iget-object v1, p3, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@4
    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@6
    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opAput(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@c
    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@17
    move-result-object v5

    #@18
    invoke-static {v3, v4, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@1b
    move-result-object v3

    #@1c
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@1e
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    #@21
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@24
    return-void
.end method

.method public arrayLength(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    #@2
    sget-object v1, Lcom/android/dx/rop/code/Rops;->ARRAY_LENGTH:Lcom/android/dx/rop/code/Rop;

    #@4
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@6
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@9
    move-result-object v3

    #@a
    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@d
    move-result-object v3

    #@e
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    #@13
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@16
    const/4 v0, 0x1

    #@17
    invoke-direct {p0, p1, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    #@1a
    return-void
.end method

.method public cast(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    #@0
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->getType()Lcom/google/dexmaker/TypeId;

    #@3
    move-result-object v0

    #@4
    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->isReference()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_2b

    #@c
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    #@e
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CHECK_CAST:Lcom/android/dx/rop/code/Rop;

    #@10
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@12
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@15
    move-result-object v3

    #@16
    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@19
    move-result-object v3

    #@1a
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@1c
    iget-object v5, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@1e
    iget-object v5, v5, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    #@20
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    #@23
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@26
    const/4 v0, 0x1

    #@27
    invoke-direct {p0, p1, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    #@2a
    :goto_2a
    return-void

    #@2b
    :cond_2b
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    #@2d
    iget-object v1, p2, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@2f
    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@31
    iget-object v2, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@33
    iget-object v2, v2, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@35
    invoke-direct {p0, v1, v2}, Lcom/google/dexmaker/Code;->getCastRop(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/code/Rop;

    #@38
    move-result-object v1

    #@39
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@3b
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@42
    move-result-object v4

    #@43
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@46
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@49
    goto :goto_2a
.end method

.method public compare(Lcom/google/dexmaker/Comparison;Lcom/google/dexmaker/Label;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/Comparison;",
            "Lcom/google/dexmaker/Label;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p2}, Lcom/google/dexmaker/Code;->adopt(Lcom/google/dexmaker/Label;)V

    #@3
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    #@5
    iget-object v1, p3, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@7
    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@9
    iget-object v2, p4, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@b
    iget-object v2, v2, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@d
    invoke-static {v1, v2}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p1, v1}, Lcom/google/dexmaker/Comparison;->rop(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/code/Rop;

    #@14
    move-result-object v1

    #@15
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@17
    const/4 v3, 0x0

    #@18
    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {p4}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@1f
    move-result-object v5

    #@20
    invoke-static {v4, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@23
    move-result-object v4

    #@24
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@27
    invoke-direct {p0, v0, p2}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;Lcom/google/dexmaker/Label;)V

    #@2a
    return-void
.end method

.method public compareFloatingPoint(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;I)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p4, v0, :cond_26

    #@3
    iget-object v0, p2, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@5
    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@7
    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opCmpg(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@a
    move-result-object v0

    #@b
    :goto_b
    new-instance v1, Lcom/android/dx/rop/code/PlainInsn;

    #@d
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@f
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@1a
    move-result-object v5

    #@1b
    invoke-static {v4, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@1e
    move-result-object v4

    #@1f
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@22
    invoke-direct {p0, v1}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@25
    return-void

    #@26
    :cond_26
    const/4 v0, -0x1

    #@27
    if-ne p4, v0, :cond_32

    #@29
    iget-object v0, p2, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@2b
    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@2d
    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opCmpl(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@30
    move-result-object v0

    #@31
    goto :goto_b

    #@32
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@34
    new-instance v1, Ljava/lang/StringBuilder;

    #@36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@39
    const-string v2, "expected 1 or -1 but was "

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0
.end method

.method public compareLongs(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    #@2
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CMPL_LONG:Lcom/android/dx/rop/code/Rop;

    #@4
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@6
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@11
    move-result-object v5

    #@12
    invoke-static {v4, v5}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@15
    move-result-object v4

    #@16
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@19
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@1c
    return-void
.end method

.method public getParameter(ILcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;)",
            "Lcom/google/dexmaker/Local",
            "<TT;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/Code;->thisLocal:Lcom/google/dexmaker/Local;

    #@2
    if-eqz v0, :cond_6

    #@4
    add-int/lit8 p1, p1, 0x1

    #@6
    :cond_6
    iget-object v0, p0, Lcom/google/dexmaker/Code;->parameters:Ljava/util/List;

    #@8
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/google/dexmaker/Local;

    #@e
    invoke-direct {p0, v0, p2}, Lcom/google/dexmaker/Code;->coerce(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public getThis(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;)",
            "Lcom/google/dexmaker/Local",
            "<TT;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/Code;->thisLocal:Lcom/google/dexmaker/Local;

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "static methods cannot access \'this\'"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/google/dexmaker/Code;->thisLocal:Lcom/google/dexmaker/Local;

    #@e
    invoke-direct {p0, v0, p1}, Lcom/google/dexmaker/Code;->coerce(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public iget(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/FieldId",
            "<TD;TV;>;",
            "Lcom/google/dexmaker/Local",
            "<TV;>;",
            "Lcom/google/dexmaker/Local",
            "<TD;>;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    #@2
    iget-object v1, p2, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@4
    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@6
    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opGetField(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@c
    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@f
    move-result-object v3

    #@10
    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@13
    move-result-object v3

    #@14
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@16
    iget-object v5, p1, Lcom/google/dexmaker/FieldId;->constant:Lcom/android/dx/rop/cst/CstFieldRef;

    #@18
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    #@1b
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@1e
    const/4 v0, 0x1

    #@1f
    invoke-direct {p0, p2, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    #@22
    return-void
.end method

.method initializeLocals()V
    .registers 13

    #@0
    const/4 v7, 0x0

    #@1
    iget-boolean v0, p0, Lcom/google/dexmaker/Code;->localsInitialized:Z

    #@3
    if-eqz v0, :cond_b

    #@5
    new-instance v0, Ljava/lang/AssertionError;

    #@7
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@a
    throw v0

    #@b
    :cond_b
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Lcom/google/dexmaker/Code;->localsInitialized:Z

    #@e
    iget-object v0, p0, Lcom/google/dexmaker/Code;->locals:Ljava/util/List;

    #@10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v1

    #@14
    move v6, v7

    #@15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_28

    #@1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/google/dexmaker/Local;

    #@21
    invoke-virtual {v0, v6}, Lcom/google/dexmaker/Local;->initialize(I)I

    #@24
    move-result v0

    #@25
    add-int/2addr v0, v6

    #@26
    move v6, v0

    #@27
    goto :goto_15

    #@28
    :cond_28
    new-instance v9, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@2d
    iget-object v0, p0, Lcom/google/dexmaker/Code;->parameters:Ljava/util/List;

    #@2f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v10

    #@33
    move v8, v6

    #@34
    :goto_34
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_67

    #@3a
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    move-object v3, v0

    #@3f
    check-cast v3, Lcom/google/dexmaker/Local;

    #@41
    sub-int v0, v8, v6

    #@43
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v3, v8}, Lcom/google/dexmaker/Local;->initialize(I)I

    #@4a
    move-result v11

    #@4b
    new-instance v0, Lcom/android/dx/rop/code/PlainCstInsn;

    #@4d
    iget-object v1, v3, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@4f
    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@51
    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opMoveParam(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@54
    move-result-object v1

    #@55
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@57
    invoke-virtual {v3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@5a
    move-result-object v3

    #@5b
    sget-object v4, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@5d
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    #@60
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@63
    add-int v0, v8, v11

    #@65
    move v8, v0

    #@66
    goto :goto_34

    #@67
    :cond_67
    iget-object v0, p0, Lcom/google/dexmaker/Code;->labels:Ljava/util/List;

    #@69
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6c
    move-result-object v0

    #@6d
    check-cast v0, Lcom/google/dexmaker/Label;

    #@6f
    iget-object v0, v0, Lcom/google/dexmaker/Label;->instructions:Ljava/util/List;

    #@71
    invoke-interface {v0, v7, v9}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    #@74
    return-void
.end method

.method public instanceOfType(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/TypeId;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    #@2
    sget-object v1, Lcom/android/dx/rop/code/Rops;->INSTANCE_OF:Lcom/android/dx/rop/code/Rop;

    #@4
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@6
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@9
    move-result-object v3

    #@a
    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@d
    move-result-object v3

    #@e
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@10
    iget-object v5, p3, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    #@12
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    #@15
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@18
    const/4 v0, 0x1

    #@19
    invoke-direct {p0, p1, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    #@1c
    return-void
.end method

.method public varargs invokeDirect(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/MethodId",
            "<TD;TR;>;",
            "Lcom/google/dexmaker/Local",
            "<-TR;>;",
            "Lcom/google/dexmaker/Local",
            "<+TD;>;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p1, v0}, Lcom/google/dexmaker/MethodId;->prototype(Z)Lcom/android/dx/rop/type/Prototype;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opInvokeDirect(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/code/Rop;

    #@8
    move-result-object v1

    #@9
    move-object v0, p0

    #@a
    move-object v2, p1

    #@b
    move-object v3, p2

    #@c
    move-object v4, p3

    #@d
    move-object v5, p4

    #@e
    invoke-direct/range {v0 .. v5}, Lcom/google/dexmaker/Code;->invoke(Lcom/android/dx/rop/code/Rop;Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    #@11
    return-void
.end method

.method public varargs invokeInterface(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/MethodId",
            "<TD;TR;>;",
            "Lcom/google/dexmaker/Local",
            "<-TR;>;",
            "Lcom/google/dexmaker/Local",
            "<+TD;>;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p1, v0}, Lcom/google/dexmaker/MethodId;->prototype(Z)Lcom/android/dx/rop/type/Prototype;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opInvokeInterface(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/code/Rop;

    #@8
    move-result-object v1

    #@9
    move-object v0, p0

    #@a
    move-object v2, p1

    #@b
    move-object v3, p2

    #@c
    move-object v4, p3

    #@d
    move-object v5, p4

    #@e
    invoke-direct/range {v0 .. v5}, Lcom/google/dexmaker/Code;->invoke(Lcom/android/dx/rop/code/Rop;Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    #@11
    return-void
.end method

.method public varargs invokeStatic(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/MethodId",
            "<*TR;>;",
            "Lcom/google/dexmaker/Local",
            "<-TR;>;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p1, v0}, Lcom/google/dexmaker/MethodId;->prototype(Z)Lcom/android/dx/rop/type/Prototype;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opInvokeStatic(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/code/Rop;

    #@8
    move-result-object v1

    #@9
    const/4 v4, 0x0

    #@a
    move-object v0, p0

    #@b
    move-object v2, p1

    #@c
    move-object v3, p2

    #@d
    move-object v5, p3

    #@e
    invoke-direct/range {v0 .. v5}, Lcom/google/dexmaker/Code;->invoke(Lcom/android/dx/rop/code/Rop;Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    #@11
    return-void
.end method

.method public varargs invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/MethodId",
            "<TD;TR;>;",
            "Lcom/google/dexmaker/Local",
            "<-TR;>;",
            "Lcom/google/dexmaker/Local",
            "<+TD;>;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p1, v0}, Lcom/google/dexmaker/MethodId;->prototype(Z)Lcom/android/dx/rop/type/Prototype;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opInvokeSuper(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/code/Rop;

    #@8
    move-result-object v1

    #@9
    move-object v0, p0

    #@a
    move-object v2, p1

    #@b
    move-object v3, p2

    #@c
    move-object v4, p3

    #@d
    move-object v5, p4

    #@e
    invoke-direct/range {v0 .. v5}, Lcom/google/dexmaker/Code;->invoke(Lcom/android/dx/rop/code/Rop;Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    #@11
    return-void
.end method

.method public invokeSuperNoArguments(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/MethodId",
            "<TD;TR;>;",
            "Lcom/google/dexmaker/Local",
            "<-TR;>;",
            "Lcom/google/dexmaker/Local",
            "<+TD;>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Lcom/google/dexmaker/Local;

    #@3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/dexmaker/Code;->invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    #@6
    return-void
.end method

.method public varargs invokeVirtual(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/MethodId",
            "<TD;TR;>;",
            "Lcom/google/dexmaker/Local",
            "<-TR;>;",
            "Lcom/google/dexmaker/Local",
            "<+TD;>;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p1, v0}, Lcom/google/dexmaker/MethodId;->prototype(Z)Lcom/android/dx/rop/type/Prototype;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opInvokeVirtual(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/code/Rop;

    #@8
    move-result-object v1

    #@9
    move-object v0, p0

    #@a
    move-object v2, p1

    #@b
    move-object v3, p2

    #@c
    move-object v4, p3

    #@d
    move-object v5, p4

    #@e
    invoke-direct/range {v0 .. v5}, Lcom/google/dexmaker/Code;->invoke(Lcom/android/dx/rop/code/Rop;Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    #@11
    return-void
.end method

.method public iput(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/FieldId",
            "<TD;TV;>;",
            "Lcom/google/dexmaker/Local",
            "<TD;>;",
            "Lcom/google/dexmaker/Local",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    #@2
    iget-object v1, p3, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@4
    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@6
    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opPutField(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@c
    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@13
    move-result-object v4

    #@14
    invoke-static {v3, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@17
    move-result-object v3

    #@18
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@1a
    iget-object v5, p1, Lcom/google/dexmaker/FieldId;->constant:Lcom/android/dx/rop/cst/CstFieldRef;

    #@1c
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    #@1f
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@22
    return-void
.end method

.method public jump(Lcom/google/dexmaker/Label;)V
    .registers 7

    #@0
    invoke-direct {p0, p1}, Lcom/google/dexmaker/Code;->adopt(Lcom/google/dexmaker/Label;)V

    #@3
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    #@5
    sget-object v1, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    #@7
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@9
    const/4 v3, 0x0

    #@a
    sget-object v4, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@c
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@f
    invoke-direct {p0, v0, p1}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;Lcom/google/dexmaker/Label;)V

    #@12
    return-void
.end method

.method public loadConstant(Lcom/google/dexmaker/Local;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/Local",
            "<TT;>;TT;)V"
        }
    .end annotation

    #@0
    const/4 v6, 0x1

    #@1
    if-nez p2, :cond_20

    #@3
    sget-object v1, Lcom/android/dx/rop/code/Rops;->CONST_OBJECT_NOTHROW:Lcom/android/dx/rop/code/Rop;

    #@5
    :goto_5
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@8
    move-result v0

    #@9
    if-ne v0, v6, :cond_29

    #@b
    new-instance v0, Lcom/android/dx/rop/code/PlainCstInsn;

    #@d
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@f
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@12
    move-result-object v3

    #@13
    sget-object v4, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@15
    invoke-static {p2}, Lcom/google/dexmaker/Constants;->getConstant(Ljava/lang/Object;)Lcom/android/dx/rop/cst/TypedConstant;

    #@18
    move-result-object v5

    #@19
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    #@1c
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@1f
    :goto_1f
    return-void

    #@20
    :cond_20
    iget-object v0, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@22
    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@24
    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opConst(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@27
    move-result-object v1

    #@28
    goto :goto_5

    #@29
    :cond_29
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    #@2b
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@2d
    sget-object v3, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@2f
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@31
    invoke-static {p2}, Lcom/google/dexmaker/Constants;->getConstant(Ljava/lang/Object;)Lcom/android/dx/rop/cst/TypedConstant;

    #@34
    move-result-object v5

    #@35
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    #@38
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@3b
    invoke-direct {p0, p1, v6}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    #@3e
    goto :goto_1f
.end method

.method public mark(Lcom/google/dexmaker/Label;)V
    .registers 4

    #@0
    invoke-direct {p0, p1}, Lcom/google/dexmaker/Code;->adopt(Lcom/google/dexmaker/Label;)V

    #@3
    iget-boolean v0, p1, Lcom/google/dexmaker/Label;->marked:Z

    #@5
    if-eqz v0, :cond_f

    #@7
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string v1, "already marked"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    :cond_f
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p1, Lcom/google/dexmaker/Label;->marked:Z

    #@12
    iget-object v0, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@14
    if-eqz v0, :cond_19

    #@16
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/Code;->jump(Lcom/google/dexmaker/Label;)V

    #@19
    :cond_19
    iput-object p1, p0, Lcom/google/dexmaker/Code;->currentLabel:Lcom/google/dexmaker/Label;

    #@1b
    return-void
.end method

.method public monitorEnter(Lcom/google/dexmaker/Local;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    #@2
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MONITOR_ENTER:Lcom/android/dx/rop/code/Rop;

    #@4
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@6
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@9
    move-result-object v3

    #@a
    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@d
    move-result-object v3

    #@e
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    #@13
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@16
    return-void
.end method

.method public monitorExit(Lcom/google/dexmaker/Local;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    #@2
    sget-object v1, Lcom/android/dx/rop/code/Rops;->MONITOR_ENTER:Lcom/android/dx/rop/code/Rop;

    #@4
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@6
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@9
    move-result-object v3

    #@a
    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@d
    move-result-object v3

    #@e
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    #@13
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@16
    return-void
.end method

.method public move(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/Local",
            "<TT;>;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    #@2
    iget-object v1, p2, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@4
    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@6
    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opMove(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@c
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@13
    move-result-object v4

    #@14
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@17
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@1a
    return-void
.end method

.method public newArray(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/Local",
            "<TT;>;",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    #@2
    iget-object v1, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@4
    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@6
    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opNewArray(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@c
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@f
    move-result-object v3

    #@10
    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@13
    move-result-object v3

    #@14
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@16
    iget-object v5, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@18
    iget-object v5, v5, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    #@1a
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    #@1d
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@20
    const/4 v0, 0x1

    #@21
    invoke-direct {p0, p1, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    #@24
    return-void
.end method

.method public varargs newInstance(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/MethodId;[Lcom/google/dexmaker/Local;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/Local",
            "<TT;>;",
            "Lcom/google/dexmaker/MethodId",
            "<TT;",
            "Ljava/lang/Void;",
            ">;[",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    #@0
    if-nez p1, :cond_8

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    :cond_8
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    #@a
    sget-object v1, Lcom/android/dx/rop/code/Rops;->NEW_INSTANCE:Lcom/android/dx/rop/code/Rop;

    #@c
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@e
    sget-object v3, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@10
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@12
    iget-object v5, p2, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@14
    iget-object v5, v5, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    #@16
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    #@19
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@1c
    const/4 v0, 0x1

    #@1d
    invoke-direct {p0, p1, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    #@20
    const/4 v0, 0x0

    #@21
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/google/dexmaker/Code;->invokeDirect(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    #@24
    return-void
.end method

.method public newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;)",
            "Lcom/google/dexmaker/Local",
            "<TT;>;"
        }
    .end annotation

    #@0
    iget-boolean v0, p0, Lcom/google/dexmaker/Code;->localsInitialized:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "Cannot allocate locals after adding instructions"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    invoke-static {p0, p1}, Lcom/google/dexmaker/Local;->get(Lcom/google/dexmaker/Code;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Lcom/google/dexmaker/Code;->locals:Ljava/util/List;

    #@12
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@15
    return-object v0
.end method

.method public op(Lcom/google/dexmaker/BinaryOp;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/BinaryOp;",
            "Lcom/google/dexmaker/Local",
            "<TT1;>;",
            "Lcom/google/dexmaker/Local",
            "<TT1;>;",
            "Lcom/google/dexmaker/Local",
            "<TT2;>;)V"
        }
    .end annotation

    #@0
    const/4 v5, 0x1

    #@1
    iget-object v0, p3, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@3
    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@5
    iget-object v1, p4, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@7
    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@9
    invoke-static {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;->make(Lcom/android/dx/rop/type/Type;Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/type/StdTypeList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p1, v0}, Lcom/google/dexmaker/BinaryOp;->rop(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/code/Rop;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {p4}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@18
    move-result-object v2

    #@19
    invoke-static {v1, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v0}, Lcom/android/dx/rop/code/Rop;->getBranchingness()I

    #@20
    move-result v2

    #@21
    if-ne v2, v5, :cond_32

    #@23
    new-instance v2, Lcom/android/dx/rop/code/PlainInsn;

    #@25
    iget-object v3, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@27
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@2a
    move-result-object v4

    #@2b
    invoke-direct {v2, v0, v3, v4, v1}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@2e
    invoke-direct {p0, v2}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@31
    :goto_31
    return-void

    #@32
    :cond_32
    new-instance v2, Lcom/android/dx/rop/code/ThrowingInsn;

    #@34
    iget-object v3, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@36
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@38
    invoke-direct {v2, v0, v3, v1, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    #@3b
    invoke-direct {p0, v2}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@3e
    invoke-direct {p0, p2, v5}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    #@41
    goto :goto_31
.end method

.method public op(Lcom/google/dexmaker/UnaryOp;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/UnaryOp;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;",
            "Lcom/google/dexmaker/Local",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    #@2
    iget-object v1, p3, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@4
    invoke-virtual {p1, v1}, Lcom/google/dexmaker/UnaryOp;->rop(Lcom/google/dexmaker/TypeId;)Lcom/android/dx/rop/code/Rop;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@a
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {p3}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@11
    move-result-object v4

    #@12
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@15
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@18
    return-void
.end method

.method paramSize()I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/Code;->parameters:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v2

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1b

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/google/dexmaker/Local;

    #@14
    invoke-virtual {v0}, Lcom/google/dexmaker/Local;->size()I

    #@17
    move-result v0

    #@18
    add-int/2addr v0, v1

    #@19
    move v1, v0

    #@1a
    goto :goto_8

    #@1b
    :cond_1b
    return v1
.end method

.method public removeCatchClause(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Label;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lcom/google/dexmaker/Label;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/Code;->catchTypes:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    const/4 v1, -0x1

    #@7
    if-ne v0, v1, :cond_22

    #@9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v2, "No catch clause: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    :cond_22
    iget-object v1, p0, Lcom/google/dexmaker/Code;->catchTypes:Ljava/util/List;

    #@24
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@27
    iget-object v1, p0, Lcom/google/dexmaker/Code;->catchTypes:Ljava/util/List;

    #@29
    invoke-direct {p0, v1}, Lcom/google/dexmaker/Code;->toTypeList(Ljava/util/List;)Lcom/android/dx/rop/type/StdTypeList;

    #@2c
    move-result-object v1

    #@2d
    iput-object v1, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@2f
    iget-object v1, p0, Lcom/google/dexmaker/Code;->catchLabels:Ljava/util/List;

    #@31
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Lcom/google/dexmaker/Label;

    #@37
    return-object v0
.end method

.method public returnValue(Lcom/google/dexmaker/Local;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<*>;)V"
        }
    .end annotation

    #@0
    iget-object v0, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@2
    iget-object v1, p0, Lcom/google/dexmaker/Code;->method:Lcom/google/dexmaker/MethodId;

    #@4
    iget-object v1, v1, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    #@6
    invoke-virtual {v0, v1}, Lcom/google/dexmaker/TypeId;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_35

    #@c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v2, "declared "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Lcom/google/dexmaker/Code;->method:Lcom/google/dexmaker/MethodId;

    #@1b
    iget-object v2, v2, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string v2, " but returned "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    :cond_35
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    #@37
    iget-object v1, p1, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@39
    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@3b
    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opReturn(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@3e
    move-result-object v1

    #@3f
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@41
    const/4 v3, 0x0

    #@42
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@45
    move-result-object v4

    #@46
    invoke-static {v4}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@49
    move-result-object v4

    #@4a
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@4d
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@50
    return-void
.end method

.method public returnVoid()V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/Code;->method:Lcom/google/dexmaker/MethodId;

    #@2
    iget-object v0, v0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    #@4
    sget-object v1, Lcom/google/dexmaker/TypeId;->VOID:Lcom/google/dexmaker/TypeId;

    #@6
    invoke-virtual {v0, v1}, Lcom/google/dexmaker/TypeId;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_2f

    #@c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v2, "declared "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Lcom/google/dexmaker/Code;->method:Lcom/google/dexmaker/MethodId;

    #@1b
    iget-object v2, v2, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string v2, " but returned void"

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    :cond_2f
    new-instance v0, Lcom/android/dx/rop/code/PlainInsn;

    #@31
    sget-object v1, Lcom/android/dx/rop/code/Rops;->RETURN_VOID:Lcom/android/dx/rop/code/Rop;

    #@33
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@35
    const/4 v3, 0x0

    #@36
    sget-object v4, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@38
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    #@3b
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@3e
    return-void
.end method

.method public sget(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/FieldId",
            "<*TV;>;",
            "Lcom/google/dexmaker/Local",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    #@2
    iget-object v1, p2, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@4
    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@6
    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opGetStatic(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@c
    sget-object v3, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    #@e
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@10
    iget-object v5, p1, Lcom/google/dexmaker/FieldId;->constant:Lcom/android/dx/rop/cst/CstFieldRef;

    #@12
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    #@15
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@18
    const/4 v0, 0x1

    #@19
    invoke-direct {p0, p2, v0}, Lcom/google/dexmaker/Code;->moveResult(Lcom/google/dexmaker/Local;Z)V

    #@1c
    return-void
.end method

.method public sput(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/FieldId",
            "<*TV;>;",
            "Lcom/google/dexmaker/Local",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingCstInsn;

    #@2
    iget-object v1, p2, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@4
    iget-object v1, v1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@6
    invoke-static {v1}, Lcom/android/dx/rop/code/Rops;->opPutStatic(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    #@9
    move-result-object v1

    #@a
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@c
    invoke-virtual {p2}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@f
    move-result-object v3

    #@10
    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@13
    move-result-object v3

    #@14
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@16
    iget-object v5, p1, Lcom/google/dexmaker/FieldId;->constant:Lcom/android/dx/rop/cst/CstFieldRef;

    #@18
    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    #@1b
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@1e
    return-void
.end method

.method public throwValue(Lcom/google/dexmaker/Local;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Local",
            "<+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/android/dx/rop/code/ThrowingInsn;

    #@2
    sget-object v1, Lcom/android/dx/rop/code/Rops;->THROW:Lcom/android/dx/rop/code/Rop;

    #@4
    iget-object v2, p0, Lcom/google/dexmaker/Code;->sourcePosition:Lcom/android/dx/rop/code/SourcePosition;

    #@6
    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->spec()Lcom/android/dx/rop/code/RegisterSpec;

    #@9
    move-result-object v3

    #@a
    invoke-static {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    #@d
    move-result-object v3

    #@e
    iget-object v4, p0, Lcom/google/dexmaker/Code;->catches:Lcom/android/dx/rop/type/StdTypeList;

    #@10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    #@13
    invoke-direct {p0, v0}, Lcom/google/dexmaker/Code;->addInstruction(Lcom/android/dx/rop/code/Insn;)V

    #@16
    return-void
.end method

.method toBasicBlocks()Lcom/android/dx/rop/code/BasicBlockList;
    .registers 4

    #@0
    iget-boolean v0, p0, Lcom/google/dexmaker/Code;->localsInitialized:Z

    #@2
    if-nez v0, :cond_7

    #@4
    invoke-virtual {p0}, Lcom/google/dexmaker/Code;->initializeLocals()V

    #@7
    :cond_7
    invoke-direct {p0}, Lcom/google/dexmaker/Code;->cleanUpLabels()V

    #@a
    new-instance v2, Lcom/android/dx/rop/code/BasicBlockList;

    #@c
    iget-object v0, p0, Lcom/google/dexmaker/Code;->labels:Ljava/util/List;

    #@e
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@11
    move-result v0

    #@12
    invoke-direct {v2, v0}, Lcom/android/dx/rop/code/BasicBlockList;-><init>(I)V

    #@15
    const/4 v0, 0x0

    #@16
    move v1, v0

    #@17
    :goto_17
    iget-object v0, p0, Lcom/google/dexmaker/Code;->labels:Ljava/util/List;

    #@19
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1c
    move-result v0

    #@1d
    if-ge v1, v0, :cond_32

    #@1f
    iget-object v0, p0, Lcom/google/dexmaker/Code;->labels:Ljava/util/List;

    #@21
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/google/dexmaker/Label;

    #@27
    invoke-virtual {v0}, Lcom/google/dexmaker/Label;->toBasicBlock()Lcom/android/dx/rop/code/BasicBlock;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v2, v1, v0}, Lcom/android/dx/rop/code/BasicBlockList;->set(ILcom/android/dx/rop/code/BasicBlock;)V

    #@2e
    add-int/lit8 v0, v1, 0x1

    #@30
    move v1, v0

    #@31
    goto :goto_17

    #@32
    :cond_32
    return-object v2
.end method
