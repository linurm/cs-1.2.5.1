.class public final Lcom/google/android/gms/internal/lz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lz$a;
    }
.end annotation


# instance fields
.field private final amW:I

.field private final buffer:[B

.field private position:I


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/lz;->buffer:[B

    #@5
    iput p2, p0, Lcom/google/android/gms/internal/lz;->position:I

    #@7
    add-int v0, p2, p3

    #@9
    iput v0, p0, Lcom/google/android/gms/internal/lz;->amW:I

    #@b
    return-void
.end method

.method public static D(J)I
    .registers 4

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/lz;->G(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static E(J)I
    .registers 4

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/lz;->I(J)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/lz;->G(J)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static G(J)I
    .registers 6

    #@0
    const-wide/16 v2, 0x0

    #@2
    const-wide/16 v0, -0x80

    #@4
    and-long/2addr v0, p0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-nez v0, :cond_b

    #@9
    const/4 v0, 0x1

    #@a
    :goto_a
    return v0

    #@b
    :cond_b
    const-wide/16 v0, -0x4000

    #@d
    and-long/2addr v0, p0

    #@e
    cmp-long v0, v0, v2

    #@10
    if-nez v0, :cond_14

    #@12
    const/4 v0, 0x2

    #@13
    goto :goto_a

    #@14
    :cond_14
    const-wide/32 v0, -0x200000

    #@17
    and-long/2addr v0, p0

    #@18
    cmp-long v0, v0, v2

    #@1a
    if-nez v0, :cond_1e

    #@1c
    const/4 v0, 0x3

    #@1d
    goto :goto_a

    #@1e
    :cond_1e
    const-wide/32 v0, -0x10000000

    #@21
    and-long/2addr v0, p0

    #@22
    cmp-long v0, v0, v2

    #@24
    if-nez v0, :cond_28

    #@26
    const/4 v0, 0x4

    #@27
    goto :goto_a

    #@28
    :cond_28
    const-wide v0, -0x800000000L

    #@2d
    and-long/2addr v0, p0

    #@2e
    cmp-long v0, v0, v2

    #@30
    if-nez v0, :cond_34

    #@32
    const/4 v0, 0x5

    #@33
    goto :goto_a

    #@34
    :cond_34
    const-wide v0, -0x40000000000L

    #@39
    and-long/2addr v0, p0

    #@3a
    cmp-long v0, v0, v2

    #@3c
    if-nez v0, :cond_40

    #@3e
    const/4 v0, 0x6

    #@3f
    goto :goto_a

    #@40
    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    #@42
    and-long/2addr v0, p0

    #@43
    cmp-long v0, v0, v2

    #@45
    if-nez v0, :cond_49

    #@47
    const/4 v0, 0x7

    #@48
    goto :goto_a

    #@49
    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    #@4b
    and-long/2addr v0, p0

    #@4c
    cmp-long v0, v0, v2

    #@4e
    if-nez v0, :cond_53

    #@50
    const/16 v0, 0x8

    #@52
    goto :goto_a

    #@53
    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    #@55
    and-long/2addr v0, p0

    #@56
    cmp-long v0, v0, v2

    #@58
    if-nez v0, :cond_5d

    #@5a
    const/16 v0, 0x9

    #@5c
    goto :goto_a

    #@5d
    :cond_5d
    const/16 v0, 0xa

    #@5f
    goto :goto_a
.end method

.method public static I(J)J
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    shl-long v0, p0, v0

    #@3
    const/16 v2, 0x3f

    #@5
    shr-long v2, p0, v2

    #@7
    xor-long/2addr v0, v2

    #@8
    return-wide v0
.end method

.method public static J(Z)I
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public static b(ID)I
    .registers 6

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/lz;->eH(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/lz;->f(D)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static b(ILcom/google/android/gms/internal/me;)I
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/lz;->eH(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/android/gms/internal/lz;->c(Lcom/google/android/gms/internal/me;)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static b(IZ)I
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/lz;->eH(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/android/gms/internal/lz;->J(Z)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static b(I[B)I
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/lz;->eH(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/android/gms/internal/lz;->s([B)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static b([BII)Lcom/google/android/gms/internal/lz;
    .registers 4

    #@0
    new-instance v0, Lcom/google/android/gms/internal/lz;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/lz;-><init>([BII)V

    #@5
    return-object v0
.end method

.method public static c(IF)I
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/lz;->eH(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/android/gms/internal/lz;->e(F)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static c(Lcom/google/android/gms/internal/me;)I
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/me;->oa()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/internal/lz;->eJ(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static cz(Ljava/lang/String;)I
    .registers 3

    #@0
    :try_start_0
    const-string v0, "UTF-8"

    #@2
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
    array-length v1, v0

    #@7
    invoke-static {v1}, Lcom/google/android/gms/internal/lz;->eJ(I)I

    #@a
    move-result v1

    #@b
    array-length v0, v0
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_e

    #@c
    add-int/2addr v0, v1

    #@d
    return v0

    #@e
    :catch_e
    move-exception v0

    #@f
    new-instance v0, Ljava/lang/RuntimeException;

    #@11
    const-string v1, "UTF-8 not supported."

    #@13
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
.end method

.method public static d(IJ)I
    .registers 6

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/lz;->eH(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/lz;->D(J)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static e(F)I
    .registers 2

    #@0
    const/4 v0, 0x4

    #@1
    return v0
.end method

.method public static e(IJ)I
    .registers 6

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/lz;->eH(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/lz;->E(J)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static eE(I)I
    .registers 2

    #@0
    if-ltz p0, :cond_7

    #@2
    invoke-static {p0}, Lcom/google/android/gms/internal/lz;->eJ(I)I

    #@5
    move-result v0

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    const/16 v0, 0xa

    #@9
    goto :goto_6
.end method

.method public static eF(I)I
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/lz;->eL(I)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/internal/lz;->eJ(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static eH(I)I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/mh;->u(II)I

    #@4
    move-result v0

    #@5
    invoke-static {v0}, Lcom/google/android/gms/internal/lz;->eJ(I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public static eJ(I)I
    .registers 2

    #@0
    and-int/lit8 v0, p0, -0x80

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    and-int/lit16 v0, p0, -0x4000

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x2

    #@b
    goto :goto_5

    #@c
    :cond_c
    const/high16 v0, -0x200000

    #@e
    and-int/2addr v0, p0

    #@f
    if-nez v0, :cond_13

    #@11
    const/4 v0, 0x3

    #@12
    goto :goto_5

    #@13
    :cond_13
    const/high16 v0, -0x10000000

    #@15
    and-int/2addr v0, p0

    #@16
    if-nez v0, :cond_1a

    #@18
    const/4 v0, 0x4

    #@19
    goto :goto_5

    #@1a
    :cond_1a
    const/4 v0, 0x5

    #@1b
    goto :goto_5
.end method

.method public static eL(I)I
    .registers 3

    #@0
    shl-int/lit8 v0, p0, 0x1

    #@2
    shr-int/lit8 v1, p0, 0x1f

    #@4
    xor-int/2addr v0, v1

    #@5
    return v0
.end method

.method public static f(D)I
    .registers 3

    #@0
    const/16 v0, 0x8

    #@2
    return v0
.end method

.method public static h(ILjava/lang/String;)I
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/lz;->eH(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/android/gms/internal/lz;->cz(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static q([B)Lcom/google/android/gms/internal/lz;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    array-length v1, p0

    #@2
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/lz;->b([BII)Lcom/google/android/gms/internal/lz;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static r(II)I
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/lz;->eH(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/android/gms/internal/lz;->eE(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static s(II)I
    .registers 4

    #@0
    invoke-static {p0}, Lcom/google/android/gms/internal/lz;->eH(I)I

    #@3
    move-result v0

    #@4
    invoke-static {p1}, Lcom/google/android/gms/internal/lz;->eF(I)I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    return v0
.end method

.method public static s([B)I
    .registers 3

    #@0
    array-length v0, p0

    #@1
    invoke-static {v0}, Lcom/google/android/gms/internal/lz;->eJ(I)I

    #@4
    move-result v0

    #@5
    array-length v1, p0

    #@6
    add-int/2addr v0, v1

    #@7
    return v0
.end method


# virtual methods
.method public B(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/lz;->F(J)V

    #@3
    return-void
.end method

.method public C(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/lz;->I(J)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lz;->F(J)V

    #@7
    return-void
.end method

.method public F(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    :goto_0
    const-wide/16 v0, -0x80

    #@2
    and-long/2addr v0, p1

    #@3
    const-wide/16 v2, 0x0

    #@5
    cmp-long v0, v0, v2

    #@7
    if-nez v0, :cond_e

    #@9
    long-to-int v0, p1

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@d
    return-void

    #@e
    :cond_e
    long-to-int v0, p1

    #@f
    and-int/lit8 v0, v0, 0x7f

    #@11
    or-int/lit16 v0, v0, 0x80

    #@13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@16
    const/4 v0, 0x7

    #@17
    ushr-long/2addr p1, v0

    #@18
    goto :goto_0
.end method

.method public H(J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    long-to-int v0, p1

    #@1
    and-int/lit16 v0, v0, 0xff

    #@3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@6
    const/16 v0, 0x8

    #@8
    shr-long v0, p1, v0

    #@a
    long-to-int v0, v0

    #@b
    and-int/lit16 v0, v0, 0xff

    #@d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@10
    const/16 v0, 0x10

    #@12
    shr-long v0, p1, v0

    #@14
    long-to-int v0, v0

    #@15
    and-int/lit16 v0, v0, 0xff

    #@17
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@1a
    const/16 v0, 0x18

    #@1c
    shr-long v0, p1, v0

    #@1e
    long-to-int v0, v0

    #@1f
    and-int/lit16 v0, v0, 0xff

    #@21
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@24
    const/16 v0, 0x20

    #@26
    shr-long v0, p1, v0

    #@28
    long-to-int v0, v0

    #@29
    and-int/lit16 v0, v0, 0xff

    #@2b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@2e
    const/16 v0, 0x28

    #@30
    shr-long v0, p1, v0

    #@32
    long-to-int v0, v0

    #@33
    and-int/lit16 v0, v0, 0xff

    #@35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@38
    const/16 v0, 0x30

    #@3a
    shr-long v0, p1, v0

    #@3c
    long-to-int v0, v0

    #@3d
    and-int/lit16 v0, v0, 0xff

    #@3f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@42
    const/16 v0, 0x38

    #@44
    shr-long v0, p1, v0

    #@46
    long-to-int v0, v0

    #@47
    and-int/lit16 v0, v0, 0xff

    #@49
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@4c
    return-void
.end method

.method public I(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-eqz p1, :cond_7

    #@2
    const/4 v0, 0x1

    #@3
    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@6
    return-void

    #@7
    :cond_7
    const/4 v0, 0x0

    #@8
    goto :goto_3
.end method

.method public a(ID)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lz;->t(II)V

    #@4
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/lz;->e(D)V

    #@7
    return-void
.end method

.method public a(ILcom/google/android/gms/internal/me;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lz;->t(II)V

    #@4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/lz;->b(Lcom/google/android/gms/internal/me;)V

    #@7
    return-void
.end method

.method public a(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lz;->t(II)V

    #@4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/lz;->I(Z)V

    #@7
    return-void
.end method

.method public a(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lz;->t(II)V

    #@4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/lz;->r([B)V

    #@7
    return-void
.end method

.method public b(B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/lz;->position:I

    #@2
    iget v1, p0, Lcom/google/android/gms/internal/lz;->amW:I

    #@4
    if-ne v0, v1, :cond_10

    #@6
    new-instance v0, Lcom/google/android/gms/internal/lz$a;

    #@8
    iget v1, p0, Lcom/google/android/gms/internal/lz;->position:I

    #@a
    iget v2, p0, Lcom/google/android/gms/internal/lz;->amW:I

    #@c
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/lz$a;-><init>(II)V

    #@f
    throw v0

    #@10
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/lz;->buffer:[B

    #@12
    iget v1, p0, Lcom/google/android/gms/internal/lz;->position:I

    #@14
    add-int/lit8 v2, v1, 0x1

    #@16
    iput v2, p0, Lcom/google/android/gms/internal/lz;->position:I

    #@18
    int-to-byte v2, p1

    #@19
    aput-byte v2, v0, v1

    #@1b
    return-void
.end method

.method public b(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x5

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lz;->t(II)V

    #@4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/lz;->d(F)V

    #@7
    return-void
.end method

.method public b(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lz;->t(II)V

    #@4
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/lz;->B(J)V

    #@7
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lz;->t(II)V

    #@4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/lz;->cy(Ljava/lang/String;)V

    #@7
    return-void
.end method

.method public b(Lcom/google/android/gms/internal/me;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/me;->nZ()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eI(I)V

    #@7
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/me;->a(Lcom/google/android/gms/internal/lz;)V

    #@a
    return-void
.end method

.method public c(IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lz;->t(II)V

    #@4
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/lz;->C(J)V

    #@7
    return-void
.end method

.method public c([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/lz;->amW:I

    #@2
    iget v1, p0, Lcom/google/android/gms/internal/lz;->position:I

    #@4
    sub-int/2addr v0, v1

    #@5
    if-lt v0, p3, :cond_14

    #@7
    iget-object v0, p0, Lcom/google/android/gms/internal/lz;->buffer:[B

    #@9
    iget v1, p0, Lcom/google/android/gms/internal/lz;->position:I

    #@b
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@e
    iget v0, p0, Lcom/google/android/gms/internal/lz;->position:I

    #@10
    add-int/2addr v0, p3

    #@11
    iput v0, p0, Lcom/google/android/gms/internal/lz;->position:I

    #@13
    return-void

    #@14
    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/lz$a;

    #@16
    iget v1, p0, Lcom/google/android/gms/internal/lz;->position:I

    #@18
    iget v2, p0, Lcom/google/android/gms/internal/lz;->amW:I

    #@1a
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/lz$a;-><init>(II)V

    #@1d
    throw v0
.end method

.method public cy(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const-string v0, "UTF-8"

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@5
    move-result-object v0

    #@6
    array-length v1, v0

    #@7
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/lz;->eI(I)V

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->t([B)V

    #@d
    return-void
.end method

.method public d(F)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eK(I)V

    #@7
    return-void
.end method

.method public e(D)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lz;->H(J)V

    #@7
    return-void
.end method

.method public eC(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-ltz p1, :cond_6

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lz;->eI(I)V

    #@5
    :goto_5
    return-void

    #@6
    :cond_6
    int-to-long v0, p1

    #@7
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lz;->F(J)V

    #@a
    goto :goto_5
.end method

.method public eD(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-static {p1}, Lcom/google/android/gms/internal/lz;->eL(I)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eI(I)V

    #@7
    return-void
.end method

.method public eG(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    int-to-byte v0, p1

    #@1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->b(B)V

    #@4
    return-void
.end method

.method public eI(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    :goto_0
    and-int/lit8 v0, p1, -0x80

    #@2
    if-nez v0, :cond_8

    #@4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@7
    return-void

    #@8
    :cond_8
    and-int/lit8 v0, p1, 0x7f

    #@a
    or-int/lit16 v0, v0, 0x80

    #@c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@f
    ushr-int/lit8 p1, p1, 0x7

    #@11
    goto :goto_0
.end method

.method public eK(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    and-int/lit16 v0, p1, 0xff

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@5
    shr-int/lit8 v0, p1, 0x8

    #@7
    and-int/lit16 v0, v0, 0xff

    #@9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@c
    shr-int/lit8 v0, p1, 0x10

    #@e
    and-int/lit16 v0, v0, 0xff

    #@10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@13
    shr-int/lit8 v0, p1, 0x18

    #@15
    and-int/lit16 v0, v0, 0xff

    #@17
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eG(I)V

    #@1a
    return-void
.end method

.method public nQ()I
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/lz;->amW:I

    #@2
    iget v1, p0, Lcom/google/android/gms/internal/lz;->position:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public nR()V
    .registers 3

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/lz;->nQ()I

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string v1, "Did not write as much data as expected."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    return-void
.end method

.method public p(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lz;->t(II)V

    #@4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/lz;->eC(I)V

    #@7
    return-void
.end method

.method public q(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/lz;->t(II)V

    #@4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/lz;->eD(I)V

    #@7
    return-void
.end method

.method public r([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    array-length v0, p1

    #@1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eI(I)V

    #@4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/lz;->t([B)V

    #@7
    return-void
.end method

.method public t(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mh;->u(II)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lz;->eI(I)V

    #@7
    return-void
.end method

.method public t([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    array-length v1, p1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/lz;->c([BII)V

    #@5
    return-void
.end method
