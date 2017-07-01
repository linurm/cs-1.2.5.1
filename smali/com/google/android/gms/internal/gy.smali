.class public final Lcom/google/android/gms/internal/gy;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gy$a;
    }
.end annotation


# instance fields
.field private final DJ:Landroid/view/View;

.field private final FU:Lcom/google/android/gms/internal/gy$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;ILandroid/view/View;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/internal/gy$a;

    #@5
    invoke-direct {v0, p1, p2, p3, p5}, Lcom/google/android/gms/internal/gy$a;-><init>(Ljava/lang/String;Ljava/util/Collection;ILjava/lang/String;)V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/internal/gy;->FU:Lcom/google/android/gms/internal/gy$a;

    #@a
    iput-object p4, p0, Lcom/google/android/gms/internal/gy;->DJ:Landroid/view/View;

    #@c
    return-void
.end method


# virtual methods
.method public fj()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->FU:Lcom/google/android/gms/internal/gy$a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gy$a;->fj()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public fk()I
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->FU:Lcom/google/android/gms/internal/gy$a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gy$a;->fk()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public fl()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->FU:Lcom/google/android/gms/internal/gy$a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gy$a;->fl()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public fm()[Ljava/lang/String;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->FU:Lcom/google/android/gms/internal/gy$a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gy$a;->fl()Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    new-array v1, v1, [Ljava/lang/String;

    #@9
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, [Ljava/lang/String;

    #@f
    return-object v0
.end method

.method public fn()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->FU:Lcom/google/android/gms/internal/gy$a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gy$a;->fn()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public fo()Landroid/view/View;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->DJ:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/gy;->FU:Lcom/google/android/gms/internal/gy$a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gy$a;->getAccountName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
