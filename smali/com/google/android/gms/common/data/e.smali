.class public Lcom/google/android/gms/common/data/e;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
        ">",
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final EE:[Ljava/lang/String;


# instance fields
.field private final EF:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    const-string v2, "data"

    #@6
    aput-object v2, v0, v1

    #@8
    sput-object v0, Lcom/google/android/gms/common/data/e;->EE:[Ljava/lang/String;

    #@a
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcelable$Creator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    #@3
    iput-object p2, p0, Lcom/google/android/gms/common/data/e;->EF:Landroid/os/Parcelable$Creator;

    #@5
    return-void
.end method


# virtual methods
.method public ad(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    #@0
    const/4 v3, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/gms/common/data/e;->DG:Lcom/google/android/gms/common/data/DataHolder;

    #@3
    const-string v1, "data"

    #@5
    invoke-virtual {v0, v1, p1, v3}, Lcom/google/android/gms/common/data/DataHolder;->f(Ljava/lang/String;II)[B

    #@8
    move-result-object v0

    #@9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@c
    move-result-object v1

    #@d
    array-length v2, v0

    #@e
    invoke-virtual {v1, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    #@11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    iget-object v0, p0, Lcom/google/android/gms/common/data/e;->EF:Landroid/os/Parcelable$Creator;

    #@16
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    #@1c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/e;->ad(I)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
