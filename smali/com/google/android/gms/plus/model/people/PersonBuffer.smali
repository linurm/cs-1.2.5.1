.class public final Lcom/google/android/gms/plus/model/people/PersonBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person;",
        ">;"
    }
.end annotation


# instance fields
.field private final adZ:Lcom/google/android/gms/common/data/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/data/e",
            "<",
            "Lcom/google/android/gms/internal/ks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->eU()Landroid/os/Bundle;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_20

    #@9
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->eU()Landroid/os/Bundle;

    #@c
    move-result-object v0

    #@d
    const-string v1, "com.google.android.gms.plus.IsSafeParcelable"

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_20

    #@16
    new-instance v0, Lcom/google/android/gms/common/data/e;

    #@18
    sget-object v1, Lcom/google/android/gms/internal/ks;->CREATOR:Lcom/google/android/gms/internal/kt;

    #@1a
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/data/e;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->adZ:Lcom/google/android/gms/common/data/e;

    #@1f
    :goto_1f
    return-void

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    iput-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->adZ:Lcom/google/android/gms/common/data/e;

    #@23
    goto :goto_1f
.end method


# virtual methods
.method public get(I)Lcom/google/android/gms/plus/model/people/Person;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->adZ:Lcom/google/android/gms/common/data/e;

    #@2
    if-eqz v0, :cond_d

    #@4
    iget-object v0, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->adZ:Lcom/google/android/gms/common/data/e;

    #@6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/e;->ad(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/google/android/gms/plus/model/people/Person;

    #@c
    :goto_c
    return-object v0

    #@d
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ld;

    #@f
    iget-object v1, p0, Lcom/google/android/gms/plus/model/people/PersonBuffer;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@11
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ld;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@14
    goto :goto_c
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->get(I)Lcom/google/android/gms/plus/model/people/Person;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
