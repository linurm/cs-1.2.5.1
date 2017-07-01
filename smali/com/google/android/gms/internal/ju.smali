.class public Lcom/google/android/gms/internal/ju;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ju;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final YK:Lcom/google/android/gms/maps/model/LatLng;

.field private final YL:Ljava/lang/String;

.field private final YM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/js;",
            ">;"
        }
    .end annotation
.end field

.field private final YN:Ljava/lang/String;

.field private final YO:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/jv;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/jv;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/ju;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/js;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/ju;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/ju;->mName:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/ju;->YK:Lcom/google/android/gms/maps/model/LatLng;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/internal/ju;->YL:Ljava/lang/String;

    #@b
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@10
    iput-object v0, p0, Lcom/google/android/gms/internal/ju;->YM:Ljava/util/List;

    #@12
    iput-object p6, p0, Lcom/google/android/gms/internal/ju;->YN:Ljava/lang/String;

    #@14
    iput-object p7, p0, Lcom/google/android/gms/internal/ju;->YO:Ljava/lang/String;

    #@16
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

.method public getAddress()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->YL:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->YN:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public jk()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->YK:Lcom/google/android/gms/maps/model/LatLng;

    #@2
    return-object v0
.end method

.method public jl()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/js;",
            ">;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->YM:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public jm()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ju;->YO:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jv;->a(Lcom/google/android/gms/internal/ju;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
