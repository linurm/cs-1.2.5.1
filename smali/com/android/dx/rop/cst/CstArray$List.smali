.class public final Lcom/android/dx/rop/cst/CstArray$List;
.super Lcom/android/dx/util/FixedSizeList;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/rop/cst/CstArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/dx/util/FixedSizeList;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/rop/cst/CstArray$List;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    #@3
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/rop/cst/CstArray$List;)I
    .registers 9

    #@0
    const/4 v5, 0x0

    #@1
    invoke-virtual {p0}, Lcom/android/dx/rop/cst/CstArray$List;->size()I

    #@4
    move-result v3

    #@5
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstArray$List;->size()I

    #@8
    move-result v4

    #@9
    if-ge v3, v4, :cond_22

    #@b
    move v2, v3

    #@c
    :goto_c
    move v6, v5

    #@d
    :goto_d
    if-ge v6, v2, :cond_28

    #@f
    invoke-virtual {p0, v6}, Lcom/android/dx/rop/cst/CstArray$List;->get0(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/dx/rop/cst/Constant;

    #@15
    invoke-virtual {p1, v6}, Lcom/android/dx/rop/cst/CstArray$List;->get0(I)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/dx/rop/cst/Constant;

    #@1b
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/Constant;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_24

    #@21
    :goto_21
    return v0

    #@22
    :cond_22
    move v2, v4

    #@23
    goto :goto_c

    #@24
    :cond_24
    add-int/lit8 v0, v6, 0x1

    #@26
    move v6, v0

    #@27
    goto :goto_d

    #@28
    :cond_28
    if-ge v3, v4, :cond_2c

    #@2a
    const/4 v0, -0x1

    #@2b
    goto :goto_21

    #@2c
    :cond_2c
    if-le v3, v4, :cond_30

    #@2e
    const/4 v0, 0x1

    #@2f
    goto :goto_21

    #@30
    :cond_30
    move v0, v5

    #@31
    goto :goto_21
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/rop/cst/CstArray$List;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/cst/CstArray$List;->compareTo(Lcom/android/dx/rop/cst/CstArray$List;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public get(I)Lcom/android/dx/rop/cst/Constant;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/cst/CstArray$List;->get0(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/android/dx/rop/cst/Constant;

    #@6
    return-object v0
.end method

.method public set(ILcom/android/dx/rop/cst/Constant;)V
    .registers 3

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/rop/cst/CstArray$List;->set0(ILjava/lang/Object;)V

    #@3
    return-void
.end method
