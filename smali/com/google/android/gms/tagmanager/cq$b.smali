.class public Lcom/google/android/gms/tagmanager/cq$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final agX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private agY:Lcom/google/android/gms/internal/d$a;


# direct methods
.method private constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cq$b;->agX:Ljava/util/Map;

    #@a
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/cq$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cq$b;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/cq$b;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq$b;->agX:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-object p0
.end method

.method public i(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/cq$b;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cq$b;->agY:Lcom/google/android/gms/internal/d$a;

    #@2
    return-object p0
.end method

.method public mq()Lcom/google/android/gms/tagmanager/cq$a;
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/tagmanager/cq$a;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cq$b;->agX:Ljava/util/Map;

    #@4
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cq$b;->agY:Lcom/google/android/gms/internal/d$a;

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/cq$a;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/d$a;Lcom/google/android/gms/tagmanager/cq$1;)V

    #@a
    return-object v0
.end method
