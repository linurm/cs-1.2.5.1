.class public final Lcom/google/android/gms/wallet/wobs/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ala:J

.field alb:J

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/wobs/m;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/m;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/wobs/l;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Lcom/google/android/gms/wallet/wobs/l;->xM:I

    #@6
    return-void
.end method

.method constructor <init>(IJJ)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/wobs/l;->xM:I

    #@5
    iput-wide p2, p0, Lcom/google/android/gms/wallet/wobs/l;->ala:J

    #@7
    iput-wide p4, p0, Lcom/google/android/gms/wallet/wobs/l;->alb:J

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

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/wobs/l;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/m;->a(Lcom/google/android/gms/wallet/wobs/l;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
