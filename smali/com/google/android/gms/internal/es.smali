.class public final Lcom/google/android/gms/internal/es;
.super Lcom/google/android/gms/internal/em;


# instance fields
.field private final lr:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final qY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/internal/em;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/internal/es;->mContext:Landroid/content/Context;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/es;->lr:Ljava/lang/String;

    #@7
    iput-object p3, p0, Lcom/google/android/gms/internal/es;->qY:Ljava/lang/String;

    #@9
    return-void
.end method


# virtual methods
.method public bh()V
    .registers 5

    #@0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "Pinging URL: "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/google/android/gms/internal/es;->qY:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->C(Ljava/lang/String;)V

    #@18
    new-instance v0, Ljava/net/URL;

    #@1a
    iget-object v1, p0, Lcom/google/android/gms/internal/es;->qY:Ljava/lang/String;

    #@1c
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@1f
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_25
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_25} :catch_64
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_8c

    #@25
    :try_start_25
    iget-object v1, p0, Lcom/google/android/gms/internal/es;->mContext:Landroid/content/Context;

    #@27
    iget-object v2, p0, Lcom/google/android/gms/internal/es;->lr:Ljava/lang/String;

    #@29
    const/4 v3, 0x1

    #@2a
    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/internal/eo;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    #@2d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@30
    move-result v1

    #@31
    const/16 v2, 0xc8

    #@33
    if-lt v1, v2, :cond_39

    #@35
    const/16 v2, 0x12c

    #@37
    if-lt v1, v2, :cond_5b

    #@39
    :cond_39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string v3, "Received non-success response code "

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    const-string v2, " from pinging URL: "

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    iget-object v2, p0, Lcom/google/android/gms/internal/es;->qY:Ljava/lang/String;

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_25 .. :try_end_5b} :catchall_5f

    #@5b
    :cond_5b
    :try_start_5b
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    #@5e
    :goto_5e
    return-void

    #@5f
    :catchall_5f
    move-exception v1

    #@60
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    #@63
    throw v1
    :try_end_64
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5b .. :try_end_64} :catch_64
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_64} :catch_8c

    #@64
    :catch_64
    move-exception v0

    #@65
    new-instance v1, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string v2, "Error while parsing ping URL: "

    #@6c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    iget-object v2, p0, Lcom/google/android/gms/internal/es;->qY:Ljava/lang/String;

    #@72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    const-string v2, ". "

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    #@7f
    move-result-object v0

    #@80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v0

    #@84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v0

    #@88
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@8b
    goto :goto_5e

    #@8c
    :catch_8c
    move-exception v0

    #@8d
    new-instance v1, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string v2, "Error while pinging URL: "

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    iget-object v2, p0, Lcom/google/android/gms/internal/es;->qY:Ljava/lang/String;

    #@9a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    const-string v2, ". "

    #@a0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v1

    #@a4
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@a7
    move-result-object v0

    #@a8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v0

    #@ac
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v0

    #@b0
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@b3
    goto :goto_5e
.end method

.method public onStop()V
    .registers 1

    #@0
    return-void
.end method
