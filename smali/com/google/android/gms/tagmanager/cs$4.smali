.class Lcom/google/android/gms/tagmanager/cs$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cs;->a(Ljava/util/Set;Lcom/google/android/gms/tagmanager/cr;)Lcom/google/android/gms/tagmanager/by;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahy:Lcom/google/android/gms/tagmanager/cs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cs;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cs$4;->ahy:Lcom/google/android/gms/tagmanager/cs;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/cq$e;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cm;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/cq$e;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;",
            "Lcom/google/android/gms/tagmanager/cm;",
            ")V"
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->my()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@7
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->mz()Ljava/util/List;

    #@a
    move-result-object v0

    #@b
    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@e
    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cm;->lW()Lcom/google/android/gms/tagmanager/ck;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->my()Ljava/util/List;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->mD()Ljava/util/List;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/ck;->b(Ljava/util/List;Ljava/util/List;)V

    #@1d
    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cm;->lX()Lcom/google/android/gms/tagmanager/ck;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->mz()Ljava/util/List;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$e;->mE()Ljava/util/List;

    #@28
    move-result-object v2

    #@29
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/tagmanager/ck;->b(Ljava/util/List;Ljava/util/List;)V

    #@2c
    return-void
.end method
