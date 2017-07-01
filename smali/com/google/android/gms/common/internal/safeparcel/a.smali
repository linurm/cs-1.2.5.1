.class public Lcom/google/android/gms/common/internal/safeparcel/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/safeparcel/a$a;
    }
.end annotation


# direct methods
.method public static A(Landroid/os/Parcel;)I
    .registers 2

    #@0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static A(Landroid/os/Parcel;I)[Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    add-int/2addr v1, v2

    #@11
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    goto :goto_b
.end method

.method public static B(Landroid/os/Parcel;)I
    .registers 6

    #@0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    #@3
    move-result v0

    #@4
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@b
    move-result v2

    #@c
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    #@f
    move-result v3

    #@10
    const/16 v4, 0x4f45

    #@12
    if-eq v3, v4, :cond_31

    #@14
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@16
    new-instance v2, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string v3, "Expected object header. Got 0x"

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@30
    throw v1

    #@31
    :cond_31
    add-int v0, v2, v1

    #@33
    if-lt v0, v2, :cond_3b

    #@35
    invoke-virtual {p0}, Landroid/os/Parcel;->dataSize()I

    #@38
    move-result v1

    #@39
    if-le v0, v1, :cond_5e

    #@3b
    :cond_3b
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@3d
    new-instance v3, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string v4, "Size read is invalid start="

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    const-string v3, " end="

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@5d
    throw v1

    #@5e
    :cond_5e
    return v0
.end method

.method public static B(Landroid/os/Parcel;I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@f
    move-result-object v0

    #@10
    add-int/2addr v1, v2

    #@11
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    goto :goto_b
.end method

.method public static C(Landroid/os/Parcel;I)Landroid/os/Parcel;
    .registers 5

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    #@13
    add-int/2addr v1, v2

    #@14
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@17
    goto :goto_b
.end method

.method public static D(Landroid/os/Parcel;I)[Landroid/os/Parcel;
    .registers 11

    #@0
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@4
    move-result v3

    #@5
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@8
    move-result v4

    #@9
    if-nez v3, :cond_c

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v5

    #@10
    new-array v1, v5, [Landroid/os/Parcel;

    #@12
    const/4 v2, 0x0

    #@13
    :goto_13
    if-ge v2, v5, :cond_32

    #@15
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_2f

    #@1b
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@1e
    move-result v7

    #@1f
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v8, p0, v7, v6}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    #@26
    aput-object v8, v1, v2

    #@28
    add-int/2addr v6, v7

    #@29
    invoke-virtual {p0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    #@2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_13

    #@2f
    :cond_2f
    aput-object v0, v1, v2

    #@31
    goto :goto_2c

    #@32
    :cond_32
    add-int v0, v4, v3

    #@34
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@37
    move-object v0, v1

    #@38
    goto :goto_b
.end method

.method public static a(Landroid/os/Parcel;I)I
    .registers 4

    #@0
    const/high16 v1, -0x10000

    #@2
    and-int v0, p1, v1

    #@4
    if-eq v0, v1, :cond_d

    #@6
    shr-int/lit8 v0, p1, 0x10

    #@8
    const v1, 0xffff

    #@b
    and-int/2addr v0, v1

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v0

    #@11
    goto :goto_c
.end method

.method public static a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-interface {p2, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/os/Parcelable;

    #@12
    add-int/2addr v1, v2

    #@13
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@16
    goto :goto_b
.end method

.method private static a(Landroid/os/Parcel;II)V
    .registers 7

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v0

    #@4
    if-eq v0, p2, :cond_3d

    #@6
    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string v3, "Expected size "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string v3, " got "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    const-string v3, " (0x"

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    const-string v2, ")"

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@3c
    throw v1

    #@3d
    :cond_3d
    return-void
.end method

.method private static a(Landroid/os/Parcel;III)V
    .registers 7

    #@0
    if-eq p2, p3, :cond_39

    #@2
    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string v2, "Expected size "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    const-string v2, " got "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string v2, " (0x"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string v2, ")"

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@38
    throw v0

    #@39
    :cond_39
    return-void
.end method

.method public static a(Landroid/os/Parcel;ILjava/util/List;Ljava/lang/ClassLoader;)V
    .registers 6

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v1

    #@8
    if-nez v0, :cond_b

    #@a
    :goto_a
    return-void

    #@b
    :cond_b
    invoke-virtual {p0, p2, p3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    #@e
    add-int/2addr v0, v1

    #@f
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@12
    goto :goto_a
.end method

.method public static ar(I)I
    .registers 2

    #@0
    const v0, 0xffff

    #@3
    and-int/2addr v0, p0

    #@4
    return v0
.end method

.method public static b(Landroid/os/Parcel;I)V
    .registers 4

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v1

    #@8
    add-int/2addr v0, v1

    #@9
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@c
    return-void
.end method

.method public static b(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)[TT;"
        }
    .end annotation

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    add-int/2addr v1, v2

    #@11
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    goto :goto_b
.end method

.method public static c(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    #@f
    move-result-object v0

    #@10
    add-int/2addr v1, v2

    #@11
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    goto :goto_b
.end method

.method public static c(Landroid/os/Parcel;I)Z
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    :goto_b
    return v0

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_b
.end method

.method public static d(Landroid/os/Parcel;I)Ljava/lang/Boolean;
    .registers 4

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    const/4 v1, 0x4

    #@9
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;III)V

    #@c
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_18

    #@12
    const/4 v0, 0x1

    #@13
    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16
    move-result-object v0

    #@17
    goto :goto_7

    #@18
    :cond_18
    const/4 v0, 0x0

    #@19
    goto :goto_13
.end method

.method public static e(Landroid/os/Parcel;I)B
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    int-to-byte v0, v0

    #@9
    return v0
.end method

.method public static f(Landroid/os/Parcel;I)S
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    int-to-short v0, v0

    #@9
    return v0
.end method

.method public static g(Landroid/os/Parcel;I)I
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static h(Landroid/os/Parcel;I)Ljava/lang/Integer;
    .registers 4

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    const/4 v1, 0x4

    #@9
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;III)V

    #@c
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v0

    #@14
    goto :goto_7
.end method

.method public static i(Landroid/os/Parcel;I)J
    .registers 4

    #@0
    const/16 v0, 0x8

    #@2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    #@5
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public static j(Landroid/os/Parcel;I)Ljava/lang/Long;
    .registers 4

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    const/16 v1, 0x8

    #@a
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;III)V

    #@d
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    #@10
    move-result-wide v0

    #@11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v0

    #@15
    goto :goto_7
.end method

.method public static k(Landroid/os/Parcel;I)Ljava/math/BigInteger;
    .registers 5

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v1

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    #@f
    move-result-object v2

    #@10
    add-int/2addr v0, v1

    #@11
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    new-instance v0, Ljava/math/BigInteger;

    #@16
    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    #@19
    goto :goto_b
.end method

.method public static l(Landroid/os/Parcel;I)F
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static m(Landroid/os/Parcel;I)D
    .registers 4

    #@0
    const/16 v0, 0x8

    #@2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;II)V

    #@5
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    #@8
    move-result-wide v0

    #@9
    return-wide v0
.end method

.method public static n(Landroid/os/Parcel;I)Ljava/math/BigDecimal;
    .registers 6

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v1

    #@8
    if-nez v0, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    #@f
    move-result-object v2

    #@10
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v3

    #@14
    add-int/2addr v0, v1

    #@15
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    #@18
    new-instance v0, Ljava/math/BigDecimal;

    #@1a
    new-instance v1, Ljava/math/BigInteger;

    #@1c
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    #@1f
    invoke-direct {v0, v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@22
    goto :goto_b
.end method

.method public static o(Landroid/os/Parcel;I)Ljava/lang/String;
    .registers 5

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    add-int/2addr v1, v2

    #@11
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    goto :goto_b
.end method

.method public static p(Landroid/os/Parcel;I)Landroid/os/IBinder;
    .registers 5

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@f
    move-result-object v0

    #@10
    add-int/2addr v1, v2

    #@11
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    goto :goto_b
.end method

.method public static q(Landroid/os/Parcel;I)Landroid/os/Bundle;
    .registers 5

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@f
    move-result-object v0

    #@10
    add-int/2addr v1, v2

    #@11
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    goto :goto_b
.end method

.method public static r(Landroid/os/Parcel;I)[B
    .registers 5

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    #@f
    move-result-object v0

    #@10
    add-int/2addr v1, v2

    #@11
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    goto :goto_b
.end method

.method public static s(Landroid/os/Parcel;I)[[B
    .registers 8

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v2

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v3

    #@8
    if-nez v2, :cond_e

    #@a
    const/4 v0, 0x0

    #@b
    check-cast v0, [[B

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v4

    #@12
    new-array v0, v4, [[B

    #@14
    const/4 v1, 0x0

    #@15
    :goto_15
    if-ge v1, v4, :cond_20

    #@17
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    #@1a
    move-result-object v5

    #@1b
    aput-object v5, v0, v1

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_15

    #@20
    :cond_20
    add-int v1, v3, v2

    #@22
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@25
    goto :goto_d
.end method

.method public static t(Landroid/os/Parcel;I)[Z
    .registers 5

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createBooleanArray()[Z

    #@f
    move-result-object v0

    #@10
    add-int/2addr v1, v2

    #@11
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    goto :goto_b
.end method

.method public static u(Landroid/os/Parcel;I)[I
    .registers 5

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createIntArray()[I

    #@f
    move-result-object v0

    #@10
    add-int/2addr v1, v2

    #@11
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    goto :goto_b
.end method

.method public static v(Landroid/os/Parcel;I)[J
    .registers 5

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createLongArray()[J

    #@f
    move-result-object v0

    #@10
    add-int/2addr v1, v2

    #@11
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    goto :goto_b
.end method

.method public static w(Landroid/os/Parcel;I)[Ljava/math/BigInteger;
    .registers 9

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v2

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v3

    #@8
    if-nez v2, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v4

    #@10
    new-array v0, v4, [Ljava/math/BigInteger;

    #@12
    const/4 v1, 0x0

    #@13
    :goto_13
    if-ge v1, v4, :cond_23

    #@15
    new-instance v5, Ljava/math/BigInteger;

    #@17
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    #@1a
    move-result-object v6

    #@1b
    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>([B)V

    #@1e
    aput-object v5, v0, v1

    #@20
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_13

    #@23
    :cond_23
    add-int v1, v3, v2

    #@25
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@28
    goto :goto_b
.end method

.method public static x(Landroid/os/Parcel;I)[F
    .registers 5

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createFloatArray()[F

    #@f
    move-result-object v0

    #@10
    add-int/2addr v1, v2

    #@11
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    goto :goto_b
.end method

.method public static y(Landroid/os/Parcel;I)[D
    .registers 5

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v2

    #@8
    if-nez v1, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->createDoubleArray()[D

    #@f
    move-result-object v0

    #@10
    add-int/2addr v1, v2

    #@11
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@14
    goto :goto_b
.end method

.method public static z(Landroid/os/Parcel;I)[Ljava/math/BigDecimal;
    .registers 11

    #@0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    #@3
    move-result v2

    #@4
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    #@7
    move-result v3

    #@8
    if-nez v2, :cond_c

    #@a
    const/4 v0, 0x0

    #@b
    :goto_b
    return-object v0

    #@c
    :cond_c
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v4

    #@10
    new-array v0, v4, [Ljava/math/BigDecimal;

    #@12
    const/4 v1, 0x0

    #@13
    :goto_13
    if-ge v1, v4, :cond_2c

    #@15
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    #@18
    move-result-object v5

    #@19
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v6

    #@1d
    new-instance v7, Ljava/math/BigDecimal;

    #@1f
    new-instance v8, Ljava/math/BigInteger;

    #@21
    invoke-direct {v8, v5}, Ljava/math/BigInteger;-><init>([B)V

    #@24
    invoke-direct {v7, v8, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@27
    aput-object v7, v0, v1

    #@29
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_13

    #@2c
    :cond_2c
    add-int v1, v3, v2

    #@2e
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@31
    goto :goto_b
.end method
