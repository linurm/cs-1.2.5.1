.class public final Lcom/google/android/gms/internal/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/aj;


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final lS:J

.field public final lT:I

.field public final lU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final lV:Z

.field public final lW:I

.field public final lX:Z

.field public final lY:Ljava/lang/String;

.field public final lZ:Lcom/google/android/gms/internal/aw;

.field public final ma:Landroid/location/Location;

.field public final mb:Ljava/lang/String;

.field public final mc:Landroid/os/Bundle;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/aj;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/aj;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/ai;->CREATOR:Lcom/google/android/gms/internal/aj;

    #@7
    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/aw;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/aw;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/ai;->versionCode:I

    #@5
    iput-wide p2, p0, Lcom/google/android/gms/internal/ai;->lS:J

    #@7
    iput-object p4, p0, Lcom/google/android/gms/internal/ai;->extras:Landroid/os/Bundle;

    #@9
    iput p5, p0, Lcom/google/android/gms/internal/ai;->lT:I

    #@b
    iput-object p6, p0, Lcom/google/android/gms/internal/ai;->lU:Ljava/util/List;

    #@d
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ai;->lV:Z

    #@f
    iput p8, p0, Lcom/google/android/gms/internal/ai;->lW:I

    #@11
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ai;->lX:Z

    #@13
    iput-object p10, p0, Lcom/google/android/gms/internal/ai;->lY:Ljava/lang/String;

    #@15
    iput-object p11, p0, Lcom/google/android/gms/internal/ai;->lZ:Lcom/google/android/gms/internal/aw;

    #@17
    iput-object p12, p0, Lcom/google/android/gms/internal/ai;->ma:Landroid/location/Location;

    #@19
    iput-object p13, p0, Lcom/google/android/gms/internal/ai;->mb:Ljava/lang/String;

    #@1b
    iput-object p14, p0, Lcom/google/android/gms/internal/ai;->mc:Landroid/os/Bundle;

    #@1d
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/aj;->a(Lcom/google/android/gms/internal/ai;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
