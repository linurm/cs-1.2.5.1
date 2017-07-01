.class public final Lcom/google/android/gms/drive/events/ChangeEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/events/ResourceEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/events/ChangeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Hz:Lcom/google/android/gms/drive/DriveId;

.field final Ig:I

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/events/a;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/events/a;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/events/ChangeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;I)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@7
    iput p3, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->Ig:I

    #@9
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
    iget-object v0, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@2
    return-object v0
.end method

.method public getType()I
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public hasContentChanged()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->Ig:I

    #@2
    and-int/lit8 v0, v0, 0x2

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public hasMetadataChanged()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->Ig:I

    #@2
    and-int/lit8 v0, v0, 0x1

    #@4
    if-eqz v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    const-string v0, "ChangeEvent [id=%s,changeFlags=%x]"

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    iget-object v3, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@8
    aput-object v3, v1, v2

    #@a
    const/4 v2, 0x1

    #@b
    iget v3, p0, Lcom/google/android/gms/drive/events/ChangeEvent;->Ig:I

    #@d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v3

    #@11
    aput-object v3, v1, v2

    #@13
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/events/a;->a(Lcom/google/android/gms/drive/events/ChangeEvent;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
