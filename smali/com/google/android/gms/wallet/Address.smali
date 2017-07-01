.class public final Lcom/google/android/gms/wallet/Address;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/Address;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field UH:Ljava/lang/String;

.field UI:Ljava/lang/String;

.field UJ:Ljava/lang/String;

.field UO:Ljava/lang/String;

.field UQ:Ljava/lang/String;

.field UR:Z

.field US:Ljava/lang/String;

.field aiI:Ljava/lang/String;

.field aiJ:Ljava/lang/String;

.field name:Ljava/lang/String;

.field rf:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/a;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/a;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/wallet/Address;->xM:I

    #@6
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 13

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/Address;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wallet/Address;->name:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wallet/Address;->UH:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/wallet/Address;->UI:Ljava/lang/String;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/wallet/Address;->UJ:Ljava/lang/String;

    #@d
    iput-object p6, p0, Lcom/google/android/gms/wallet/Address;->rf:Ljava/lang/String;

    #@f
    iput-object p7, p0, Lcom/google/android/gms/wallet/Address;->aiI:Ljava/lang/String;

    #@11
    iput-object p8, p0, Lcom/google/android/gms/wallet/Address;->aiJ:Ljava/lang/String;

    #@13
    iput-object p9, p0, Lcom/google/android/gms/wallet/Address;->UO:Ljava/lang/String;

    #@15
    iput-object p10, p0, Lcom/google/android/gms/wallet/Address;->UQ:Ljava/lang/String;

    #@17
    iput-boolean p11, p0, Lcom/google/android/gms/wallet/Address;->UR:Z

    #@19
    iput-object p12, p0, Lcom/google/android/gms/wallet/Address;->US:Ljava/lang/String;

    #@1b
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

.method public getAddress1()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->UH:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->UI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getAddress3()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->UJ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->aiI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->US:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->rf:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->UQ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->UO:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/Address;->aiJ:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/Address;->xM:I

    #@2
    return v0
.end method

.method public isPostBox()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/wallet/Address;->UR:Z

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/a;->a(Lcom/google/android/gms/wallet/Address;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
