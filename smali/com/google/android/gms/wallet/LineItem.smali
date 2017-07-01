.class public final Lcom/google/android/gms/wallet/LineItem;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/LineItem$Builder;,
        Lcom/google/android/gms/wallet/LineItem$Role;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/LineItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aiK:Ljava/lang/String;

.field aiL:Ljava/lang/String;

.field aje:Ljava/lang/String;

.field ajf:Ljava/lang/String;

.field ajg:I

.field description:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/i;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/i;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wallet/LineItem;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Lcom/google/android/gms/wallet/LineItem;->xM:I

    #@6
    const/4 v0, 0x0

    #@7
    iput v0, p0, Lcom/google/android/gms/wallet/LineItem;->ajg:I

    #@9
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wallet/LineItem;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wallet/LineItem;->description:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wallet/LineItem;->aje:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/wallet/LineItem;->ajf:Ljava/lang/String;

    #@b
    iput-object p5, p0, Lcom/google/android/gms/wallet/LineItem;->aiK:Ljava/lang/String;

    #@d
    iput p6, p0, Lcom/google/android/gms/wallet/LineItem;->ajg:I

    #@f
    iput-object p7, p0, Lcom/google/android/gms/wallet/LineItem;->aiL:Ljava/lang/String;

    #@11
    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/LineItem$Builder;
    .registers 3

    #@0
    new-instance v0, Lcom/google/android/gms/wallet/LineItem;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wallet/LineItem;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    new-instance v1, Lcom/google/android/gms/wallet/LineItem$Builder;

    #@a
    const/4 v2, 0x0

    #@b
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/wallet/LineItem$Builder;-><init>(Lcom/google/android/gms/wallet/LineItem;Lcom/google/android/gms/wallet/LineItem$1;)V

    #@e
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->aiL:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->description:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getQuantity()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->aje:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRole()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/LineItem;->ajg:I

    #@2
    return v0
.end method

.method public getTotalPrice()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->aiK:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUnitPrice()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem;->ajf:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wallet/LineItem;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/i;->a(Lcom/google/android/gms/wallet/LineItem;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
