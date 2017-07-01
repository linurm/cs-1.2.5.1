.class public Lcom/google/android/gms/internal/hr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/hs;


# instance fields
.field public final GT:Ljava/lang/String;

.field public final GU:I

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/hs;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/hs;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/hr;->CREATOR:Lcom/google/android/gms/internal/hs;

    #@7
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/hr;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/hr;->GT:Ljava/lang/String;

    #@7
    iput p3, p0, Lcom/google/android/gms/internal/hr;->GU:I

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hs;->a(Lcom/google/android/gms/internal/hr;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
