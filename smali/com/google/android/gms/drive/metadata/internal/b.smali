.class public Lcom/google/android/gms/drive/metadata/internal/b;
.super Lcom/google/android/gms/drive/metadata/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/a",
        "<",
        "Ljava/lang/Boolean;",
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
.method protected a(Landroid/os/Bundle;Ljava/lang/Boolean;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/b;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@7
    move-result v1

    #@8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@b
    return-void
.end method

.method protected bridge synthetic a(Landroid/os/Bundle;Ljava/lang/Object;)V
    .registers 3

    #@0
    check-cast p2, Ljava/lang/Boolean;

    #@2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/b;->a(Landroid/os/Bundle;Ljava/lang/Boolean;)V

    #@5
    return-void
.end method

.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 5

    #@0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/internal/b;->d(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected d(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Boolean;
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/b;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->d(Ljava/lang/String;II)Z

    #@7
    move-result v0

    #@8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method protected synthetic f(Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/b;->g(Landroid/os/Bundle;)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected g(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/drive/metadata/internal/b;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
