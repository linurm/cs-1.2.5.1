.class public Lcom/google/android/gms/games/internal/ConnectionInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/internal/ConnectionInfoCreator;


# instance fields
.field private final Nn:Ljava/lang/String;

.field private final No:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/games/internal/ConnectionInfoCreator;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/games/internal/ConnectionInfoCreator;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/games/internal/ConnectionInfo;->CREATOR:Lcom/google/android/gms/games/internal/ConnectionInfoCreator;

    #@7
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->Nn:Ljava/lang/String;

    #@7
    iput p3, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->No:I

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

.method public gW()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->Nn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public gX()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->No:I

    #@2
    return v0
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/games/internal/ConnectionInfo;->xM:I

    #@2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/internal/ConnectionInfoCreator;->a(Lcom/google/android/gms/games/internal/ConnectionInfo;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
