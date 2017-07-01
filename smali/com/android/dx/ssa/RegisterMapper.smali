.class public abstract Lcom/android/dx/ssa/RegisterMapper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract getNewRegisterCount()I
.end method

.method public abstract map(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;
.end method

.method public final map(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/rop/code/RegisterSpecList;
    .registers 6

    #@0
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    #@3
    move-result v2

    #@4
    new-instance v0, Lcom/android/dx/rop/code/RegisterSpecList;

    #@6
    invoke-direct {v0, v2}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    #@9
    const/4 v1, 0x0

    #@a
    :goto_a
    if-ge v1, v2, :cond_1a

    #@c
    invoke-virtual {p1, v1}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p0, v3}, Lcom/android/dx/ssa/RegisterMapper;->map(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpec;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v0, v1, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_a

    #@1a
    :cond_1a
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    #@1d
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/RegisterSpecList;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_24

    #@23
    :goto_23
    return-object p1

    #@24
    :cond_24
    move-object p1, v0

    #@25
    goto :goto_23
.end method
