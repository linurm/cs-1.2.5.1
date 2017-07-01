.class Lcom/google/android/gms/tagmanager/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/bl;


# instance fields
.field private afP:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0xc8

    #@6
    if-ne v0, v1, :cond_d

    #@8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string v2, "Bad response: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    const/16 v2, 0x194

    #@22
    if-ne v0, v2, :cond_2a

    #@24
    new-instance v0, Ljava/io/FileNotFoundException;

    #@26
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    :cond_2a
    new-instance v0, Ljava/io/IOException;

    #@2c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0
.end method

.method private b(Ljava/net/HttpURLConnection;)V
    .registers 2

    #@0
    if-eqz p1, :cond_5

    #@2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    #@5
    :cond_5
    return-void
.end method


# virtual methods
.method public bV(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/aw;->bW(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/aw;->afP:Ljava/net/HttpURLConnection;

    #@6
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/aw;->afP:Ljava/net/HttpURLConnection;

    #@8
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/aw;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method bW(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/16 v1, 0x4e20

    #@2
    new-instance v0, Ljava/net/URL;

    #@4
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@7
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/net/HttpURLConnection;

    #@d
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    #@10
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    #@13
    return-object v0
.end method

.method public close()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/aw;->afP:Ljava/net/HttpURLConnection;

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/aw;->b(Ljava/net/HttpURLConnection;)V

    #@5
    return-void
.end method
