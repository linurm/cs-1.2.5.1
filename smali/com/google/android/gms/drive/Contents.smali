.class public Lcom/google/android/gms/drive/Contents;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/Contents;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Fj:Landroid/os/ParcelFileDescriptor;

.field HA:Ljava/lang/String;

.field HB:Z

.field private HC:Z

.field private HD:Z

.field private HE:Z

.field final Hy:I

.field final Hz:Lcom/google/android/gms/drive/DriveId;

.field private mClosed:Z

.field final ra:I

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/a;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/a;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;IILcom/google/android/gms/drive/DriveId;Ljava/lang/String;Z)V
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->mClosed:Z

    #@6
    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->HC:Z

    #@8
    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->HD:Z

    #@a
    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->HE:Z

    #@c
    iput p1, p0, Lcom/google/android/gms/drive/Contents;->xM:I

    #@e
    iput-object p2, p0, Lcom/google/android/gms/drive/Contents;->Fj:Landroid/os/ParcelFileDescriptor;

    #@10
    iput p3, p0, Lcom/google/android/gms/drive/Contents;->ra:I

    #@12
    iput p4, p0, Lcom/google/android/gms/drive/Contents;->Hy:I

    #@14
    iput-object p5, p0, Lcom/google/android/gms/drive/Contents;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@16
    iput-object p6, p0, Lcom/google/android/gms/drive/Contents;->HA:Ljava/lang/String;

    #@18
    iput-boolean p7, p0, Lcom/google/android/gms/drive/Contents;->HB:Z

    #@1a
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->mClosed:Z

    #@3
    return-void
.end method

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
    iget-object v0, p0, Lcom/google/android/gms/drive/Contents;->Hz:Lcom/google/android/gms/drive/DriveId;

    #@2
    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->mClosed:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "Contents have been closed, cannot access the input stream."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget v0, p0, Lcom/google/android/gms/drive/Contents;->Hy:I

    #@e
    const/high16 v1, 0x10000000

    #@10
    if-eq v0, v1, :cond_1a

    #@12
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    const-string v1, "getInputStream() can only be used with contents opened with MODE_READ_ONLY."

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->HC:Z

    #@1c
    if-eqz v0, :cond_26

    #@1e
    new-instance v0, Ljava/lang/IllegalStateException;

    #@20
    const-string v1, "getInputStream() can only be called once per Contents instance."

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    :cond_26
    const/4 v0, 0x1

    #@27
    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->HC:Z

    #@29
    new-instance v0, Ljava/io/FileInputStream;

    #@2b
    iget-object v1, p0, Lcom/google/android/gms/drive/Contents;->Fj:Landroid/os/ParcelFileDescriptor;

    #@2d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@34
    return-object v0
.end method

.method public getMode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/drive/Contents;->Hy:I

    #@2
    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->mClosed:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "Contents have been closed, cannot access the output stream."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget v0, p0, Lcom/google/android/gms/drive/Contents;->Hy:I

    #@e
    const/high16 v1, 0x20000000

    #@10
    if-eq v0, v1, :cond_1a

    #@12
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    const-string v1, "getOutputStream() can only be used with contents opened with MODE_WRITE_ONLY."

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    :cond_1a
    iget-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->HD:Z

    #@1c
    if-eqz v0, :cond_26

    #@1e
    new-instance v0, Ljava/lang/IllegalStateException;

    #@20
    const-string v1, "getOutputStream() can only be called once per Contents instance."

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    :cond_26
    const/4 v0, 0x1

    #@27
    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->HD:Z

    #@29
    new-instance v0, Ljava/io/FileOutputStream;

    #@2b
    iget-object v1, p0, Lcom/google/android/gms/drive/Contents;->Fj:Landroid/os/ParcelFileDescriptor;

    #@2d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@34
    return-object v0
.end method

.method public getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 3

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->mClosed:Z

    #@2
    if-eqz v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "Contents have been closed, cannot access the output stream."

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/drive/Contents;->Fj:Landroid/os/ParcelFileDescriptor;

    #@e
    return-object v0
.end method

.method public getRequestId()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/drive/Contents;->ra:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/a;->a(Lcom/google/android/gms/drive/Contents;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
