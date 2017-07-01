.class public Lcom/google/android/gms/drive/internal/CreateFileRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/CreateFileRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final IE:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final IF:Ljava/lang/Integer;

.field final IG:Lcom/google/android/gms/drive/DriveId;

.field final IH:Z

.field final Iw:Lcom/google/android/gms/drive/Contents;

.field final Iy:Ljava/lang/String;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/drive/internal/j;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/j;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;Ljava/lang/Integer;ZLjava/lang/String;)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->xM:I

    #@5
    invoke-static {p2}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    #@b
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->IG:Lcom/google/android/gms/drive/DriveId;

    #@d
    invoke-static {p3}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@13
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->IE:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    #@15
    if-eqz p5, :cond_1d

    #@17
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    #@1a
    move-result v0

    #@1b
    if-nez v0, :cond_2c

    #@1d
    :cond_1d
    invoke-static {p4}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/google/android/gms/drive/Contents;

    #@23
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->Iw:Lcom/google/android/gms/drive/Contents;

    #@25
    :goto_25
    iput-object p5, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->IF:Ljava/lang/Integer;

    #@27
    iput-boolean p6, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->IH:Z

    #@29
    iput-object p7, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->Iy:Ljava/lang/String;

    #@2b
    return-void

    #@2c
    :cond_2c
    const/4 v0, 0x0

    #@2d
    iput-object v0, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->Iw:Lcom/google/android/gms/drive/Contents;

    #@2f
    goto :goto_25
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;IZLjava/lang/String;)V
    .registers 15

    #@0
    const/4 v1, 0x2

    #@1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4
    move-result-object v5

    #@5
    move-object v0, p0

    #@6
    move-object v2, p1

    #@7
    move-object v3, p2

    #@8
    move-object v4, p3

    #@9
    move v6, p5

    #@a
    move-object v7, p6

    #@b
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/drive/internal/CreateFileRequest;-><init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;Ljava/lang/Integer;ZLjava/lang/String;)V

    #@e
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/j;->a(Lcom/google/android/gms/drive/internal/CreateFileRequest;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
