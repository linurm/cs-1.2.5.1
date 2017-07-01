.class Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Multiset"
.end annotation


# instance fields
.field private final count:[I

.field private final reg:[I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-array v0, p1, [I

    #@5
    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->reg:[I

    #@7
    new-array v0, p1, [I

    #@9
    iput-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->count:[I

    #@b
    const/4 v0, 0x0

    #@c
    iput v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    #@e
    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    #@3
    if-ge v0, v1, :cond_17

    #@5
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->reg:[I

    #@7
    aget v1, v1, v0

    #@9
    if-ne v1, p1, :cond_14

    #@b
    iget-object v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->count:[I

    #@d
    aget v2, v1, v0

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    aput v2, v1, v0

    #@13
    :goto_13
    return-void

    #@14
    :cond_14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_1

    #@17
    :cond_17
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->reg:[I

    #@19
    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    #@1b
    aput p1, v0, v1

    #@1d
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->count:[I

    #@1f
    iget v1, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    #@21
    const/4 v2, 0x1

    #@22
    aput v2, v0, v1

    #@24
    iget v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    iput v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    #@2a
    goto :goto_13
.end method

.method public getAndRemoveHighestCount()I
    .registers 7

    #@0
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    move v2, v0

    #@3
    move v3, v0

    #@4
    move v4, v1

    #@5
    move v0, v1

    #@6
    :goto_6
    iget v5, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    #@8
    if-ge v4, v5, :cond_1c

    #@a
    iget-object v5, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->count:[I

    #@c
    aget v5, v5, v4

    #@e
    if-ge v0, v5, :cond_19

    #@10
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->reg:[I

    #@12
    aget v2, v0, v4

    #@14
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->count:[I

    #@16
    aget v0, v0, v4

    #@18
    move v3, v4

    #@19
    :cond_19
    add-int/lit8 v4, v4, 0x1

    #@1b
    goto :goto_6

    #@1c
    :cond_1c
    iget-object v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->count:[I

    #@1e
    aput v1, v0, v3

    #@20
    return v2
.end method

.method public getSize()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/ssa/back/FirstFitLocalCombiningAllocator$Multiset;->size:I

    #@2
    return v0
.end method
