.class public final Lcom/google/android/gms/internal/ig;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/StringBuilder;[D)V
    .registers 6

    #@0
    array-length v1, p1

    #@1
    const/4 v0, 0x0

    #@2
    :goto_2
    if-ge v0, v1, :cond_17

    #@4
    if-eqz v0, :cond_b

    #@6
    const-string v2, ","

    #@8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    :cond_b
    aget-wide v2, p1, v0

    #@d
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_2

    #@17
    :cond_17
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[F)V
    .registers 5

    #@0
    array-length v1, p1

    #@1
    const/4 v0, 0x0

    #@2
    :goto_2
    if-ge v0, v1, :cond_17

    #@4
    if-eqz v0, :cond_b

    #@6
    const-string v2, ","

    #@8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    :cond_b
    aget v2, p1, v0

    #@d
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_2

    #@17
    :cond_17
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[I)V
    .registers 5

    #@0
    array-length v1, p1

    #@1
    const/4 v0, 0x0

    #@2
    :goto_2
    if-ge v0, v1, :cond_17

    #@4
    if-eqz v0, :cond_b

    #@6
    const-string v2, ","

    #@8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    :cond_b
    aget v2, p1, v0

    #@d
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_2

    #@17
    :cond_17
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[J)V
    .registers 6

    #@0
    array-length v1, p1

    #@1
    const/4 v0, 0x0

    #@2
    :goto_2
    if-ge v0, v1, :cond_17

    #@4
    if-eqz v0, :cond_b

    #@6
    const-string v2, ","

    #@8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    :cond_b
    aget-wide v2, p1, v0

    #@d
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_2

    #@17
    :cond_17
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StringBuilder;",
            "[TT;)V"
        }
    .end annotation

    #@0
    array-length v1, p1

    #@1
    const/4 v0, 0x0

    #@2
    :goto_2
    if-ge v0, v1, :cond_17

    #@4
    if-eqz v0, :cond_b

    #@6
    const-string v2, ","

    #@8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    :cond_b
    aget-object v2, p1, v0

    #@d
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_2

    #@17
    :cond_17
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 6

    #@0
    array-length v1, p1

    #@1
    const/4 v0, 0x0

    #@2
    :goto_2
    if-ge v0, v1, :cond_1f

    #@4
    if-eqz v0, :cond_b

    #@6
    const-string v2, ","

    #@8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    :cond_b
    const-string v2, "\""

    #@d
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    aget-object v3, p1, v0

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string v3, "\""

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_2

    #@1f
    :cond_1f
    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;[Z)V
    .registers 5

    #@0
    array-length v1, p1

    #@1
    const/4 v0, 0x0

    #@2
    :goto_2
    if-ge v0, v1, :cond_17

    #@4
    if-eqz v0, :cond_b

    #@6
    const-string v2, ","

    #@8
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    :cond_b
    aget-boolean v2, p1, v0

    #@d
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_2

    #@17
    :cond_17
    return-void
.end method

.method public static ga()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    return-object v0
.end method
