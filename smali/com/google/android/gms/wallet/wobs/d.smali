.class public final Lcom/google/android/gms/wallet/wobs/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field akP:Ljava/lang/String;

.field akQ:Ljava/lang/String;

.field akR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/b;",
            ">;"
        }
    .end annotation
.end field

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/wobs/e;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/e;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/wobs/d;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Lcom/google/android/gms/wallet/wobs/d;->xM:I

    #@6
    invoke-static {}, Lcom/google/android/gms/internal/ig;->ga()Ljava/util/ArrayList;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/d;->akR:Ljava/util/ArrayList;

    #@c
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/b;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/wobs/d;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/d;->akP:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/d;->akQ:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/wallet/wobs/d;->akR:Ljava/util/ArrayList;

    #@b
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
    iget v0, p0, Lcom/google/android/gms/wallet/wobs/d;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/e;->a(Lcom/google/android/gms/wallet/wobs/d;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
