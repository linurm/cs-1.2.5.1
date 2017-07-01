.class Lcom/google/android/gms/internal/gh$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gh$1;->onApplicationDisconnected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Cd:I

.field final synthetic Ce:Lcom/google/android/gms/internal/gh$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gh$1;I)V
    .registers 3

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/gh$1$1;->Ce:Lcom/google/android/gms/internal/gh$1;

    #@2
    iput p2, p0, Lcom/google/android/gms/internal/gh$1$1;->Cd:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1$1;->Ce:Lcom/google/android/gms/internal/gh$1;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@4
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->d(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/cast/Cast$Listener;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_17

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/gh$1$1;->Ce:Lcom/google/android/gms/internal/gh$1;

    #@c
    iget-object v0, v0, Lcom/google/android/gms/internal/gh$1;->Cc:Lcom/google/android/gms/internal/gh;

    #@e
    invoke-static {v0}, Lcom/google/android/gms/internal/gh;->d(Lcom/google/android/gms/internal/gh;)Lcom/google/android/gms/cast/Cast$Listener;

    #@11
    move-result-object v0

    #@12
    iget v1, p0, Lcom/google/android/gms/internal/gh$1$1;->Cd:I

    #@14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V

    #@17
    :cond_17
    return-void
.end method
