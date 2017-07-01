.class public abstract Lcom/google/android/gms/internal/em;
.super Ljava/lang/Object;


# instance fields
.field private final lg:Ljava/lang/Runnable;

.field private volatile sf:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/internal/em$1;

    #@5
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/em$1;-><init>(Lcom/google/android/gms/internal/em;)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/em;->lg:Ljava/lang/Runnable;

    #@a
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/em;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/em;->sf:Ljava/lang/Thread;

    #@2
    return-object p1
.end method


# virtual methods
.method public abstract bh()V
.end method

.method public final cancel()V
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/em;->onStop()V

    #@3
    iget-object v0, p0, Lcom/google/android/gms/internal/em;->sf:Ljava/lang/Thread;

    #@5
    if-eqz v0, :cond_c

    #@7
    iget-object v0, p0, Lcom/google/android/gms/internal/em;->sf:Ljava/lang/Thread;

    #@9
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    #@c
    :cond_c
    return-void
.end method

.method public abstract onStop()V
.end method

.method public final start()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/em;->lg:Ljava/lang/Runnable;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/en;->execute(Ljava/lang/Runnable;)V

    #@5
    return-void
.end method
