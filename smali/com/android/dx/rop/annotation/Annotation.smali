.class public final Lcom/android/dx/rop/annotation/Annotation;
.super Lcom/android/dx/util/MutabilityControl;

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/android/dx/util/ToHuman;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/util/MutabilityControl;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/rop/annotation/Annotation;",
        ">;",
        "Lcom/android/dx/util/ToHuman;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/android/dx/rop/cst/CstString;",
            "Lcom/android/dx/rop/annotation/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/android/dx/rop/cst/CstType;

.field private final visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/annotation/AnnotationVisibility;)V
    .registers 5

    #@0
    invoke-direct {p0}, Lcom/android/dx/util/MutabilityControl;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "type == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    if-nez p2, :cond_17

    #@f
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string v1, "visibility == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    iput-object p1, p0, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    #@19
    iput-object p2, p0, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    #@1b
    new-instance v0, Ljava/util/TreeMap;

    #@1d
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    #@22
    return-void
.end method


# virtual methods
.method public add(Lcom/android/dx/rop/annotation/NameValuePair;)V
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/annotation/Annotation;->throwIfImmutable()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "pair == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/NameValuePair;->getName()Lcom/android/dx/rop/cst/CstString;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    #@13
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    if-eqz v1, :cond_32

    #@19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string v3, "name already added: "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1

    #@32
    :cond_32
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    #@34
    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    return-void
.end method

.method public compareTo(Lcom/android/dx/rop/annotation/Annotation;)I
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    #@2
    iget-object v1, p1, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstType;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_b

    #@a
    :cond_a
    :goto_a
    return v0

    #@b
    :cond_b
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    #@d
    iget-object v1, p1, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    #@f
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/annotation/AnnotationVisibility;->compareTo(Ljava/lang/Enum;)I

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_a

    #@15
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    #@17
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@1a
    move-result-object v0

    #@1b
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v2

    #@1f
    iget-object v0, p1, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    #@21
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@24
    move-result-object v0

    #@25
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v3

    #@29
    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_48

    #@2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v0

    #@33
    if-eqz v0, :cond_48

    #@35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Lcom/android/dx/rop/annotation/NameValuePair;

    #@3b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v1

    #@3f
    check-cast v1, Lcom/android/dx/rop/annotation/NameValuePair;

    #@41
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/annotation/NameValuePair;->compareTo(Lcom/android/dx/rop/annotation/NameValuePair;)I

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_29

    #@47
    goto :goto_a

    #@48
    :cond_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_50

    #@4e
    const/4 v0, 0x1

    #@4f
    goto :goto_a

    #@50
    :cond_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_58

    #@56
    const/4 v0, -0x1

    #@57
    goto :goto_a

    #@58
    :cond_58
    const/4 v0, 0x0

    #@59
    goto :goto_a
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/rop/annotation/Annotation;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/annotation/Annotation;->compareTo(Lcom/android/dx/rop/annotation/Annotation;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/android/dx/rop/annotation/Annotation;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/android/dx/rop/annotation/Annotation;

    #@8
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    #@a
    iget-object v2, p1, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    #@c
    invoke-virtual {v1, v2}, Lcom/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_5

    #@12
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    #@14
    iget-object v2, p1, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    #@16
    if-ne v1, v2, :cond_5

    #@18
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    #@1a
    iget-object v1, p1, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    #@1c
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v0

    #@20
    goto :goto_5
.end method

.method public getNameValuePairs()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dx/rop/annotation/NameValuePair;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getType()Lcom/android/dx/rop/cst/CstType;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    #@2
    return-object v0
.end method

.method public getVisibility()Lcom/android/dx/rop/annotation/AnnotationVisibility;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1f

    #@8
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    #@a
    invoke-virtual {v1}, Ljava/util/TreeMap;->hashCode()I

    #@d
    move-result v1

    #@e
    add-int/2addr v0, v1

    #@f
    mul-int/lit8 v0, v0, 0x1f

    #@11
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    #@13
    invoke-virtual {v1}, Lcom/android/dx/rop/annotation/AnnotationVisibility;->hashCode()I

    #@16
    move-result v1

    #@17
    add-int/2addr v0, v1

    #@18
    return v0
.end method

.method public put(Lcom/android/dx/rop/annotation/NameValuePair;)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/annotation/Annotation;->throwIfImmutable()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "pair == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    #@f
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/NameValuePair;->getName()Lcom/android/dx/rop/cst/CstString;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 6

    #@0
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->visibility:Lcom/android/dx/rop/annotation/AnnotationVisibility;

    #@7
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/AnnotationVisibility;->toHuman()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    const-string v0, "-annotation "

    #@10
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->type:Lcom/android/dx/rop/cst/CstType;

    #@15
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    const-string v0, " {"

    #@1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotation;->elements:Ljava/util/TreeMap;

    #@23
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@26
    move-result-object v0

    #@27
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v3

    #@2b
    const/4 v0, 0x1

    #@2c
    move v1, v0

    #@2d
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_5e

    #@33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Lcom/android/dx/rop/annotation/NameValuePair;

    #@39
    if-eqz v1, :cond_58

    #@3b
    const/4 v1, 0x0

    #@3c
    :goto_3c
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/NameValuePair;->getName()Lcom/android/dx/rop/cst/CstString;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    const-string v4, ": "

    #@49
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/NameValuePair;->getValue()Lcom/android/dx/rop/cst/Constant;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/Constant;->toHuman()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    goto :goto_2d

    #@58
    :cond_58
    const-string v4, ", "

    #@5a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    goto :goto_3c

    #@5e
    :cond_5e
    const-string v0, "}"

    #@60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v0

    #@67
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/annotation/Annotation;->toHuman()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
