.class public Lcom/android/dx/ssa/back/InterferenceGraph;
.super Ljava/lang/Object;


# instance fields
.field private final interference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/util/IntSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    #@8
    iput-object v0, p0, Lcom/android/dx/ssa/back/InterferenceGraph;->interference:Ljava/util/ArrayList;

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    if-ge v0, p1, :cond_19

    #@d
    iget-object v1, p0, Lcom/android/dx/ssa/back/InterferenceGraph;->interference:Ljava/util/ArrayList;

    #@f
    invoke-static {p1}, Lcom/android/dx/ssa/SetFactory;->makeInterferenceSet(I)Lcom/android/dx/util/IntSet;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_b

    #@19
    :cond_19
    return-void
.end method

.method private ensureCapacity(I)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/InterferenceGraph;->interference:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Lcom/android/dx/ssa/back/InterferenceGraph;->interference:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@b
    :goto_b
    if-ge v0, p1, :cond_19

    #@d
    iget-object v1, p0, Lcom/android/dx/ssa/back/InterferenceGraph;->interference:Ljava/util/ArrayList;

    #@f
    invoke-static {p1}, Lcom/android/dx/ssa/SetFactory;->makeInterferenceSet(I)Lcom/android/dx/util/IntSet;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_b

    #@19
    :cond_19
    return-void
.end method


# virtual methods
.method public add(II)V
    .registers 4

    #@0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, 0x1

    #@6
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/back/InterferenceGraph;->ensureCapacity(I)V

    #@9
    iget-object v0, p0, Lcom/android/dx/ssa/back/InterferenceGraph;->interference:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/dx/util/IntSet;

    #@11
    invoke-interface {v0, p2}, Lcom/android/dx/util/IntSet;->add(I)V

    #@14
    iget-object v0, p0, Lcom/android/dx/ssa/back/InterferenceGraph;->interference:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/dx/util/IntSet;

    #@1c
    invoke-interface {v0, p1}, Lcom/android/dx/util/IntSet;->add(I)V

    #@1f
    return-void
.end method

.method public dumpToStdout()V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/InterferenceGraph;->interference:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    const/4 v0, 0x0

    #@7
    move v1, v0

    #@8
    :goto_8
    if-ge v1, v2, :cond_48

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string v4, "Reg "

    #@16
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string v4, ":"

    #@20
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    iget-object v0, p0, Lcom/android/dx/ssa/back/InterferenceGraph;->interference:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Lcom/android/dx/util/IntSet;

    #@2c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@44
    add-int/lit8 v0, v1, 0x1

    #@46
    move v1, v0

    #@47
    goto :goto_8

    #@48
    :cond_48
    return-void
.end method

.method public mergeInterferenceSet(ILcom/android/dx/util/IntSet;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/ssa/back/InterferenceGraph;->interference:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    if-ge p1, v0, :cond_13

    #@8
    iget-object v0, p0, Lcom/android/dx/ssa/back/InterferenceGraph;->interference:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/dx/util/IntSet;

    #@10
    invoke-interface {p2, v0}, Lcom/android/dx/util/IntSet;->merge(Lcom/android/dx/util/IntSet;)V

    #@13
    :cond_13
    return-void
.end method
