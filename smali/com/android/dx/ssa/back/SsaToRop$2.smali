.class Lcom/android/dx/ssa/back/SsaToRop$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/ssa/back/SsaToRop;->getRegistersByFrequency()[I
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/ssa/back/SsaToRop;


# direct methods
.method constructor <init>(Lcom/android/dx/ssa/back/SsaToRop;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/android/dx/ssa/back/SsaToRop$2;->this$0:Lcom/android/dx/ssa/back/SsaToRop;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/SsaToRop$2;->this$0:Lcom/android/dx/ssa/back/SsaToRop;

    #@2
    # getter for: Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;
    invoke-static {v0}, Lcom/android/dx/ssa/back/SsaToRop;->access$000(Lcom/android/dx/ssa/back/SsaToRop;)Lcom/android/dx/ssa/SsaMethod;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v1

    #@a
    invoke-virtual {v0, v1}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@11
    move-result v0

    #@12
    iget-object v1, p0, Lcom/android/dx/ssa/back/SsaToRop$2;->this$0:Lcom/android/dx/ssa/back/SsaToRop;

    #@14
    # getter for: Lcom/android/dx/ssa/back/SsaToRop;->ssaMeth:Lcom/android/dx/ssa/SsaMethod;
    invoke-static {v1}, Lcom/android/dx/ssa/back/SsaToRop;->access$000(Lcom/android/dx/ssa/back/SsaToRop;)Lcom/android/dx/ssa/SsaMethod;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@1b
    move-result v2

    #@1c
    invoke-virtual {v1, v2}, Lcom/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    #@1f
    move-result-object v1

    #@20
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@23
    move-result v1

    #@24
    sub-int/2addr v0, v1

    #@25
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    #@0
    check-cast p1, Ljava/lang/Integer;

    #@2
    check-cast p2, Ljava/lang/Integer;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/ssa/back/SsaToRop$2;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
