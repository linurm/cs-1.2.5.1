.class public final Lcom/android/dx/rop/annotation/Annotations;
.super Lcom/android/dx/util/MutabilityControl;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/util/MutabilityControl;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/rop/annotation/Annotations;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/rop/annotation/Annotations;


# instance fields
.field private final annotations:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/android/dx/rop/cst/CstType;",
            "Lcom/android/dx/rop/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/android/dx/rop/annotation/Annotations;

    #@2
    invoke-direct {v0}, Lcom/android/dx/rop/annotation/Annotations;-><init>()V

    #@5
    sput-object v0, Lcom/android/dx/rop/annotation/Annotations;->EMPTY:Lcom/android/dx/rop/annotation/Annotations;

    #@7
    sget-object v0, Lcom/android/dx/rop/annotation/Annotations;->EMPTY:Lcom/android/dx/rop/annotation/Annotations;

    #@9
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/Annotations;->setImmutable()V

    #@c
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/android/dx/util/MutabilityControl;-><init>()V

    #@3
    new-instance v0, Ljava/util/TreeMap;

    #@5
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    #@a
    return-void
.end method

.method public static combine(Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/rop/annotation/Annotation;)Lcom/android/dx/rop/annotation/Annotations;
    .registers 3

    #@0
    new-instance v0, Lcom/android/dx/rop/annotation/Annotations;

    #@2
    invoke-direct {v0}, Lcom/android/dx/rop/annotation/Annotations;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/dx/rop/annotation/Annotations;->addAll(Lcom/android/dx/rop/annotation/Annotations;)V

    #@8
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/annotation/Annotations;->add(Lcom/android/dx/rop/annotation/Annotation;)V

    #@b
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/Annotations;->setImmutable()V

    #@e
    return-object v0
.end method

.method public static combine(Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/rop/annotation/Annotations;)Lcom/android/dx/rop/annotation/Annotations;
    .registers 3

    #@0
    new-instance v0, Lcom/android/dx/rop/annotation/Annotations;

    #@2
    invoke-direct {v0}, Lcom/android/dx/rop/annotation/Annotations;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/dx/rop/annotation/Annotations;->addAll(Lcom/android/dx/rop/annotation/Annotations;)V

    #@8
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/annotation/Annotations;->addAll(Lcom/android/dx/rop/annotation/Annotations;)V

    #@b
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/Annotations;->setImmutable()V

    #@e
    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/dx/rop/annotation/Annotation;)V
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/annotation/Annotations;->throwIfImmutable()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "annotation == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/Annotation;->getType()Lcom/android/dx/rop/cst/CstType;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    #@13
    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_36

    #@19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string v3, "duplicate type: "

    #@22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    :cond_36
    iget-object v1, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    #@38
    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    return-void
.end method

.method public addAll(Lcom/android/dx/rop/annotation/Annotations;)V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/annotation/Annotations;->throwIfImmutable()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "toAdd == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    iget-object v0, p1, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    #@f
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@12
    move-result-object v0

    #@13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v1

    #@17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_27

    #@1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/dx/rop/annotation/Annotation;

    #@23
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/annotation/Annotations;->add(Lcom/android/dx/rop/annotation/Annotation;)V

    #@26
    goto :goto_17

    #@27
    :cond_27
    return-void
.end method

.method public compareTo(Lcom/android/dx/rop/annotation/Annotations;)I
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v2

    #@a
    iget-object v0, p1, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    #@c
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_33

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_33

    #@20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/android/dx/rop/annotation/Annotation;

    #@26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Lcom/android/dx/rop/annotation/Annotation;

    #@2c
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/annotation/Annotation;->compareTo(Lcom/android/dx/rop/annotation/Annotation;)I

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_14

    #@32
    :goto_32
    return v0

    #@33
    :cond_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_3b

    #@39
    const/4 v0, 0x1

    #@3a
    goto :goto_32

    #@3b
    :cond_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v0

    #@3f
    if-eqz v0, :cond_43

    #@41
    const/4 v0, -0x1

    #@42
    goto :goto_32

    #@43
    :cond_43
    const/4 v0, 0x0

    #@44
    goto :goto_32
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/rop/annotation/Annotations;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/annotation/Annotations;->compareTo(Lcom/android/dx/rop/annotation/Annotations;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/android/dx/rop/annotation/Annotations;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/android/dx/rop/annotation/Annotations;

    #@8
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    #@a
    iget-object v1, p1, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    #@c
    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    goto :goto_5
.end method

.method public getAnnotations()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dx/rop/annotation/Annotation;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

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

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public size()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    #@2
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    #@0
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v0, "annotations{"

    #@7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    iget-object v0, p0, Lcom/android/dx/rop/annotation/Annotations;->annotations:Ljava/util/TreeMap;

    #@c
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    #@f
    move-result-object v0

    #@10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    const/4 v0, 0x1

    #@15
    move v1, v0

    #@16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_33

    #@1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Lcom/android/dx/rop/annotation/Annotation;

    #@22
    if-eqz v1, :cond_2d

    #@24
    const/4 v1, 0x0

    #@25
    :goto_25
    invoke-virtual {v0}, Lcom/android/dx/rop/annotation/Annotation;->toHuman()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    goto :goto_16

    #@2d
    :cond_2d
    const-string v4, ", "

    #@2f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    goto :goto_25

    #@33
    :cond_33
    const-string v0, "}"

    #@35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    return-object v0
.end method
