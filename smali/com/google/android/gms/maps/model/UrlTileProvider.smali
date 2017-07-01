.class public abstract Lcom/google/android/gms/maps/model/UrlTileProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/model/TileProvider;


# instance fields
.field private final ku:I

.field private final kv:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->ku:I

    #@5
    iput p2, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->kv:I

    #@7
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/16 v0, 0x1000

    #@2
    new-array v2, v0, [B

    #@4
    const-wide/16 v0, 0x0

    #@6
    :goto_6
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    #@9
    move-result v3

    #@a
    const/4 v4, -0x1

    #@b
    if-ne v3, v4, :cond_e

    #@d
    return-wide v0

    #@e
    :cond_e
    const/4 v4, 0x0

    #@f
    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    #@12
    int-to-long v4, v3

    #@13
    add-long/2addr v0, v4

    #@14
    goto :goto_6
.end method

.method private static a(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    invoke-static {p0, v0}, Lcom/google/android/gms/maps/model/UrlTileProvider;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    #@8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method


# virtual methods
.method public final getTile(III)Lcom/google/android/gms/maps/model/Tile;
    .registers 8

    #@0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/UrlTileProvider;->getTileUrl(III)Ljava/net/URL;

    #@3
    move-result-object v1

    #@4
    if-nez v1, :cond_9

    #@6
    sget-object v0, Lcom/google/android/gms/maps/model/UrlTileProvider;->NO_TILE:Lcom/google/android/gms/maps/model/Tile;

    #@8
    :goto_8
    return-object v0

    #@9
    :cond_9
    :try_start_9
    new-instance v0, Lcom/google/android/gms/maps/model/Tile;

    #@b
    iget v2, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->ku:I

    #@d
    iget v3, p0, Lcom/google/android/gms/maps/model/UrlTileProvider;->kv:I

    #@f
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Lcom/google/android/gms/maps/model/UrlTileProvider;->a(Ljava/io/InputStream;)[B

    #@16
    move-result-object v1

    #@17
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/maps/model/Tile;-><init>(II[B)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_1b

    #@1a
    goto :goto_8

    #@1b
    :catch_1b
    move-exception v0

    #@1c
    const/4 v0, 0x0

    #@1d
    goto :goto_8
.end method

.method public abstract getTileUrl(III)Ljava/net/URL;
.end method
