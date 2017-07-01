.class Lcom/google/android/gms/tagmanager/DataLayer$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/DataLayer$c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/DataLayer;->ly()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic afg:Lcom/google/android/gms/tagmanager/DataLayer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/DataLayer;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/DataLayer$2;->afg:Lcom/google/android/gms/tagmanager/DataLayer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public d(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/DataLayer$a;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v1

    #@4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_20

    #@a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/google/android/gms/tagmanager/DataLayer$a;

    #@10
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/DataLayer$2;->afg:Lcom/google/android/gms/tagmanager/DataLayer;

    #@12
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/DataLayer$2;->afg:Lcom/google/android/gms/tagmanager/DataLayer;

    #@14
    iget-object v4, v0, Lcom/google/android/gms/tagmanager/DataLayer$a;->JL:Ljava/lang/String;

    #@16
    iget-object v0, v0, Lcom/google/android/gms/tagmanager/DataLayer$a;->afh:Ljava/lang/Object;

    #@18
    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Map;

    #@1b
    move-result-object v0

    #@1c
    invoke-static {v2, v0}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Lcom/google/android/gms/tagmanager/DataLayer;Ljava/util/Map;)V

    #@1f
    goto :goto_4

    #@20
    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/DataLayer$2;->afg:Lcom/google/android/gms/tagmanager/DataLayer;

    #@22
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->a(Lcom/google/android/gms/tagmanager/DataLayer;)Ljava/util/concurrent/CountDownLatch;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@29
    return-void
.end method
