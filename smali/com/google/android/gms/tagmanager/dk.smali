.class Lcom/google/android/gms/tagmanager/dk;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/google/android/gms/tagmanager/by;)Lcom/google/android/gms/tagmanager/by;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;"
        }
    .end annotation

    #@0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@6
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dk;->cv(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    new-instance v0, Lcom/google/android/gms/tagmanager/by;

    #@10
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/by;->ma()Z

    #@17
    move-result v2

    #@18
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/by;-><init>(Ljava/lang/Object;Z)V
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_1b} :catch_1d

    #@1b
    move-object p0, v0

    #@1c
    :goto_1c
    return-object p0

    #@1d
    :catch_1d
    move-exception v0

    #@1e
    const-string v1, "Escape URI: unsupported encoding"

    #@20
    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/bh;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@23
    goto :goto_1c
.end method

.method private static a(Lcom/google/android/gms/tagmanager/by;I)Lcom/google/android/gms/tagmanager/by;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;I)",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@6
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dk;->q(Lcom/google/android/gms/internal/d$a;)Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_12

    #@c
    const-string v0, "Escaping can only be applied to strings."

    #@e
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@11
    :goto_11
    return-object p0

    #@12
    :cond_12
    packed-switch p1, :pswitch_data_32

    #@15
    new-instance v0, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v1, "Unsupported Value Escaping: "

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@2b
    goto :goto_11

    #@2c
    :pswitch_2c
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dk;->a(Lcom/google/android/gms/tagmanager/by;)Lcom/google/android/gms/tagmanager/by;

    #@2f
    move-result-object p0

    #@30
    goto :goto_11

    #@31
    nop

    #@32
    :pswitch_data_32
    .packed-switch 0xc
        :pswitch_2c
    .end packed-switch
.end method

.method static varargs a(Lcom/google/android/gms/tagmanager/by;[I)Lcom/google/android/gms/tagmanager/by;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;[I)",
            "Lcom/google/android/gms/tagmanager/by",
            "<",
            "Lcom/google/android/gms/internal/d$a;",
            ">;"
        }
    .end annotation

    #@0
    array-length v1, p1

    #@1
    const/4 v0, 0x0

    #@2
    :goto_2
    if-ge v0, v1, :cond_d

    #@4
    aget v2, p1, v0

    #@6
    invoke-static {p0, v2}, Lcom/google/android/gms/tagmanager/dk;->a(Lcom/google/android/gms/tagmanager/by;I)Lcom/google/android/gms/tagmanager/by;

    #@9
    move-result-object p0

    #@a
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_2

    #@d
    :cond_d
    return-object p0
.end method

.method static cv(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    const-string v0, "UTF-8"

    #@2
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const-string v1, "\\+"

    #@8
    const-string v2, "%20"

    #@a
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method private static q(Lcom/google/android/gms/internal/d$a;)Z
    .registers 2

    #@0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/dh;->o(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Ljava/lang/String;

    #@6
    return v0
.end method
