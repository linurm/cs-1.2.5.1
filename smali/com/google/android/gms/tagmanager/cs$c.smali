.class Lcom/google/android/gms/tagmanager/cs$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final ahE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$e;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ahF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$e;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ahG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$e;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ahH:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$e;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private ahI:Lcom/google/android/gms/tagmanager/cq$a;

.field private final ahu:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashSet;

    #@5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahu:Ljava/util/Set;

    #@a
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahE:Ljava/util/Map;

    #@11
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahG:Ljava/util/Map;

    #@18
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahF:Ljava/util/Map;

    #@1f
    new-instance v0, Ljava/util/HashMap;

    #@21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@24
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahH:Ljava/util/Map;

    #@26
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/cq$e;Lcom/google/android/gms/tagmanager/cq$a;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahE:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    if-nez v0, :cond_14

    #@a
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahE:Ljava/util/Map;

    #@11
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    :cond_14
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    return-void
.end method

.method public a(Lcom/google/android/gms/tagmanager/cq$e;Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahG:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    if-nez v0, :cond_14

    #@a
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahG:Ljava/util/Map;

    #@11
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    :cond_14
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    return-void
.end method

.method public b(Lcom/google/android/gms/tagmanager/cq$e;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahu:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@5
    return-void
.end method

.method public b(Lcom/google/android/gms/tagmanager/cq$e;Lcom/google/android/gms/tagmanager/cq$a;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahF:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    if-nez v0, :cond_14

    #@a
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahF:Ljava/util/Map;

    #@11
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    :cond_14
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    return-void
.end method

.method public b(Lcom/google/android/gms/tagmanager/cq$e;Ljava/lang/String;)V
    .registers 5

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahH:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    if-nez v0, :cond_14

    #@a
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahH:Ljava/util/Map;

    #@11
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    :cond_14
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@17
    return-void
.end method

.method public i(Lcom/google/android/gms/tagmanager/cq$a;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahI:Lcom/google/android/gms/tagmanager/cq$a;

    #@2
    return-void
.end method

.method public mK()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$e;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahu:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method public mL()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$e;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahE:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public mM()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$e;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahG:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public mN()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$e;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahH:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public mO()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$e;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;>;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahF:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public mP()Lcom/google/android/gms/tagmanager/cq$a;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cs$c;->ahI:Lcom/google/android/gms/tagmanager/cq$a;

    #@2
    return-object v0
.end method
