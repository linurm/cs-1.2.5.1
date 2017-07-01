.class public Lcom/android/dx/dex/code/LocalList$MakeState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/LocalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MakeState"
.end annotation


# instance fields
.field private endIndices:[I

.field private lastAddress:I

.field private nullResultCount:I

.field private regs:Lcom/android/dx/rop/code/RegisterSpecSet;

.field private final result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/code/LocalList$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 5

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    iput-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@c
    iput v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    #@e
    iput-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@10
    iput-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    #@12
    iput v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->lastAddress:I

    #@14
    return-void
.end method

.method private aboutToProcess(II)V
    .registers 8

    #@0
    const/4 v1, 0x0

    #@1
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    #@3
    if-nez v0, :cond_d

    #@5
    const/4 v0, 0x1

    #@6
    :goto_6
    iget v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->lastAddress:I

    #@8
    if-ne p1, v2, :cond_f

    #@a
    if-nez v0, :cond_f

    #@c
    :cond_c
    :goto_c
    return-void

    #@d
    :cond_d
    move v0, v1

    #@e
    goto :goto_6

    #@f
    :cond_f
    iget v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->lastAddress:I

    #@11
    if-ge p1, v2, :cond_1b

    #@13
    new-instance v0, Ljava/lang/RuntimeException;

    #@15
    const-string v1, "shouldn\'t happen"

    #@17
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    :cond_1b
    if-nez v0, :cond_22

    #@1d
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    #@1f
    array-length v2, v2

    #@20
    if-lt p2, v2, :cond_c

    #@22
    :cond_22
    add-int/lit8 v2, p2, 0x1

    #@24
    new-instance v3, Lcom/android/dx/rop/code/RegisterSpecSet;

    #@26
    invoke-direct {v3, v2}, Lcom/android/dx/rop/code/RegisterSpecSet;-><init>(I)V

    #@29
    new-array v2, v2, [I

    #@2b
    const/4 v4, -0x1

    #@2c
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    #@2f
    if-nez v0, :cond_3e

    #@31
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@33
    invoke-virtual {v3, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->putAll(Lcom/android/dx/rop/code/RegisterSpecSet;)V

    #@36
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    #@38
    iget-object v4, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    #@3a
    array-length v4, v4

    #@3b
    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3e
    :cond_3e
    iput-object v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@40
    iput-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    #@42
    goto :goto_c
.end method

.method private add(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 7

    #@0
    invoke-virtual {p3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@6
    new-instance v2, Lcom/android/dx/dex/code/LocalList$Entry;

    #@8
    invoke-direct {v2, p1, p2, p3}, Lcom/android/dx/dex/code/LocalList$Entry;-><init>(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@b
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    sget-object v1, Lcom/android/dx/dex/code/LocalList$Disposition;->START:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@10
    if-ne p2, v1, :cond_1d

    #@12
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@14
    invoke-virtual {v1, p3}, Lcom/android/dx/rop/code/RegisterSpecSet;->put(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@17
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    #@19
    const/4 v2, -0x1

    #@1a
    aput v2, v1, v0

    #@1c
    :goto_1c
    return-void

    #@1d
    :cond_1d
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@1f
    invoke-virtual {v1, p3}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@22
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    #@24
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@29
    move-result v2

    #@2a
    add-int/lit8 v2, v2, -0x1

    #@2c
    aput v2, v1, v0

    #@2e
    goto :goto_1c
.end method

.method private addOrUpdateEnd(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 7

    #@0
    sget-object v0, Lcom/android/dx/dex/code/LocalList$Disposition;->START:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@2
    if-ne p2, v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string v1, "shouldn\'t happen"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    invoke-virtual {p3}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@f
    move-result v0

    #@10
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    #@12
    aget v1, v1, v0

    #@14
    if-ltz v1, :cond_3d

    #@16
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lcom/android/dx/dex/code/LocalList$Entry;

    #@1e
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    #@21
    move-result v2

    #@22
    if-ne v2, p1, :cond_3d

    #@24
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegisterSpec()Lcom/android/dx/rop/code/RegisterSpec;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p3}, Lcom/android/dx/rop/code/RegisterSpec;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_3d

    #@2e
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v0, p2}, Lcom/android/dx/dex/code/LocalList$Entry;->withDisposition(Lcom/android/dx/dex/code/LocalList$Disposition;)Lcom/android/dx/dex/code/LocalList$Entry;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@37
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@39
    invoke-virtual {v0, p3}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@3c
    :goto_3c
    return-void

    #@3d
    :cond_3d
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/dx/dex/code/LocalList$MakeState;->endLocal(ILcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/dex/code/LocalList$Disposition;)V

    #@40
    goto :goto_3c
.end method

.method private checkForEmptyRange(ILcom/android/dx/rop/code/RegisterSpec;)Z
    .registers 10

    #@0
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v0

    #@9
    add-int/lit8 v0, v0, -0x1

    #@b
    move v4, v0

    #@c
    :goto_c
    if-ltz v4, :cond_2a

    #@e
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Lcom/android/dx/dex/code/LocalList$Entry;

    #@16
    if-nez v0, :cond_1c

    #@18
    :cond_18
    add-int/lit8 v0, v4, -0x1

    #@1a
    move v4, v0

    #@1b
    goto :goto_c

    #@1c
    :cond_1c
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    #@1f
    move-result v5

    #@20
    if-eq v5, p1, :cond_24

    #@22
    move v0, v1

    #@23
    :goto_23
    return v0

    #@24
    :cond_24
    invoke-virtual {v0, p2}, Lcom/android/dx/dex/code/LocalList$Entry;->matches(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_18

    #@2a
    :cond_2a
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@2c
    invoke-virtual {v0, p2}, Lcom/android/dx/rop/code/RegisterSpecSet;->remove(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@2f
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@34
    iget v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    #@36
    add-int/lit8 v0, v0, 0x1

    #@38
    iput v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    #@3a
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3d
    move-result v5

    #@3e
    add-int/lit8 v0, v4, -0x1

    #@40
    move v6, v0

    #@41
    move-object v0, v3

    #@42
    move v3, v6

    #@43
    :goto_43
    if-ltz v3, :cond_5d

    #@45
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4a
    move-result-object v0

    #@4b
    check-cast v0, Lcom/android/dx/dex/code/LocalList$Entry;

    #@4d
    if-nez v0, :cond_52

    #@4f
    :cond_4f
    add-int/lit8 v3, v3, -0x1

    #@51
    goto :goto_43

    #@52
    :cond_52
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegisterSpec()Lcom/android/dx/rop/code/RegisterSpec;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@59
    move-result v4

    #@5a
    if-ne v4, v5, :cond_4f

    #@5c
    move v1, v2

    #@5d
    :cond_5d
    if-eqz v1, :cond_74

    #@5f
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    #@61
    aput v3, v1, v5

    #@63
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    #@66
    move-result v1

    #@67
    if-ne v1, p1, :cond_74

    #@69
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@6b
    sget-object v4, Lcom/android/dx/dex/code/LocalList$Disposition;->END_SIMPLY:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@6d
    invoke-virtual {v0, v4}, Lcom/android/dx/dex/code/LocalList$Entry;->withDisposition(Lcom/android/dx/dex/code/LocalList$Disposition;)Lcom/android/dx/dex/code/LocalList$Entry;

    #@70
    move-result-object v0

    #@71
    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@74
    :cond_74
    move v0, v2

    #@75
    goto :goto_23
.end method

.method private static filterSpec(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;
    .registers 3

    #@0
    if-eqz p0, :cond_10

    #@2
    invoke-virtual {p0}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    #@8
    if-ne v0, v1, :cond_10

    #@a
    sget-object v0, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    #@c
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/code/RegisterSpec;->withType(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    #@f
    move-result-object p0

    #@10
    :cond_10
    return-object p0
.end method


# virtual methods
.method public endLocal(ILcom/android/dx/rop/code/RegisterSpec;)V
    .registers 4

    #@0
    sget-object v0, Lcom/android/dx/dex/code/LocalList$Disposition;->END_SIMPLY:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->endLocal(ILcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/dex/code/LocalList$Disposition;)V

    #@5
    return-void
.end method

.method public endLocal(ILcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/dex/code/LocalList$Disposition;)V
    .registers 7

    #@0
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3
    move-result v0

    #@4
    invoke-static {p2}, Lcom/android/dx/dex/code/LocalList$MakeState;->filterSpec(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    #@b
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    #@d
    aget v0, v2, v0

    #@f
    if-ltz v0, :cond_12

    #@11
    :cond_11
    :goto_11
    return-void

    #@12
    :cond_12
    invoke-direct {p0, p1, v1}, Lcom/android/dx/dex/code/LocalList$MakeState;->checkForEmptyRange(ILcom/android/dx/rop/code/RegisterSpec;)Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_11

    #@18
    invoke-direct {p0, p1, p3, v1}, Lcom/android/dx/dex/code/LocalList$MakeState;->add(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@1b
    goto :goto_11
.end method

.method public finish()Lcom/android/dx/dex/code/LocalList;
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    const v0, 0x7fffffff

    #@4
    invoke-direct {p0, v0, v2}, Lcom/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    #@7
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    iget v1, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    #@f
    sub-int v3, v0, v1

    #@11
    if-nez v3, :cond_16

    #@13
    sget-object v0, Lcom/android/dx/dex/code/LocalList;->EMPTY:Lcom/android/dx/dex/code/LocalList;

    #@15
    :goto_15
    return-object v0

    #@16
    :cond_16
    new-array v4, v3, [Lcom/android/dx/dex/code/LocalList$Entry;

    #@18
    if-ne v0, v3, :cond_31

    #@1a
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1f
    :cond_1f
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    #@22
    new-instance v0, Lcom/android/dx/dex/code/LocalList;

    #@24
    invoke-direct {v0, v3}, Lcom/android/dx/dex/code/LocalList;-><init>(I)V

    #@27
    :goto_27
    if-ge v2, v3, :cond_4c

    #@29
    aget-object v1, v4, v2

    #@2b
    invoke-virtual {v0, v2, v1}, Lcom/android/dx/dex/code/LocalList;->set(ILcom/android/dx/dex/code/LocalList$Entry;)V

    #@2e
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_27

    #@31
    :cond_31
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v5

    #@37
    move v1, v2

    #@38
    :goto_38
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_1f

    #@3e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Lcom/android/dx/dex/code/LocalList$Entry;

    #@44
    if-eqz v0, :cond_50

    #@46
    aput-object v0, v4, v1

    #@48
    add-int/lit8 v0, v1, 0x1

    #@4a
    :goto_4a
    move v1, v0

    #@4b
    goto :goto_38

    #@4c
    :cond_4c
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList;->setImmutable()V

    #@4f
    goto :goto_15

    #@50
    :cond_50
    move v0, v1

    #@51
    goto :goto_4a
.end method

.method public snapshot(ILcom/android/dx/rop/code/RegisterSpecSet;)V
    .registers 8

    #@0
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpecSet;->getMaxSize()I

    #@3
    move-result v1

    #@4
    add-int/lit8 v0, v1, -0x1

    #@6
    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    if-ge v0, v1, :cond_37

    #@c
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@e
    invoke-virtual {v2, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {p2, v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@15
    move-result-object v3

    #@16
    invoke-static {v3}, Lcom/android/dx/dex/code/LocalList$MakeState;->filterSpec(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    #@19
    move-result-object v3

    #@1a
    if-nez v2, :cond_24

    #@1c
    if-eqz v3, :cond_21

    #@1e
    invoke-virtual {p0, p1, v3}, Lcom/android/dx/dex/code/LocalList$MakeState;->startLocal(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@21
    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_a

    #@24
    :cond_24
    if-nez v3, :cond_2a

    #@26
    invoke-virtual {p0, p1, v2}, Lcom/android/dx/dex/code/LocalList$MakeState;->endLocal(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@29
    goto :goto_21

    #@2a
    :cond_2a
    invoke-virtual {v3, v2}, Lcom/android/dx/rop/code/RegisterSpec;->equalsUsingSimpleType(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@2d
    move-result v4

    #@2e
    if-nez v4, :cond_21

    #@30
    invoke-virtual {p0, p1, v2}, Lcom/android/dx/dex/code/LocalList$MakeState;->endLocal(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@33
    invoke-virtual {p0, p1, v3}, Lcom/android/dx/dex/code/LocalList$MakeState;->startLocal(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@36
    goto :goto_21

    #@37
    :cond_37
    return-void
.end method

.method public startLocal(ILcom/android/dx/rop/code/RegisterSpec;)V
    .registers 8

    #@0
    invoke-virtual {p2}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@3
    move-result v1

    #@4
    invoke-static {p2}, Lcom/android/dx/dex/code/LocalList$MakeState;->filterSpec(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    #@7
    move-result-object v2

    #@8
    invoke-direct {p0, p1, v1}, Lcom/android/dx/dex/code/LocalList$MakeState;->aboutToProcess(II)V

    #@b
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@d
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v2, v0}, Lcom/android/dx/rop/code/RegisterSpec;->equalsUsingSimpleType(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_18

    #@17
    :goto_17
    return-void

    #@18
    :cond_18
    iget-object v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@1a
    invoke-virtual {v3, v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->findMatchingLocal(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    #@1d
    move-result-object v3

    #@1e
    if-eqz v3, :cond_25

    #@20
    sget-object v4, Lcom/android/dx/dex/code/LocalList$Disposition;->END_MOVED:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@22
    invoke-direct {p0, p1, v4, v3}, Lcom/android/dx/dex/code/LocalList$MakeState;->addOrUpdateEnd(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@25
    :cond_25
    iget-object v3, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    #@27
    aget v3, v3, v1

    #@29
    if-eqz v0, :cond_62

    #@2b
    sget-object v3, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@2d
    invoke-direct {p0, p1, v3, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->add(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@30
    :cond_30
    :goto_30
    if-lez v1, :cond_47

    #@32
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@34
    add-int/lit8 v3, v1, -0x1

    #@36
    invoke-virtual {v0, v3}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@39
    move-result-object v0

    #@3a
    if-eqz v0, :cond_47

    #@3c
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->isCategory2()Z

    #@3f
    move-result v3

    #@40
    if-eqz v3, :cond_47

    #@42
    sget-object v3, Lcom/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_NEXT:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@44
    invoke-direct {p0, p1, v3, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->addOrUpdateEnd(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@47
    :cond_47
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpec;->isCategory2()Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_5c

    #@4d
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@4f
    add-int/lit8 v1, v1, 0x1

    #@51
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@54
    move-result-object v0

    #@55
    if-eqz v0, :cond_5c

    #@57
    sget-object v1, Lcom/android/dx/dex/code/LocalList$Disposition;->END_CLOBBERED_BY_PREV:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@59
    invoke-direct {p0, p1, v1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->addOrUpdateEnd(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@5c
    :cond_5c
    sget-object v0, Lcom/android/dx/dex/code/LocalList$Disposition;->START:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@5e
    invoke-direct {p0, p1, v0, v2}, Lcom/android/dx/dex/code/LocalList$MakeState;->add(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@61
    goto :goto_17

    #@62
    :cond_62
    if-ltz v3, :cond_30

    #@64
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@66
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@69
    move-result-object v0

    #@6a
    check-cast v0, Lcom/android/dx/dex/code/LocalList$Entry;

    #@6c
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    #@6f
    move-result v4

    #@70
    if-ne v4, p1, :cond_30

    #@72
    invoke-virtual {v0, v2}, Lcom/android/dx/dex/code/LocalList$Entry;->matches(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@75
    move-result v4

    #@76
    if-eqz v4, :cond_8f

    #@78
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@7a
    const/4 v4, 0x0

    #@7b
    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@7e
    iget v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    #@80
    add-int/lit8 v0, v0, 0x1

    #@82
    iput v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->nullResultCount:I

    #@84
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->regs:Lcom/android/dx/rop/code/RegisterSpecSet;

    #@86
    invoke-virtual {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecSet;->put(Lcom/android/dx/rop/code/RegisterSpec;)V

    #@89
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->endIndices:[I

    #@8b
    const/4 v2, -0x1

    #@8c
    aput v2, v0, v1

    #@8e
    goto :goto_17

    #@8f
    :cond_8f
    sget-object v4, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@91
    invoke-virtual {v0, v4}, Lcom/android/dx/dex/code/LocalList$Entry;->withDisposition(Lcom/android/dx/dex/code/LocalList$Disposition;)Lcom/android/dx/dex/code/LocalList$Entry;

    #@94
    move-result-object v0

    #@95
    iget-object v4, p0, Lcom/android/dx/dex/code/LocalList$MakeState;->result:Ljava/util/ArrayList;

    #@97
    invoke-virtual {v4, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@9a
    goto :goto_30
.end method
