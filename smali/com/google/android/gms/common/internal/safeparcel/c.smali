.class public final Lcom/google/android/gms/common/internal/safeparcel/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(TT;)[B"
        }
    .end annotation

    #@0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@8
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@f
    return-object v1
.end method
