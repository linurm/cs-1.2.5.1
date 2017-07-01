.class Lcom/google/android/gms/internal/y$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/y;-><init>(Lcom/google/android/gms/internal/u;Lcom/google/android/gms/internal/y$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final ll:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/u;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic lm:Lcom/google/android/gms/internal/u;

.field final synthetic ln:Lcom/google/android/gms/internal/y;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/y;Lcom/google/android/gms/internal/u;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/y$1;->ln:Lcom/google/android/gms/internal/y;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/y$1;->lm:Lcom/google/android/gms/internal/u;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@9
    iget-object v1, p0, Lcom/google/android/gms/internal/y$1;->lm:Lcom/google/android/gms/internal/u;

    #@b
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@e
    iput-object v0, p0, Lcom/google/android/gms/internal/y$1;->ll:Ljava/lang/ref/WeakReference;

    #@10
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/y$1;->ln:Lcom/google/android/gms/internal/y;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/y;Z)Z

    #@6
    iget-object v0, p0, Lcom/google/android/gms/internal/y$1;->ll:Ljava/lang/ref/WeakReference;

    #@8
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Lcom/google/android/gms/internal/u;

    #@e
    if-eqz v0, :cond_19

    #@10
    iget-object v1, p0, Lcom/google/android/gms/internal/y$1;->ln:Lcom/google/android/gms/internal/y;

    #@12
    invoke-static {v1}, Lcom/google/android/gms/internal/y;->a(Lcom/google/android/gms/internal/y;)Lcom/google/android/gms/internal/ai;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/u;->b(Lcom/google/android/gms/internal/ai;)V

    #@19
    :cond_19
    return-void
.end method
