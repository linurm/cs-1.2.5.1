.class Lcom/google/android/gms/internal/em$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sg:Lcom/google/android/gms/internal/em;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/em;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/em$1;->sg:Lcom/google/android/gms/internal/em;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/em$1;->sg:Lcom/google/android/gms/internal/em;

    #@2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/em;->a(Lcom/google/android/gms/internal/em;Ljava/lang/Thread;)Ljava/lang/Thread;

    #@9
    iget-object v0, p0, Lcom/google/android/gms/internal/em$1;->sg:Lcom/google/android/gms/internal/em;

    #@b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/em;->bh()V

    #@e
    return-void
.end method
