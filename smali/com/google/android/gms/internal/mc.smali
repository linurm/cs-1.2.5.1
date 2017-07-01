.class public final Lcom/google/android/gms/internal/mc;
.super Ljava/lang/Object;


# static fields
.field public static final ana:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/internal/mc;->ana:Ljava/lang/Object;

    #@7
    return-void
.end method

.method public static equals([F[F)Z
    .registers 3

    #@0
    if-eqz p0, :cond_5

    #@2
    array-length v0, p0

    #@3
    if-nez v0, :cond_e

    #@5
    :cond_5
    if-eqz p1, :cond_a

    #@7
    array-length v0, p1

    #@8
    if-nez v0, :cond_c

    #@a
    :cond_a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b

    #@e
    :cond_e
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    #@11
    move-result v0

    #@12
    goto :goto_b
.end method

.method public static equals([I[I)Z
    .registers 3

    #@0
    if-eqz p0, :cond_5

    #@2
    array-length v0, p0

    #@3
    if-nez v0, :cond_e

    #@5
    :cond_5
    if-eqz p1, :cond_a

    #@7
    array-length v0, p1

    #@8
    if-nez v0, :cond_c

    #@a
    :cond_a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b

    #@e
    :cond_e
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    #@11
    move-result v0

    #@12
    goto :goto_b
.end method

.method public static equals([J[J)Z
    .registers 3

    #@0
    if-eqz p0, :cond_5

    #@2
    array-length v0, p0

    #@3
    if-nez v0, :cond_e

    #@5
    :cond_5
    if-eqz p1, :cond_a

    #@7
    array-length v0, p1

    #@8
    if-nez v0, :cond_c

    #@a
    :cond_a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b

    #@e
    :cond_e
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    #@11
    move-result v0

    #@12
    goto :goto_b
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 10

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-nez p0, :cond_14

    #@4
    move v7, v1

    #@5
    :goto_5
    if-nez p1, :cond_17

    #@7
    move v0, v1

    #@8
    :goto_8
    move v3, v1

    #@9
    move v6, v1

    #@a
    :goto_a
    if-ge v6, v7, :cond_45

    #@c
    aget-object v4, p0, v6

    #@e
    if-nez v4, :cond_45

    #@10
    add-int/lit8 v4, v6, 0x1

    #@12
    move v6, v4

    #@13
    goto :goto_a

    #@14
    :cond_14
    array-length v0, p0

    #@15
    move v7, v0

    #@16
    goto :goto_5

    #@17
    :cond_17
    array-length v0, p1

    #@18
    goto :goto_8

    #@19
    :goto_19
    if-ge v5, v0, :cond_23

    #@1b
    aget-object v3, p1, v5

    #@1d
    if-nez v3, :cond_23

    #@1f
    add-int/lit8 v3, v5, 0x1

    #@21
    move v5, v3

    #@22
    goto :goto_19

    #@23
    :cond_23
    if-lt v6, v7, :cond_2f

    #@25
    move v4, v2

    #@26
    :goto_26
    if-lt v5, v0, :cond_31

    #@28
    move v3, v2

    #@29
    :goto_29
    if-eqz v4, :cond_33

    #@2b
    if-eqz v3, :cond_33

    #@2d
    move v1, v2

    #@2e
    :cond_2e
    return v1

    #@2f
    :cond_2f
    move v4, v1

    #@30
    goto :goto_26

    #@31
    :cond_31
    move v3, v1

    #@32
    goto :goto_29

    #@33
    :cond_33
    if-ne v4, v3, :cond_2e

    #@35
    aget-object v3, p0, v6

    #@37
    aget-object v4, p1, v5

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_2e

    #@3f
    add-int/lit8 v3, v5, 0x1

    #@41
    add-int/lit8 v4, v6, 0x1

    #@43
    move v6, v4

    #@44
    goto :goto_a

    #@45
    :cond_45
    move v5, v3

    #@46
    goto :goto_19
.end method

.method public static hashCode([F)I
    .registers 2

    #@0
    if-eqz p0, :cond_5

    #@2
    array-length v0, p0

    #@3
    if-nez v0, :cond_7

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    #@a
    move-result v0

    #@b
    goto :goto_6
.end method

.method public static hashCode([I)I
    .registers 2

    #@0
    if-eqz p0, :cond_5

    #@2
    array-length v0, p0

    #@3
    if-nez v0, :cond_7

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    #@a
    move-result v0

    #@b
    goto :goto_6
.end method

.method public static hashCode([J)I
    .registers 2

    #@0
    if-eqz p0, :cond_5

    #@2
    array-length v0, p0

    #@3
    if-nez v0, :cond_7

    #@5
    :cond_5
    const/4 v0, 0x0

    #@6
    :goto_6
    return v0

    #@7
    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    #@a
    move-result v0

    #@b
    goto :goto_6
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    if-nez p0, :cond_15

    #@3
    move v0, v1

    #@4
    :goto_4
    move v2, v1

    #@5
    :goto_5
    if-ge v2, v0, :cond_17

    #@7
    aget-object v3, p0, v2

    #@9
    if-eqz v3, :cond_12

    #@b
    mul-int/lit8 v1, v1, 0x1f

    #@d
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    #@10
    move-result v3

    #@11
    add-int/2addr v1, v3

    #@12
    :cond_12
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_5

    #@15
    :cond_15
    array-length v0, p0

    #@16
    goto :goto_4

    #@17
    :cond_17
    return v1
.end method
