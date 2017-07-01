.class Lcom/google/android/gms/wearable/internal/au$6;
.super Lcom/google/android/gms/wearable/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/wearable/internal/au;->q(Lcom/google/android/gms/common/api/a$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic amh:Lcom/google/android/gms/wearable/internal/au;

.field final synthetic ami:Lcom/google/android/gms/common/api/a$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/au;Lcom/google/android/gms/common/api/a$d;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$6;->amh:Lcom/google/android/gms/wearable/internal/au;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$6;->ami:Lcom/google/android/gms/common/api/a$d;

    #@4
    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/wearable/internal/t;)V
    .registers 7

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/t;->alN:Ljava/util/List;

    #@7
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@a
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/au$6;->ami:Lcom/google/android/gms/common/api/a$d;

    #@c
    new-instance v2, Lcom/google/android/gms/wearable/internal/ah$a;

    #@e
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    #@10
    iget v4, p1, Lcom/google/android/gms/wearable/internal/t;->statusCode:I

    #@12
    invoke-direct {v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@15
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/wearable/internal/ah$a;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V

    #@18
    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@1b
    return-void
.end method
