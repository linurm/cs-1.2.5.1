.class Lcom/google/android/gms/tagmanager/bb$1;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/bb;-><init>(ILcom/google/android/gms/tagmanager/l$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic agd:Lcom/google/android/gms/tagmanager/l$a;

.field final synthetic age:Lcom/google/android/gms/tagmanager/bb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/bb;ILcom/google/android/gms/tagmanager/l$a;)V
    .registers 4

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/bb$1;->age:Lcom/google/android/gms/tagmanager/bb;

    #@2
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/bb$1;->agd:Lcom/google/android/gms/tagmanager/l$a;

    #@4
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    #@7
    return-void
.end method


# virtual methods
.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/bb$1;->agd:Lcom/google/android/gms/tagmanager/l$a;

    #@2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/tagmanager/l$a;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method
