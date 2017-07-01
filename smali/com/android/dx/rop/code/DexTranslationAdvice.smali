.class public final Lcom/android/dx/rop/code/DexTranslationAdvice;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/rop/code/TranslationAdvice;


# static fields
.field private static final MIN_INVOKE_IN_ORDER:I = 0x6

.field public static final NO_SOURCES_IN_ORDER:Lcom/android/dx/rop/code/DexTranslationAdvice;

.field public static final THE_ONE:Lcom/android/dx/rop/code/DexTranslationAdvice;


# instance fields
.field private final disableSourcesInOrder:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/rop/code/DexTranslationAdvice;

    #@2
    invoke-direct {v0}, Lcom/android/dx/rop/code/DexTranslationAdvice;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/rop/code/DexTranslationAdvice;->THE_ONE:Lcom/android/dx/rop/code/DexTranslationAdvice;

    #@7
    new-instance v0, Lcom/android/dx/rop/code/DexTranslationAdvice;

    #@9
    const/4 v1, 0x1

    #@a
    invoke-direct {v0, v1}, Lcom/android/dx/rop/code/DexTranslationAdvice;-><init>(Z)V

    #@d
    sput-object v0, Lcom/android/dx/rop/code/DexTranslationAdvice;->NO_SOURCES_IN_ORDER:Lcom/android/dx/rop/code/DexTranslationAdvice;

    #@f
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/dx/rop/code/DexTranslationAdvice;->disableSourcesInOrder:Z

    #@6
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-boolean p1, p0, Lcom/android/dx/rop/code/DexTranslationAdvice;->disableSourcesInOrder:Z

    #@5
    return-void
.end method

.method private totalRopWidth(Lcom/android/dx/rop/code/RegisterSpecList;)I
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@4
    move-result v2

    #@5
    move v1, v0

    #@6
    :goto_6
    if-ge v0, v2, :cond_14

    #@8
    invoke-virtual {p1, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    #@f
    move-result v3

    #@10
    add-int/2addr v1, v3

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_6

    #@14
    :cond_14
    return v1
.end method


# virtual methods
.method public getMaxOptimalRegisterCount()I
    .registers 2

    #@0
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method public hasConstantOperation(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Z
    .registers 7

    #@0
    const/4 v1, 0x0

    #@1
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@4
    move-result-object v0

    #@5
    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    #@7
    if-eq v0, v2, :cond_b

    #@9
    move v0, v1

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    invoke-virtual {p3}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@e
    move-result-object v0

    #@f
    instance-of v0, v0, Lcom/android/dx/rop/cst/CstInteger;

    #@11
    if-nez v0, :cond_30

    #@13
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@16
    move-result-object v0

    #@17
    instance-of v0, v0, Lcom/android/dx/rop/cst/CstInteger;

    #@19
    if-eqz v0, :cond_2e

    #@1b
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@1e
    move-result v0

    #@1f
    const/16 v2, 0xf

    #@21
    if-ne v0, v2, :cond_2e

    #@23
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Lcom/android/dx/rop/cst/CstInteger;

    #@29
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->fitsIn16Bits()Z

    #@2c
    move-result v0

    #@2d
    goto :goto_a

    #@2e
    :cond_2e
    move v0, v1

    #@2f
    goto :goto_a

    #@30
    :cond_30
    invoke-virtual {p3}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Lcom/android/dx/rop/cst/CstInteger;

    #@36
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    #@39
    move-result v2

    #@3a
    packed-switch v2, :pswitch_data_58

    #@3d
    :pswitch_3d
    move v0, v1

    #@3e
    goto :goto_a

    #@3f
    :pswitch_3f
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->fitsIn16Bits()Z

    #@42
    move-result v0

    #@43
    goto :goto_a

    #@44
    :pswitch_44
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->fitsIn8Bits()Z

    #@47
    move-result v0

    #@48
    goto :goto_a

    #@49
    :pswitch_49
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    #@4c
    move-result v0

    #@4d
    neg-int v0, v0

    #@4e
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    #@51
    move-result-object v0

    #@52
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstInteger;->fitsIn16Bits()Z

    #@55
    move-result v0

    #@56
    goto :goto_a

    #@57
    nop

    #@58
    :pswitch_data_58
    .packed-switch 0xe
        :pswitch_3f
        :pswitch_49
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3d
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_44
        :pswitch_44
        :pswitch_44
    .end packed-switch
.end method

.method public requiresSourcesInOrder(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/RegisterSpecList;)Z
    .registers 5

    #@0
    iget-boolean v0, p0, Lcom/android/dx/rop/code/DexTranslationAdvice;->disableSourcesInOrder:Z

    #@2
    if-nez v0, :cond_13

    #@4
    invoke-virtual {p1}, Lcom/android/dx/rop/code/Rop;->isCallLike()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_13

    #@a
    invoke-direct {p0, p2}, Lcom/android/dx/rop/code/DexTranslationAdvice;->totalRopWidth(Lcom/android/dx/rop/code/RegisterSpecList;)I

    #@d
    move-result v0

    #@e
    const/4 v1, 0x6

    #@f
    if-lt v0, v1, :cond_13

    #@11
    const/4 v0, 0x1

    #@12
    :goto_12
    return v0

    #@13
    :cond_13
    const/4 v0, 0x0

    #@14
    goto :goto_12
.end method
