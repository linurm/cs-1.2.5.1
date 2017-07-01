.class public Lcom/google/android/gms/internal/y$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/y$a;->mHandler:Landroid/os/Handler;

    #@5
    return-void
.end method


# virtual methods
.method public postDelayed(Ljava/lang/Runnable;J)Z
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/y$a;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/y$a;->mHandler:Landroid/os/Handler;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    #@5
    return-void
.end method
