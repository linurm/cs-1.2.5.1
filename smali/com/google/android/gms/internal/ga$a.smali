.class final Lcom/google/android/gms/internal/ga$a;
.super Lcom/google/android/gms/internal/fz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final yR:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/a$d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/fz;-><init>()V

    #@3
    const-string v0, "Result holder must not be null"

    #@5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    #@b
    iput-object v0, p0, Lcom/google/android/gms/internal/ga$a;->yR:Lcom/google/android/gms/common/api/a$d;

    #@d
    return-void
.end method


# virtual methods
.method public b(II)V
    .registers 6

    #@0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@5
    iget-object v1, p0, Lcom/google/android/gms/internal/ga$a;->yR:Lcom/google/android/gms/common/api/a$d;

    #@7
    new-instance v2, Lcom/google/android/gms/internal/ga$b;

    #@9
    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/ga$b;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    #@c
    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@f
    return-void
.end method
