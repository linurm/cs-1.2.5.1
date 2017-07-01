.class public abstract Lcom/android/vending/expansion/zipfile/APEZProvider;
.super Landroid/content/ContentProvider;


# static fields
.field public static final ALL_FIELDS:[Ljava/lang/String;

.field public static final ALL_FIELDS_INT:[I

.field public static final COMPLEN_IDX:I = 0x5

.field public static final COMPRESSEDLEN:Ljava/lang/String; = "ZCOL"

.field public static final COMPRESSIONTYPE:Ljava/lang/String; = "ZTYP"

.field public static final COMPTYPE_IDX:I = 0x7

.field public static final CRC32:Ljava/lang/String; = "ZCRC"

.field public static final CRC_IDX:I = 0x4

.field public static final FILEID:Ljava/lang/String; = "_id"

.field public static final FILEID_IDX:I = 0x0

.field public static final FILENAME:Ljava/lang/String; = "ZPFN"

.field public static final FILENAME_IDX:I = 0x1

.field public static final MODIFICATION:Ljava/lang/String; = "ZMOD"

.field public static final MOD_IDX:I = 0x3

.field public static final UNCOMPLEN_IDX:I = 0x6

.field public static final UNCOMPRESSEDLEN:Ljava/lang/String; = "ZUNL"

.field public static final ZIPFILE:Ljava/lang/String; = "ZFIL"

.field public static final ZIPFILE_IDX:I = 0x2


# instance fields
.field private mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

.field private mInit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const/16 v3, 0x8

    #@2
    new-array v0, v3, [Ljava/lang/String;

    #@4
    const/4 v1, 0x0

    #@5
    const-string v2, "_id"

    #@7
    aput-object v2, v0, v1

    #@9
    const/4 v1, 0x1

    #@a
    const-string v2, "ZPFN"

    #@c
    aput-object v2, v0, v1

    #@e
    const/4 v1, 0x2

    #@f
    const-string v2, "ZFIL"

    #@11
    aput-object v2, v0, v1

    #@13
    const/4 v1, 0x3

    #@14
    const-string v2, "ZMOD"

    #@16
    aput-object v2, v0, v1

    #@18
    const/4 v1, 0x4

    #@19
    const-string v2, "ZCRC"

    #@1b
    aput-object v2, v0, v1

    #@1d
    const/4 v1, 0x5

    #@1e
    const-string v2, "ZCOL"

    #@20
    aput-object v2, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    const-string v2, "ZUNL"

    #@25
    aput-object v2, v0, v1

    #@27
    const/4 v1, 0x7

    #@28
    const-string v2, "ZTYP"

    #@2a
    aput-object v2, v0, v1

    #@2c
    sput-object v0, Lcom/android/vending/expansion/zipfile/APEZProvider;->ALL_FIELDS:[Ljava/lang/String;

    #@2e
    new-array v0, v3, [I

    #@30
    fill-array-data v0, :array_36

    #@33
    sput-object v0, Lcom/android/vending/expansion/zipfile/APEZProvider;->ALL_FIELDS_INT:[I

    #@35
    return-void

    #@36
    :array_36
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    #@3
    return-void
.end method

.method private initIfNecessary()Z
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    iget-boolean v1, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mInit:Z

    #@3
    if-nez v1, :cond_3d

    #@5
    invoke-virtual {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->getContext()Landroid/content/Context;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->getAuthority()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    const/16 v4, 0x80

    #@13
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    #@16
    move-result-object v4

    #@17
    :try_start_17
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_1f} :catch_3e

    #@1f
    move-result-object v1

    #@20
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    #@22
    iget-object v1, v4, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    #@24
    if-eqz v1, :cond_43

    #@26
    iget-object v1, v4, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    #@28
    const-string v5, "mainVersion"

    #@2a
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@2d
    move-result v1

    #@2e
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    #@30
    const-string v5, "patchVersion"

    #@32
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@35
    move-result v2

    #@36
    :goto_36
    :try_start_36
    invoke-static {v3, v1, v2}, Lcom/android/vending/expansion/zipfile/APKExpansionSupport;->getAPKExpansionZipFile(Landroid/content/Context;II)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    #@39
    move-result-object v1

    #@3a
    iput-object v1, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3c} :catch_45

    #@3c
    const/4 v0, 0x1

    #@3d
    :cond_3d
    :goto_3d
    return v0

    #@3e
    :catch_3e
    move-exception v1

    #@3f
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    #@42
    goto :goto_3d

    #@43
    :cond_43
    move v1, v2

    #@44
    goto :goto_36

    #@45
    :catch_45
    move-exception v1

    #@46
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    #@49
    goto :goto_3d
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->initIfNecessary()Z

    #@3
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    #@0
    const-string v0, "vnd.android.cursor.item/asset"

    #@2
    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->initIfNecessary()Z

    #@3
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    const-string v1, "/"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_14

    #@f
    const/4 v1, 0x1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    :cond_14
    iget-object v1, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    #@16
    invoke-virtual {v1, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    invoke-direct {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->initIfNecessary()Z

    #@3
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/expansion/zipfile/APEZProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_e

    #@9
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    #@c
    move-result-object v0

    #@d
    :goto_d
    return-object v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    goto :goto_d
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18

    #@0
    invoke-direct {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->initIfNecessary()Z

    #@3
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    #@5
    if-nez v0, :cond_2d

    #@7
    const/4 v0, 0x0

    #@8
    new-array v0, v0, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    #@a
    move-object v3, v0

    #@b
    :goto_b
    if-nez p2, :cond_35

    #@d
    sget-object v0, Lcom/android/vending/expansion/zipfile/APEZProvider;->ALL_FIELDS_INT:[I

    #@f
    sget-object p2, Lcom/android/vending/expansion/zipfile/APEZProvider;->ALL_FIELDS:[Ljava/lang/String;

    #@11
    :cond_11
    new-instance v4, Landroid/database/MatrixCursor;

    #@13
    array-length v1, v3

    #@14
    invoke-direct {v4, p2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    #@17
    array-length v5, v0

    #@18
    array-length v6, v3

    #@19
    const/4 v1, 0x0

    #@1a
    :goto_1a
    if-ge v1, v6, :cond_107

    #@1c
    aget-object v7, v3, v1

    #@1e
    invoke-virtual {v4}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    #@21
    move-result-object v8

    #@22
    const/4 v2, 0x0

    #@23
    :goto_23
    if-ge v2, v5, :cond_103

    #@25
    aget v9, v0, v2

    #@27
    packed-switch v9, :pswitch_data_108

    #@2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_23

    #@2d
    :cond_2d
    iget-object v0, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    #@2f
    invoke-virtual {v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAllEntries()[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    #@32
    move-result-object v0

    #@33
    move-object v3, v0

    #@34
    goto :goto_b

    #@35
    :cond_35
    array-length v2, p2

    #@36
    new-array v0, v2, [I

    #@38
    const/4 v1, 0x0

    #@39
    :goto_39
    if-ge v1, v2, :cond_11

    #@3b
    aget-object v4, p2, v1

    #@3d
    const-string v5, "_id"

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v4

    #@43
    if-eqz v4, :cond_4b

    #@45
    const/4 v4, 0x0

    #@46
    aput v4, v0, v1

    #@48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_39

    #@4b
    :cond_4b
    aget-object v4, p2, v1

    #@4d
    const-string v5, "ZPFN"

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@52
    move-result v4

    #@53
    if-eqz v4, :cond_59

    #@55
    const/4 v4, 0x1

    #@56
    aput v4, v0, v1

    #@58
    goto :goto_48

    #@59
    :cond_59
    aget-object v4, p2, v1

    #@5b
    const-string v5, "ZFIL"

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_67

    #@63
    const/4 v4, 0x2

    #@64
    aput v4, v0, v1

    #@66
    goto :goto_48

    #@67
    :cond_67
    aget-object v4, p2, v1

    #@69
    const-string v5, "ZMOD"

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v4

    #@6f
    if-eqz v4, :cond_75

    #@71
    const/4 v4, 0x3

    #@72
    aput v4, v0, v1

    #@74
    goto :goto_48

    #@75
    :cond_75
    aget-object v4, p2, v1

    #@77
    const-string v5, "ZCRC"

    #@79
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v4

    #@7d
    if-eqz v4, :cond_83

    #@7f
    const/4 v4, 0x4

    #@80
    aput v4, v0, v1

    #@82
    goto :goto_48

    #@83
    :cond_83
    aget-object v4, p2, v1

    #@85
    const-string v5, "ZCOL"

    #@87
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v4

    #@8b
    if-eqz v4, :cond_91

    #@8d
    const/4 v4, 0x5

    #@8e
    aput v4, v0, v1

    #@90
    goto :goto_48

    #@91
    :cond_91
    aget-object v4, p2, v1

    #@93
    const-string v5, "ZUNL"

    #@95
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v4

    #@99
    if-eqz v4, :cond_9f

    #@9b
    const/4 v4, 0x6

    #@9c
    aput v4, v0, v1

    #@9e
    goto :goto_48

    #@9f
    :cond_9f
    aget-object v4, p2, v1

    #@a1
    const-string v5, "ZTYP"

    #@a3
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v4

    #@a7
    if-eqz v4, :cond_ad

    #@a9
    const/4 v4, 0x7

    #@aa
    aput v4, v0, v1

    #@ac
    goto :goto_48

    #@ad
    :cond_ad
    new-instance v0, Ljava/lang/RuntimeException;

    #@af
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    #@b2
    throw v0

    #@b3
    :pswitch_b3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b6
    move-result-object v9

    #@b7
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    #@ba
    goto/16 :goto_2a

    #@bc
    :pswitch_bc
    iget-object v9, v7, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    #@be
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    #@c1
    goto/16 :goto_2a

    #@c3
    :pswitch_c3
    invoke-virtual {v7}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFileName()Ljava/lang/String;

    #@c6
    move-result-object v9

    #@c7
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    #@ca
    goto/16 :goto_2a

    #@cc
    :pswitch_cc
    iget-wide v10, v7, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mWhenModified:J

    #@ce
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@d1
    move-result-object v9

    #@d2
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    #@d5
    goto/16 :goto_2a

    #@d7
    :pswitch_d7
    iget-wide v10, v7, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCRC32:J

    #@d9
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@dc
    move-result-object v9

    #@dd
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    #@e0
    goto/16 :goto_2a

    #@e2
    :pswitch_e2
    iget-wide v10, v7, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCompressedLength:J

    #@e4
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@e7
    move-result-object v9

    #@e8
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    #@eb
    goto/16 :goto_2a

    #@ed
    :pswitch_ed
    iget-wide v10, v7, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    #@ef
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@f2
    move-result-object v9

    #@f3
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    #@f6
    goto/16 :goto_2a

    #@f8
    :pswitch_f8
    iget v9, v7, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mMethod:I

    #@fa
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@fd
    move-result-object v9

    #@fe
    invoke-virtual {v8, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    #@101
    goto/16 :goto_2a

    #@103
    :cond_103
    add-int/lit8 v1, v1, 0x1

    #@105
    goto/16 :goto_1a

    #@107
    :cond_107
    return-object v4

    #@108
    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_b3
        :pswitch_bc
        :pswitch_c3
        :pswitch_cc
        :pswitch_d7
        :pswitch_e2
        :pswitch_ed
        :pswitch_f8
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method
