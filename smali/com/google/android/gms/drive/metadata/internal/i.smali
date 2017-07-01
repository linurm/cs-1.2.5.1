.class public Lcom/google/android/gms/drive/metadata/internal/i;
.super Lcom/google/android/gms/drive/metadata/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Lcom/google/android/gms/drive/metadata/b",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/b;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 3

    #@0
    check-cast p2, Ljava/util/Collection;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/i;->a(Landroid/os/Bundle;Ljava/util/Collection;)V

    #@5
    return-void
.end method

.method protected a(Landroid/os/Bundle;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/i;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@c
    return-void
.end method

.method protected synthetic f(Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/i;->k(Landroid/os/Bundle;)Ljava/util/Collection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected k(Landroid/os/Bundle;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/i;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
