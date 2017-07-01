.class public Lcom/facebook/ads/internal/DownloadImageTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final imageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/ads/internal/DownloadImageTask;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/ads/internal/DownloadImageTask;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/ads/internal/DownloadImageTask;->imageView:Landroid/widget/ImageView;

    #@5
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    aget-object v2, p1, v0

    #@3
    const/4 v0, 0x0

    #@4
    :try_start_4
    new-instance v1, Ljava/net/URL;

    #@6
    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@9
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    #@c
    move-result-object v1

    #@d
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_12

    #@10
    move-result-object v0

    #@11
    :goto_11
    return-object v0

    #@12
    :catch_12
    move-exception v1

    #@13
    sget-object v3, Lcom/facebook/ads/internal/DownloadImageTask;->TAG:Ljava/lang/String;

    #@15
    new-instance v4, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v5, "Error downloading image: "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    goto :goto_11
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    check-cast p1, [Ljava/lang/String;

    #@2
    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/DownloadImageTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/facebook/ads/internal/DownloadImageTask;->imageView:Landroid/widget/ImageView;

    #@2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    #@5
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    #@0
    check-cast p1, Landroid/graphics/Bitmap;

    #@2
    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/DownloadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    #@5
    return-void
.end method
