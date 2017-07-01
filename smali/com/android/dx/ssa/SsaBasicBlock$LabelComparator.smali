.class public final Lcom/android/dx/ssa/SsaBasicBlock$LabelComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/ssa/SsaBasicBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LabelComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/dx/ssa/SsaBasicBlock;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)I
    .registers 5

    #@0
    # getter for: Lcom/android/dx/ssa/SsaBasicBlock;->ropLabel:I
    invoke-static {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->access$000(Lcom/android/dx/ssa/SsaBasicBlock;)I

    #@3
    move-result v0

    #@4
    # getter for: Lcom/android/dx/ssa/SsaBasicBlock;->ropLabel:I
    invoke-static {p2}, Lcom/android/dx/ssa/SsaBasicBlock;->access$000(Lcom/android/dx/ssa/SsaBasicBlock;)I

    #@7
    move-result v1

    #@8
    if-ge v0, v1, :cond_c

    #@a
    const/4 v0, -0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    if-le v0, v1, :cond_10

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_b

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    #@0
    check-cast p1, Lcom/android/dx/ssa/SsaBasicBlock;

    #@2
    check-cast p2, Lcom/android/dx/ssa/SsaBasicBlock;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/ssa/SsaBasicBlock$LabelComparator;->compare(Lcom/android/dx/ssa/SsaBasicBlock;Lcom/android/dx/ssa/SsaBasicBlock;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
