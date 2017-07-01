.class public Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final LA:Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;

.field final Lm:Ljava/lang/String;

.field final Lq:Ljava/lang/String;

.field final Ls:Z

.field final Lt:Ljava/lang/String;

.field final Lu:Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;

.field final Lv:Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;

.field final Lw:Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;

.field final Lx:Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;

.field final Ly:Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;

.field final Lz:Lcom/google/android/gms/drive/realtime/internal/event/ValueChangedDetails;

.field final rR:Ljava/lang/String;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/a;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/a;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;Lcom/google/android/gms/drive/realtime/internal/event/ValueChangedDetails;Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;)V
    .registers 14

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->rR:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lm:Ljava/lang/String;

    #@9
    iput-boolean p4, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Ls:Z

    #@b
    iput-object p5, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lq:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lt:Ljava/lang/String;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lu:Lcom/google/android/gms/drive/realtime/internal/event/TextInsertedDetails;

    #@11
    iput-object p8, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lv:Lcom/google/android/gms/drive/realtime/internal/event/TextDeletedDetails;

    #@13
    iput-object p9, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lw:Lcom/google/android/gms/drive/realtime/internal/event/ValuesAddedDetails;

    #@15
    iput-object p10, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lx:Lcom/google/android/gms/drive/realtime/internal/event/ValuesRemovedDetails;

    #@17
    iput-object p11, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Ly:Lcom/google/android/gms/drive/realtime/internal/event/ValuesSetDetails;

    #@19
    iput-object p12, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->Lz:Lcom/google/android/gms/drive/realtime/internal/event/ValueChangedDetails;

    #@1b
    iput-object p13, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;->LA:Lcom/google/android/gms/drive/realtime/internal/event/ReferenceShiftedDetails;

    #@1d
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/a;->a(Lcom/google/android/gms/drive/realtime/internal/event/ParcelableEvent;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
