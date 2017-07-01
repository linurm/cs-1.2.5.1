.class public final Lcom/google/android/gms/drive/events/FileConflictEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/events/DriveEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/events/FileConflictEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Hz:Lcom/google/android/gms/drive/DriveId;

.field final Ij:Landroid/os/ParcelFileDescriptor;

.field final Ik:Landroid/os/ParcelFileDescriptor;

.field final Il:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final Im:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private In:Z

.field private Io:Z

.field private Ip:Z

.field final xM:I

.field final yQ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/events/c;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/events/c;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/events/FileConflictEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/drive/DriveId;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/os/ParcelFileDescriptor;",
            "Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->In:Z

    #@6
    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Io:Z

    #@8
    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Ip:Z

    #@a
    iput p1, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->xM:I

    #@c
    iput-object p2, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@e
    iput-object p3, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->yQ:Ljava/lang/String;

    #@10
    iput-object p4, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Ij:Landroid/os/ParcelFileDescriptor;

    #@12
    iput-object p5, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Ik:Landroid/os/ParcelFileDescriptor;

    #@14
    iput-object p6, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Il:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@16
    iput-object p7, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Im:Ljava/util/ArrayList;

    #@18
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

.method public getDriveId()Lcom/google/android/gms/drive/DriveId;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@2
    return-object v0
.end method

.method public getType()I
    .registers 2

    #@0
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    const-string v0, "FileConflictEvent [id=%s]"

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    iget-object v3, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@8
    aput-object v3, v1, v2

    #@a
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/events/c;->a(Lcom/google/android/gms/drive/events/FileConflictEvent;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
