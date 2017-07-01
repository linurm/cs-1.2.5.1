.class final Lcom/google/android/gms/plus/internal/e$d;
.super Lcom/google/android/gms/internal/hb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hb",
        "<",
        "Lcom/google/android/gms/plus/internal/d;",
        ">.b<",
        "Lcom/google/android/gms/common/api/a$d",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic abM:Lcom/google/android/gms/plus/internal/e;

.field private final yz:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/Status;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/common/api/Status;",
            ")V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/internal/e$d;->abM:Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/hb$b;-><init>(Lcom/google/android/gms/internal/hb;Ljava/lang/Object;)V

    #@5
    iput-object p3, p0, Lcom/google/android/gms/plus/internal/e$d;->yz:Lcom/google/android/gms/common/api/Status;

    #@7
    return-void
.end method


# virtual methods
.method protected synthetic d(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Lcom/google/android/gms/common/api/a$d;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/e$d;->n(Lcom/google/android/gms/common/api/a$d;)V

    #@5
    return-void
.end method

.method protected fu()V
    .registers 1

    #@0
    return-void
.end method

.method protected n(Lcom/google/android/gms/common/api/a$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    #@0
    if-eqz p1, :cond_7

    #@2
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/e$d;->yz:Lcom/google/android/gms/common/api/Status;

    #@4
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@7
    :cond_7
    return-void
.end method
