.class final Lcom/google/android/gms/internal/ga$g;
.super Lcom/google/android/gms/internal/fz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final yR:Lcom/google/android/gms/common/api/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$d",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
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
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/fz;-><init>()V

    #@3
    const-string v0, "Holder must not be null"

    #@5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hm;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    #@b
    iput-object v0, p0, Lcom/google/android/gms/internal/ga$g;->yR:Lcom/google/android/gms/common/api/a$d;

    #@d
    return-void
.end method


# virtual methods
.method public dT()V
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    #@6
    iget-object v1, p0, Lcom/google/android/gms/internal/ga$g;->yR:Lcom/google/android/gms/common/api/a$d;

    #@8
    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/a$d;->a(Ljava/lang/Object;)V

    #@b
    return-void
.end method
