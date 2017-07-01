.class public Lcom/google/android/gms/internal/ek;
.super Ljava/lang/Object;


# instance fields
.field private final ls:Ljava/lang/Object;

.field private final rD:Lcom/google/android/gms/internal/eh;

.field private final rG:Ljava/lang/String;

.field private sc:I

.field private sd:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/eh;Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/ek;->ls:Ljava/lang/Object;

    #@a
    iput-object p1, p0, Lcom/google/android/gms/internal/ek;->rD:Lcom/google/android/gms/internal/eh;

    #@c
    iput-object p2, p0, Lcom/google/android/gms/internal/ek;->rG:Ljava/lang/String;

    #@e
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/eh;->bH()Lcom/google/android/gms/internal/eh;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ek;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/String;)V

    #@7
    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 6

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ek;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ek;->sc:I

    #@5
    iput p2, p0, Lcom/google/android/gms/internal/ek;->sd:I

    #@7
    iget-object v0, p0, Lcom/google/android/gms/internal/ek;->rD:Lcom/google/android/gms/internal/eh;

    #@9
    iget-object v2, p0, Lcom/google/android/gms/internal/ek;->rG:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v2, p0}, Lcom/google/android/gms/internal/eh;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ek;)V

    #@e
    monitor-exit v1

    #@f
    return-void

    #@10
    :catchall_10
    move-exception v0

    #@11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    #@12
    throw v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 5

    #@0
    iget-object v1, p0, Lcom/google/android/gms/internal/ek;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@8
    const-string v2, "pmnli"

    #@a
    iget v3, p0, Lcom/google/android/gms/internal/ek;->sc:I

    #@c
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@f
    const-string v2, "pmnll"

    #@11
    iget v3, p0, Lcom/google/android/gms/internal/ek;->sd:I

    #@13
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@16
    monitor-exit v1

    #@17
    return-object v0

    #@18
    :catchall_18
    move-exception v0

    #@19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    #@1a
    throw v0
.end method
