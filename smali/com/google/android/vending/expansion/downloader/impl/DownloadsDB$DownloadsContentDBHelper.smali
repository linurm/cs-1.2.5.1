.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DownloadsContentDBHelper"
.end annotation


# static fields
.field private static final sSchemas:[[[Ljava/lang/String;

.field private static final sTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    new-array v0, v4, [[[Ljava/lang/String;

    #@5
    sget-object v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadColumns;->SCHEMA:[[Ljava/lang/String;

    #@7
    aput-object v1, v0, v2

    #@9
    sget-object v1, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$MetadataColumns;->SCHEMA:[[Ljava/lang/String;

    #@b
    aput-object v1, v0, v3

    #@d
    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sSchemas:[[[Ljava/lang/String;

    #@f
    new-array v0, v4, [Ljava/lang/String;

    #@11
    const-string v1, "DownloadColumns"

    #@13
    aput-object v1, v0, v2

    #@15
    const-string v1, "MetadataColumns"

    #@17
    aput-object v1, v0, v3

    #@19
    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sTables:[Ljava/lang/String;

    #@1b
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    #@0
    const-string v0, "DownloadsDB"

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x7

    #@4
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #@7
    return-void
.end method

.method private createTableQueryFromArray(Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    #@0
    const/16 v6, 0x20

    #@2
    const/4 v1, 0x0

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string v0, "CREATE TABLE "

    #@a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    const-string v0, " ("

    #@12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    array-length v3, p2

    #@16
    move v0, v1

    #@17
    :goto_17
    if-lt v0, v3, :cond_2c

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@1c
    move-result v0

    #@1d
    add-int/lit8 v0, v0, -0x1

    #@1f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    #@22
    const-string v0, ");"

    #@24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0

    #@2c
    :cond_2c
    aget-object v4, p2, v0

    #@2e
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    aget-object v5, v4, v1

    #@33
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    const/4 v5, 0x1

    #@3a
    aget-object v4, v4, v5

    #@3c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    const/16 v4, 0x2c

    #@41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_17
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8

    #@0
    sget-object v2, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sTables:[Ljava/lang/String;

    #@2
    array-length v3, v2

    #@3
    const/4 v0, 0x0

    #@4
    move v1, v0

    #@5
    :goto_5
    if-ge v1, v3, :cond_28

    #@7
    aget-object v0, v2, v1

    #@9
    :try_start_9
    new-instance v4, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string v5, "DROP TABLE IF EXISTS "

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_23

    #@1f
    :goto_1f
    add-int/lit8 v0, v1, 0x1

    #@21
    move v1, v0

    #@22
    goto :goto_5

    #@23
    :catch_23
    move-exception v0

    #@24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@27
    goto :goto_1f

    #@28
    :cond_28
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    #@0
    sget-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sSchemas:[[[Ljava/lang/String;

    #@2
    array-length v2, v0

    #@3
    const/4 v0, 0x0

    #@4
    move v1, v0

    #@5
    :goto_5
    if-ge v1, v2, :cond_20

    #@7
    :try_start_7
    sget-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sSchemas:[[[Ljava/lang/String;

    #@9
    aget-object v0, v0, v1

    #@b
    check-cast v0, [[Ljava/lang/String;

    #@d
    sget-object v3, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->sTables:[Ljava/lang/String;

    #@f
    aget-object v3, v3, v1

    #@11
    invoke-direct {p0, v3, v0}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->createTableQueryFromArray(Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_21

    #@18
    add-int/lit8 v0, v1, 0x1

    #@1a
    move v1, v0

    #@1b
    goto :goto_5

    #@1c
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    #@1f
    goto :goto_1c

    #@20
    :cond_20
    return-void

    #@21
    :catch_21
    move-exception v0

    #@22
    goto :goto_1c
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7

    #@0
    const-class v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string v2, "Upgrading database from version "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string v2, " to "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string v2, ", which will destroy all old data"

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    #@2f
    invoke-virtual {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadsContentDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    #@32
    return-void
.end method
