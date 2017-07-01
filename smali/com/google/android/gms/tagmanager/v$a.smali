.class Lcom/google/android/gms/tagmanager/v$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic afp:Lcom/google/android/gms/tagmanager/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/v;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/v$a;->afp:Lcom/google/android/gms/tagmanager/v;

    #@2
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #@7
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    #@0
    const-string v0, "SELECT * FROM datalayer WHERE 0"

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@6
    move-result-object v1

    #@7
    new-instance v2, Ljava/util/HashSet;

    #@9
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@c
    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    const/4 v0, 0x0

    #@11
    :goto_11
    array-length v4, v3

    #@12
    if-ge v0, v4, :cond_1c

    #@14
    aget-object v4, v3, v0

    #@16
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_47

    #@19
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_11

    #@1c
    :cond_1c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@1f
    const-string v0, "key"

    #@21
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_3f

    #@27
    const-string v0, "value"

    #@29
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_3f

    #@2f
    const-string v0, "ID"

    #@31
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@34
    move-result v0

    #@35
    if-eqz v0, :cond_3f

    #@37
    const-string v0, "expires"

    #@39
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@3c
    move-result v0

    #@3d
    if-nez v0, :cond_4c

    #@3f
    :cond_3f
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    #@41
    const-string v1, "Database column missing"

    #@43
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0

    #@47
    :catchall_47
    move-exception v0

    #@48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@4b
    throw v0

    #@4c
    :cond_4c
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    #@4f
    move-result v0

    #@50
    if-nez v0, :cond_5a

    #@52
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    #@54
    const-string v1, "Database has extra columns"

    #@56
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    #@59
    throw v0

    #@5a
    :cond_5a
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 14

    #@0
    const/4 v8, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    :try_start_2
    const-string v1, "SQLITE_MASTER"

    #@4
    const/4 v0, 0x1

    #@5
    new-array v2, v0, [Ljava/lang/String;

    #@7
    const/4 v0, 0x0

    #@8
    const-string v3, "name"

    #@a
    aput-object v3, v2, v0

    #@c
    const-string v3, "name=?"

    #@e
    const/4 v0, 0x1

    #@f
    new-array v4, v0, [Ljava/lang/String;

    #@11
    const/4 v0, 0x0

    #@12
    aput-object p1, v4, v0

    #@14
    const/4 v5, 0x0

    #@15
    const/4 v6, 0x0

    #@16
    const/4 v7, 0x0

    #@17
    move-object v0, p2

    #@18
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_1b} :catch_26
    .catchall {:try_start_2 .. :try_end_1b} :catchall_45

    #@1b
    move-result-object v1

    #@1c
    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1f} :catch_58
    .catchall {:try_start_1c .. :try_end_1f} :catchall_4e

    #@1f
    move-result v0

    #@20
    if-eqz v1, :cond_25

    #@22
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@25
    :cond_25
    :goto_25
    return v0

    #@26
    :catch_26
    move-exception v0

    #@27
    move-object v1, v9

    #@28
    :goto_28
    :try_start_28
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string v2, "Error querying for table "

    #@2f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_53

    #@3e
    if-eqz v1, :cond_43

    #@40
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@43
    :cond_43
    move v0, v8

    #@44
    goto :goto_25

    #@45
    :catchall_45
    move-exception v0

    #@46
    move-object v1, v0

    #@47
    move-object v0, v9

    #@48
    :goto_48
    if-eqz v0, :cond_4d

    #@4a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@4d
    :cond_4d
    throw v1

    #@4e
    :catchall_4e
    move-exception v0

    #@4f
    move-object v10, v1

    #@50
    move-object v1, v0

    #@51
    move-object v0, v10

    #@52
    goto :goto_48

    #@53
    :catchall_53
    move-exception v0

    #@54
    move-object v10, v1

    #@55
    move-object v1, v0

    #@56
    move-object v0, v10

    #@57
    goto :goto_48

    #@58
    :catch_58
    move-exception v0

    #@59
    goto :goto_28
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_4} :catch_c

    #@4
    move-result-object v0

    #@5
    :goto_5
    if-nez v0, :cond_b

    #@7
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@a
    move-result-object v0

    #@b
    :cond_b
    return-object v0

    #@c
    :catch_c
    move-exception v1

    #@d
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/v$a;->afp:Lcom/google/android/gms/tagmanager/v;

    #@f
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/v;->b(Lcom/google/android/gms/tagmanager/v;)Landroid/content/Context;

    #@12
    move-result-object v1

    #@13
    const-string v2, "google_tagmanager.db"

    #@15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@1c
    goto :goto_5
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    #@0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ak;->N(Ljava/lang/String;)Z

    #@7
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    #@0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xf

    #@4
    if-ge v0, v1, :cond_13

    #@6
    const-string v0, "PRAGMA journal_mode=memory"

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@c
    move-result-object v0

    #@d
    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_23

    #@10
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@13
    :cond_13
    const-string v0, "datalayer"

    #@15
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/tagmanager/v$a;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_28

    #@1b
    invoke-static {}, Lcom/google/android/gms/tagmanager/v;->lG()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@22
    :goto_22
    return-void

    #@23
    :catchall_23
    move-exception v1

    #@24
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@27
    throw v1

    #@28
    :cond_28
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/v$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    #@2b
    goto :goto_22
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    #@0
    return-void
.end method
