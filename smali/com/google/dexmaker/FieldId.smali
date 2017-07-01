.class public final Lcom/google/dexmaker/FieldId;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final constant:Lcom/android/dx/rop/cst/CstFieldRef;

.field final declaringType:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<TD;>;"
        }
    .end annotation
.end field

.field final name:Ljava/lang/String;

.field final nat:Lcom/android/dx/rop/cst/CstNat;

.field final type:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<TD;>;",
            "Lcom/google/dexmaker/TypeId",
            "<TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-eqz p1, :cond_9

    #@5
    if-eqz p2, :cond_9

    #@7
    if-nez p3, :cond_f

    #@9
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    #@b
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@e
    throw v0

    #@f
    :cond_f
    iput-object p1, p0, Lcom/google/dexmaker/FieldId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@11
    iput-object p2, p0, Lcom/google/dexmaker/FieldId;->type:Lcom/google/dexmaker/TypeId;

    #@13
    iput-object p3, p0, Lcom/google/dexmaker/FieldId;->name:Ljava/lang/String;

    #@15
    new-instance v0, Lcom/android/dx/rop/cst/CstNat;

    #@17
    new-instance v1, Lcom/android/dx/rop/cst/CstString;

    #@19
    invoke-direct {v1, p3}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    #@1c
    new-instance v2, Lcom/android/dx/rop/cst/CstString;

    #@1e
    iget-object v3, p2, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    #@20
    invoke-direct {v2, v3}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    #@23
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/cst/CstNat;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;)V

    #@26
    iput-object v0, p0, Lcom/google/dexmaker/FieldId;->nat:Lcom/android/dx/rop/cst/CstNat;

    #@28
    new-instance v0, Lcom/android/dx/rop/cst/CstFieldRef;

    #@2a
    iget-object v1, p1, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    #@2c
    iget-object v2, p0, Lcom/google/dexmaker/FieldId;->nat:Lcom/android/dx/rop/cst/CstNat;

    #@2e
    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    #@31
    iput-object v0, p0, Lcom/google/dexmaker/FieldId;->constant:Lcom/android/dx/rop/cst/CstFieldRef;

    #@33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/google/dexmaker/FieldId;

    #@2
    if-eqz v0, :cond_1f

    #@4
    move-object v0, p1

    #@5
    check-cast v0, Lcom/google/dexmaker/FieldId;

    #@7
    iget-object v0, v0, Lcom/google/dexmaker/FieldId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@9
    iget-object v1, p0, Lcom/google/dexmaker/FieldId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@b
    invoke-virtual {v0, v1}, Lcom/google/dexmaker/TypeId;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1f

    #@11
    check-cast p1, Lcom/google/dexmaker/FieldId;

    #@13
    iget-object v0, p1, Lcom/google/dexmaker/FieldId;->name:Ljava/lang/String;

    #@15
    iget-object v1, p0, Lcom/google/dexmaker/FieldId;->name:Ljava/lang/String;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1f

    #@1d
    const/4 v0, 0x1

    #@1e
    :goto_1e
    return v0

    #@1f
    :cond_1f
    const/4 v0, 0x0

    #@20
    goto :goto_1e
.end method

.method public getDeclaringType()Lcom/google/dexmaker/TypeId;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/dexmaker/TypeId",
            "<TD;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/FieldId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/FieldId;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()Lcom/google/dexmaker/TypeId;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/dexmaker/TypeId",
            "<TV;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/FieldId;->type:Lcom/google/dexmaker/TypeId;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/FieldId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@2
    invoke-virtual {v0}, Lcom/google/dexmaker/TypeId;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/google/dexmaker/FieldId;->name:Ljava/lang/String;

    #@8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v1

    #@c
    mul-int/lit8 v1, v1, 0x25

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/google/dexmaker/FieldId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string v1, "."

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/google/dexmaker/FieldId;->name:Ljava/lang/String;

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method
