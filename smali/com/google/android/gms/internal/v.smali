.class public final Lcom/google/android/gms/internal/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/w;


# instance fields
.field public final lb:Z

.field public final ld:Z

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/w;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/w;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/v;->CREATOR:Lcom/google/android/gms/internal/w;

    #@7
    return-void
.end method

.method constructor <init>(IZZ)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/v;->versionCode:I

    #@5
    iput-boolean p2, p0, Lcom/google/android/gms/internal/v;->lb:Z

    #@7
    iput-boolean p3, p0, Lcom/google/android/gms/internal/v;->ld:Z

    #@9
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/gms/internal/v;->versionCode:I

    #@6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/v;->lb:Z

    #@8
    iput-boolean p2, p0, Lcom/google/android/gms/internal/v;->ld:Z

    #@a
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/w;->a(Lcom/google/android/gms/internal/v;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
