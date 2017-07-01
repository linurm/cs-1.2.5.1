.class final Lcom/google/android/gms/internal/cj$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final lg:Ljava/lang/Runnable;

.field private volatile oN:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cj;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cj$a;->oN:Z

    #@6
    new-instance v0, Lcom/google/android/gms/internal/cj$a$1;

    #@8
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/cj$a$1;-><init>(Lcom/google/android/gms/internal/cj$a;Lcom/google/android/gms/internal/cj;)V

    #@b
    iput-object v0, p0, Lcom/google/android/gms/internal/cj$a;->lg:Ljava/lang/Runnable;

    #@d
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cj$a;)Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/cj$a;->oN:Z

    #@2
    return v0
.end method


# virtual methods
.method public bc()V
    .registers 5

    #@0
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@2
    iget-object v1, p0, Lcom/google/android/gms/internal/cj$a;->lg:Ljava/lang/Runnable;

    #@4
    const-wide/16 v2, 0xfa

    #@6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@9
    return-void
.end method

.method public cancel()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/cj$a;->oN:Z

    #@3
    sget-object v0, Lcom/google/android/gms/internal/et;->sv:Landroid/os/Handler;

    #@5
    iget-object v1, p0, Lcom/google/android/gms/internal/cj$a;->lg:Ljava/lang/Runnable;

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@a
    return-void
.end method
