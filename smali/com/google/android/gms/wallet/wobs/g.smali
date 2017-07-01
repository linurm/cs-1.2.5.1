.class public final Lcom/google/android/gms/wallet/wobs/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field akT:I

.field akU:Ljava/lang/String;

.field akV:D

.field akW:Ljava/lang/String;

.field akX:J

.field akY:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/wobs/h;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/h;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/wobs/g;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>()V
    .registers 3

    #@0
    const/4 v1, -0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const/4 v0, 0x1

    #@5
    iput v0, p0, Lcom/google/android/gms/wallet/wobs/g;->xM:I

    #@7
    iput v1, p0, Lcom/google/android/gms/wallet/wobs/g;->akY:I

    #@9
    iput v1, p0, Lcom/google/android/gms/wallet/wobs/g;->akT:I

    #@b
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    #@d
    iput-wide v0, p0, Lcom/google/android/gms/wallet/wobs/g;->akV:D

    #@f
    return-void
.end method

.method constructor <init>(IILjava/lang/String;DLjava/lang/String;JI)V
    .registers 10

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/wobs/g;->xM:I

    #@5
    iput p2, p0, Lcom/google/android/gms/wallet/wobs/g;->akT:I

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/g;->akU:Ljava/lang/String;

    #@9
    iput-wide p4, p0, Lcom/google/android/gms/wallet/wobs/g;->akV:D

    #@b
    iput-object p6, p0, Lcom/google/android/gms/wallet/wobs/g;->akW:Ljava/lang/String;

    #@d
    iput-wide p7, p0, Lcom/google/android/gms/wallet/wobs/g;->akX:J

    #@f
    iput p9, p0, Lcom/google/android/gms/wallet/wobs/g;->akY:I

    #@11
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
    iget v0, p0, Lcom/google/android/gms/wallet/wobs/g;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/h;->a(Lcom/google/android/gms/wallet/wobs/g;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
