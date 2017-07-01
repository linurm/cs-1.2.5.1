.class Lcom/google/android/gms/internal/km$1;
.super Lcom/google/android/gms/internal/km$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/km;->loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic acf:Ljava/lang/String;

.field final synthetic acm:I

.field final synthetic acn:Lcom/google/android/gms/internal/km;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/km;ILjava/lang/String;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/km$1;->acn:Lcom/google/android/gms/internal/km;

    #@2
    iput p2, p0, Lcom/google/android/gms/internal/km$1;->acm:I

    #@4
    iput-object p3, p0, Lcom/google/android/gms/internal/km$1;->acf:Ljava/lang/String;

    #@6
    const/4 v0, 0x0

    #@7
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/km$a;-><init>(Lcom/google/android/gms/internal/km$1;)V

    #@a
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/km$1;->a(Lcom/google/android/gms/plus/internal/e;)V

    #@5
    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .registers 4

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/km$1;->acm:I

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/km$1;->acf:Ljava/lang/String;

    #@4
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;)Lcom/google/android/gms/internal/hg;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/km$1;->a(Lcom/google/android/gms/internal/hg;)V

    #@b
    return-void
.end method
