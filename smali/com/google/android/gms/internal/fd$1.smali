.class final Lcom/google/android/gms/internal/fd$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/fd;",
        ">;"
    }
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
.method public C(I)[Lcom/google/android/gms/internal/fd;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    new-array v0, p1, [Lcom/google/android/gms/internal/fd;

    #@2
    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fd$1;->k(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fd;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public k(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fd;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/internal/fd;

    #@2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/fd;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fd$1;->C(I)[Lcom/google/android/gms/internal/fd;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
