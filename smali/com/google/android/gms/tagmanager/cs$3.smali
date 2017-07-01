.class Lcom/google/android/gms/tagmanager/cs$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cs$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cs;->a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/android/gms/tagmanager/cr;)Lcom/google/android/gms/tagmanager/by;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ahA:Ljava/util/Map;

.field final synthetic ahB:Ljava/util/Map;

.field final synthetic ahC:Ljava/util/Map;

.field final synthetic ahy:Lcom/google/android/gms/tagmanager/cs;

.field final synthetic ahz:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cs;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahy:Lcom/google/android/gms/tagmanager/cs;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahz:Ljava/util/Map;

    #@4
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahA:Ljava/util/Map;

    #@6
    iput-object p4, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahB:Ljava/util/Map;

    #@8
    iput-object p5, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahC:Ljava/util/Map;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
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
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahz:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahA:Ljava/util/Map;

    #@a
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/util/List;

    #@10
    if-eqz v0, :cond_1c

    #@12
    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@15
    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cm;->lU()Lcom/google/android/gms/tagmanager/ck;

    #@18
    move-result-object v2

    #@19
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/tagmanager/ck;->b(Ljava/util/List;Ljava/util/List;)V

    #@1c
    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahB:Ljava/util/Map;

    #@1e
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Ljava/util/List;

    #@24
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cs$3;->ahC:Ljava/util/Map;

    #@26
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Ljava/util/List;

    #@2c
    if-eqz v0, :cond_38

    #@2e
    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@31
    invoke-interface {p4}, Lcom/google/android/gms/tagmanager/cm;->lV()Lcom/google/android/gms/tagmanager/ck;

    #@34
    move-result-object v2

    #@35
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/tagmanager/ck;->b(Ljava/util/List;Ljava/util/List;)V

    #@38
    :cond_38
    return-void
.end method
