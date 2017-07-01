.class public abstract Lcom/android/dx/rop/cst/Constant;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/dx/util/ToHuman;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/dx/util/ToHuman;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/rop/cst/Constant;",
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
.method public final compareTo(Lcom/android/dx/rop/cst/Constant;)I
    .registers 4

    #@0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v1

    #@8
    if-eq v0, v1, :cond_17

    #@a
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@15
    move-result v0

    #@16
    :goto_16
    return v0

    #@17
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/cst/Constant;->compareTo0(Lcom/android/dx/rop/cst/Constant;)I

    #@1a
    move-result v0

    #@1b
    goto :goto_16
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    #@0
    check-cast p1, Lcom/android/dx/rop/cst/Constant;

    #@2
    invoke-virtual {p0, p1}, Lcom/android/dx/rop/cst/Constant;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected abstract compareTo0(Lcom/android/dx/rop/cst/Constant;)I
.end method

.method public abstract isCategory2()Z
.end method

.method public abstract typeName()Ljava/lang/String;
.end method
