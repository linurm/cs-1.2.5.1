.class Lcom/google/android/gms/internal/dn$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dn;->bh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pG:Lcom/google/android/gms/internal/dn;

.field final synthetic pH:Lcom/google/android/gms/internal/ef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/ef;)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/dn$2;->pG:Lcom/google/android/gms/internal/dn;

    #@2
    iput-object p2, p0, Lcom/google/android/gms/internal/dn$2;->pH:Lcom/google/android/gms/internal/ef;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/dn$2;->pG:Lcom/google/android/gms/internal/dn;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/dn;->a(Lcom/google/android/gms/internal/dn;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/dn$2;->pG:Lcom/google/android/gms/internal/dn;

    #@9
    invoke-static {v0}, Lcom/google/android/gms/internal/dn;->b(Lcom/google/android/gms/internal/dn;)Lcom/google/android/gms/internal/dm$a;

    #@c
    move-result-object v0

    #@d
    iget-object v2, p0, Lcom/google/android/gms/internal/dn$2;->pH:Lcom/google/android/gms/internal/ef;

    #@f
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/dm$a;->a(Lcom/google/android/gms/internal/ef;)V

    #@12
    monitor-exit v1

    #@13
    return-void

    #@14
    :catchall_14
    move-exception v0

    #@15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    #@16
    throw v0
.end method
