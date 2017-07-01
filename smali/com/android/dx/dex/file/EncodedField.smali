.class public final Lcom/android/dx/dex/file/EncodedField;
.super Lcom/android/dx/dex/file/EncodedMember;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/dex/file/EncodedMember;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/dex/file/EncodedField;",
        ">;"
    }
.end annotation


# instance fields
.field private final field:Lcom/android/dx/rop/cst/CstFieldRef;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstFieldRef;I)V
    .registers 5

    #@0
    invoke-direct {p0, p2}, Lcom/android/dx/dex/file/EncodedMember;-><init>(I)V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "field == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iput-object p1, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    #@f
    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .registers 4

    #@0
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    #@9
    return-void
.end method

.method public compareTo(Lcom/android/dx/dex/file/EncodedField;)I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    #@2
    iget-object v1, p1, Lcom/android/dx/dex/file/EncodedField;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstFieldRef;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/dex/file/EncodedField;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/EncodedField;->compareTo(Lcom/android/dx/dex/file/EncodedField;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public debugPrint(Ljava/io/PrintWriter;Z)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/EncodedField;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7
    return-void
.end method

.method public encode(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;II)I
    .registers 13

    #@0
    const/4 v7, 0x0

    #@1
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    #@4
    move-result-object v0

    #@5
    iget-object v1, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    #@7
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/FieldIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstFieldRef;)I

    #@a
    move-result v0

    #@b
    sub-int v1, v0, p3

    #@d
    invoke-virtual {p0}, Lcom/android/dx/dex/file/EncodedField;->getAccessFlags()I

    #@10
    move-result v2

    #@11
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_6e

    #@17
    const-string v3, "  [%x] %s"

    #@19
    const/4 v4, 0x2

    #@1a
    new-array v4, v4, [Ljava/lang/Object;

    #@1c
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v5

    #@20
    aput-object v5, v4, v7

    #@22
    const/4 v5, 0x1

    #@23
    iget-object v6, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    #@25
    invoke-virtual {v6}, Lcom/android/dx/rop/cst/CstFieldRef;->toHuman()Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    aput-object v6, v4, v5

    #@2b
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-interface {p2, v7, v3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@32
    invoke-static {v1}, Lcom/android/dx/util/Leb128Utils;->unsignedLeb128Size(I)I

    #@35
    move-result v3

    #@36
    new-instance v4, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string v5, "    field_idx:    "

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-interface {p2, v3, v4}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@50
    invoke-static {v2}, Lcom/android/dx/util/Leb128Utils;->unsignedLeb128Size(I)I

    #@53
    move-result v3

    #@54
    new-instance v4, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string v5, "    access_flags: "

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-static {v2}, Lcom/android/dx/rop/code/AccessFlags;->fieldString(I)Ljava/lang/String;

    #@62
    move-result-object v5

    #@63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v4

    #@6b
    invoke-interface {p2, v3, v4}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    #@6e
    :cond_6e
    invoke-interface {p2, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    #@71
    invoke-interface {p2, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeUleb128(I)I

    #@74
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/android/dx/dex/file/EncodedField;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/android/dx/dex/file/EncodedField;

    #@8
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/EncodedField;->compareTo(Lcom/android/dx/dex/file/EncodedField;)I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_5

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_5
.end method

.method public getName()Lcom/android/dx/rop/cst/CstString;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstFieldRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstNat;->getName()Lcom/android/dx/rop/cst/CstString;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getRef()Lcom/android/dx/rop/cst/CstFieldRef;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstFieldRef;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstFieldRef;->toHuman()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    const/16 v1, 0x64

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@12
    const/16 v1, 0x7b

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@17
    invoke-virtual {p0}, Lcom/android/dx/dex/file/EncodedField;->getAccessFlags()I

    #@1a
    move-result v1

    #@1b
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    const/16 v1, 0x20

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@27
    iget-object v1, p0, Lcom/android/dx/dex/file/EncodedField;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@2c
    const/16 v1, 0x7d

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    return-object v0
.end method
