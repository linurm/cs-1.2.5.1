.class public Lcom/google/android/gms/internal/ge;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ge;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BC:Ljava/lang/String;

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/gf;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/gf;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/ge;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ge;-><init>(ILjava/lang/String;)V

    #@5
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/ge;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/ge;->BC:Ljava/lang/String;

    #@7
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

.method public ec()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/internal/ge;->BC:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    #@0
    if-ne p1, p0, :cond_4

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    return v0

    #@4
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ge;

    #@6
    if-nez v0, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    goto :goto_3

    #@a
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ge;

    #@c
    iget-object v0, p0, Lcom/google/android/gms/internal/ge;->BC:Ljava/lang/String;

    #@e
    iget-object v1, p1, Lcom/google/android/gms/internal/ge;->BC:Ljava/lang/String;

    #@10
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gi;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    goto :goto_3
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/ge;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget-object v2, p0, Lcom/google/android/gms/internal/ge;->BC:Ljava/lang/String;

    #@6
    aput-object v2, v0, v1

    #@8
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/gf;->a(Lcom/google/android/gms/internal/ge;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
