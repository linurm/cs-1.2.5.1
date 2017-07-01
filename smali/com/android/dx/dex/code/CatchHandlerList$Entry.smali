.class public Lcom/android/dx/dex/code/CatchHandlerList$Entry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/CatchHandlerList;
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
        "Lcom/android/dx/dex/code/CatchHandlerList$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final exceptionType:Lcom/android/dx/rop/cst/CstType;

.field private final handler:I


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstType;I)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-gez p2, :cond_d

    #@5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v1, "handler < 0"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    if-nez p1, :cond_17

    #@f
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string v1, "exceptionType == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    :cond_17
    iput p2, p0, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->handler:I

    #@19
    iput-object p1, p0, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->exceptionType:Lcom/android/dx/rop/cst/CstType;

    #@1b
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/dex/code/CatchHandlerList$Entry;)I
    .registers 4

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->handler:I

    #@2
    iget v1, p1, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->handler:I

    #@4
    if-ge v0, v1, :cond_8

    #@6
    const/4 v0, -0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    iget v0, p0, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->handler:I

    #@a
    iget v1, p1, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->handler:I

    #@c
    if-le v0, v1, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_7

    #@10
    :cond_10
    iget-object v0, p0, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->exceptionType:Lcom/android/dx/rop/cst/CstType;

    #@12
    iget-object v1, p1, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->exceptionType:Lcom/android/dx/rop/cst/CstType;

    #@14
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstType;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    #@17
    move-result v0

    #@18
    goto :goto_7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->compareTo(Lcom/android/dx/dex/code/CatchHandlerList$Entry;)I

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
    instance-of v1, p1, Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    #@3
    if-eqz v1, :cond_e

    #@5
    check-cast p1, Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    #@7
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->compareTo(Lcom/android/dx/dex/code/CatchHandlerList$Entry;)I

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

.method public getExceptionType()Lcom/android/dx/rop/cst/CstType;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->exceptionType:Lcom/android/dx/rop/cst/CstType;

    #@2
    return-object v0
.end method

.method public getHandler()I
    .registers 2

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->handler:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    iget v0, p0, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->handler:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    iget-object v1, p0, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->exceptionType:Lcom/android/dx/rop/cst/CstType;

    #@6
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstType;->hashCode()I

    #@9
    move-result v1

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method
