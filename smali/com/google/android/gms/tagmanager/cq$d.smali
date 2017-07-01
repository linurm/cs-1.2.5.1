.class public Lcom/google/android/gms/tagmanager/cq$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private aeU:Ljava/lang/String;

.field private final agZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$e;",
            ">;"
        }
    .end annotation
.end field

.field private final aha:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/cq$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private ahb:I


# direct methods
.method private constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cq$d;->agZ:Ljava/util/List;

    #@a
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cq$d;->aha:Ljava/util/Map;

    #@11
    const-string v0, ""

    #@13
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cq$d;->aeU:Ljava/lang/String;

    #@15
    const/4 v0, 0x0

    #@16
    iput v0, p0, Lcom/google/android/gms/tagmanager/cq$d;->ahb:I

    #@18
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/cq$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cq$d;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/cq$a;)Lcom/google/android/gms/tagmanager/cq$d;
    .registers 5

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cq$a;->mo()Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Lcom/google/android/gms/internal/b;->cI:Lcom/google/android/gms/internal/b;

    #@6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@10
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq$d;->aha:Ljava/util/Map;

    #@16
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Ljava/util/List;

    #@1c
    if-nez v0, :cond_28

    #@1e
    new-instance v0, Ljava/util/ArrayList;

    #@20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@23
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cq$d;->aha:Ljava/util/Map;

    #@25
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    :cond_28
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2b
    return-object p0
.end method

.method public a(Lcom/google/android/gms/tagmanager/cq$e;)Lcom/google/android/gms/tagmanager/cq$d;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq$d;->agZ:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    return-object p0
.end method

.method public ce(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cq$d;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cq$d;->aeU:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public du(I)Lcom/google/android/gms/tagmanager/cq$d;
    .registers 2

    #@0
    iput p1, p0, Lcom/google/android/gms/tagmanager/cq$d;->ahb:I

    #@2
    return-object p0
.end method

.method public mu()Lcom/google/android/gms/tagmanager/cq$c;
    .registers 7

    #@0
    new-instance v0, Lcom/google/android/gms/tagmanager/cq$c;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cq$d;->agZ:Ljava/util/List;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cq$d;->aha:Ljava/util/Map;

    #@6
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/cq$d;->aeU:Ljava/lang/String;

    #@8
    iget v4, p0, Lcom/google/android/gms/tagmanager/cq$d;->ahb:I

    #@a
    const/4 v5, 0x0

    #@b
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/cq$c;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILcom/google/android/gms/tagmanager/cq$1;)V

    #@e
    return-object v0
.end method
