.class public Lcom/dd/plist/BinaryPropertyListWriter;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field count:J

.field idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dd/plist/NSObject;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field idSizeInBytes:I

.field out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/dd/plist/BinaryPropertyListWriter;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_c

    #@8
    const/4 v0, 0x1

    #@9
    :goto_9
    sput-boolean v0, Lcom/dd/plist/BinaryPropertyListWriter;->$assertionsDisabled:Z

    #@b
    return-void

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    goto :goto_9
.end method

.method constructor <init>(Ljava/io/OutputStream;)V
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
    iput-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    #@a
    new-instance v0, Ljava/io/BufferedOutputStream;

    #@c
    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@f
    iput-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    #@11
    return-void
.end method

.method private static computeIdSizeInBytes(I)I
    .registers 2

    #@0
    const/16 v0, 0x100

    #@2
    if-ge p0, v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/high16 v0, 0x10000

    #@8
    if-ge p0, v0, :cond_c

    #@a
    const/4 v0, 0x2

    #@b
    goto :goto_5

    #@c
    :cond_c
    const/4 v0, 0x4

    #@d
    goto :goto_5
.end method

.method private computeOffsetSizeInBytes(J)I
    .registers 6

    #@0
    const-wide/16 v0, 0x100

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const-wide/32 v0, 0x10000

    #@b
    cmp-long v0, p1, v0

    #@d
    if-gez v0, :cond_11

    #@f
    const/4 v0, 0x2

    #@10
    goto :goto_7

    #@11
    :cond_11
    const-wide v0, 0x100000000L

    #@16
    cmp-long v0, p1, v0

    #@18
    if-gez v0, :cond_1c

    #@1a
    const/4 v0, 0x4

    #@1b
    goto :goto_7

    #@1c
    :cond_1c
    const/16 v0, 0x8

    #@1e
    goto :goto_7
.end method

.method public static write(Ljava/io/File;Lcom/dd/plist/NSObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Ljava/io/FileOutputStream;

    #@2
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@5
    invoke-static {v0, p1}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Ljava/io/OutputStream;Lcom/dd/plist/NSObject;)V

    #@8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    #@b
    return-void
.end method

.method public static write(Ljava/io/OutputStream;Lcom/dd/plist/NSObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    new-instance v0, Lcom/dd/plist/BinaryPropertyListWriter;

    #@2
    invoke-direct {v0, p0}, Lcom/dd/plist/BinaryPropertyListWriter;-><init>(Ljava/io/OutputStream;)V

    #@5
    invoke-virtual {v0, p1}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Lcom/dd/plist/NSObject;)V

    #@8
    return-void
.end method

.method public static writeToArray(Lcom/dd/plist/NSObject;)[B
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
    invoke-static {v0, p0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Ljava/io/OutputStream;Lcom/dd/plist/NSObject;)V

    #@8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method


# virtual methods
.method assignID(Lcom/dd/plist/NSObject;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_17

    #@8
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    #@a
    iget-object v1, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    #@c
    invoke-interface {v1}, Ljava/util/Map;->size()I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v1

    #@14
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    :cond_17
    return-void
.end method

.method getID(Lcom/dd/plist/NSObject;)I
    .registers 3

    #@0
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/Integer;

    #@8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method write(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    #@5
    iget-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    #@7
    const-wide/16 v2, 0x1

    #@9
    add-long/2addr v0, v2

    #@a
    iput-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    #@c
    return-void
.end method

.method write(Lcom/dd/plist/NSObject;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    const-string v0, "bplist00"

    #@3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    #@a
    invoke-virtual {p1, p0}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    #@d
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    #@f
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@12
    move-result v0

    #@13
    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListWriter;->computeIdSizeInBytes(I)I

    #@16
    move-result v0

    #@17
    iput v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idSizeInBytes:I

    #@19
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    #@1b
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@1e
    move-result v0

    #@1f
    new-array v3, v0, [J

    #@21
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    #@23
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@26
    move-result-object v0

    #@27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v4

    #@2b
    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_55

    #@31
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Ljava/util/Map$Entry;

    #@37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Lcom/dd/plist/NSObject;

    #@3d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Ljava/lang/Integer;

    #@43
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@46
    move-result v0

    #@47
    iget-wide v6, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    #@49
    aput-wide v6, v3, v0

    #@4b
    if-nez v1, :cond_51

    #@4d
    invoke-virtual {p0, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@50
    goto :goto_2b

    #@51
    :cond_51
    invoke-virtual {v1, p0}, Lcom/dd/plist/NSObject;->toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V

    #@54
    goto :goto_2b

    #@55
    :cond_55
    iget-wide v4, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    #@57
    iget-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    #@59
    invoke-direct {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->computeOffsetSizeInBytes(J)I

    #@5c
    move-result v1

    #@5d
    array-length v6, v3

    #@5e
    move v0, v2

    #@5f
    :goto_5f
    if-ge v0, v6, :cond_69

    #@61
    aget-wide v8, v3, v0

    #@63
    invoke-virtual {p0, v8, v9, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    #@66
    add-int/lit8 v0, v0, 0x1

    #@68
    goto :goto_5f

    #@69
    :cond_69
    const/4 v0, 0x6

    #@6a
    new-array v0, v0, [B

    #@6c
    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    #@6f
    invoke-virtual {p0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@72
    iget v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idSizeInBytes:I

    #@74
    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@77
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    #@79
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@7c
    move-result v0

    #@7d
    int-to-long v0, v0

    #@7e
    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    #@81
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    #@83
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@86
    move-result-object v0

    #@87
    check-cast v0, Ljava/lang/Integer;

    #@89
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@8c
    move-result v0

    #@8d
    int-to-long v0, v0

    #@8e
    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    #@91
    invoke-virtual {p0, v4, v5}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    #@94
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    #@96
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    #@99
    return-void
.end method

.method write([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    #@5
    iget-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    #@7
    array-length v2, p1

    #@8
    int-to-long v2, v2

    #@9
    add-long/2addr v0, v2

    #@a
    iput-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    #@c
    return-void
.end method

.method writeBytes(JI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    add-int/lit8 v0, p3, -0x1

    #@2
    :goto_2
    if-ltz v0, :cond_f

    #@4
    mul-int/lit8 v1, v0, 0x8

    #@6
    shr-long v2, p1, v1

    #@8
    long-to-int v1, v2

    #@9
    invoke-virtual {p0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@c
    add-int/lit8 v0, v0, -0x1

    #@e
    goto :goto_2

    #@f
    :cond_f
    return-void
.end method

.method writeDouble(D)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    #@7
    return-void
.end method

.method writeID(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    int-to-long v0, p1

    #@1
    iget v2, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idSizeInBytes:I

    #@3
    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    #@6
    return-void
.end method

.method writeIntHeader(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    sget-boolean v0, Lcom/dd/plist/BinaryPropertyListWriter;->$assertionsDisabled:Z

    #@2
    if-nez v0, :cond_c

    #@4
    if-gez p2, :cond_c

    #@6
    new-instance v0, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@b
    throw v0

    #@c
    :cond_c
    const/16 v0, 0xf

    #@e
    if-ge p2, v0, :cond_17

    #@10
    shl-int/lit8 v0, p1, 0x4

    #@12
    add-int/2addr v0, p2

    #@13
    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@16
    :goto_16
    return-void

    #@17
    :cond_17
    const/16 v0, 0x100

    #@19
    if-ge p2, v0, :cond_2d

    #@1b
    shl-int/lit8 v0, p1, 0x4

    #@1d
    add-int/lit8 v0, v0, 0xf

    #@1f
    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@22
    const/16 v0, 0x10

    #@24
    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@27
    int-to-long v0, p2

    #@28
    const/4 v2, 0x1

    #@29
    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    #@2c
    goto :goto_16

    #@2d
    :cond_2d
    const/high16 v0, 0x10000

    #@2f
    if-ge p2, v0, :cond_43

    #@31
    shl-int/lit8 v0, p1, 0x4

    #@33
    add-int/lit8 v0, v0, 0xf

    #@35
    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@38
    const/16 v0, 0x11

    #@3a
    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@3d
    int-to-long v0, p2

    #@3e
    const/4 v2, 0x2

    #@3f
    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    #@42
    goto :goto_16

    #@43
    :cond_43
    shl-int/lit8 v0, p1, 0x4

    #@45
    add-int/lit8 v0, v0, 0xf

    #@47
    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@4a
    const/16 v0, 0x12

    #@4c
    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    #@4f
    int-to-long v0, p2

    #@50
    const/4 v2, 0x4

    #@51
    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    #@54
    goto :goto_16
.end method

.method writeLong(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/16 v0, 0x8

    #@2
    invoke-virtual {p0, p1, p2, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    #@5
    return-void
.end method
