.class public Lcom/google/android/gms/drive/internal/OnEventResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnEventResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Iq:I

.field final Jy:Lcom/google/android/gms/drive/events/ChangeEvent;

.field final Jz:Lcom/google/android/gms/drive/events/FileConflictEvent;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/aj;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/aj;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/internal/OnEventResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/drive/events/ChangeEvent;Lcom/google/android/gms/drive/events/FileConflictEvent;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->xM:I

    #@5
    iput p2, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Iq:I

    #@7
    iput-object p3, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Jy:Lcom/google/android/gms/drive/events/ChangeEvent;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Jz:Lcom/google/android/gms/drive/events/FileConflictEvent;

    #@b
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

.method public getEventType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Iq:I

    #@2
    return v0
.end method

.method public gw()Lcom/google/android/gms/drive/events/ChangeEvent;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Jy:Lcom/google/android/gms/drive/events/ChangeEvent;

    #@2
    return-object v0
.end method

.method public gx()Lcom/google/android/gms/drive/events/FileConflictEvent;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/OnEventResponse;->Jz:Lcom/google/android/gms/drive/events/FileConflictEvent;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/aj;->a(Lcom/google/android/gms/drive/internal/OnEventResponse;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
