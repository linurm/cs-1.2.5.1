.class public Lcom/google/android/gms/internal/fd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/fd;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mValue:Ljava/lang/String;

.field private xG:Ljava/lang/String;

.field private xH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/fd$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/fd$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/fd;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fd;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/fd;->xG:Ljava/lang/String;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/fd;->xH:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/fd;->mValue:Ljava/lang/String;

    #@9
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/internal/fd;->xG:Ljava/lang/String;

    #@6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/internal/fd;->xH:Ljava/lang/String;

    #@c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/gms/internal/fd;->mValue:Ljava/lang/String;

    #@12
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/fd;->xG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/fd;->mValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/fd;->xG:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/internal/fd;->xH:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    iget-object v0, p0, Lcom/google/android/gms/internal/fd;->mValue:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    return-void
.end method
