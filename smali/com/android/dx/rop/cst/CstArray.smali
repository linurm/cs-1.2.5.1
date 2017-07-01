.class public final Lcom/android/dx/rop/cst/CstArray;
.super Lcom/android/dx/rop/cst/Constant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/rop/cst/CstArray$List;
    }
.end annotation


# instance fields
.field private final list:Lcom/android/dx/rop/cst/CstArray$List;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstArray$List;)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/android/dx/rop/cst/Constant;-><init>()V

    #@3
    if-nez p1, :cond_d

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string v1, "list == null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_d
    invoke-virtual {p1}, Lcom/android/dx/rop/cst/CstArray$List;->throwIfMutable()V

    #@10
    iput-object p1, p0, Lcom/android/dx/rop/cst/CstArray;->list:Lcom/android/dx/rop/cst/CstArray$List;

    #@12
    return-void
.end method


# virtual methods
.method protected compareTo0(Lcom/android/dx/rop/cst/Constant;)I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstArray;->list:Lcom/android/dx/rop/cst/CstArray$List;

    #@2
    check-cast p1, Lcom/android/dx/rop/cst/CstArray;

    #@4
    iget-object v1, p1, Lcom/android/dx/rop/cst/CstArray;->list:Lcom/android/dx/rop/cst/CstArray$List;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstArray$List;->compareTo(Lcom/android/dx/rop/cst/CstArray$List;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    instance-of v0, p1, Lcom/android/dx/rop/cst/CstArray;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstArray;->list:Lcom/android/dx/rop/cst/CstArray$List;

    #@8
    check-cast p1, Lcom/android/dx/rop/cst/CstArray;

    #@a
    iget-object v1, p1, Lcom/android/dx/rop/cst/CstArray;->list:Lcom/android/dx/rop/cst/CstArray$List;

    #@c
    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstArray$List;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    goto :goto_5
.end method

.method public getList()Lcom/android/dx/rop/cst/CstArray$List;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstArray;->list:Lcom/android/dx/rop/cst/CstArray$List;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstArray;->list:Lcom/android/dx/rop/cst/CstArray$List;

    #@2
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstArray$List;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isCategory2()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstArray;->list:Lcom/android/dx/rop/cst/CstArray$List;

    #@2
    const-string v1, "{"

    #@4
    const-string v2, ", "

    #@6
    const-string v3, "}"

    #@8
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dx/rop/cst/CstArray$List;->toHuman(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/rop/cst/CstArray;->list:Lcom/android/dx/rop/cst/CstArray$List;

    #@2
    const-string v1, "array{"

    #@4
    const-string v2, ", "

    #@6
    const-string v3, "}"

    #@8
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dx/rop/cst/CstArray$List;->toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public typeName()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "array"

    #@2
    return-object v0
.end method
