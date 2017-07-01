.class public Lcom/android/dx/dex/code/LocalList$Entry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/LocalList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/dex/code/LocalList$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final address:I

.field private final disposition:Lcom/android/dx/dex/code/LocalList$Disposition;

.field private final spec:Lcom/android/dx/rop/code/RegisterSpec;

.field private final type:Lcom/android/dx/rop/cst/CstType;


# direct methods
.method public constructor <init>(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-gez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "address < 0"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    if-nez p2, :cond_17

    #@f
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string v1, "disposition == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    :try_start_17
    invoke-virtual {p3}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@1a
    move-result-object v0

    #@1b
    if-nez v0, :cond_2e

    #@1d
    new-instance v0, Ljava/lang/NullPointerException;

    #@1f
    const-string v1, "spec.getLocalItem() == null"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
    :try_end_25
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_25} :catch_25

    #@25
    :catch_25
    move-exception v0

    #@26
    new-instance v0, Ljava/lang/NullPointerException;

    #@28
    const-string v1, "spec == null"

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    :cond_2e
    iput p1, p0, Lcom/android/dx/dex/code/LocalList$Entry;->address:I

    #@30
    iput-object p2, p0, Lcom/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@32
    iput-object p3, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    #@34
    invoke-virtual {p3}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    #@37
    move-result-object v0

    #@38
    invoke-static {v0}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->type:Lcom/android/dx/rop/cst/CstType;

    #@3e
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/dex/code/LocalList$Entry;)I
    .registers 6

    #@0
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x1

    #@2
    iget v2, p0, Lcom/android/dx/dex/code/LocalList$Entry;->address:I

    #@4
    iget v3, p1, Lcom/android/dx/dex/code/LocalList$Entry;->address:I

    #@6
    if-ge v2, v3, :cond_9

    #@8
    :cond_8
    :goto_8
    return v0

    #@9
    :cond_9
    iget v2, p0, Lcom/android/dx/dex/code/LocalList$Entry;->address:I

    #@b
    iget v3, p1, Lcom/android/dx/dex/code/LocalList$Entry;->address:I

    #@d
    if-gt v2, v3, :cond_1b

    #@f
    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    #@12
    move-result v2

    #@13
    invoke-virtual {p1}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    #@16
    move-result v3

    #@17
    if-eq v2, v3, :cond_1d

    #@19
    if-eqz v2, :cond_8

    #@1b
    :cond_1b
    move v0, v1

    #@1c
    goto :goto_8

    #@1d
    :cond_1d
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    #@1f
    iget-object v1, p1, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    #@21
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/code/RegisterSpec;->compareTo(Lcom/android/dx/rop/code/RegisterSpec;)I

    #@24
    move-result v0

    #@25
    goto :goto_8
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/dex/code/LocalList$Entry;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/LocalList$Entry;->compareTo(Lcom/android/dx/dex/code/LocalList$Entry;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/android/dx/dex/code/LocalList$Entry;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/android/dx/dex/code/LocalList$Entry;

    #@8
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/LocalList$Entry;->compareTo(Lcom/android/dx/dex/code/LocalList$Entry;)I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_5

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_5
.end method

.method public getAddress()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->address:I

    #@2
    return v0
.end method

.method public getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@2
    return-object v0
.end method

.method public getName()Lcom/android/dx/rop/cst/CstString;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/code/LocalItem;->getName()Lcom/android/dx/rop/cst/CstString;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getRegister()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getRegisterSpec()Lcom/android/dx/rop/code/RegisterSpec;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    return-object v0
.end method

.method public getSignature()Lcom/android/dx/rop/cst/CstString;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpec;->getLocalItem()Lcom/android/dx/rop/code/LocalItem;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/code/LocalItem;->getSignature()Lcom/android/dx/rop/cst/CstString;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getType()Lcom/android/dx/rop/cst/CstType;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->type:Lcom/android/dx/rop/cst/CstType;

    #@2
    return-object v0
.end method

.method public isStart()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@2
    sget-object v1, Lcom/android/dx/dex/code/LocalList$Disposition;->START:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@4
    if-ne v0, v1, :cond_8

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

.method public matches(Lcom/android/dx/dex/code/LocalList$Entry;)Z
    .registers 3

    #@0
    iget-object v0, p1, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/LocalList$Entry;->matches(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public matches(Lcom/android/dx/rop/code/RegisterSpec;)Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/RegisterSpec;->equalsUsingSimpleType(Lcom/android/dx/rop/code/RegisterSpec;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget v1, p0, Lcom/android/dx/dex/code/LocalList$Entry;->address:I

    #@7
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string v1, " "

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string v1, " "

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0
.end method

.method public withDisposition(Lcom/android/dx/dex/code/LocalList$Disposition;)Lcom/android/dx/dex/code/LocalList$Entry;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalList$Entry;->disposition:Lcom/android/dx/dex/code/LocalList$Disposition;

    #@2
    if-ne p1, v0, :cond_5

    #@4
    :goto_4
    return-object p0

    #@5
    :cond_5
    new-instance v0, Lcom/android/dx/dex/code/LocalList$Entry;

    #@7
    iget v1, p0, Lcom/android/dx/dex/code/LocalList$Entry;->address:I

    #@9
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalList$Entry;->spec:Lcom/android/dx/rop/code/RegisterSpec;

    #@b
    invoke-direct {v0, v1, p1, v2}, Lcom/android/dx/dex/code/LocalList$Entry;-><init>(ILcom/android/dx/dex/code/LocalList$Disposition;Lcom/android/dx/rop/code/RegisterSpec;)V

    #@e
    move-object p0, v0

    #@f
    goto :goto_4
.end method
