.class public final Lcom/android/dx/dex/code/CatchTable;
.super Lcom/android/dx/util/FixedSizeList;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/CatchTable$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/util/FixedSizeList;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/dex/code/CatchTable;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/android/dx/dex/code/CatchTable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    new-instance v0, Lcom/android/dx/dex/code/CatchTable;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/CatchTable;-><init>(I)V

    #@6
    sput-object v0, Lcom/android/dx/dex/code/CatchTable;->EMPTY:Lcom/android/dx/dex/code/CatchTable;

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
.method public compareTo(Lcom/android/dx/dex/code/CatchTable;)I
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
    invoke-virtual {p0}, Lcom/android/dx/dex/code/CatchTable;->size()I

    #@7
    move-result v3

    #@8
    invoke-virtual {p1}, Lcom/android/dx/dex/code/CatchTable;->size()I

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
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p1, v2}, Lcom/android/dx/dex/code/CatchTable;->get(I)Lcom/android/dx/dex/code/CatchTable$Entry;

    #@1a
    move-result-object v6

    #@1b
    invoke-virtual {v1, v6}, Lcom/android/dx/dex/code/CatchTable$Entry;->compareTo(Lcom/android/dx/dex/code/CatchTable$Entry;)I

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
    check-cast p1, Lcom/android/dx/dex/code/CatchTable;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchTable;->compareTo(Lcom/android/dx/dex/code/CatchTable;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public get(I)Lcom/android/dx/dex/code/CatchTable$Entry;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/CatchTable;->get0(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/dx/dex/code/CatchTable$Entry;

    #@6
    return-object v0
.end method

.method public set(ILcom/android/dx/dex/code/CatchTable$Entry;)V
    .registers 3

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/CatchTable;->set0(ILjava/lang/Object;)V

    #@3
    return-void
.end method
