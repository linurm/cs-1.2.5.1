.class Lcom/google/android/gms/tagmanager/DataLayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/DataLayer$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/DataLayer;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/DataLayer$c$a;)V
    .registers 3

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/gms/tagmanager/DataLayer$c$a;->d(Ljava/util/List;)V

    #@8
    return-void
.end method

.method public a(Ljava/util/List;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/DataLayer$a;",
            ">;J)V"
        }
    .end annotation

    #@0
    return-void
.end method

.method public bP(Ljava/lang/String;)V
    .registers 2

    #@0
    return-void
.end method
