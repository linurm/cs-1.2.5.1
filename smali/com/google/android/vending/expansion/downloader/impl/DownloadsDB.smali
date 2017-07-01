.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadColumns;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;,
        Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$MetadataColumns;
    }
.end annotation


# static fields
.field private static final CONTROL_IDX:I = 0x7

.field private static final CURRENTBYTES_IDX:I = 0x4

.field private static final DATABASE_NAME:Ljava/lang/String; = "DownloadsDB"

.field private static final DATABASE_VERSION:I = 0x7

.field private static final DC_PROJECTION:[Ljava/lang/String;

.field private static final ETAG_IDX:I = 0x2

.field private static final FILENAME_IDX:I = 0x0

.field private static final INDEX_IDX:I = 0xb

.field private static final LASTMOD_IDX:I = 0x5

.field public static final LOG_TAG:Ljava/lang/String;

.field private static final NUM_FAILED_IDX:I = 0x8

.field private static final REDIRECT_COUNT_IDX:I = 0xa

.field private static final RETRY_AFTER_IDX:I = 0x9

.field private static final STATUS_IDX:I = 0x6

.field private static final TOTALBYTES_IDX:I = 0x3

.field private static final URI_IDX:I = 0x1

.field private static mDownloadsDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;


# instance fields
.field mFlags:I

.field mGetDownloadByIndex:Landroid/database/sqlite/SQLiteStatement;

.field final mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field mMetadataRowID:J

.field mStatus:I

.field mUpdateCurrentBytes:Landroid/database/sqlite/SQLiteStatement;

.field mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->LOG_TAG:Ljava/lang/String;

    #@8
    const/16 v0, 0xc

    #@a
    new-array v0, v0, [Ljava/lang/String;

    #@c
    const/4 v1, 0x0

    #@d
    const-string v2, "FN"

    #@f
    aput-object v2, v0, v1

    #@11
    const/4 v1, 0x1

    #@12
    const-string v2, "URI"

    #@14
    aput-object v2, v0, v1

    #@16
    const/4 v1, 0x2

    #@17
    const-string v2, "ETAG"

    #@19
    aput-object v2, v0, v1

    #@1b
    const/4 v1, 0x3

    #@1c
    const-string v2, "TOTALBYTES"

    #@1e
    aput-object v2, v0, v1

    #@20
    const/4 v1, 0x4

    #@21
    const-string v2, "CURRENTBYTES"

    #@23
    aput-object v2, v0, v1

    #@25
    const/4 v1, 0x5

    #@26
    const-string v2, "LASTMOD"

    #@28
    aput-object v2, v0, v1

    #@2a
    const/4 v1, 0x6

    #@2b
    const-string v2, "STATUS"

    #@2d
    aput-object v2, v0, v1

    #@2f
    const/4 v1, 0x7

    #@30
    const-string v2, "CONTROL"

    #@32
    aput-object v2, v0, v1

    #@34
    const/16 v1, 0x8

    #@36
    const-string v2, "FAILCOUNT"

    #@38
    aput-object v2, v0, v1

    #@3a
    const/16 v1, 0x9

    #@3c
    const-string v2, "RETRYAFTER"

    #@3e
    aput-object v2, v0, v1

    #@40
    const/16 v1, 0xa

    #@42
    const-string v2, "REDIRECTCOUNT"

    #@44
    aput-object v2, v0, v1

    #@46
    const/16 v1, 0xb

    #@48
    const-string v2, "FILEIDX"

    #@4a
    aput-object v2, v0, v1

    #@4c
    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->DC_PROJECTION:[Ljava/lang/String;

    #@4e
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    #@0
    const/4 v2, -0x1

    #@1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    const-wide/16 v0, -0x1

    #@6
    iput-wide v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mMetadataRowID:J

    #@8
    iput v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mVersionCode:I

    #@a
    iput v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    #@c
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;

    #@e
    invoke-direct {v0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;-><init>(Landroid/content/Context;)V

    #@11
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@13
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@15
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@18
    move-result-object v0

    #@19
    const-string v1, "SELECT APKVERSION,_id,DOWNLOADSTATUS,DOWNLOADFLAGS FROM MetadataColumns LIMIT 1"

    #@1b
    const/4 v2, 0x0

    #@1c
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@1f
    move-result-object v0

    #@20
    if-eqz v0, :cond_47

    #@22
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_47

    #@28
    const/4 v1, 0x0

    #@29
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@2c
    move-result v1

    #@2d
    iput v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mVersionCode:I

    #@2f
    const/4 v1, 0x1

    #@30
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    #@33
    move-result-wide v2

    #@34
    iput-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mMetadataRowID:J

    #@36
    const/4 v1, 0x2

    #@37
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@3a
    move-result v1

    #@3b
    iput v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    #@3d
    const/4 v1, 0x3

    #@3e
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    #@41
    move-result v1

    #@42
    iput v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mFlags:I

    #@44
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@47
    :cond_47
    sput-object p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mDownloadsDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@49
    return-void
.end method

.method public static getDB(Landroid/content/Context;)Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    .registers 3

    #@0
    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mDownloadsDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@5
    if-nez v0, :cond_10

    #@7
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@9
    invoke-direct {v0, p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;-><init>(Landroid/content/Context;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_13

    #@c
    :goto_c
    const-class v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@e
    monitor-exit v1

    #@f
    return-object v0

    #@10
    :cond_10
    :try_start_10
    sget-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mDownloadsDB:Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_13

    #@12
    goto :goto_c

    #@13
    :catchall_13
    move-exception v0

    #@14
    const-class v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;

    #@16
    monitor-exit v1

    #@17
    throw v0
.end method

.method private getDownloadByIndexStatement()Landroid/database/sqlite/SQLiteStatement;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mGetDownloadByIndex:Landroid/database/sqlite/SQLiteStatement;

    #@2
    if-nez v0, :cond_12

    #@4
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@9
    move-result-object v0

    #@a
    const-string v1, "SELECT _id FROM DownloadColumns WHERE FILEIDX = ?"

    #@c
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mGetDownloadByIndex:Landroid/database/sqlite/SQLiteStatement;

    #@12
    :cond_12
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mGetDownloadByIndex:Landroid/database/sqlite/SQLiteStatement;

    #@14
    return-object v0
.end method

.method private getUpdateCurrentBytesStatement()Landroid/database/sqlite/SQLiteStatement;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mUpdateCurrentBytes:Landroid/database/sqlite/SQLiteStatement;

    #@2
    if-nez v0, :cond_12

    #@4
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@9
    move-result-object v0

    #@a
    const-string v1, "UPDATE DownloadColumns SET CURRENTBYTES = ? WHERE FILEIDX = ?"

    #@c
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mUpdateCurrentBytes:Landroid/database/sqlite/SQLiteStatement;

    #@12
    :cond_12
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mUpdateCurrentBytes:Landroid/database/sqlite/SQLiteStatement;

    #@14
    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    #@5
    return-void
.end method

.method protected getDownloadInfoByFileName(Ljava/lang/String;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .registers 11

    #@0
    const/4 v8, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@6
    move-result-object v0

    #@7
    :try_start_7
    const-string v1, "DownloadColumns"

    #@9
    sget-object v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->DC_PROJECTION:[Ljava/lang/String;

    #@b
    const-string v3, "FN = ?"

    #@d
    const/4 v4, 0x1

    #@e
    new-array v4, v4, [Ljava/lang/String;

    #@10
    const/4 v5, 0x0

    #@11
    aput-object p1, v4, v5

    #@13
    const/4 v5, 0x0

    #@14
    const/4 v6, 0x0

    #@15
    const/4 v7, 0x0

    #@16
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_3b

    #@19
    move-result-object v1

    #@1a
    if-eqz v1, :cond_2c

    #@1c
    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_2c

    #@22
    invoke-virtual {p0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloadInfoFromCursor(Landroid/database/Cursor;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_33

    #@25
    move-result-object v0

    #@26
    if-eqz v1, :cond_2b

    #@28
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@2b
    :cond_2b
    :goto_2b
    return-object v0

    #@2c
    :cond_2c
    if-eqz v1, :cond_31

    #@2e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@31
    :cond_31
    move-object v0, v8

    #@32
    goto :goto_2b

    #@33
    :catchall_33
    move-exception v0

    #@34
    move-object v8, v1

    #@35
    :goto_35
    if-eqz v8, :cond_3a

    #@37
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@3a
    :cond_3a
    throw v0

    #@3b
    :catchall_3b
    move-exception v0

    #@3c
    goto :goto_35
.end method

.method public getDownloadInfoFromCursor(Landroid/database/Cursor;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .registers 6

    #@0
    new-instance v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@2
    const/16 v1, 0xb

    #@4
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@1c
    invoke-virtual {p0, v0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->setDownloadInfoFromCursor(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Landroid/database/Cursor;)V

    #@1f
    return-object v0
.end method

.method public getDownloads()[Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;
    .registers 10

    #@0
    const/4 v8, 0x0

    #@1
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@6
    move-result-object v0

    #@7
    :try_start_7
    const-string v1, "DownloadColumns"

    #@9
    sget-object v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->DC_PROJECTION:[Ljava/lang/String;

    #@b
    const/4 v3, 0x0

    #@c
    const/4 v4, 0x0

    #@d
    const/4 v5, 0x0

    #@e
    const/4 v6, 0x0

    #@f
    const/4 v7, 0x0

    #@10
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_47

    #@13
    move-result-object v1

    #@14
    if-eqz v1, :cond_35

    #@16
    :try_start_16
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_35

    #@1c
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    #@1f
    move-result v0

    #@20
    new-array v0, v0, [Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@22
    const/4 v2, 0x0

    #@23
    :goto_23
    invoke-virtual {p0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloadInfoFromCursor(Landroid/database/Cursor;)Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;

    #@26
    move-result-object v3

    #@27
    aput-object v3, v0, v2

    #@29
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_3c

    #@2c
    move-result v3

    #@2d
    if-nez v3, :cond_44

    #@2f
    if-eqz v1, :cond_34

    #@31
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@34
    :cond_34
    :goto_34
    return-object v0

    #@35
    :cond_35
    if-eqz v1, :cond_3a

    #@37
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@3a
    :cond_3a
    move-object v0, v8

    #@3b
    goto :goto_34

    #@3c
    :catchall_3c
    move-exception v0

    #@3d
    move-object v8, v1

    #@3e
    :goto_3e
    if-eqz v8, :cond_43

    #@40
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    #@43
    :cond_43
    throw v0

    #@44
    :cond_44
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_23

    #@47
    :catchall_47
    move-exception v0

    #@48
    goto :goto_3e
.end method

.method public getFlags()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mFlags:I

    #@2
    return v0
.end method

.method public getIDByIndex(I)J
    .registers 6

    #@0
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getDownloadByIndexStatement()Landroid/database/sqlite/SQLiteStatement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    #@7
    const/4 v1, 0x1

    #@8
    int-to-long v2, p1

    #@9
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    #@c
    :try_start_c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_c .. :try_end_f} :catch_11

    #@f
    move-result-wide v0

    #@10
    :goto_10
    return-wide v0

    #@11
    :catch_11
    move-exception v0

    #@12
    const-wide/16 v0, -0x1

    #@14
    goto :goto_10
.end method

.method public getIDForDownloadInfo(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)J
    .registers 4

    #@0
    iget v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mIndex:I

    #@2
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getIDByIndex(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getLastCheckedVersionCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mVersionCode:I

    #@2
    return v0
.end method

.method public isDownloadRequired()Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    iget-object v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@7
    move-result-object v2

    #@8
    const-string v3, "SELECT Count(*) FROM DownloadColumns WHERE STATUS <> 0"

    #@a
    const/4 v4, 0x0

    #@b
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@e
    move-result-object v2

    #@f
    if-eqz v2, :cond_26

    #@11
    :try_start_11
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_26

    #@17
    const/4 v3, 0x0

    #@18
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2c

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_24

    #@1e
    :goto_1e
    if-eqz v2, :cond_23

    #@20
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    #@23
    :cond_23
    :goto_23
    return v0

    #@24
    :cond_24
    move v0, v1

    #@25
    goto :goto_1e

    #@26
    :cond_26
    if-eqz v2, :cond_23

    #@28
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    #@2b
    goto :goto_23

    #@2c
    :catchall_2c
    move-exception v0

    #@2d
    if-eqz v2, :cond_32

    #@2f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    #@32
    :cond_32
    throw v0
.end method

.method public setDownloadInfoFromCursor(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Landroid/database/Cursor;)V
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    #@7
    const/4 v0, 0x2

    #@8
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    #@e
    const/4 v0, 0x3

    #@f
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    #@15
    const/4 v0, 0x4

    #@16
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    #@19
    move-result-wide v0

    #@1a
    iput-wide v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    #@1c
    const/4 v0, 0x5

    #@1d
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    #@20
    move-result-wide v0

    #@21
    iput-wide v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    #@23
    const/4 v0, 0x6

    #@24
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    #@27
    move-result v0

    #@28
    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    #@2a
    const/4 v0, 0x7

    #@2b
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    #@2e
    move-result v0

    #@2f
    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mControl:I

    #@31
    const/16 v0, 0x8

    #@33
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    #@36
    move-result v0

    #@37
    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    #@39
    const/16 v0, 0x9

    #@3b
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    #@3e
    move-result v0

    #@3f
    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    #@41
    const/16 v0, 0xa

    #@43
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    #@46
    move-result v0

    #@47
    iput v0, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRedirectCount:I

    #@49
    return-void
.end method

.method public updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z
    .registers 6

    #@0
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    const-string v1, "FILEIDX"

    #@7
    iget v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mIndex:I

    #@9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@10
    const-string v1, "FN"

    #@12
    iget-object v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@17
    const-string v1, "URI"

    #@19
    iget-object v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mUri:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    const-string v1, "ETAG"

    #@20
    iget-object v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mETag:Ljava/lang/String;

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    const-string v1, "TOTALBYTES"

    #@27
    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mTotalBytes:J

    #@29
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@30
    const-string v1, "CURRENTBYTES"

    #@32
    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    #@34
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@3b
    const-string v1, "LASTMOD"

    #@3d
    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mLastMod:J

    #@3f
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@46
    const-string v1, "STATUS"

    #@48
    iget v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mStatus:I

    #@4a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@51
    const-string v1, "CONTROL"

    #@53
    iget v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mControl:I

    #@55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@5c
    const-string v1, "FAILCOUNT"

    #@5e
    iget v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mNumFailed:I

    #@60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@67
    const-string v1, "RETRYAFTER"

    #@69
    iget v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRetryAfter:I

    #@6b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@72
    const-string v1, "REDIRECTCOUNT"

    #@74
    iget v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mRedirectCount:I

    #@76
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@7d
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Landroid/content/ContentValues;)Z

    #@80
    move-result v0

    #@81
    return v0
.end method

.method public updateDownload(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Landroid/content/ContentValues;)Z
    .registers 11

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-wide/16 v4, -0x1

    #@4
    if-nez p1, :cond_2e

    #@6
    move-wide v2, v4

    #@7
    :goto_7
    :try_start_7
    iget-object v6, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@9
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@c
    move-result-object v6

    #@d
    cmp-long v7, v2, v4

    #@f
    if-eqz v7, :cond_33

    #@11
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string v5, "DownloadColumns"

    #@18
    const-string v7, "DownloadColumns._id = "

    #@1a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    const/4 v3, 0x0

    #@27
    invoke-virtual {v6, v5, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_2a} :catch_43

    #@2a
    move-result v2

    #@2b
    if-eq v0, v2, :cond_2d

    #@2d
    :cond_2d
    :goto_2d
    return v1

    #@2e
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getIDForDownloadInfo(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)J

    #@31
    move-result-wide v2

    #@32
    goto :goto_7

    #@33
    :cond_33
    :try_start_33
    const-string v2, "DownloadColumns"

    #@35
    const-string v3, "URI"

    #@37
    invoke-virtual {v6, v2, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_3a} :catch_43

    #@3a
    move-result-wide v2

    #@3b
    cmp-long v2, v4, v2

    #@3d
    if-eqz v2, :cond_41

    #@3f
    :goto_3f
    move v1, v0

    #@40
    goto :goto_2d

    #@41
    :cond_41
    move v0, v1

    #@42
    goto :goto_3f

    #@43
    :catch_43
    move-exception v0

    #@44
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    #@47
    goto :goto_2d
.end method

.method public updateDownloadCurrentBytes(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)V
    .registers 6

    #@0
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->getUpdateCurrentBytesStatement()Landroid/database/sqlite/SQLiteStatement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    #@7
    const/4 v1, 0x1

    #@8
    iget-wide v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mCurrentBytes:J

    #@a
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    #@d
    const/4 v1, 0x2

    #@e
    iget v2, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mIndex:I

    #@10
    int-to-long v2, v2

    #@11
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    #@14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    #@17
    return-void
.end method

.method public updateFlags(I)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    iget v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mFlags:I

    #@3
    if-eq v1, p1, :cond_1b

    #@5
    new-instance v1, Landroid/content/ContentValues;

    #@7
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@a
    const-string v2, "DOWNLOADFLAGS"

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@13
    invoke-virtual {p0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateMetadata(Landroid/content/ContentValues;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1c

    #@19
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mFlags:I

    #@1b
    :cond_1b
    :goto_1b
    return v0

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    goto :goto_1b
.end method

.method public updateFromDb(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;)Z
    .registers 14

    #@0
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v10, 0x0

    #@3
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@8
    move-result-object v0

    #@9
    :try_start_9
    const-string v1, "DownloadColumns"

    #@b
    sget-object v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->DC_PROJECTION:[Ljava/lang/String;

    #@d
    const-string v3, "FN= ?"

    #@f
    const/4 v4, 0x1

    #@10
    new-array v4, v4, [Ljava/lang/String;

    #@12
    const/4 v5, 0x0

    #@13
    iget-object v6, p1, Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;->mFileName:Ljava/lang/String;

    #@15
    aput-object v6, v4, v5

    #@17
    const/4 v5, 0x0

    #@18
    const/4 v6, 0x0

    #@19
    const/4 v7, 0x0

    #@1a
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_37

    #@1d
    move-result-object v1

    #@1e
    if-eqz v1, :cond_30

    #@20
    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_30

    #@26
    invoke-virtual {p0, p1, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->setDownloadInfoFromCursor(Lcom/google/android/vending/expansion/downloader/impl/DownloadInfo;Landroid/database/Cursor;)V
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_40

    #@29
    if-eqz v1, :cond_2e

    #@2b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@2e
    :cond_2e
    move v0, v8

    #@2f
    :goto_2f
    return v0

    #@30
    :cond_30
    if-eqz v1, :cond_35

    #@32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@35
    :cond_35
    move v0, v9

    #@36
    goto :goto_2f

    #@37
    :catchall_37
    move-exception v0

    #@38
    move-object v1, v0

    #@39
    move-object v0, v10

    #@3a
    :goto_3a
    if-eqz v0, :cond_3f

    #@3c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@3f
    :cond_3f
    throw v1

    #@40
    :catchall_40
    move-exception v0

    #@41
    move-object v11, v1

    #@42
    move-object v1, v0

    #@43
    move-object v0, v11

    #@44
    goto :goto_3a
.end method

.method public updateMetadata(II)Z
    .registers 6

    #@0
    new-instance v0, Landroid/content/ContentValues;

    #@2
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    #@5
    const-string v1, "APKVERSION"

    #@7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@e
    const-string v1, "DOWNLOADSTATUS"

    #@10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@17
    invoke-virtual {p0, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateMetadata(Landroid/content/ContentValues;)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_23

    #@1d
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mVersionCode:I

    #@1f
    iput p2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    #@21
    const/4 v0, 0x1

    #@22
    :goto_22
    return v0

    #@23
    :cond_23
    const/4 v0, 0x0

    #@24
    goto :goto_22
.end method

.method public updateMetadata(Landroid/content/ContentValues;)Z
    .registers 8

    #@0
    const-wide/16 v4, -0x1

    #@2
    const/4 v0, 0x0

    #@3
    iget-object v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #@5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@8
    move-result-object v1

    #@9
    iget-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mMetadataRowID:J

    #@b
    cmp-long v2, v4, v2

    #@d
    if-nez v2, :cond_20

    #@f
    const-string v2, "MetadataColumns"

    #@11
    const-string v3, "APKVERSION"

    #@13
    invoke-virtual {v1, v2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@16
    move-result-wide v2

    #@17
    cmp-long v1, v4, v2

    #@19
    if-nez v1, :cond_1c

    #@1b
    :goto_1b
    return v0

    #@1c
    :cond_1c
    iput-wide v2, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mMetadataRowID:J

    #@1e
    :cond_1e
    const/4 v0, 0x1

    #@1f
    goto :goto_1b

    #@20
    :cond_20
    const-string v2, "MetadataColumns"

    #@22
    new-instance v3, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string v4, "_id = "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    iget-wide v4, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mMetadataRowID:J

    #@2f
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    const/4 v4, 0x0

    #@38
    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    #@3b
    move-result v1

    #@3c
    if-nez v1, :cond_1e

    #@3e
    goto :goto_1b
.end method

.method public updateStatus(I)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    iget v1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    #@3
    if-eq v1, p1, :cond_1b

    #@5
    new-instance v1, Landroid/content/ContentValues;

    #@7
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@a
    const-string v2, "DOWNLOADSTATUS"

    #@c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@13
    invoke-virtual {p0, v1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->updateMetadata(Landroid/content/ContentValues;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_1c

    #@19
    iput p1, p0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;->mStatus:I

    #@1b
    :cond_1b
    :goto_1b
    return v0

    #@1c
    :cond_1c
    const/4 v0, 0x0

    #@1d
    goto :goto_1b
.end method
