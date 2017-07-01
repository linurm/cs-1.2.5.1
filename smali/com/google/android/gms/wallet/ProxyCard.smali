.class public final Lcom/google/android/gms/wallet/ProxyCard;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/ProxyCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ajV:Ljava/lang/String;

.field ajW:Ljava/lang/String;

.field ajX:I

.field ajY:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/o;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/o;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/ProxyCard;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/ProxyCard;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajV:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajW:Ljava/lang/String;

    #@9
    iput p4, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajX:I

    #@b
    iput p5, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajY:I

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

.method public getCvn()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajW:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getExpirationMonth()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajX:I

    #@2
    return v0
.end method

.method public getExpirationYear()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajY:I

    #@2
    return v0
.end method

.method public getPan()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->ajV:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/ProxyCard;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/o;->a(Lcom/google/android/gms/wallet/ProxyCard;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
