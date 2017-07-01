.class public final Lcom/android/dx/dex/code/CatchHandlerList;
.super Lcom/android/dx/util/FixedSizeList;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/CatchHandlerList$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/util/FixedSizeList;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/dex/code/CatchHandlerList;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/dex/code/CatchHandlerList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/dex/code/CatchHandlerList;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/CatchHandlerList;-><init>(I)V

    #@6
    sput-object v0, Lcom/android/dx/dex/code/CatchHandlerList;->EMPTY:Lcom/android/dx/dex/code/CatchHandlerList;

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


# virtual methods
.method public catchesAll()Z
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    add-int/lit8 v0, v0, -0x1

    #@a
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/android/dx/rop/cst/CstType;

    #@11
    move-result-object v0

    #@12
    sget-object v1, Lcom/android/dx/rop/cst/CstType;->OBJECT:Lcom/android/dx/rop/cst/CstType;

    #@14
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    goto :goto_7
.end method

.method public compareTo(Lcom/android/dx/dex/code/CatchHandlerList;)I
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    if-ne p0, p1, :cond_4

    #@3
    :cond_3
    :goto_3
    return v0

    #@4
    :cond_4
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    #@7
    move-result v3

    #@8
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    #@b
    move-result v4

    #@c
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v5

    #@10
    move v2, v0

    #@11
    :goto_11
    if-ge v2, v5, :cond_27

    #@13
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p1, v2}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v1, v6}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->compareTo(Lcom/android/dx/dex/code/CatchHandlerList$Entry;)I

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_23

    #@21
    move v0, v1

    #@22
    goto :goto_3

    #@23
    :cond_23
    add-int/lit8 v1, v2, 0x1

    #@25
    move v2, v1

    #@26
    goto :goto_11

    #@27
    :cond_27
    if-ge v3, v4, :cond_2b

    #@29
    const/4 v0, -0x1

    #@2a
    goto :goto_3

    #@2b
    :cond_2b
    if-le v3, v4, :cond_3

    #@2d
    const/4 v0, 0x1

    #@2e
    goto :goto_3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/dex/code/CatchHandlerList;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchHandlerList;->compareTo(Lcom/android/dx/dex/code/CatchHandlerList;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchHandlerList;->get0(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    #@6
    return-object v0
.end method

.method public set(ILcom/android/dx/dex/code/CatchHandlerList$Entry;)V
    .registers 3

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/CatchHandlerList;->set0(ILjava/lang/Object;)V

    #@3
    return-void
.end method

.method public set(ILcom/android/dx/rop/cst/CstType;I)V
    .registers 5

    #@0
    new-instance v0, Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    #@2
    invoke-direct {v0, p2, p3}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;-><init>(Lcom/android/dx/rop/cst/CstType;I)V

    #@5
    invoke-virtual {p0, p1, v0}, Lcom/android/dx/dex/code/CatchHandlerList;->set0(ILjava/lang/Object;)V

    #@8
    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, ""

    #@2
    const-string v1, ""

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/android/dx/dex/code/CatchHandlerList;->toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toHuman(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    #@0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const/16 v0, 0x64

    #@4
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CatchHandlerList;->size()I

    #@a
    move-result v2

    #@b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    const-string v0, "catch "

    #@13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    const/4 v0, 0x0

    #@17
    :goto_17
    if-ge v0, v2, :cond_5a

    #@19
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/CatchHandlerList;->get(I)Lcom/android/dx/dex/code/CatchHandlerList$Entry;

    #@1c
    move-result-object v3

    #@1d
    if-eqz v0, :cond_2c

    #@1f
    const-string v4, ",\n"

    #@21
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    const-string v4, "  "

    #@29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    :cond_2c
    add-int/lit8 v4, v2, -0x1

    #@2e
    if-ne v0, v4, :cond_4e

    #@30
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CatchHandlerList;->catchesAll()Z

    #@33
    move-result v4

    #@34
    if-eqz v4, :cond_4e

    #@36
    const-string v4, "<any>"

    #@38
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    :goto_3b
    const-string v4, " -> "

    #@3d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getHandler()I

    #@43
    move-result v3

    #@44
    invoke-static {v3}, Lcom/android/dx/util/Hex;->u2or4(I)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    add-int/lit8 v0, v0, 0x1

    #@4d
    goto :goto_17

    #@4e
    :cond_4e
    invoke-virtual {v3}, Lcom/android/dx/dex/code/CatchHandlerList$Entry;->getExceptionType()Lcom/android/dx/rop/cst/CstType;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstType;->toHuman()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    goto :goto_3b

    #@5a
    :cond_5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    return-object v0
.end method
