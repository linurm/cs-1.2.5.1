.class public Lcom/google/android/gms/common/data/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/data/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final AT:I

.field Ew:Landroid/os/ParcelFileDescriptor;

.field private Ex:Landroid/graphics/Bitmap;

.field private Ey:Z

.field private Ez:Ljava/io/File;

.field final xM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Lcom/google/android/gms/common/data/b;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/common/data/b;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/common/data/a;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;I)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/common/data/a;->xM:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/common/data/a;->Ew:Landroid/os/ParcelFileDescriptor;

    #@7
    iput p3, p0, Lcom/google/android/gms/common/data/a;->AT:I

    #@9
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lcom/google/android/gms/common/data/a;->Ex:Landroid/graphics/Bitmap;

    #@c
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/a;->Ey:Z

    #@f
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4

    #@0
    const/4 v1, 0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    iput v1, p0, Lcom/google/android/gms/common/data/a;->xM:I

    #@6
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/common/data/a;->Ew:Landroid/os/ParcelFileDescriptor;

    #@9
    const/4 v0, 0x0

    #@a
    iput v0, p0, Lcom/google/android/gms/common/data/a;->AT:I

    #@c
    iput-object p1, p0, Lcom/google/android/gms/common/data/a;->Ex:Landroid/graphics/Bitmap;

    #@e
    iput-boolean v1, p0, Lcom/google/android/gms/common/data/a;->Ey:Z

    #@10
    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .registers 5

    #@0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    #@3
    :goto_3
    return-void

    #@4
    :catch_4
    move-exception v0

    #@5
    const-string v1, "BitmapTeleporter"

    #@7
    const-string v2, "Could not close stream"

    #@9
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c
    goto :goto_3
.end method

.method private eT()Ljava/io/FileOutputStream;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/a;->Ez:Ljava/io/File;

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "setTempDir() must be called before writing this object to a parcel"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    :try_start_c
    const-string v0, "teleporter"

    #@e
    const-string v1, ".tmp"

    #@10
    iget-object v2, p0, Lcom/google/android/gms/common/data/a;->Ez:Ljava/io/File;

    #@12
    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_27

    #@15
    move-result-object v0

    #@16
    :try_start_16
    new-instance v1, Ljava/io/FileOutputStream;

    #@18
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@1b
    const/high16 v2, 0x10000000

    #@1d
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@20
    move-result-object v2

    #@21
    iput-object v2, p0, Lcom/google/android/gms/common/data/a;->Ew:Landroid/os/ParcelFileDescriptor;
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_23} :catch_30

    #@23
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@26
    return-object v1

    #@27
    :catch_27
    move-exception v0

    #@28
    new-instance v1, Ljava/lang/IllegalStateException;

    #@2a
    const-string v2, "Could not create temporary file"

    #@2c
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2f
    throw v1

    #@30
    :catch_30
    move-exception v0

    #@31
    new-instance v0, Ljava/lang/IllegalStateException;

    #@33
    const-string v1, "Temporary file is somehow already deleted"

    #@35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .registers 4

    #@0
    if-nez p1, :cond_a

    #@2
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string v1, "Cannot set null temp directory"

    #@6
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0

    #@a
    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/common/data/a;->Ez:Ljava/io/File;

    #@c
    return-void
.end method

.method public describeContents()I
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public eS()Landroid/graphics/Bitmap;
    .registers 6

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/a;->Ey:Z

    #@2
    if-nez v0, :cond_3c

    #@4
    new-instance v1, Ljava/io/DataInputStream;

    #@6
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    #@8
    iget-object v2, p0, Lcom/google/android/gms/common/data/a;->Ew:Landroid/os/ParcelFileDescriptor;

    #@a
    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@d
    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@10
    :try_start_10
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    #@13
    move-result v0

    #@14
    new-array v0, v0, [B

    #@16
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    #@19
    move-result v2

    #@1a
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    #@1d
    move-result v3

    #@1e
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    invoke-static {v4}, Landroid/graphics/Bitmap$Config;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->read([B)I
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_29} :catch_3f
    .catchall {:try_start_10 .. :try_end_29} :catchall_48

    #@29
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/Closeable;)V

    #@2c
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@2f
    move-result-object v0

    #@30
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    #@37
    iput-object v1, p0, Lcom/google/android/gms/common/data/a;->Ex:Landroid/graphics/Bitmap;

    #@39
    const/4 v0, 0x1

    #@3a
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/a;->Ey:Z

    #@3c
    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/common/data/a;->Ex:Landroid/graphics/Bitmap;

    #@3e
    return-object v0

    #@3f
    :catch_3f
    move-exception v0

    #@40
    :try_start_40
    new-instance v2, Ljava/lang/IllegalStateException;

    #@42
    const-string v3, "Could not read from parcel file descriptor"

    #@44
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@47
    throw v2
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_48

    #@48
    :catchall_48
    move-exception v0

    #@49
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/Closeable;)V

    #@4c
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/a;->Ew:Landroid/os/ParcelFileDescriptor;

    #@2
    if-nez v0, :cond_46

    #@4
    iget-object v0, p0, Lcom/google/android/gms/common/data/a;->Ex:Landroid/graphics/Bitmap;

    #@6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    #@9
    move-result v1

    #@a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@d
    move-result v2

    #@e
    mul-int/2addr v1, v2

    #@f
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    #@16
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    #@19
    move-result-object v1

    #@1a
    new-instance v2, Ljava/io/DataOutputStream;

    #@1c
    invoke-direct {p0}, Lcom/google/android/gms/common/data/a;->eT()Ljava/io/FileOutputStream;

    #@1f
    move-result-object v3

    #@20
    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@23
    :try_start_23
    array-length v3, v1

    #@24
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@27
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    #@2a
    move-result v3

    #@2b
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@2e
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    #@31
    move-result v3

    #@32
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@35
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    #@40
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_43} :catch_4a
    .catchall {:try_start_23 .. :try_end_43} :catchall_53

    #@43
    invoke-direct {p0, v2}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/Closeable;)V

    #@46
    :cond_46
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/data/b;->a(Lcom/google/android/gms/common/data/a;Landroid/os/Parcel;I)V

    #@49
    return-void

    #@4a
    :catch_4a
    move-exception v0

    #@4b
    :try_start_4b
    new-instance v1, Ljava/lang/IllegalStateException;

    #@4d
    const-string v3, "Could not write into unlinked file"

    #@4f
    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@52
    throw v1
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_53

    #@53
    :catchall_53
    move-exception v0

    #@54
    invoke-direct {p0, v2}, Lcom/google/android/gms/common/data/a;->a(Ljava/io/Closeable;)V

    #@57
    throw v0
.end method
