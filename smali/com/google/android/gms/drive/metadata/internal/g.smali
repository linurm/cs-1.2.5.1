.class public Lcom/google/android/gms/drive/metadata/internal/g;
.super Lcom/google/android/gms/drive/metadata/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/a",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/a;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;Ljava/lang/Long;)V
    .registers 7

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/g;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    #@7
    move-result-wide v2

    #@8
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@b
    return-void
.end method

.method protected bridge synthetic a(Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 3

    #@0
    check-cast p2, Ljava/lang/Long;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/g;->a(Landroid/os/Bundle;Ljava/lang/Long;)V

    #@5
    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 5

    #@0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/g;->g(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected synthetic f(Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/g;->j(Landroid/os/Bundle;)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected g(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Long;
    .registers 6

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/g;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/String;II)J

    #@7
    move-result-wide v0

    #@8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method protected j(Landroid/os/Bundle;)Ljava/lang/Long;
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/g;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@7
    move-result-wide v0

    #@8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
