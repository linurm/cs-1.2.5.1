.class Lcom/android/dx/ssa/ConstCollector$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/ssa/ConstCollector;->getConstsSortedByCountUse()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/dx/rop/cst/Constant;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/ssa/ConstCollector;

.field final synthetic val$countUses:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/dx/ssa/ConstCollector;Ljava/util/HashMap;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/android/dx/ssa/ConstCollector$1;->this$0:Lcom/android/dx/ssa/ConstCollector;

    #@2
    iput-object p2, p0, Lcom/android/dx/ssa/ConstCollector$1;->val$countUses:Ljava/util/HashMap;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/dx/rop/cst/Constant;Lcom/android/dx/rop/cst/Constant;)I
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/ConstCollector$1;->val$countUses:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v1

    #@c
    iget-object v0, p0, Lcom/android/dx/ssa/ConstCollector$1;->val$countUses:Ljava/util/HashMap;

    #@e
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/Integer;

    #@14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@17
    move-result v0

    #@18
    sub-int v0, v1, v0

    #@1a
    if-nez v0, :cond_20

    #@1c
    invoke-virtual {p1, p2}, Lcom/android/dx/rop/cst/Constant;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    #@1f
    move-result v0

    #@20
    :cond_20
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    #@0
    check-cast p1, Lcom/android/dx/rop/cst/Constant;

    #@2
    check-cast p2, Lcom/android/dx/rop/cst/Constant;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/ssa/ConstCollector$1;->compare(Lcom/android/dx/rop/cst/Constant;Lcom/android/dx/rop/cst/Constant;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    if-ne p1, p0, :cond_4

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    goto :goto_3
.end method
