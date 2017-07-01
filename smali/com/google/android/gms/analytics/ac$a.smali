.class Lcom/google/android/gms/analytics/ac$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic wW:Lcom/google/android/gms/analytics/ac;

.field private wX:Z

.field private wY:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/ac;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    #@0
    iput-object p1, p0, Lcom/google/android/gms/analytics/ac$a;->wW:Lcom/google/android/gms/analytics/ac;

    #@2
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    #@7
    const-wide/16 v0, 0x0

    #@9
    iput-wide v0, p0, Lcom/google/android/gms/analytics/ac$a;->wY:J

    #@b
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8

    #@0
    const/4 v0, 0x0

    #@1
    const-string v1, "SELECT * FROM hits2 WHERE 0"

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@7
    move-result-object v2

    #@8
    new-instance v3, Ljava/util/HashSet;

    #@a
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@d
    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    move v1, v0

    #@12
    :goto_12
    array-length v5, v4

    #@13
    if-ge v1, v5, :cond_1d

    #@15
    aget-object v5, v4, v1

    #@17
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_48

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_12

    #@1d
    :cond_1d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    #@20
    const-string v1, "hit_id"

    #@22
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_40

    #@28
    const-string v1, "hit_url"

    #@2a
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_40

    #@30
    const-string v1, "hit_string"

    #@32
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_40

    #@38
    const-string v1, "hit_time"

    #@3a
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_4d

    #@40
    :cond_40
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    #@42
    const-string v1, "Database column missing"

    #@44
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    #@47
    throw v0

    #@48
    :catchall_48
    move-exception v0

    #@49
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    #@4c
    throw v0

    #@4d
    :cond_4d
    const-string v1, "hit_app_id"

    #@4f
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@52
    move-result v1

    #@53
    if-nez v1, :cond_56

    #@55
    const/4 v0, 0x1

    #@56
    :cond_56
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    #@59
    move-result v1

    #@5a
    if-nez v1, :cond_64

    #@5c
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    #@5e
    const-string v1, "Database has extra columns"

    #@60
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    #@63
    throw v0

    #@64
    :cond_64
    if-eqz v0, :cond_6b

    #@66
    const-string v0, "ALTER TABLE hits2 ADD COLUMN hit_app_id"

    #@68
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    #@6b
    :cond_6b
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
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
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
    .registers 5

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/ac$a;->wX:Z

    #@2
    if-eqz v0, :cond_20

    #@4
    iget-wide v0, p0, Lcom/google/android/gms/analytics/ac$a;->wY:J

    #@6
    const-wide/32 v2, 0x36ee80

    #@9
    add-long/2addr v0, v2

    #@a
    iget-object v2, p0, Lcom/google/android/gms/analytics/ac$a;->wW:Lcom/google/android/gms/analytics/ac;

    #@c
    invoke-static {v2}, Lcom/google/android/gms/analytics/ac;->a(Lcom/google/android/gms/analytics/ac;)Lcom/google/android/gms/analytics/i;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v2}, Lcom/google/android/gms/analytics/i;->currentTimeMillis()J

    #@13
    move-result-wide v2

    #@14
    cmp-long v0, v0, v2

    #@16
    if-lez v0, :cond_20

    #@18
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    #@1a
    const-string v1, "Database creation failed"

    #@1c
    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    :cond_20
    const/4 v0, 0x0

    #@21
    const/4 v1, 0x1

    #@22
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/ac$a;->wX:Z

    #@24
    iget-object v1, p0, Lcom/google/android/gms/analytics/ac$a;->wW:Lcom/google/android/gms/analytics/ac;

    #@26
    invoke-static {v1}, Lcom/google/android/gms/analytics/ac;->a(Lcom/google/android/gms/analytics/ac;)Lcom/google/android/gms/analytics/i;

    #@29
    move-result-object v1

    #@2a
    invoke-interface {v1}, Lcom/google/android/gms/analytics/i;->currentTimeMillis()J

    #@2d
    move-result-wide v2

    #@2e
    iput-wide v2, p0, Lcom/google/android/gms/analytics/ac$a;->wY:J

    #@30
    :try_start_30
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_33
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30 .. :try_end_33} :catch_3e

    #@33
    move-result-object v0

    #@34
    :goto_34
    if-nez v0, :cond_3a

    #@36
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@39
    move-result-object v0

    #@3a
    :cond_3a
    const/4 v1, 0x0

    #@3b
    iput-boolean v1, p0, Lcom/google/android/gms/analytics/ac$a;->wX:Z

    #@3d
    return-object v0

    #@3e
    :catch_3e
    move-exception v1

    #@3f
    iget-object v1, p0, Lcom/google/android/gms/analytics/ac$a;->wW:Lcom/google/android/gms/analytics/ac;

    #@41
    invoke-static {v1}, Lcom/google/android/gms/analytics/ac;->c(Lcom/google/android/gms/analytics/ac;)Landroid/content/Context;

    #@44
    move-result-object v1

    #@45
    iget-object v2, p0, Lcom/google/android/gms/analytics/ac$a;->wW:Lcom/google/android/gms/analytics/ac;

    #@47
    invoke-static {v2}, Lcom/google/android/gms/analytics/ac;->b(Lcom/google/android/gms/analytics/ac;)Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@52
    goto :goto_34
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    #@0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->N(Ljava/lang/String;)Z

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
    const-string v0, "hits2"

    #@15
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/analytics/ac$a;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_28

    #@1b
    invoke-static {}, Lcom/google/android/gms/analytics/ac;->du()Ljava/lang/String;

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
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/ac$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    #@2b
    goto :goto_22
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    #@0
    return-void
.end method
