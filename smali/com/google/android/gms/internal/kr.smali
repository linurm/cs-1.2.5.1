.class public final Lcom/google/android/gms/internal/kr;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/plus/model/moments/Moment;


# instance fields
.field private adp:Lcom/google/android/gms/internal/kp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    #@3
    return-void
.end method

.method private kE()Lcom/google/android/gms/internal/kp;
    .registers 5

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/kr;->adp:Lcom/google/android/gms/internal/kp;

    #@3
    if-nez v0, :cond_23

    #@5
    const-string v0, "momentImpl"

    #@7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/kr;->getByteArray(Ljava/lang/String;)[B

    #@a
    move-result-object v0

    #@b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@e
    move-result-object v1

    #@f
    const/4 v2, 0x0

    #@10
    array-length v3, v0

    #@11
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    #@14
    const/4 v0, 0x0

    #@15
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@18
    sget-object v0, Lcom/google/android/gms/internal/kp;->CREATOR:Lcom/google/android/gms/internal/kq;

    #@1a
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/kq;->bF(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kp;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/google/android/gms/internal/kr;->adp:Lcom/google/android/gms/internal/kp;

    #@20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@23
    :cond_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_27

    #@24
    iget-object v0, p0, Lcom/google/android/gms/internal/kr;->adp:Lcom/google/android/gms/internal/kp;

    #@26
    return-object v0

    #@27
    :catchall_27
    move-exception v0

    #@28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    #@29
    throw v0
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/kr;->kD()Lcom/google/android/gms/internal/kp;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/kr;->kE()Lcom/google/android/gms/internal/kp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kp;->getId()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getResult()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/kr;->kE()Lcom/google/android/gms/internal/kp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kp;->getResult()Lcom/google/android/gms/plus/model/moments/ItemScope;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/kr;->kE()Lcom/google/android/gms/internal/kp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kp;->getStartDate()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getTarget()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/kr;->kE()Lcom/google/android/gms/internal/kp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kp;->getTarget()Lcom/google/android/gms/plus/model/moments/ItemScope;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/kr;->kE()Lcom/google/android/gms/internal/kp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kp;->getType()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public hasId()Z
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/kr;->kE()Lcom/google/android/gms/internal/kp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kp;->hasId()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public hasResult()Z
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/kr;->kE()Lcom/google/android/gms/internal/kp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kp;->hasId()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public hasStartDate()Z
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/kr;->kE()Lcom/google/android/gms/internal/kp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kp;->hasStartDate()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public hasTarget()Z
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/kr;->kE()Lcom/google/android/gms/internal/kp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kp;->hasTarget()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public hasType()Z
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/kr;->kE()Lcom/google/android/gms/internal/kp;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/kp;->hasType()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public kD()Lcom/google/android/gms/internal/kp;
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/kr;->kE()Lcom/google/android/gms/internal/kp;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
