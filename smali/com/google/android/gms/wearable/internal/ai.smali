.class public Lcom/google/android/gms/wearable/internal/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/wearable/Node;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/ai;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Ln:Ljava/lang/String;

.field private final xG:Ljava/lang/String;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/aj;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/aj;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wearable/internal/ai;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wearable/internal/ai;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/ai;->xG:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/ai;->Ln:Ljava/lang/String;

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

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    instance-of v1, p1, Lcom/google/android/gms/wearable/internal/ai;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/google/android/gms/wearable/internal/ai;

    #@8
    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/ai;->xG:Ljava/lang/String;

    #@a
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/ai;->xG:Ljava/lang/String;

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_5

    #@12
    iget-object v1, p1, Lcom/google/android/gms/wearable/internal/ai;->Ln:Ljava/lang/String;

    #@14
    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/ai;->Ln:Ljava/lang/String;

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_5

    #@1c
    const/4 v0, 0x1

    #@1d
    goto :goto_5
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ai;->Ln:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ai;->xG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/ai;->xG:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    add-int/lit16 v0, v0, 0x275

    #@8
    mul-int/lit8 v0, v0, 0x25

    #@a
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/ai;->Ln:Ljava/lang/String;

    #@c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@f
    move-result v1

    #@10
    add-int/2addr v0, v1

    #@11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "NodeParcelable{"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/ai;->xG:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, ","

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/ai;->Ln:Ljava/lang/String;

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v1, "}"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/aj;->a(Lcom/google/android/gms/wearable/internal/ai;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
