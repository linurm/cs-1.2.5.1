.class public Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/b;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/b;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;-><init>(I)V

    #@4
    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;->xM:I

    #@5
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/b;->a(Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
