.class public Lcom/google/android/gms/common/internal/safeparcel/b;
.super Ljava/lang/Object;


# direct methods
.method public static C(Landroid/os/Parcel;)I
    .registers 2

    #@0
    const/16 v0, 0x4f45

    #@2
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->E(Landroid/os/Parcel;I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static E(Landroid/os/Parcel;I)I
    .registers 3

    #@0
    const/high16 v0, -0x10000

    #@2
    or-int/2addr v0, p1

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    const/4 v0, 0x0

    #@7
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method private static F(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v1, p1, -0x4

    #@6
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@9
    sub-int v1, v0, p1

    #@b
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@11
    return-void
.end method

.method public static G(Landroid/os/Parcel;I)V
    .registers 2

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    #@3
    return-void
.end method

.method public static a(Landroid/os/Parcel;IB)V
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@4
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    return-void
.end method

.method public static a(Landroid/os/Parcel;ID)V
    .registers 6

    #@0
    const/16 v0, 0x8

    #@2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@5
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    #@8
    return-void
.end method

.method public static a(Landroid/os/Parcel;IF)V
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@4
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    #@7
    return-void
.end method

.method public static a(Landroid/os/Parcel;IJ)V
    .registers 6

    #@0
    const/16 v0, 0x8

    #@2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@5
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@8
    return-void
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V
    .registers 5

    #@0
    if-nez p2, :cond_9

    #@2
    if-eqz p3, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->E(Landroid/os/Parcel;I)I

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@10
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    #@13
    goto :goto_8
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
    .registers 5

    #@0
    if-nez p2, :cond_9

    #@2
    if-eqz p3, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->E(Landroid/os/Parcel;I)I

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@10
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    #@13
    goto :goto_8
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcel;Z)V
    .registers 7

    #@0
    const/4 v2, 0x0

    #@1
    if-nez p2, :cond_9

    #@3
    if-eqz p3, :cond_8

    #@5
    invoke-static {p0, p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->E(Landroid/os/Parcel;I)I

    #@c
    move-result v0

    #@d
    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    #@10
    move-result v1

    #@11
    invoke-virtual {p0, p2, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    #@14
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    #@17
    goto :goto_8
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
    .registers 6

    #@0
    if-nez p2, :cond_9

    #@2
    if-eqz p4, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->E(Landroid/os/Parcel;I)I

    #@c
    move-result v0

    #@d
    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@10
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    #@13
    goto :goto_8
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p2, :cond_9

    #@3
    if-eqz p3, :cond_8

    #@5
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    const/4 v1, 0x4

    #@a
    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@d
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_14

    #@13
    const/4 v0, 0x1

    #@14
    :cond_14
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    goto :goto_8
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Integer;Z)V
    .registers 5

    #@0
    if-nez p2, :cond_9

    #@2
    if-eqz p3, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    const/4 v0, 0x4

    #@a
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@d
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v0

    #@11
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    goto :goto_8
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/Long;Z)V
    .registers 6

    #@0
    if-nez p2, :cond_9

    #@2
    if-eqz p3, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    const/16 v0, 0x8

    #@b
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@e
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    #@11
    move-result-wide v0

    #@12
    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    goto :goto_8
.end method

.method public static a(Landroid/os/Parcel;ILjava/lang/String;Z)V
    .registers 5

    #@0
    if-nez p2, :cond_9

    #@2
    if-eqz p3, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->E(Landroid/os/Parcel;I)I

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    #@13
    goto :goto_8
.end method

.method public static a(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    #@0
    if-nez p2, :cond_9

    #@2
    if-eqz p3, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->E(Landroid/os/Parcel;I)I

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    #@10
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    #@13
    goto :goto_8
.end method

.method public static a(Landroid/os/Parcel;IS)V
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@4
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    return-void
.end method

.method public static a(Landroid/os/Parcel;IZ)V
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@4
    if-eqz p2, :cond_b

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    return-void

    #@b
    :cond_b
    const/4 v0, 0x0

    #@c
    goto :goto_7
.end method

.method public static a(Landroid/os/Parcel;I[BZ)V
    .registers 5

    #@0
    if-nez p2, :cond_9

    #@2
    if-eqz p3, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->E(Landroid/os/Parcel;I)I

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    #@10
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    #@13
    goto :goto_8
.end method

.method public static a(Landroid/os/Parcel;I[IZ)V
    .registers 5

    #@0
    if-nez p2, :cond_9

    #@2
    if-eqz p3, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->E(Landroid/os/Parcel;I)I

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    #@10
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    #@13
    goto :goto_8
.end method

.method public static a(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I[TT;IZ)V"
        }
    .end annotation

    #@0
    const/4 v1, 0x0

    #@1
    if-nez p2, :cond_9

    #@3
    if-eqz p4, :cond_8

    #@5
    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->E(Landroid/os/Parcel;I)I

    #@c
    move-result v2

    #@d
    array-length v3, p2

    #@e
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    move v0, v1

    #@12
    :goto_12
    if-ge v0, v3, :cond_22

    #@14
    aget-object v4, p2, v0

    #@16
    if-nez v4, :cond_1e

    #@18
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_12

    #@1e
    :cond_1e
    invoke-static {p0, v4, p3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    #@21
    goto :goto_1b

    #@22
    :cond_22
    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    #@25
    goto :goto_8
.end method

.method public static a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V
    .registers 5

    #@0
    if-nez p2, :cond_9

    #@2
    if-eqz p3, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->E(Landroid/os/Parcel;I)I

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@10
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    #@13
    goto :goto_8
.end method

.method public static a(Landroid/os/Parcel;I[[BZ)V
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p2, :cond_9

    #@3
    if-eqz p3, :cond_8

    #@5
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->E(Landroid/os/Parcel;I)I

    #@c
    move-result v1

    #@d
    array-length v2, p2

    #@e
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    :goto_11
    if-ge v0, v2, :cond_1b

    #@13
    aget-object v3, p2, v0

    #@15
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_11

    #@1b
    :cond_1b
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    #@1e
    goto :goto_8
.end method

.method private static a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;I)V"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@b
    move-result v1

    #@c
    invoke-interface {p1, p0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@f
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@12
    move-result v2

    #@13
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@16
    sub-int v0, v2, v1

    #@18
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    #@1e
    return-void
.end method

.method private static b(Landroid/os/Parcel;II)V
    .registers 4

    #@0
    const v0, 0xffff

    #@3
    if-lt p2, v0, :cond_f

    #@5
    const/high16 v0, -0x10000

    #@7
    or-int/2addr v0, p1

    #@8
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    :goto_e
    return-void

    #@f
    :cond_f
    shl-int/lit8 v0, p2, 0x10

    #@11
    or-int/2addr v0, p1

    #@12
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    goto :goto_e
.end method

.method public static b(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    if-nez p2, :cond_9

    #@3
    if-eqz p3, :cond_8

    #@5
    invoke-static {p0, p1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->E(Landroid/os/Parcel;I)I

    #@c
    move-result v3

    #@d
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@10
    move-result v4

    #@11
    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    move v1, v2

    #@15
    :goto_15
    if-ge v1, v4, :cond_2a

    #@17
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/os/Parcelable;

    #@1d
    if-nez v0, :cond_26

    #@1f
    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    :goto_22
    add-int/lit8 v0, v1, 0x1

    #@24
    move v1, v0

    #@25
    goto :goto_15

    #@26
    :cond_26
    invoke-static {p0, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    #@29
    goto :goto_22

    #@2a
    :cond_2a
    invoke-static {p0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    #@2d
    goto :goto_8
.end method

.method public static c(Landroid/os/Parcel;II)V
    .registers 4

    #@0
    const/4 v0, 0x4

    #@1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@4
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    return-void
.end method

.method public static c(Landroid/os/Parcel;ILjava/util/List;Z)V
    .registers 5

    #@0
    if-nez p2, :cond_9

    #@2
    if-eqz p3, :cond_8

    #@4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    #@8
    :cond_8
    :goto_8
    return-void

    #@9
    :cond_9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->E(Landroid/os/Parcel;I)I

    #@c
    move-result v0

    #@d
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@10
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->F(Landroid/os/Parcel;I)V

    #@13
    goto :goto_8
.end method
