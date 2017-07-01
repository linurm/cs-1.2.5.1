.class Lcom/google/android/gms/dynamic/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamic/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/dynamic/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic Mb:Lcom/google/android/gms/dynamic/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/a;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/dynamic/a$1;->Mb:Lcom/google/android/gms/dynamic/a;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$1;->Mb:Lcom/google/android/gms/dynamic/a;

    #@2
    invoke-static {v0, p1}, Lcom/google/android/gms/dynamic/a;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/LifecycleDelegate;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@5
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$1;->Mb:Lcom/google/android/gms/dynamic/a;

    #@7
    invoke-static {v0}, Lcom/google/android/gms/dynamic/a;->a(Lcom/google/android/gms/dynamic/a;)Ljava/util/LinkedList;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_25

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/google/android/gms/dynamic/a$a;

    #@1b
    iget-object v2, p0, Lcom/google/android/gms/dynamic/a$1;->Mb:Lcom/google/android/gms/dynamic/a;

    #@1d
    invoke-static {v2}, Lcom/google/android/gms/dynamic/a;->b(Lcom/google/android/gms/dynamic/a;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    #@20
    move-result-object v2

    #@21
    invoke-interface {v0, v2}, Lcom/google/android/gms/dynamic/a$a;->b(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V

    #@24
    goto :goto_f

    #@25
    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$1;->Mb:Lcom/google/android/gms/dynamic/a;

    #@27
    invoke-static {v0}, Lcom/google/android/gms/dynamic/a;->a(Lcom/google/android/gms/dynamic/a;)Ljava/util/LinkedList;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    #@2e
    iget-object v0, p0, Lcom/google/android/gms/dynamic/a$1;->Mb:Lcom/google/android/gms/dynamic/a;

    #@30
    const/4 v1, 0x0

    #@31
    invoke-static {v0, v1}, Lcom/google/android/gms/dynamic/a;->a(Lcom/google/android/gms/dynamic/a;Landroid/os/Bundle;)Landroid/os/Bundle;

    #@34
    return-void
.end method
