.class public final Lcom/android/dx/rop/annotation/AnnotationsList;
.super Lcom/android/dx/util/FixedSizeList;


# static fields
.field public static final EMPTY:Lcom/android/dx/rop/annotation/AnnotationsList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/rop/annotation/AnnotationsList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/android/dx/rop/annotation/AnnotationsList;-><init>(I)V

    #@6
    sput-object v0, Lcom/android/dx/rop/annotation/AnnotationsList;->EMPTY:Lcom/android/dx/rop/annotation/AnnotationsList;

    #@8
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    #@3
    return-void
.end method

.method public static combine(Lcom/android/dx/rop/annotation/AnnotationsList;Lcom/android/dx/rop/annotation/AnnotationsList;)Lcom/android/dx/rop/annotation/AnnotationsList;
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/android/dx/rop/annotation/AnnotationsList;->size()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p1}, Lcom/android/dx/rop/annotation/AnnotationsList;->size()I

    #@7
    move-result v0

    #@8
    if-eq v1, v0, :cond_12

    #@a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string v1, "list1.size() != list2.size()"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    :cond_12
    new-instance v2, Lcom/android/dx/rop/annotation/AnnotationsList;

    #@14
    invoke-direct {v2, v1}, Lcom/android/dx/rop/annotation/AnnotationsList;-><init>(I)V

    #@17
    const/4 v0, 0x0

    #@18
    :goto_18
    if-ge v0, v1, :cond_2c

    #@1a
    invoke-virtual {p0, v0}, Lcom/android/dx/rop/annotation/AnnotationsList;->get(I)Lcom/android/dx/rop/annotation/Annotations;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {p1, v0}, Lcom/android/dx/rop/annotation/AnnotationsList;->get(I)Lcom/android/dx/rop/annotation/Annotations;

    #@21
    move-result-object v4

    #@22
    invoke-static {v3, v4}, Lcom/android/dx/rop/annotation/Annotations;->combine(Lcom/android/dx/rop/annotation/Annotations;Lcom/android/dx/rop/annotation/Annotations;)Lcom/android/dx/rop/annotation/Annotations;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v2, v0, v3}, Lcom/android/dx/rop/annotation/AnnotationsList;->set(ILcom/android/dx/rop/annotation/Annotations;)V

    #@29
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_18

    #@2c
    :cond_2c
    invoke-virtual {v2}, Lcom/android/dx/rop/annotation/AnnotationsList;->setImmutable()V

    #@2f
    return-object v2
.end method


# virtual methods
.method public get(I)Lcom/android/dx/rop/annotation/Annotations;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/annotation/AnnotationsList;->get0(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/dx/rop/annotation/Annotations;

    #@6
    return-object v0
.end method

.method public set(ILcom/android/dx/rop/annotation/Annotations;)V
    .registers 3

    #@0
    invoke-virtual {p2}, Lcom/android/dx/rop/annotation/Annotations;->throwIfMutable()V

    #@3
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/rop/annotation/AnnotationsList;->set0(ILjava/lang/Object;)V

    #@6
    return-void
.end method
