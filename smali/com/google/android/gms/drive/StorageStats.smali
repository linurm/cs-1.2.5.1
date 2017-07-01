.class public Lcom/google/android/gms/drive/StorageStats;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/StorageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Ib:J

.field final Ic:J

.field final Id:J

.field final Ie:J

.field final If:I

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/e;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/e;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/StorageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(IJJJJI)V
    .registers 11

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/StorageStats;->xM:I

    #@5
    iput-wide p2, p0, Lcom/google/android/gms/drive/StorageStats;->Ib:J

    #@7
    iput-wide p4, p0, Lcom/google/android/gms/drive/StorageStats;->Ic:J

    #@9
    iput-wide p6, p0, Lcom/google/android/gms/drive/StorageStats;->Id:J

    #@b
    iput-wide p8, p0, Lcom/google/android/gms/drive/StorageStats;->Ie:J

    #@d
    iput p10, p0, Lcom/google/android/gms/drive/StorageStats;->If:I

    #@f
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/e;->a(Lcom/google/android/gms/drive/StorageStats;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
