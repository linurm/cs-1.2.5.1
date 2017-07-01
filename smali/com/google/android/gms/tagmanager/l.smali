.class Lcom/google/android/gms/tagmanager/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final aer:Lcom/google/android/gms/tagmanager/l$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/l$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/tagmanager/l$1;

    #@5
    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/l$1;-><init>(Lcom/google/android/gms/tagmanager/l;)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/l;->aer:Lcom/google/android/gms/tagmanager/l$a;

    #@a
    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/gms/tagmanager/l$a;)Lcom/google/android/gms/tagmanager/k;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tagmanager/l$a",
            "<TK;TV;>;)",
            "Lcom/google/android/gms/tagmanager/k",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    if-gtz p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string v1, "maxSize <= 0"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/l;->lj()I

    #@d
    move-result v0

    #@e
    const/16 v1, 0xc

    #@10
    if-ge v0, v1, :cond_18

    #@12
    new-instance v0, Lcom/google/android/gms/tagmanager/cz;

    #@14
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/tagmanager/cz;-><init>(ILcom/google/android/gms/tagmanager/l$a;)V

    #@17
    :goto_17
    return-object v0

    #@18
    :cond_18
    new-instance v0, Lcom/google/android/gms/tagmanager/bb;

    #@1a
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/tagmanager/bb;-><init>(ILcom/google/android/gms/tagmanager/l$a;)V

    #@1d
    goto :goto_17
.end method

.method lj()I
    .registers 2

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    return v0
.end method
