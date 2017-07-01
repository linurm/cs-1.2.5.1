.class Lcom/google/android/gms/tagmanager/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/k",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private agc:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/google/android/gms/tagmanager/l$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tagmanager/l$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/tagmanager/bb$1;

    #@5
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/tagmanager/bb$1;-><init>(Lcom/google/android/gms/tagmanager/bb;ILcom/google/android/gms/tagmanager/l$a;)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/bb;->agc:Landroid/util/LruCache;

    #@a
    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bb;->agc:Landroid/util/LruCache;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bb;->agc:Landroid/util/LruCache;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
