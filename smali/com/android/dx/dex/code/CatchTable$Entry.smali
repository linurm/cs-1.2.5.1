.class public Lcom/android/dx/dex/code/CatchTable$Entry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/CatchTable;
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
        "Lcom/android/dx/dex/code/CatchTable$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final end:I

.field private final handlers:Lcom/android/dx/dex/code/CatchHandlerList;

.field private final start:I


# direct methods
.method public constructor <init>(IILcom/android/dx/dex/code/CatchHandlerList;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-gez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "start < 0"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    if-gt p2, p1, :cond_17

    #@f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string v1, "end <= start"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    invoke-virtual {p3}, Lcom/android/dx/dex/code/CatchHandlerList;->isMutable()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_25

    #@1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string v1, "handlers.isMutable()"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    :cond_25
    iput p1, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    #@27
    iput p2, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    #@29
    iput-object p3, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/android/dx/dex/code/CatchHandlerList;

    #@2b
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/dex/code/CatchTable$Entry;)I
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    iget v2, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    #@4
    iget v3, p1, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    #@6
    if-ge v2, v3, :cond_a

    #@8
    :cond_8
    move v0, v1

    #@9
    :cond_9
    :goto_9
    return v0

    #@a
    :cond_a
    iget v2, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    #@c
    iget v3, p1, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    #@e
    if-gt v2, v3, :cond_9

    #@10
    iget v2, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    #@12
    iget v3, p1, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    #@14
    if-lt v2, v3, :cond_8

    #@16
    iget v1, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    #@18
    iget v2, p1, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    #@1a
    if-gt v1, v2, :cond_9

    #@1c
    iget-object v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/android/dx/dex/code/CatchHandlerList;

    #@1e
    iget-object v1, p1, Lcom/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/android/dx/dex/code/CatchHandlerList;

    #@20
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/code/CatchHandlerList;->compareTo(Lcom/android/dx/dex/code/CatchHandlerList;)I

    #@23
    move-result v0

    #@24
    goto :goto_9
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/dex/code/CatchTable$Entry;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/android/dx/dex/code/CatchTable$Entry;)I

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
    instance-of v1, p1, Lcom/android/dx/dex/code/CatchTable$Entry;

    #@3
    if-eqz v1, :cond_e

    #@5
    check-cast p1, Lcom/android/dx/dex/code/CatchTable$Entry;

    #@7
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/android/dx/dex/code/CatchTable$Entry;)I

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_e

    #@d
    const/4 v0, 0x1

    #@e
    :cond_e
    return v0
.end method

.method public getEnd()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    #@2
    return v0
.end method

.method public getHandlers()Lcom/android/dx/dex/code/CatchHandlerList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/android/dx/dex/code/CatchHandlerList;

    #@2
    return-object v0
.end method

.method public getStart()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->start:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    iget v1, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->end:I

    #@6
    add-int/2addr v0, v1

    #@7
    mul-int/lit8 v0, v0, 0x1f

    #@9
    iget-object v1, p0, Lcom/android/dx/dex/code/CatchTable$Entry;->handlers:Lcom/android/dx/dex/code/CatchHandlerList;

    #@b
    invoke-virtual {v1}, Lcom/android/dx/dex/code/CatchHandlerList;->hashCode()I

    #@e
    move-result v1

    #@f
    add-int/2addr v0, v1

    #@10
    return v0
.end method
