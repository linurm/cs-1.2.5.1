.class public Lcom/google/android/gms/drive/metadata/internal/d;
.super Lcom/google/android/gms/drive/metadata/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/d",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/d;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 3

    #@0
    check-cast p2, Ljava/util/Date;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/d;->a(Landroid/os/Bundle;Ljava/util/Date;)V

    #@5
    return-void
.end method

.method protected a(Landroid/os/Bundle;Ljava/util/Date;)V
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/d;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@b
    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 5

    #@0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/d;->e(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected e(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Date;
    .registers 8

    #@0
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/d;->getName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;II)J

    #@9
    move-result-wide v2

    #@a
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@d
    return-object v0
.end method

.method protected synthetic f(Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/d;->h(Landroid/os/Bundle;)Ljava/util/Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected h(Landroid/os/Bundle;)Ljava/util/Date;
    .registers 6

    #@0
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/d;->getName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@9
    move-result-wide v2

    #@a
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@d
    return-object v0
.end method
