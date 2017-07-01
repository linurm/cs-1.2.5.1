.class public final Lcom/google/android/gms/analytics/o;
.super Ljava/lang/Object;


# direct methods
.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    if-ge p1, v0, :cond_2c

    #@3
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string v1, "index out of range for "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string v1, " ("

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string v1, ")"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    #@29
    const-string v0, ""

    #@2b
    :goto_2b
    return-object v0

    #@2c
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    goto :goto_2b
.end method

.method static s(I)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "&cd"

    #@2
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static t(I)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "&cm"

    #@2
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static u(I)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "&pr"

    #@2
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static v(I)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "&promo"

    #@2
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static w(I)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "pi"

    #@2
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static x(I)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "&il"

    #@2
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static y(I)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "cd"

    #@2
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static z(I)Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "cm"

    #@2
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
