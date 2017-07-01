.class public final Lcom/google/dexmaker/Local;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final code:Lcom/google/dexmaker/Code;

.field private reg:I

.field private spec:Lcom/android/dx/rop/code/RegisterSpec;

.field final type:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/dexmaker/Code;Lcom/google/dexmaker/TypeId;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Code;",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/google/dexmaker/Local;->reg:I

    #@6
    iput-object p1, p0, Lcom/google/dexmaker/Local;->code:Lcom/google/dexmaker/Code;

    #@8
    iput-object p2, p0, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@a
    return-void
.end method

.method static get(Lcom/google/dexmaker/Code;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/Code;",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;)",
            "Lcom/google/dexmaker/Local",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/dexmaker/Local;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/google/dexmaker/Local;-><init>(Lcom/google/dexmaker/Code;Lcom/google/dexmaker/TypeId;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public getType()Lcom/google/dexmaker/TypeId;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@2
    return-object v0
.end method

.method initialize(I)I
    .registers 3

    #@0
    iput p1, p0, Lcom/google/dexmaker/Local;->reg:I

    #@2
    iget-object v0, p0, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@4
    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@6
    invoke-static {p1, v0}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/dexmaker/Local;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    #@c
    invoke-virtual {p0}, Lcom/google/dexmaker/Local;->size()I

    #@f
    move-result v0

    #@10
    return v0
.end method

.method size()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@2
    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    #@4
    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getCategory()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method spec()Lcom/android/dx/rop/code/RegisterSpec;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/Local;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    if-nez v0, :cond_13

    #@4
    iget-object v0, p0, Lcom/google/dexmaker/Local;->code:Lcom/google/dexmaker/Code;

    #@6
    invoke-virtual {v0}, Lcom/google/dexmaker/Code;->initializeLocals()V

    #@9
    iget-object v0, p0, Lcom/google/dexmaker/Local;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    #@b
    if-nez v0, :cond_13

    #@d
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v0

    #@13
    :cond_13
    iget-object v0, p0, Lcom/google/dexmaker/Local;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    #@15
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "v"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget v1, p0, Lcom/google/dexmaker/Local;->reg:I

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, "("

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lcom/google/dexmaker/Local;->type:Lcom/google/dexmaker/TypeId;

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v1, ")"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method
