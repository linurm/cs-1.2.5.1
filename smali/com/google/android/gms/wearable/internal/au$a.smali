.class Lcom/google/android/gms/wearable/internal/au$a;
.super Lcom/google/android/gms/wearable/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final amk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final yR:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataItemResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/a$d;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/wearable/DataApi$DataItemResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/au$a;->yR:Lcom/google/android/gms/common/api/a$d;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/au$a;->amk:Ljava/util/List;

    #@7
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/wearable/internal/am;)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$a;->yR:Lcom/google/android/gms/common/api/a$d;

    #@2
    new-instance v1, Lcom/google/android/gms/wearable/internal/f$a;

    #@4
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    #@6
    iget v3, p1, Lcom/google/android/gms/wearable/internal/am;->statusCode:I

    #@8
    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@b
    iget-object v3, p1, Lcom/google/android/gms/wearable/internal/am;->alO:Lcom/google/android/gms/wearable/internal/m;

    #@d
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/wearable/internal/f$a;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/wearable/DataItem;)V

    #@10
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@13
    iget v0, p1, Lcom/google/android/gms/wearable/internal/am;->statusCode:I

    #@15
    if-eqz v0, :cond_2e

    #@17
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/au$a;->amk:Ljava/util/List;

    #@19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_2e

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/util/concurrent/FutureTask;

    #@29
    const/4 v2, 0x1

    #@2a
    invoke-virtual {v0, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    #@2d
    goto :goto_1d

    #@2e
    :cond_2e
    return-void
.end method
