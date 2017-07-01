.class public Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final LF:I

.field final LG:I

.field final Lm:Ljava/lang/String;

.field final Lq:Ljava/lang/String;

.field final Ls:Z

.field final Lt:Ljava/lang/String;

.field final rR:Ljava/lang/String;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/c;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/c;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->rR:Ljava/lang/String;

    #@5
    iput-object p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->Lm:Ljava/lang/String;

    #@7
    iput-boolean p4, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->Ls:Z

    #@9
    iput-object p5, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->Lq:Ljava/lang/String;

    #@b
    iput-object p6, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->Lt:Ljava/lang/String;

    #@d
    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->xM:I

    #@f
    iput p7, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->LF:I

    #@11
    iput p8, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->LG:I

    #@13
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/c;->a(Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
