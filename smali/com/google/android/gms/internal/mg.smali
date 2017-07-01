.class public final Lcom/google/android/gms/internal/mg;
.super Ljava/lang/Object;


# instance fields
.field final anc:[B

.field final tag:I


# direct methods
.method constructor <init>(I[B)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/mg;->tag:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/mg;->anc:[B

    #@7
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

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
    instance-of v2, p1, Lcom/google/android/gms/internal/mg;

    #@8
    if-eqz v2, :cond_5

    #@a
    check-cast p1, Lcom/google/android/gms/internal/mg;

    #@c
    iget v2, p0, Lcom/google/android/gms/internal/mg;->tag:I

    #@e
    iget v3, p1, Lcom/google/android/gms/internal/mg;->tag:I

    #@10
    if-ne v2, v3, :cond_5

    #@12
    iget-object v2, p0, Lcom/google/android/gms/internal/mg;->anc:[B

    #@14
    iget-object v3, p1, Lcom/google/android/gms/internal/mg;->anc:[B

    #@16
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_4

    #@1c
    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/mg;->tag:I

    #@2
    add-int/lit16 v0, v0, 0x20f

    #@4
    mul-int/lit8 v0, v0, 0x1f

    #@6
    iget-object v1, p0, Lcom/google/android/gms/internal/mg;->anc:[B

    #@8
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method
