.class public Lcom/google/android/gms/wearable/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final AT:I

.field private final YL:Ljava/lang/String;

.field private final ali:I

.field private final alj:Z

.field private final mName:Ljava/lang/String;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/wearable/d;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/wearable/d;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/wearable/c;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;IIZ)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/wearable/c;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/wearable/c;->mName:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/wearable/c;->YL:Ljava/lang/String;

    #@9
    iput p4, p0, Lcom/google/android/gms/wearable/c;->AT:I

    #@b
    iput p5, p0, Lcom/google/android/gms/wearable/c;->ali:I

    #@d
    iput-boolean p6, p0, Lcom/google/android/gms/wearable/c;->alj:Z

    #@f
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
    instance-of v1, p1, Lcom/google/android/gms/wearable/c;

    #@3
    if-nez v1, :cond_6

    #@5
    :cond_5
    :goto_5
    return v0

    #@6
    :cond_6
    check-cast p1, Lcom/google/android/gms/wearable/c;

    #@8
    iget v1, p0, Lcom/google/android/gms/wearable/c;->xM:I

    #@a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v1

    #@e
    iget v2, p1, Lcom/google/android/gms/wearable/c;->xM:I

    #@10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v2

    #@14
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_5

    #@1a
    iget-object v1, p0, Lcom/google/android/gms/wearable/c;->mName:Ljava/lang/String;

    #@1c
    iget-object v2, p1, Lcom/google/android/gms/wearable/c;->mName:Ljava/lang/String;

    #@1e
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_5

    #@24
    iget-object v1, p0, Lcom/google/android/gms/wearable/c;->YL:Ljava/lang/String;

    #@26
    iget-object v2, p1, Lcom/google/android/gms/wearable/c;->YL:Ljava/lang/String;

    #@28
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_5

    #@2e
    iget v1, p0, Lcom/google/android/gms/wearable/c;->AT:I

    #@30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v1

    #@34
    iget v2, p1, Lcom/google/android/gms/wearable/c;->AT:I

    #@36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@39
    move-result-object v2

    #@3a
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3d
    move-result v1

    #@3e
    if-eqz v1, :cond_5

    #@40
    iget v1, p0, Lcom/google/android/gms/wearable/c;->ali:I

    #@42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@45
    move-result-object v1

    #@46
    iget v2, p1, Lcom/google/android/gms/wearable/c;->ali:I

    #@48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b
    move-result-object v2

    #@4c
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4f
    move-result v1

    #@50
    if-eqz v1, :cond_5

    #@52
    iget-boolean v1, p0, Lcom/google/android/gms/wearable/c;->alj:Z

    #@54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@57
    move-result-object v1

    #@58
    iget-boolean v2, p1, Lcom/google/android/gms/wearable/c;->alj:Z

    #@5a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5d
    move-result-object v2

    #@5e
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hk;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@61
    move-result v1

    #@62
    if-eqz v1, :cond_5

    #@64
    const/4 v0, 0x1

    #@65
    goto :goto_5
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c;->YL:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRole()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wearable/c;->ali:I

    #@2
    return v0
.end method

.method public getType()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/gms/wearable/c;->AT:I

    #@2
    return v0
.end method

.method public hashCode()I
    .registers 4

    #@0
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    iget v2, p0, Lcom/google/android/gms/wearable/c;->xM:I

    #@6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    aput-object v2, v0, v1

    #@c
    const/4 v1, 0x1

    #@d
    iget-object v2, p0, Lcom/google/android/gms/wearable/c;->mName:Ljava/lang/String;

    #@f
    aput-object v2, v0, v1

    #@11
    const/4 v1, 0x2

    #@12
    iget-object v2, p0, Lcom/google/android/gms/wearable/c;->YL:Ljava/lang/String;

    #@14
    aput-object v2, v0, v1

    #@16
    const/4 v1, 0x3

    #@17
    iget v2, p0, Lcom/google/android/gms/wearable/c;->AT:I

    #@19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v2

    #@1d
    aput-object v2, v0, v1

    #@1f
    const/4 v1, 0x4

    #@20
    iget v2, p0, Lcom/google/android/gms/wearable/c;->ali:I

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v2

    #@26
    aput-object v2, v0, v1

    #@28
    const/4 v1, 0x5

    #@29
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/c;->alj:Z

    #@2b
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2e
    move-result-object v2

    #@2f
    aput-object v2, v0, v1

    #@31
    invoke-static {v0}, Lcom/google/android/gms/internal/hk;->hashCode([Ljava/lang/Object;)I

    #@34
    move-result v0

    #@35
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/c;->alj:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "ConnectionConfiguration[ "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v2, "mName="

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-object v2, p0, Lcom/google/android/gms/wearable/c;->mName:Ljava/lang/String;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string v2, ", mAddress="

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Lcom/google/android/gms/wearable/c;->YL:Ljava/lang/String;

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string v2, ", mType="

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    iget v2, p0, Lcom/google/android/gms/wearable/c;->AT:I

    #@44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string v2, ", mRole="

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    iget v2, p0, Lcom/google/android/gms/wearable/c;->ali:I

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    new-instance v1, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string v2, ", mEnabled="

    #@6e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/c;->alj:Z

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    const-string v1, "]"

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    #@0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/d;->a(Lcom/google/android/gms/wearable/c;Landroid/os/Parcel;I)V

    #@3
    return-void
.end method
