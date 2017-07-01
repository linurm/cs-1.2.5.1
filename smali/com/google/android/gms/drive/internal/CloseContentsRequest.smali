.class public Lcom/google/android/gms/drive/internal/CloseContentsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/CloseContentsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Iw:Lcom/google/android/gms/drive/Contents;

.field final Iz:Ljava/lang/Boolean;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/f;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/f;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/Contents;Ljava/lang/Boolean;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->Iw:Lcom/google/android/gms/drive/Contents;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/drive/internal/CloseContentsRequest;->Iz:Ljava/lang/Boolean;

    #@9
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/Contents;Z)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4
    move-result-object v1

    #@5
    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/drive/internal/CloseContentsRequest;-><init>(ILcom/google/android/gms/drive/Contents;Ljava/lang/Boolean;)V

    #@8
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/f;->a(Lcom/google/android/gms/drive/internal/CloseContentsRequest;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
