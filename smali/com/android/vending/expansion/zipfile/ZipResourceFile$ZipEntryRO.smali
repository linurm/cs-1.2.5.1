.class public final Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/expansion/zipfile/ZipResourceFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ZipEntryRO"
.end annotation


# instance fields
.field public mCRC32:J

.field public mCompressedLength:J

.field public final mFileName:Ljava/lang/String;

.field public mLocalHdrOffset:J

.field public mMethod:I

.field public mOffset:J

.field public mUncompressedLength:J

.field public mWhenModified:J

.field final synthetic this$0:Lcom/android/vending/expansion/zipfile/ZipResourceFile;


# direct methods
.method public constructor <init>(Lcom/android/vending/expansion/zipfile/ZipResourceFile;Ljava/lang/String;)V
    .registers 5

    #@0
    iput-object p1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->this$0:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    const-wide/16 v0, -0x1

    #@7
    iput-wide v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mOffset:J

    #@9
    iput-object p2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    #@b
    return-void
.end method


# virtual methods
.method public getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .registers 7

    #@0
    iget v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mMethod:I

    #@2
    if-nez v0, :cond_20

    #@4
    :try_start_4
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->this$0:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    #@6
    # getter for: Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFile:Ljava/io/File;
    invoke-static {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->access$100(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/io/File;

    #@9
    move-result-object v0

    #@a
    const/high16 v1, 0x10000000

    #@c
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@f
    move-result-object v1

    #@10
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    #@12
    invoke-virtual {p0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getOffset()J

    #@15
    move-result-wide v2

    #@16
    iget-wide v4, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    #@18
    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_1b} :catch_1c

    #@1b
    :goto_1b
    return-object v0

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    goto :goto_1b
.end method

.method public getOffset()J
    .registers 5

    #@0
    iget-wide v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mOffset:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_1c

    #@8
    const/16 v0, 0x1e

    #@a
    :try_start_a
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@d
    move-result-object v0

    #@e
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@10
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@13
    iget-object v1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->this$0:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    #@15
    # getter for: Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;
    invoke-static {v1}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->access$000(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/io/RandomAccessFile;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p0, v1, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->setOffsetFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_1c} :catch_1f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1c} :catch_24

    #@1c
    :cond_1c
    :goto_1c
    iget-wide v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mOffset:J

    #@1e
    return-wide v0

    #@1f
    :catch_1f
    move-exception v0

    #@20
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    #@23
    goto :goto_1c

    #@24
    :catch_24
    move-exception v0

    #@25
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@28
    goto :goto_1c
.end method

.method public getZipFile()Ljava/io/File;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->this$0:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    #@2
    # getter for: Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFile:Ljava/io/File;
    invoke-static {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->access$100(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/io/File;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getZipFileName()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->this$0:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    #@2
    # getter for: Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->access$200(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isUncompressed()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mMethod:I

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method public setOffsetFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const v6, 0xffff

    #@3
    iget-wide v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mLocalHdrOffset:J

    #@5
    :try_start_5
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    #@8
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@13
    move-result v2

    #@14
    const v3, 0x4034b50

    #@17
    if-eq v2, v3, :cond_2b

    #@19
    const-string v0, "zipro"

    #@1b
    const-string v1, "didn\'t find signature at start of lfh"

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    new-instance v0, Ljava/io/IOException;

    #@22
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@25
    throw v0
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_26} :catch_26
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_26} :catch_44

    #@26
    :catch_26
    move-exception v0

    #@27
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    #@2a
    :goto_2a
    return-void

    #@2b
    :cond_2b
    const/16 v2, 0x1a

    #@2d
    :try_start_2d
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@30
    move-result v2

    #@31
    const/16 v3, 0x1c

    #@33
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@36
    move-result v3

    #@37
    const-wide/16 v4, 0x1e

    #@39
    add-long/2addr v0, v4

    #@3a
    and-int/2addr v2, v6

    #@3b
    int-to-long v4, v2

    #@3c
    add-long/2addr v0, v4

    #@3d
    and-int v2, v3, v6

    #@3f
    int-to-long v2, v2

    #@40
    add-long/2addr v0, v2

    #@41
    iput-wide v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mOffset:J
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_43} :catch_26
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_43} :catch_44

    #@43
    goto :goto_2a

    #@44
    :catch_44
    move-exception v0

    #@45
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@48
    goto :goto_2a
.end method
