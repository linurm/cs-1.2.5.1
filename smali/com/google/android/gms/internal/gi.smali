.class public final Lcom/google/android/gms/internal/gi;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    #@0
    if-nez p0, :cond_4

    #@2
    if-eqz p1, :cond_e

    #@4
    :cond_4
    if-eqz p0, :cond_10

    #@6
    if-eqz p1, :cond_10

    #@8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_10

    #@e
    :cond_e
    const/4 v0, 0x1

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    const/4 v0, 0x0

    #@11
    goto :goto_f
.end method

.method public static ak(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_e

    #@6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v1, "Namespace cannot be null or empty"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@11
    move-result v0

    #@12
    const/16 v1, 0x80

    #@14
    if-le v0, v1, :cond_1e

    #@16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    const-string v1, "Invalid namespace length"

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    :cond_1e
    const-string v0, "urn:x-cast:"

    #@20
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_2e

    #@26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@28
    const-string v1, "Namespace must begin with the prefix \"urn:x-cast:\""

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    :cond_2e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@31
    move-result v0

    #@32
    const-string v1, "urn:x-cast:"

    #@34
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@37
    move-result v1

    #@38
    if-ne v0, v1, :cond_42

    #@3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3c
    const-string v1, "Namespace must begin with the prefix \"urn:x-cast:\" and have non-empty suffix"

    #@3e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    :cond_42
    return-void
.end method

.method public static al(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "urn:x-cast:"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static b(D)J
    .registers 4

    #@0
    const-wide v0, 0x408f400000000000L    # 1000.0

    #@5
    mul-double/2addr v0, p0

    #@6
    double-to-long v0, v0

    #@7
    return-wide v0
.end method

.method public static b(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    #@0
    const/16 v3, 0x2d

    #@2
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const/16 v1, 0x14

    #@6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_21

    #@1a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    :cond_21
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@28
    move-result v2

    #@29
    if-nez v2, :cond_32

    #@2b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method

.method public static o(J)D
    .registers 6

    #@0
    long-to-double v0, p0

    #@1
    const-wide v2, 0x408f400000000000L    # 1000.0

    #@6
    div-double/2addr v0, v2

    #@7
    return-wide v0
.end method
