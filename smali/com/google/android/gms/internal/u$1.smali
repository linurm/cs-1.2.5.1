.class Lcom/google/android/gms/internal/u$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kH:Lcom/google/android/gms/internal/u;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/u;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/internal/u$1;->kH:Lcom/google/android/gms/internal/u;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/u$1;->kH:Lcom/google/android/gms/internal/u;

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/u$c;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_2b

    #@8
    iget-object v0, p0, Lcom/google/android/gms/internal/u$1;->kH:Lcom/google/android/gms/internal/u;

    #@a
    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/u$c;

    #@d
    move-result-object v0

    #@e
    iget-object v0, v0, Lcom/google/android/gms/internal/u$c;->kU:Lcom/google/android/gms/internal/ef;

    #@10
    if-eqz v0, :cond_2b

    #@12
    iget-object v0, p0, Lcom/google/android/gms/internal/u$1;->kH:Lcom/google/android/gms/internal/u;

    #@14
    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/u$c;

    #@17
    move-result-object v0

    #@18
    iget-object v0, v0, Lcom/google/android/gms/internal/u$c;->kU:Lcom/google/android/gms/internal/ef;

    #@1a
    iget-object v0, v0, Lcom/google/android/gms/internal/ef;->oy:Lcom/google/android/gms/internal/ex;

    #@1c
    if-eqz v0, :cond_2b

    #@1e
    iget-object v0, p0, Lcom/google/android/gms/internal/u$1;->kH:Lcom/google/android/gms/internal/u;

    #@20
    invoke-static {v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/u;)Lcom/google/android/gms/internal/u$c;

    #@23
    move-result-object v0

    #@24
    iget-object v0, v0, Lcom/google/android/gms/internal/u$c;->kU:Lcom/google/android/gms/internal/ef;

    #@26
    iget-object v0, v0, Lcom/google/android/gms/internal/ef;->oy:Lcom/google/android/gms/internal/ex;

    #@28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ex;->bX()V

    #@2b
    :cond_2b
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    #@0
    return-void
.end method
