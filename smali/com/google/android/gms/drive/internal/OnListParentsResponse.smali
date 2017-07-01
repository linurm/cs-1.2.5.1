.class public Lcom/google/android/gms/drive/internal/OnListParentsResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnListParentsResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final JB:Lcom/google/android/gms/common/data/DataHolder;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/al;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/al;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/internal/OnListParentsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/internal/OnListParentsResponse;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnListParentsResponse;->JB:Lcom/google/android/gms/common/data/DataHolder;

    #@7
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public gA()Lcom/google/android/gms/common/data/DataHolder;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnListParentsResponse;->JB:Lcom/google/android/gms/common/data/DataHolder;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/al;->a(Lcom/google/android/gms/drive/internal/OnListParentsResponse;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
