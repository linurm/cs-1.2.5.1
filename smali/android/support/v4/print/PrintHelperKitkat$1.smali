.class Landroid/support/v4/print/PrintHelperKitkat$1;
.super Landroid/print/PrintDocumentAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$fittingMode:I

.field final synthetic val$jobName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 5

    #@0
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@2
    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;

    #@4
    iput-object p3, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    #@6
    iput p4, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I

    #@8
    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .registers 9

    #@0
    const/4 v0, 0x1

    #@1
    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    #@3
    new-instance v1, Landroid/print/PrintDocumentInfo$Builder;

    #@5
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;

    #@7
    invoke-direct {v1, v2}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    #@a
    invoke-virtual {v1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_20

    #@1c
    :goto_1c
    invoke-virtual {p4, v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    #@1f
    return-void

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    goto :goto_1c
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 12

    #@0
    new-instance v1, Landroid/print/pdf/PrintedPdfDocument;

    #@2
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@4
    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    #@6
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    #@8
    invoke-direct {v1, v0, v2}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    #@b
    const/4 v0, 0x1

    #@c
    :try_start_c
    invoke-virtual {v1, v0}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    #@f
    move-result-object v0

    #@10
    new-instance v2, Landroid/graphics/RectF;

    #@12
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    #@19
    move-result-object v3

    #@1a
    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    #@1d
    iget-object v3, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    #@1f
    iget-object v4, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    #@21
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    #@24
    move-result v4

    #@25
    iget-object v5, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    #@27
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    #@2a
    move-result v5

    #@2b
    iget v6, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I

    #@2d
    # invokes: Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    invoke-static {v3, v4, v5, v2, v6}, Landroid/support/v4/print/PrintHelperKitkat;->access$000(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    #@34
    move-result-object v3

    #@35
    iget-object v4, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    #@37
    const/4 v5, 0x0

    #@38
    invoke-virtual {v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    #@3b
    invoke-virtual {v1, v0}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_6d

    #@3e
    :try_start_3e
    new-instance v0, Ljava/io/FileOutputStream;

    #@40
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@43
    move-result-object v2

    #@44
    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    #@47
    invoke-virtual {v1, v0}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V

    #@4a
    const/4 v0, 0x1

    #@4b
    new-array v0, v0, [Landroid/print/PageRange;

    #@4d
    const/4 v2, 0x0

    #@4e
    sget-object v3, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    #@50
    aput-object v3, v0, v2

    #@52
    invoke-virtual {p4, v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_55} :catch_60
    .catchall {:try_start_3e .. :try_end_55} :catchall_6d

    #@55
    :goto_55
    if-eqz v1, :cond_5a

    #@57
    invoke-virtual {v1}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    #@5a
    :cond_5a
    if-eqz p2, :cond_5f

    #@5c
    :try_start_5c
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_79

    #@5f
    :cond_5f
    :goto_5f
    return-void

    #@60
    :catch_60
    move-exception v0

    #@61
    :try_start_61
    const-string v2, "PrintHelperKitkat"

    #@63
    const-string v3, "Error writing printed content"

    #@65
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@68
    const/4 v0, 0x0

    #@69
    invoke-virtual {p4, v0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_6d

    #@6c
    goto :goto_55

    #@6d
    :catchall_6d
    move-exception v0

    #@6e
    if-eqz v1, :cond_73

    #@70
    invoke-virtual {v1}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    #@73
    :cond_73
    if-eqz p2, :cond_78

    #@75
    :try_start_75
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_7b

    #@78
    :cond_78
    :goto_78
    throw v0

    #@79
    :catch_79
    move-exception v0

    #@7a
    goto :goto_5f

    #@7b
    :catch_7b
    move-exception v1

    #@7c
    goto :goto_78
.end method
