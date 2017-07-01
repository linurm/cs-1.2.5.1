.class public final Lcom/google/android/gms/internal/fp$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private yi:Ljava/lang/String;

.field private yj:Z

.field private yk:I

.field private yl:Z

.field private ym:Ljava/lang/String;

.field private final yn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/fm;",
            ">;"
        }
    .end annotation
.end field

.field private yo:Ljava/util/BitSet;

.field private yp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/fp$a;->mName:Ljava/lang/String;

    #@5
    const/4 v0, 0x1

    #@6
    iput v0, p0, Lcom/google/android/gms/internal/fp$a;->yk:I

    #@8
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Lcom/google/android/gms/internal/fp$a;->yn:Ljava/util/List;

    #@f
    return-void
.end method


# virtual methods
.method public I(I)Lcom/google/android/gms/internal/fp$a;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/fp$a;->yo:Ljava/util/BitSet;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Ljava/util/BitSet;

    #@6
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    #@9
    iput-object v0, p0, Lcom/google/android/gms/internal/fp$a;->yo:Ljava/util/BitSet;

    #@b
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/fp$a;->yo:Ljava/util/BitSet;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    #@10
    return-object p0
.end method

.method public Z(Ljava/lang/String;)Lcom/google/android/gms/internal/fp$a;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/fp$a;->yi:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public aa(Ljava/lang/String;)Lcom/google/android/gms/internal/fp$a;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/fp$a;->yp:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public dQ()Lcom/google/android/gms/internal/fp;
    .registers 11

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    iget-object v0, p0, Lcom/google/android/gms/internal/fp$a;->yo:Ljava/util/BitSet;

    #@4
    if-eqz v0, :cond_23

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/fp$a;->yo:Ljava/util/BitSet;

    #@8
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@b
    move-result v0

    #@c
    new-array v8, v0, [I

    #@e
    iget-object v0, p0, Lcom/google/android/gms/internal/fp$a;->yo:Ljava/util/BitSet;

    #@10
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@13
    move-result v0

    #@14
    :goto_14
    if-ltz v0, :cond_23

    #@16
    aput v0, v8, v1

    #@18
    iget-object v2, p0, Lcom/google/android/gms/internal/fp$a;->yo:Ljava/util/BitSet;

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    #@1f
    move-result v0

    #@20
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_14

    #@23
    :cond_23
    new-instance v0, Lcom/google/android/gms/internal/fp;

    #@25
    iget-object v1, p0, Lcom/google/android/gms/internal/fp$a;->mName:Ljava/lang/String;

    #@27
    iget-object v2, p0, Lcom/google/android/gms/internal/fp$a;->yi:Ljava/lang/String;

    #@29
    iget-boolean v3, p0, Lcom/google/android/gms/internal/fp$a;->yj:Z

    #@2b
    iget v4, p0, Lcom/google/android/gms/internal/fp$a;->yk:I

    #@2d
    iget-boolean v5, p0, Lcom/google/android/gms/internal/fp$a;->yl:Z

    #@2f
    iget-object v6, p0, Lcom/google/android/gms/internal/fp$a;->ym:Ljava/lang/String;

    #@31
    iget-object v7, p0, Lcom/google/android/gms/internal/fp$a;->yn:Ljava/util/List;

    #@33
    iget-object v9, p0, Lcom/google/android/gms/internal/fp$a;->yn:Ljava/util/List;

    #@35
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@38
    move-result v9

    #@39
    new-array v9, v9, [Lcom/google/android/gms/internal/fm;

    #@3b
    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3e
    move-result-object v7

    #@3f
    check-cast v7, [Lcom/google/android/gms/internal/fm;

    #@41
    iget-object v9, p0, Lcom/google/android/gms/internal/fp$a;->yp:Ljava/lang/String;

    #@43
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/fp;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZLjava/lang/String;[Lcom/google/android/gms/internal/fm;[ILjava/lang/String;)V

    #@46
    return-object v0
.end method

.method public w(Z)Lcom/google/android/gms/internal/fp$a;
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/fp$a;->yj:Z

    #@2
    return-object p0
.end method

.method public x(Z)Lcom/google/android/gms/internal/fp$a;
    .registers 2

    #@0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/fp$a;->yl:Z

    #@2
    return-object p0
.end method
