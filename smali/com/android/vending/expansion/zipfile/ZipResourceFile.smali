.class public Lcom/android/vending/expansion/zipfile/ZipResourceFile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    }
.end annotation


# static fields
.field static final LOGV:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "zipro"

.field static final kCDECRC:I = 0x10

.field static final kCDECommentLen:I = 0x20

.field static final kCDECompLen:I = 0x14

.field static final kCDEExtraLen:I = 0x1e

.field static final kCDELen:I = 0x2e

.field static final kCDELocalOffset:I = 0x2a

.field static final kCDEMethod:I = 0xa

.field static final kCDEModWhen:I = 0xc

.field static final kCDENameLen:I = 0x1c

.field static final kCDESignature:I = 0x2014b50

.field static final kCDEUncompLen:I = 0x18

.field static final kCompressDeflated:I = 0x8

.field static final kCompressStored:I = 0x0

.field static final kEOCDFileOffset:I = 0x10

.field static final kEOCDLen:I = 0x16

.field static final kEOCDNumEntries:I = 0x8

.field static final kEOCDSignature:I = 0x6054b50

.field static final kEOCDSize:I = 0xc

.field static final kLFHExtraLen:I = 0x1c

.field static final kLFHLen:I = 0x1e

.field static final kLFHNameLen:I = 0x1a

.field static final kLFHSignature:I = 0x4034b50

.field static final kMaxCommentLen:I = 0xffff

.field static final kMaxEOCDSearch:I = 0x10015

.field static final kZipEntryAdj:I = 0x2710


# instance fields
.field private mDirectoryMap:Ljava/nio/MappedByteBuffer;

.field private mFile:Ljava/io/File;

.field private mFileLength:J

.field private mFileName:Ljava/lang/String;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;",
            ">;"
        }
    .end annotation
.end field

.field mLEByteBuffer:Ljava/nio/ByteBuffer;

.field private mNumEntries:I

.field private mZipFile:Ljava/io/RandomAccessFile;

.field public mZipFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Ljava/util/zip/ZipFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    #@a
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    #@11
    const/4 v0, 0x4

    #@12
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mLEByteBuffer:Ljava/nio/ByteBuffer;

    #@18
    const/4 v0, 0x0

    #@19
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->open(Ljava/lang/String;Lcom/android/vending/expansion/zipfile/ZipResourceFile;)V

    #@1c
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/vending/expansion/zipfile/ZipResourceFile;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    #@a
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    #@11
    const/4 v0, 0x4

    #@12
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mLEByteBuffer:Ljava/nio/ByteBuffer;

    #@18
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->open(Ljava/lang/String;Lcom/android/vending/expansion/zipfile/ZipResourceFile;)V

    #@1b
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/io/RandomAccessFile;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/io/File;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFile:Ljava/io/File;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/expansion/zipfile/ZipResourceFile;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private parseCentralDirectory(Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mNumEntries:I

    #@2
    const v0, 0xffff

    #@5
    new-array v3, v0, [B

    #@7
    const/4 v0, 0x0

    #@8
    const/16 v1, 0x1e

    #@a
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@d
    move-result-object v4

    #@e
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@10
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@13
    const/4 v1, 0x0

    #@14
    :goto_14
    if-ge v1, v2, :cond_ff

    #@16
    iget-object v5, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    #@18
    invoke-virtual {v5, v0}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    #@1b
    move-result v5

    #@1c
    const v6, 0x2014b50

    #@1f
    if-eq v5, v6, :cond_45

    #@21
    const-string v1, "zipro"

    #@23
    new-instance v2, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string v3, "Missed a central dir sig (at "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    const-string v2, ")"

    #@34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3f
    new-instance v0, Ljava/io/IOException;

    #@41
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@44
    throw v0

    #@45
    :cond_45
    iget-object v5, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    #@47
    add-int/lit8 v6, v0, 0x1c

    #@49
    invoke-virtual {v5, v6}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    #@4c
    move-result v5

    #@4d
    const v6, 0xffff

    #@50
    and-int/2addr v5, v6

    #@51
    iget-object v6, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    #@53
    add-int/lit8 v7, v0, 0x1e

    #@55
    invoke-virtual {v6, v7}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    #@58
    move-result v6

    #@59
    iget-object v7, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    #@5b
    add-int/lit8 v8, v0, 0x20

    #@5d
    invoke-virtual {v7, v8}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    #@60
    move-result v7

    #@61
    iget-object v8, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    #@63
    add-int/lit8 v9, v0, 0x2e

    #@65
    invoke-virtual {v8, v9}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    #@68
    iget-object v8, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    #@6a
    const/4 v9, 0x0

    #@6b
    invoke-virtual {v8, v3, v9, v5}, Ljava/nio/MappedByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@6e
    iget-object v8, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    #@70
    const/4 v9, 0x0

    #@71
    invoke-virtual {v8, v9}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    #@74
    new-instance v8, Ljava/lang/String;

    #@76
    const/4 v9, 0x0

    #@77
    invoke-direct {v8, v3, v9, v5}, Ljava/lang/String;-><init>([BII)V

    #@7a
    new-instance v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    #@7c
    invoke-direct {v9, p0, v8}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;-><init>(Lcom/android/vending/expansion/zipfile/ZipResourceFile;Ljava/lang/String;)V

    #@7f
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    #@81
    add-int/lit8 v11, v0, 0xa

    #@83
    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getShort(I)S

    #@86
    move-result v10

    #@87
    const v11, 0xffff

    #@8a
    and-int/2addr v10, v11

    #@8b
    iput v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mMethod:I

    #@8d
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    #@8f
    add-int/lit8 v11, v0, 0xc

    #@91
    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    #@94
    move-result v10

    #@95
    int-to-long v10, v10

    #@96
    const-wide v12, 0xffffffffL

    #@9b
    and-long/2addr v10, v12

    #@9c
    iput-wide v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mWhenModified:J

    #@9e
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    #@a0
    add-int/lit8 v11, v0, 0x10

    #@a2
    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    #@a5
    move-result-wide v10

    #@a6
    const-wide v12, 0xffffffffL

    #@ab
    and-long/2addr v10, v12

    #@ac
    iput-wide v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCRC32:J

    #@ae
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    #@b0
    add-int/lit8 v11, v0, 0x14

    #@b2
    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    #@b5
    move-result-wide v10

    #@b6
    const-wide v12, 0xffffffffL

    #@bb
    and-long/2addr v10, v12

    #@bc
    iput-wide v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCompressedLength:J

    #@be
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    #@c0
    add-int/lit8 v11, v0, 0x18

    #@c2
    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    #@c5
    move-result-wide v10

    #@c6
    const-wide v12, 0xffffffffL

    #@cb
    and-long/2addr v10, v12

    #@cc
    iput-wide v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    #@ce
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    #@d0
    add-int/lit8 v11, v0, 0x2a

    #@d2
    invoke-virtual {v10, v11}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    #@d5
    move-result v10

    #@d6
    int-to-long v10, v10

    #@d7
    const-wide v12, 0xffffffffL

    #@dc
    and-long/2addr v10, v12

    #@dd
    iput-wide v10, v9, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mLocalHdrOffset:J

    #@df
    if-eqz p1, :cond_e9

    #@e1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@e4
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    #@e6
    invoke-virtual {v9, v10, v4}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->setOffsetFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V

    #@e9
    :cond_e9
    iget-object v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    #@eb
    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ee
    add-int/lit8 v5, v5, 0x2e

    #@f0
    const v8, 0xffff

    #@f3
    and-int/2addr v6, v8

    #@f4
    add-int/2addr v5, v6

    #@f5
    const v6, 0xffff

    #@f8
    and-int/2addr v6, v7

    #@f9
    add-int/2addr v5, v6

    #@fa
    add-int/2addr v0, v5

    #@fb
    add-int/lit8 v1, v1, 0x1

    #@fd
    goto/16 :goto_14

    #@ff
    :cond_ff
    return-void
.end method

.method private read4LE()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    #@2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->swapEndian(I)I

    #@9
    move-result v0

    #@a
    return v0
.end method


# virtual methods
.method public getAllEntries()[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@9
    move-result v1

    #@a
    new-array v1, v1, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    #@c
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    #@12
    return-object v0
.end method

.method public getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    #@8
    if-eqz v0, :cond_f

    #@a
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    #@d
    move-result-object v0

    #@e
    :goto_e
    return-object v0

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    goto :goto_e
.end method

.method getEntriesAt(Ljava/lang/String;)[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .registers 9

    #@0
    new-instance v1, Ljava/util/Vector;

    #@2
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    #@5
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    #@7
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@a
    move-result-object v0

    #@b
    if-nez p1, :cond_f

    #@d
    const-string p1, ""

    #@f
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@12
    move-result v2

    #@13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v3

    #@17
    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_3a

    #@1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    #@23
    iget-object v4, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    #@25
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_17

    #@2b
    const/4 v4, -0x1

    #@2c
    iget-object v5, v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    #@2e
    const/16 v6, 0x2f

    #@30
    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->indexOf(II)I

    #@33
    move-result v5

    #@34
    if-ne v4, v5, :cond_17

    #@36
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_17

    #@3a
    :cond_3a
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@3d
    move-result v0

    #@3e
    new-array v0, v0, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    #@40
    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    #@46
    return-object v0
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    #@8
    if-eqz v0, :cond_45

    #@a
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->isUncompressed()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_19

    #@10
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    #@17
    move-result-object v0

    #@18
    :goto_18
    return-object v0

    #@19
    :cond_19
    iget-object v1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    #@1b
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/util/zip/ZipFile;

    #@25
    if-nez v1, :cond_3a

    #@27
    new-instance v1, Ljava/util/zip/ZipFile;

    #@29
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    #@2c
    move-result-object v2

    #@2d
    const/4 v3, 0x1

    #@2e
    invoke-direct {v1, v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    #@31
    iget-object v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFiles:Ljava/util/HashMap;

    #@33
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFile()Ljava/io/File;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    :cond_3a
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@3d
    move-result-object v0

    #@3e
    if-eqz v0, :cond_45

    #@40
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    #@43
    move-result-object v0

    #@44
    goto :goto_18

    #@45
    :cond_45
    const/4 v0, 0x0

    #@46
    goto :goto_18
.end method

.method mapCentralDirectory()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const-wide v8, 0xffffffffL

    #@5
    const-wide/32 v0, 0x10015

    #@8
    const v6, 0x6054b50

    #@b
    iget-wide v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    #@d
    cmp-long v2, v0, v2

    #@f
    if-lez v2, :cond_13

    #@11
    iget-wide v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    #@13
    :cond_13
    iget-object v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    #@15
    const-wide/16 v4, 0x0

    #@17
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    #@1a
    invoke-direct {p0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->read4LE()I

    #@1d
    move-result v2

    #@1e
    if-ne v2, v6, :cond_2d

    #@20
    const-string v0, "zipro"

    #@22
    const-string v1, "Found Zip archive, but it looks empty"

    #@24
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    new-instance v0, Ljava/io/IOException;

    #@29
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@2c
    throw v0

    #@2d
    :cond_2d
    const v3, 0x4034b50

    #@30
    if-eq v2, v3, :cond_3f

    #@32
    const-string v0, "zipro"

    #@34
    const-string v1, "Not a Zip archive"

    #@36
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    new-instance v0, Ljava/io/IOException;

    #@3b
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@3e
    throw v0

    #@3f
    :cond_3f
    iget-wide v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    #@41
    iget-object v4, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    #@43
    sub-long/2addr v2, v0

    #@44
    invoke-virtual {v4, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    #@47
    long-to-int v0, v0

    #@48
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    #@4f
    move-result-object v2

    #@50
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    #@52
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    #@55
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@57
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@5a
    array-length v0, v2

    #@5b
    add-int/lit8 v0, v0, -0x16

    #@5d
    :goto_5d
    if-ltz v0, :cond_6b

    #@5f
    aget-byte v3, v2, v0

    #@61
    const/16 v4, 0x50

    #@63
    if-ne v3, v4, :cond_e4

    #@65
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@68
    move-result v3

    #@69
    if-ne v3, v6, :cond_e4

    #@6b
    :cond_6b
    if-gez v0, :cond_8d

    #@6d
    const-string v2, "zipro"

    #@6f
    new-instance v3, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string v4, "Zip: EOCD not found, "

    #@76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v3

    #@7a
    iget-object v4, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileName:Ljava/lang/String;

    #@7c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    const-string v4, " is not zip"

    #@82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v3

    #@8a
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@8d
    :cond_8d
    add-int/lit8 v2, v0, 0x8

    #@8f
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@92
    move-result v6

    #@93
    add-int/lit8 v2, v0, 0xc

    #@95
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@98
    move-result v2

    #@99
    int-to-long v2, v2

    #@9a
    and-long v4, v2, v8

    #@9c
    add-int/lit8 v2, v0, 0x10

    #@9e
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@a1
    move-result v1

    #@a2
    int-to-long v2, v1

    #@a3
    and-long/2addr v2, v8

    #@a4
    add-long v8, v2, v4

    #@a6
    iget-wide v10, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    #@a8
    cmp-long v1, v8, v10

    #@aa
    if-lez v1, :cond_e8

    #@ac
    const-string v1, "zipro"

    #@ae
    new-instance v6, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string v7, "bad offsets (dir "

    #@b5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v6

    #@b9
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v2

    #@bd
    const-string v3, ", size "

    #@bf
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v2

    #@c3
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v2

    #@c7
    const-string v3, ", eocd "

    #@c9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v2

    #@cd
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v0

    #@d1
    const-string v2, ")"

    #@d3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v0

    #@db
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@de
    new-instance v0, Ljava/io/IOException;

    #@e0
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@e3
    throw v0

    #@e4
    :cond_e4
    add-int/lit8 v0, v0, -0x1

    #@e6
    goto/16 :goto_5d

    #@e8
    :cond_e8
    if-nez v6, :cond_f7

    #@ea
    const-string v0, "zipro"

    #@ec
    const-string v1, "empty archive?"

    #@ee
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@f1
    new-instance v0, Ljava/io/IOException;

    #@f3
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@f6
    throw v0

    #@f7
    :cond_f7
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    #@f9
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    #@fc
    move-result-object v0

    #@fd
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@ff
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    #@102
    move-result-object v0

    #@103
    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    #@105
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mDirectoryMap:Ljava/nio/MappedByteBuffer;

    #@107
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@109
    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@10c
    iput v6, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mNumEntries:I

    #@10e
    return-void
.end method

.method open(Ljava/lang/String;Lcom/android/vending/expansion/zipfile/ZipResourceFile;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFile:Ljava/io/File;

    #@7
    new-instance v0, Ljava/io/RandomAccessFile;

    #@9
    iget-object v1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFile:Ljava/io/File;

    #@b
    const-string v2, "r"

    #@d
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@10
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    #@13
    move-result-wide v2

    #@14
    iput-wide v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    #@16
    iget-wide v2, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileLength:J

    #@18
    const-wide/16 v4, 0x16

    #@1a
    cmp-long v1, v2, v4

    #@1c
    if-gez v1, :cond_24

    #@1e
    new-instance v0, Ljava/io/IOException;

    #@20
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@23
    throw v0

    #@24
    :cond_24
    iput-object p1, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mFileName:Ljava/lang/String;

    #@26
    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mZipFile:Ljava/io/RandomAccessFile;

    #@28
    if-eqz p2, :cond_36

    #@2a
    iget-object v0, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    #@2c
    iput-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    #@2e
    :goto_2e
    invoke-virtual {p0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mapCentralDirectory()V

    #@31
    const/4 v0, 0x1

    #@32
    invoke-direct {p0, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->parseCentralDirectory(Z)V

    #@35
    return-void

    #@36
    :cond_36
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->mHashMap:Ljava/util/HashMap;

    #@38
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@3b
    goto :goto_2e
.end method

.method swapEndian(I)I
    .registers 4

    #@0
    and-int/lit16 v0, p1, 0xff

    #@2
    shl-int/lit8 v0, v0, 0x18

    #@4
    const v1, 0xff00

    #@7
    and-int/2addr v1, p1

    #@8
    shl-int/lit8 v1, v1, 0x8

    #@a
    add-int/2addr v0, v1

    #@b
    const/high16 v1, 0xff0000

    #@d
    and-int/2addr v1, p1

    #@e
    ushr-int/lit8 v1, v1, 0x8

    #@10
    add-int/2addr v0, v1

    #@11
    ushr-int/lit8 v1, p1, 0x18

    #@13
    and-int/lit16 v1, v1, 0xff

    #@15
    add-int/2addr v0, v1

    #@16
    return v0
.end method

.method swapEndian(S)I
    .registers 4

    #@0
    and-int/lit16 v0, p1, 0xff

    #@2
    shl-int/lit8 v0, v0, 0x8

    #@4
    const v1, 0xff00

    #@7
    and-int/2addr v1, p1

    #@8
    ushr-int/lit8 v1, v1, 0x8

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method
