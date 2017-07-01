.class public Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final LB:[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;

.field final LC:Lcom/google/android/gms/common/data/DataHolder;

.field final LD:Z

.field final LE:[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/b;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/b;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;Lcom/google/android/gms/common/data/DataHolder;Z[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->LB:[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->LC:Lcom/google/android/gms/common/data/DataHolder;

    #@9
    iput-boolean p4, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->LD:Z

    #@b
    iput-object p5, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;->LE:[Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;

    #@d
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/b;->a(Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEventList;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
