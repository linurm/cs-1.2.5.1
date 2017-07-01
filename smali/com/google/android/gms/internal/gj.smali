.class public Lcom/google/android/gms/internal/gj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/gj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AP:D

.field private AQ:Z

.field private BR:I

.field private final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/internal/gk;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/internal/gk;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/gj;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method public constructor <init>()V
    .registers 7

    #@0
    const/4 v1, 0x1

    #@1
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v5, -0x1

    #@5
    move-object v0, p0

    #@6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gj;-><init>(IDZI)V

    #@9
    return-void
.end method

.method constructor <init>(IDZI)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/gj;->xM:I

    #@5
    iput-wide p2, p0, Lcom/google/android/gms/internal/gj;->AP:D

    #@7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/gj;->AQ:Z

    #@9
    iput p5, p0, Lcom/google/android/gms/internal/gj;->BR:I

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

.method public eh()D
    .registers 3

    #@0
    iget-wide v0, p0, Lcom/google/android/gms/internal/gj;->AP:D

    #@2
    return-wide v0
.end method

.method public en()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gj;->AQ:Z

    #@2
    return v0
.end method

.method public eo()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/gj;->BR:I

    #@2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-ne p1, p0, :cond_6

    #@4
    :cond_4
    move v0, v1

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    instance-of v2, p1, Lcom/google/android/gms/internal/gj;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/internal/gj;

    #@c
    iget-wide v2, p0, Lcom/google/android/gms/internal/gj;->AP:D

    #@e
    iget-wide v4, p1, Lcom/google/android/gms/internal/gj;->AP:D

    #@10
    cmpl-double v2, v2, v4

    #@12
    if-nez v2, :cond_5

    #@14
    iget-boolean v2, p0, Lcom/google/android/gms/internal/gj;->AQ:Z

    #@16
    iget-boolean v3, p1, Lcom/google/android/gms/internal/gj;->AQ:Z

    #@18
    if-ne v2, v3, :cond_5

    #@1a
    iget v2, p0, Lcom/google/android/gms/internal/gj;->BR:I

    #@1c
    iget v3, p1, Lcom/google/android/gms/internal/gj;->BR:I

    #@1e
    if-eq v2, v3, :cond_4

    #@20
    goto :goto_5
.end method

.method public getVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/gj;->xM:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 5

    #@0
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget-wide v2, p0, Lcom/google/android/gms/internal/gj;->AP:D

    #@6
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    iget-boolean v2, p0, Lcom/google/android/gms/internal/gj;->AQ:Z

    #@f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v0, v1

    #@15
    const/4 v1, 0x2

    #@16
    iget v2, p0, Lcom/google/android/gms/internal/gj;->BR:I

    #@18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v2

    #@1c
    aput-object v2, v0, v1

    #@1e
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@21
    move-result v0

    #@22
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/gk;->a(Lcom/google/android/gms/internal/gj;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
