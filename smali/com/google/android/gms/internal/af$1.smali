.class Lcom/google/android/gms/internal/af$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ey$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/af;->a(Lcom/google/android/gms/internal/ae$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lO:Lcom/google/android/gms/internal/ae$a;

.field final synthetic lP:Lcom/google/android/gms/internal/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/af;Lcom/google/android/gms/internal/ae$a;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/af$1;->lP:Lcom/google/android/gms/internal/af;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/af$1;->lO:Lcom/google/android/gms/internal/ae$a;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ex;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/af$1;->lO:Lcom/google/android/gms/internal/ae$a;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ae$a;->aE()V

    #@5
    return-void
.end method
