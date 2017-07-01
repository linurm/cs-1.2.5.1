.class public final Lcom/google/android/gms/internal/ih;
.super Ljava/lang/Object;


# direct methods
.method public static d([B)Ljava/lang/String;
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    goto :goto_3
.end method

.method public static e([B)Ljava/lang/String;
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    const/16 v0, 0xa

    #@6
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    goto :goto_3
.end method
