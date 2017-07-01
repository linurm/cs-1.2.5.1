.class public Lcom/google/android/gms/wallet/CountrySpecification;
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
            "Lcom/google/android/gms/wallet/CountrySpecification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field rf:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/c;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/c;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/CountrySpecification;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/CountrySpecification;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wallet/CountrySpecification;->rf:Ljava/lang/String;

    #@7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/wallet/CountrySpecification;->xM:I

    #@6
    iput-object p1, p0, Lcom/google/android/gms/wallet/CountrySpecification;->rf:Ljava/lang/String;

    #@8
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

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/CountrySpecification;->rf:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/CountrySpecification;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/c;->a(Lcom/google/android/gms/wallet/CountrySpecification;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
