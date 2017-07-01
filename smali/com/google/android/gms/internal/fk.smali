.class public Lcom/google/android/gms/internal/fk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fl;

.field public static final xT:I


# instance fields
.field final xM:I

.field public final xU:Ljava/lang/String;

.field final xV:Lcom/google/android/gms/internal/fp;

.field public final xW:I

.field public final xX:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "-1"

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    sput v0, Lcom/google/android/gms/internal/fk;->xT:I

    #@8
    new-instance v0, Lcom/google/android/gms/internal/fl;

    #@a
    invoke-direct {v0}, Lcom/google/android/gms/internal/fl;-><init>()V

    #@d
    sput-object v0, Lcom/google/android/gms/internal/fk;->CREATOR:Lcom/google/android/gms/internal/fl;

    #@f
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/fp;I[B)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    sget v0, Lcom/google/android/gms/internal/fk;->xT:I

    #@5
    if-eq p4, v0, :cond_d

    #@7
    invoke-static {p4}, Lcom/google/android/gms/internal/fo;->H(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_3a

    #@d
    :cond_d
    const/4 v0, 0x1

    #@e
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v2, "Invalid section type "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hm;->b(ZLjava/lang/Object;)V

    #@24
    iput p1, p0, Lcom/google/android/gms/internal/fk;->xM:I

    #@26
    iput-object p2, p0, Lcom/google/android/gms/internal/fk;->xU:Ljava/lang/String;

    #@28
    iput-object p3, p0, Lcom/google/android/gms/internal/fk;->xV:Lcom/google/android/gms/internal/fp;

    #@2a
    iput p4, p0, Lcom/google/android/gms/internal/fk;->xW:I

    #@2c
    iput-object p5, p0, Lcom/google/android/gms/internal/fk;->xX:[B

    #@2e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fk;->dO()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    if-eqz v0, :cond_3c

    #@34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@36
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    :cond_3a
    const/4 v0, 0x0

    #@3b
    goto :goto_e

    #@3c
    :cond_3c
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/fp;)V
    .registers 9

    #@0
    const/4 v1, 0x1

    #@1
    sget v4, Lcom/google/android/gms/internal/fk;->xT:I

    #@3
    const/4 v5, 0x0

    #@4
    move-object v0, p0

    #@5
    move-object v2, p1

    #@6
    move-object v3, p2

    #@7
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fk;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/fp;I[B)V

    #@a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/fp;Ljava/lang/String;)V
    .registers 10

    #@0
    const/4 v1, 0x1

    #@1
    invoke-static {p3}, Lcom/google/android/gms/internal/fo;->Y(Ljava/lang/String;)I

    #@4
    move-result v4

    #@5
    const/4 v5, 0x0

    #@6
    move-object v0, p0

    #@7
    move-object v2, p1

    #@8
    move-object v3, p2

    #@9
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fk;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/fp;I[B)V

    #@c
    return-void
.end method

.method public constructor <init>([BLcom/google/android/gms/internal/fp;)V
    .registers 9

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    sget v4, Lcom/google/android/gms/internal/fk;->xT:I

    #@4
    move-object v0, p0

    #@5
    move-object v3, p2

    #@6
    move-object v5, p1

    #@7
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fk;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/fp;I[B)V

    #@a
    return-void
.end method


# virtual methods
.method public dO()Ljava/lang/String;
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/fk;->xW:I

    #@2
    sget v1, Lcom/google/android/gms/internal/fk;->xT:I

    #@4
    if-eq v0, v1, :cond_24

    #@6
    iget v0, p0, Lcom/google/android/gms/internal/fk;->xW:I

    #@8
    invoke-static {v0}, Lcom/google/android/gms/internal/fo;->H(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_24

    #@e
    new-instance v0, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v1, "Invalid section type "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Lcom/google/android/gms/internal/fk;->xW:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    :goto_23
    return-object v0

    #@24
    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/fk;->xU:Ljava/lang/String;

    #@26
    if-eqz v0, :cond_2f

    #@28
    iget-object v0, p0, Lcom/google/android/gms/internal/fk;->xX:[B

    #@2a
    if-eqz v0, :cond_2f

    #@2c
    const-string v0, "Both content and blobContent set"

    #@2e
    goto :goto_23

    #@2f
    :cond_2f
    const/4 v0, 0x0

    #@30
    goto :goto_23
.end method

.method public describeContents()I
    .registers 2

    #@0
    sget-object v0, Lcom/google/android/gms/internal/fk;->CREATOR:Lcom/google/android/gms/internal/fl;

    #@2
    const/4 v0, 0x0

    #@3
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    sget-object v0, Lcom/google/android/gms/internal/fk;->CREATOR:Lcom/google/android/gms/internal/fl;

    #@2
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fl;->a(Lcom/google/android/gms/internal/fk;Landroid/os/Parcel;I)V

    #@5
    return-void
.end method
