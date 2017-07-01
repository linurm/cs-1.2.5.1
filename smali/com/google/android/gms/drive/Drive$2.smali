.class final Lcom/google/android/gms/drive/Drive$2;
.super Lcom/google/android/gms/drive/Drive$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/Drive$a",
        "<",
        "Lcom/google/android/gms/drive/Drive$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/drive/Drive$a;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$ApiOptions;)Landroid/os/Bundle;
    .registers 3

    #@0
    check-cast p1, Lcom/google/android/gms/drive/Drive$b;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/Drive$2;->a(Lcom/google/android/gms/drive/Drive$b;)Landroid/os/Bundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected a(Lcom/google/android/gms/drive/Drive$b;)Landroid/os/Bundle;
    .registers 3

    #@0
    if-nez p1, :cond_8

    #@2
    new-instance v0, Landroid/os/Bundle;

    #@4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/drive/Drive$b;->gj()Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    goto :goto_7
.end method
