.class public Lcom/google/android/gms/wearable/internal/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/wearable/MessageEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/af;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TF:[B

.field private final alV:Ljava/lang/String;

.field private final alW:Ljava/lang/String;

.field private final ra:I

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/internal/ag;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/ag;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wearable/internal/af;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(IILjava/lang/String;[BLjava/lang/String;)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wearable/internal/af;->xM:I

    #@5
    iput p2, p0, Lcom/google/android/gms/wearable/internal/af;->ra:I

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/af;->alV:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/af;->TF:[B

    #@b
    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/af;->alW:Ljava/lang/String;

    #@d
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

.method public getData()[B
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/af;->TF:[B

    #@2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/af;->alV:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRequestId()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wearable/internal/af;->ra:I

    #@2
    return v0
.end method

.method public getSourceNodeId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/af;->alW:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "MessageEventParcelable["

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget v1, p0, Lcom/google/android/gms/wearable/internal/af;->ra:I

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, ","

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/af;->alV:Ljava/lang/String;

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string v1, ", size="

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/af;->TF:[B

    #@25
    if-nez v0, :cond_38

    #@27
    const-string v0, "null"

    #@29
    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    const-string v1, "]"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0

    #@38
    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/af;->TF:[B

    #@3a
    array-length v0, v0

    #@3b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v0

    #@3f
    goto :goto_29
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/ag;->a(Lcom/google/android/gms/wearable/internal/af;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
