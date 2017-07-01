.class Lcom/google/android/gms/internal/cj$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cj$a;-><init>(Lcom/google/android/gms/internal/cj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final oO:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/cj;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic oP:Lcom/google/android/gms/internal/cj;

.field final synthetic oQ:Lcom/google/android/gms/internal/cj$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cj$a;Lcom/google/android/gms/internal/cj;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/cj$a$1;->oQ:Lcom/google/android/gms/internal/cj$a;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/cj$a$1;->oP:Lcom/google/android/gms/internal/cj;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@9
    iget-object v1, p0, Lcom/google/android/gms/internal/cj$a$1;->oP:Lcom/google/android/gms/internal/cj;

    #@b
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@e
    iput-object v0, p0, Lcom/google/android/gms/internal/cj$a$1;->oO:Ljava/lang/ref/WeakReference;

    #@10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/cj$a$1;->oO:Ljava/lang/ref/WeakReference;

    #@2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/cj;

    #@8
    iget-object v1, p0, Lcom/google/android/gms/internal/cj$a$1;->oQ:Lcom/google/android/gms/internal/cj$a;

    #@a
    invoke-static {v1}, Lcom/google/android/gms/internal/cj$a;->a(Lcom/google/android/gms/internal/cj$a;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1a

    #@10
    if-eqz v0, :cond_1a

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cj;->bb()V

    #@15
    iget-object v0, p0, Lcom/google/android/gms/internal/cj$a$1;->oQ:Lcom/google/android/gms/internal/cj$a;

    #@17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cj$a;->bc()V

    #@1a
    :cond_1a
    return-void
.end method
