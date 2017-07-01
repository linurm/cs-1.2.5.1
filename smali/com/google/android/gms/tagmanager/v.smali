.class Lcom/google/android/gms/tagmanager/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/DataLayer$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/v$a;,
        Lcom/google/android/gms/tagmanager/v$b;
    }
.end annotation


# static fields
.field private static final afj:Ljava/lang/String;


# instance fields
.field private aef:Lcom/google/android/gms/internal/ij;

.field private final afk:Ljava/util/concurrent/Executor;

.field private afl:Lcom/google/android/gms/tagmanager/v$a;

.field private afm:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' STRING NOT NULL, \'%s\' BLOB NOT NULL, \'%s\' INTEGER NOT NULL);"

    #@2
    const/4 v1, 0x5

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    const-string v3, "datalayer"

    #@8
    aput-object v3, v1, v2

    #@a
    const/4 v2, 0x1

    #@b
    const-string v3, "ID"

    #@d
    aput-object v3, v1, v2

    #@f
    const/4 v2, 0x2

    #@10
    const-string v3, "key"

    #@12
    aput-object v3, v1, v2

    #@14
    const/4 v2, 0x3

    #@15
    const-string v3, "value"

    #@17
    aput-object v3, v1, v2

    #@19
    const/4 v2, 0x4

    #@1a
    const-string v3, "expires"

    #@1c
    aput-object v3, v1, v2

    #@1e
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Lcom/google/android/gms/tagmanager/v;->afj:Ljava/lang/String;

    #@24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    #@0
    invoke-static {}, Lcom/google/android/gms/internal/il;->gb()Lcom/google/android/gms/internal/ij;

    #@3
    move-result-object v2

    #@4
    const-string v3, "google_tagmanager.db"

    #@6
    const/16 v4, 0x7d0

    #@8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    #@b
    move-result-object v5

    #@c
    move-object v0, p0

    #@d
    move-object v1, p1

    #@e
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/v;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ij;Ljava/lang/String;ILjava/util/concurrent/Executor;)V

    #@11
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ij;Ljava/lang/String;ILjava/util/concurrent/Executor;)V
    .registers 8

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/v;->mContext:Landroid/content/Context;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/v;->aef:Lcom/google/android/gms/internal/ij;

    #@7
    iput p4, p0, Lcom/google/android/gms/tagmanager/v;->afm:I

    #@9
    iput-object p5, p0, Lcom/google/android/gms/tagmanager/v;->afk:Ljava/util/concurrent/Executor;

    #@b
    new-instance v0, Lcom/google/android/gms/tagmanager/v$a;

    #@d
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/v;->mContext:Landroid/content/Context;

    #@f
    invoke-direct {v0, p0, v1, p3}, Lcom/google/android/gms/tagmanager/v$a;-><init>(Lcom/google/android/gms/tagmanager/v;Landroid/content/Context;Ljava/lang/String;)V

    #@12
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/v;->afl:Lcom/google/android/gms/tagmanager/v$a;

    #@14
    return-void
.end method

.method private S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/v;->afl:Lcom/google/android/gms/tagmanager/v$a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/v$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_7

    #@5
    move-result-object v0

    #@6
    :goto_6
    return-object v0

    #@7
    :catch_7
    move-exception v0

    #@8
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@b
    const/4 v0, 0x0

    #@c
    goto :goto_6
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/v;)Ljava/util/List;
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/v;->lC()Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/v;Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/v;->bQ(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/v;Ljava/util/List;J)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/v;->b(Ljava/util/List;J)V

    #@3
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/v;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/v;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method private b(Ljava/util/List;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/v$b;",
            ">;J)V"
        }
    .end annotation

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/v;->aef:Lcom/google/android/gms/internal/ij;

    #@3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ij;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/v;->x(J)V

    #@a
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@d
    move-result v2

    #@e
    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/v;->do(I)V

    #@11
    add-long/2addr v0, p2

    #@12
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/tagmanager/v;->c(Ljava/util/List;J)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1a

    #@15
    :try_start_15
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/v;->lF()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1f

    #@18
    monitor-exit p0

    #@19
    return-void

    #@1a
    :catchall_1a
    move-exception v0

    #@1b
    :try_start_1b
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/v;->lF()V

    #@1e
    throw v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1f

    #@1f
    :catchall_1f
    move-exception v0

    #@20
    monitor-exit p0

    #@21
    throw v0
.end method

.method private bQ(Ljava/lang/String;)V
    .registers 9

    #@0
    const-string v0, "Error opening database for clearKeysWithPrefix."

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/v;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_9

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string v2, "datalayer"

    #@10
    const-string v3, "key = ? OR key LIKE ?"

    #@12
    const/4 v4, 0x2

    #@13
    new-array v4, v4, [Ljava/lang/String;

    #@15
    const/4 v5, 0x0

    #@16
    aput-object p1, v4, v5

    #@18
    const/4 v5, 0x1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string v6, ".%"

    #@1f
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    aput-object v1, v4, v5

    #@29
    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@2c
    move-result v0

    #@2d
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string v2, "Cleared "

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    const-string v1, " items"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V
    :try_end_49
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_49} :catch_4d
    .catchall {:try_start_9 .. :try_end_49} :catchall_78

    #@49
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/v;->lF()V

    #@4c
    goto :goto_8

    #@4d
    :catch_4d
    move-exception v0

    #@4e
    :try_start_4e
    new-instance v1, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string v2, "Error deleting entries with key prefix: "

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    const-string v2, " ("

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    const-string v1, ")."

    #@69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_4e .. :try_end_74} :catchall_78

    #@74
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/v;->lF()V

    #@77
    goto :goto_8

    #@78
    :catchall_78
    move-exception v0

    #@79
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/v;->lF()V

    #@7c
    throw v0
.end method

.method private c(Ljava/util/List;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/v$b;",
            ">;J)V"
        }
    .end annotation

    #@0
    const-string v0, "Error opening database for writeEntryToDatabase."

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/v;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_9

    #@8
    :cond_8
    return-void

    #@9
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_8

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/tagmanager/v$b;

    #@19
    new-instance v3, Landroid/content/ContentValues;

    #@1b
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #@1e
    const-string v4, "expires"

    #@20
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@27
    const-string v4, "key"

    #@29
    iget-object v5, v0, Lcom/google/android/gms/tagmanager/v$b;->JL:Ljava/lang/String;

    #@2b
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    const-string v4, "value"

    #@30
    iget-object v0, v0, Lcom/google/android/gms/tagmanager/v$b;->afs:[B

    #@32
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    #@35
    const-string v0, "datalayer"

    #@37
    const/4 v4, 0x0

    #@38
    invoke-virtual {v1, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@3b
    goto :goto_d
.end method

.method private do(I)V
    .registers 5

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/v;->lE()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lcom/google/android/gms/tagmanager/v;->afm:I

    #@6
    sub-int/2addr v0, v1

    #@7
    add-int/2addr v0, p1

    #@8
    if-lez v0, :cond_3a

    #@a
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/v;->dp(I)Ljava/util/List;

    #@d
    move-result-object v0

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string v2, "DataLayer store full, deleting "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string v2, " entries to make room."

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->B(Ljava/lang/String;)V

    #@2e
    const/4 v1, 0x0

    #@2f
    new-array v1, v1, [Ljava/lang/String;

    #@31
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, [Ljava/lang/String;

    #@37
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/v;->g([Ljava/lang/String;)V

    #@3a
    :cond_3a
    return-void
.end method

.method private dp(I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v9, 0x0

    #@1
    new-instance v10, Ljava/util/ArrayList;

    #@3
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@6
    if-gtz p1, :cond_e

    #@8
    const-string v0, "Invalid maxEntries specified. Skipping."

    #@a
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@d
    :cond_d
    :goto_d
    return-object v10

    #@e
    :cond_e
    const-string v0, "Error opening database for peekEntryIds."

    #@10
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/v;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@13
    move-result-object v0

    #@14
    if-eqz v0, :cond_d

    #@16
    :try_start_16
    const-string v1, "%s ASC"

    #@18
    const/4 v2, 0x1

    #@19
    new-array v2, v2, [Ljava/lang/Object;

    #@1b
    const/4 v3, 0x0

    #@1c
    const-string v4, "ID"

    #@1e
    aput-object v4, v2, v3

    #@20
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@23
    move-result-object v7

    #@24
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@27
    move-result-object v8

    #@28
    const-string v1, "datalayer"

    #@2a
    const/4 v2, 0x1

    #@2b
    new-array v2, v2, [Ljava/lang/String;

    #@2d
    const/4 v3, 0x0

    #@2e
    const-string v4, "ID"

    #@30
    aput-object v4, v2, v3

    #@32
    const/4 v3, 0x0

    #@33
    const/4 v4, 0x0

    #@34
    const/4 v5, 0x0

    #@35
    const/4 v6, 0x0

    #@36
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_39
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_39} :catch_58
    .catchall {:try_start_16 .. :try_end_39} :catchall_84

    #@39
    move-result-object v1

    #@3a
    :try_start_3a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    #@3d
    move-result v0

    #@3e
    if-eqz v0, :cond_52

    #@40
    :cond_40
    const/4 v0, 0x0

    #@41
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    #@44
    move-result-wide v2

    #@45
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3a .. :try_end_4f} :catch_82
    .catchall {:try_start_3a .. :try_end_4f} :catchall_7a

    #@4f
    move-result v0

    #@50
    if-nez v0, :cond_40

    #@52
    :cond_52
    if-eqz v1, :cond_d

    #@54
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@57
    goto :goto_d

    #@58
    :catch_58
    move-exception v0

    #@59
    move-object v1, v9

    #@5a
    :goto_5a
    :try_start_5a
    new-instance v2, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string v3, "Error in peekEntries fetching entryIds: "

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v0

    #@6d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_7a

    #@74
    if-eqz v1, :cond_d

    #@76
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@79
    goto :goto_d

    #@7a
    :catchall_7a
    move-exception v0

    #@7b
    move-object v9, v1

    #@7c
    :goto_7c
    if-eqz v9, :cond_81

    #@7e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@81
    :cond_81
    throw v0

    #@82
    :catch_82
    move-exception v0

    #@83
    goto :goto_5a

    #@84
    :catchall_84
    move-exception v0

    #@85
    goto :goto_7c
.end method

.method private e(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/v$b;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/DataLayer$a;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_26

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/google/android/gms/tagmanager/v$b;

    #@15
    new-instance v3, Lcom/google/android/gms/tagmanager/DataLayer$a;

    #@17
    iget-object v4, v0, Lcom/google/android/gms/tagmanager/v$b;->JL:Ljava/lang/String;

    #@19
    iget-object v0, v0, Lcom/google/android/gms/tagmanager/v$b;->afs:[B

    #@1b
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/v;->j([B)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/tagmanager/DataLayer$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@22
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_9

    #@26
    :cond_26
    return-object v1
.end method

.method private f(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/DataLayer$a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/v$b;",
            ">;"
        }
    .end annotation

    #@0
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_26

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/google/android/gms/tagmanager/DataLayer$a;

    #@15
    new-instance v3, Lcom/google/android/gms/tagmanager/v$b;

    #@17
    iget-object v4, v0, Lcom/google/android/gms/tagmanager/DataLayer$a;->JL:Ljava/lang/String;

    #@19
    iget-object v0, v0, Lcom/google/android/gms/tagmanager/DataLayer$a;->afh:Ljava/lang/Object;

    #@1b
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/v;->j(Ljava/lang/Object;)[B

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/tagmanager/v$b;-><init>(Ljava/lang/String;[B)V

    #@22
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_9

    #@26
    :cond_26
    return-object v1
.end method

.method private g([Ljava/lang/String;)V
    .registers 9

    #@0
    if-eqz p1, :cond_5

    #@2
    array-length v0, p1

    #@3
    if-nez v0, :cond_6

    #@5
    :cond_5
    :goto_5
    return-void

    #@6
    :cond_6
    const-string v0, "Error opening database for deleteEntries."

    #@8
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/v;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_5

    #@e
    const-string v1, "%s in (%s)"

    #@10
    const/4 v2, 0x2

    #@11
    new-array v2, v2, [Ljava/lang/Object;

    #@13
    const/4 v3, 0x0

    #@14
    const-string v4, "ID"

    #@16
    aput-object v4, v2, v3

    #@18
    const/4 v3, 0x1

    #@19
    const-string v4, ","

    #@1b
    array-length v5, p1

    #@1c
    const-string v6, "?"

    #@1e
    invoke-static {v5, v6}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    #@21
    move-result-object v5

    #@22
    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    aput-object v4, v2, v3

    #@28
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    :try_start_2c
    const-string v2, "datalayer"

    #@2e
    invoke-virtual {v0, v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_31} :catch_32

    #@31
    goto :goto_5

    #@32
    :catch_32
    move-exception v0

    #@33
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string v1, "Error deleting entries "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@4d
    goto :goto_5
.end method

.method private j([B)Ljava/lang/Object;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@3
    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@6
    :try_start_6
    new-instance v1, Ljava/io/ObjectInputStream;

    #@8
    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_25
    .catchall {:try_start_6 .. :try_end_b} :catchall_47

    #@b
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_3f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_e} :catch_41
    .catchall {:try_start_b .. :try_end_e} :catchall_32

    #@e
    move-result-object v0

    #@f
    if-eqz v1, :cond_14

    #@11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    #@14
    :cond_14
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_43

    #@17
    :goto_17
    return-object v0

    #@18
    :catch_18
    move-exception v1

    #@19
    move-object v1, v0

    #@1a
    :goto_1a
    if-eqz v1, :cond_1f

    #@1c
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    #@1f
    :cond_1f
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_22} :catch_23

    #@22
    goto :goto_17

    #@23
    :catch_23
    move-exception v1

    #@24
    goto :goto_17

    #@25
    :catch_25
    move-exception v1

    #@26
    move-object v1, v0

    #@27
    :goto_27
    if-eqz v1, :cond_2c

    #@29
    :try_start_29
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    #@2c
    :cond_2c
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2f} :catch_30

    #@2f
    goto :goto_17

    #@30
    :catch_30
    move-exception v1

    #@31
    goto :goto_17

    #@32
    :catchall_32
    move-exception v0

    #@33
    move-object v4, v0

    #@34
    move-object v0, v1

    #@35
    move-object v1, v4

    #@36
    :goto_36
    if-eqz v0, :cond_3b

    #@38
    :try_start_38
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    #@3b
    :cond_3b
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3e} :catch_45

    #@3e
    :goto_3e
    throw v1

    #@3f
    :catch_3f
    move-exception v3

    #@40
    goto :goto_1a

    #@41
    :catch_41
    move-exception v3

    #@42
    goto :goto_27

    #@43
    :catch_43
    move-exception v1

    #@44
    goto :goto_17

    #@45
    :catch_45
    move-exception v0

    #@46
    goto :goto_3e

    #@47
    :catchall_47
    move-exception v1

    #@48
    goto :goto_36
.end method

.method private j(Ljava/lang/Object;)[B
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@3
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@6
    :try_start_6
    new-instance v1, Ljava/io/ObjectOutputStream;

    #@8
    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_1b
    .catchall {:try_start_6 .. :try_end_b} :catchall_28

    #@b
    :try_start_b
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_37
    .catchall {:try_start_b .. :try_end_11} :catchall_39

    #@11
    move-result-object v0

    #@12
    if-eqz v1, :cond_17

    #@14
    :try_start_14
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    #@17
    :cond_17
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1a} :catch_35

    #@1a
    :goto_1a
    return-object v0

    #@1b
    :catch_1b
    move-exception v1

    #@1c
    move-object v1, v0

    #@1d
    :goto_1d
    if-eqz v1, :cond_22

    #@1f
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    #@22
    :cond_22
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_26

    #@25
    goto :goto_1a

    #@26
    :catch_26
    move-exception v1

    #@27
    goto :goto_1a

    #@28
    :catchall_28
    move-exception v1

    #@29
    move-object v4, v0

    #@2a
    move-object v0, v1

    #@2b
    move-object v1, v4

    #@2c
    :goto_2c
    if-eqz v1, :cond_31

    #@2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    #@31
    :cond_31
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_3b

    #@34
    :goto_34
    throw v0

    #@35
    :catch_35
    move-exception v1

    #@36
    goto :goto_1a

    #@37
    :catch_37
    move-exception v3

    #@38
    goto :goto_1d

    #@39
    :catchall_39
    move-exception v0

    #@3a
    goto :goto_2c

    #@3b
    :catch_3b
    move-exception v1

    #@3c
    goto :goto_34
.end method

.method private lC()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/DataLayer$a;",
            ">;"
        }
    .end annotation

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/v;->aef:Lcom/google/android/gms/internal/ij;

    #@2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ij;->currentTimeMillis()J

    #@5
    move-result-wide v0

    #@6
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/v;->x(J)V

    #@9
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/v;->lD()Ljava/util/List;

    #@c
    move-result-object v0

    #@d
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/v;->e(Ljava/util/List;)Ljava/util/List;
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_15

    #@10
    move-result-object v0

    #@11
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/v;->lF()V

    #@14
    return-object v0

    #@15
    :catchall_15
    move-exception v0

    #@16
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/v;->lF()V

    #@19
    throw v0
.end method

.method private lD()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/v$b;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    const-string v0, "Error opening database for loadSerialized."

    #@5
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/v;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@8
    move-result-object v0

    #@9
    new-instance v9, Ljava/util/ArrayList;

    #@b
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@e
    if-nez v0, :cond_11

    #@10
    :goto_10
    return-object v9

    #@11
    :cond_11
    const-string v1, "datalayer"

    #@13
    const/4 v2, 0x2

    #@14
    new-array v2, v2, [Ljava/lang/String;

    #@16
    const-string v4, "key"

    #@18
    aput-object v4, v2, v5

    #@1a
    const-string v4, "value"

    #@1c
    aput-object v4, v2, v6

    #@1e
    const-string v7, "ID"

    #@20
    move-object v4, v3

    #@21
    move-object v5, v3

    #@22
    move-object v6, v3

    #@23
    move-object v8, v3

    #@24
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@27
    move-result-object v1

    #@28
    :goto_28
    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_46

    #@2e
    new-instance v0, Lcom/google/android/gms/tagmanager/v$b;

    #@30
    const/4 v2, 0x0

    #@31
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    const/4 v3, 0x1

    #@36
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    #@39
    move-result-object v3

    #@3a
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/tagmanager/v$b;-><init>(Ljava/lang/String;[B)V

    #@3d
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_41

    #@40
    goto :goto_28

    #@41
    :catchall_41
    move-exception v0

    #@42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@45
    throw v0

    #@46
    :cond_46
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@49
    goto :goto_10
.end method

.method private lE()I
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    const-string v2, "Error opening database for getNumStoredEntries."

    #@4
    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/v;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@7
    move-result-object v2

    #@8
    if-nez v2, :cond_b

    #@a
    :cond_a
    :goto_a
    return v0

    #@b
    :cond_b
    :try_start_b
    const-string v3, "SELECT COUNT(*) from datalayer"

    #@d
    const/4 v4, 0x0

    #@e
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1e

    #@18
    const/4 v2, 0x0

    #@19
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_1c} :catch_24
    .catchall {:try_start_b .. :try_end_1c} :catchall_30

    #@1c
    move-result-wide v2

    #@1d
    long-to-int v0, v2

    #@1e
    :cond_1e
    if-eqz v1, :cond_a

    #@20
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@23
    goto :goto_a

    #@24
    :catch_24
    move-exception v2

    #@25
    :try_start_25
    const-string v2, "Error getting numStoredEntries"

    #@27
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_30

    #@2a
    if-eqz v1, :cond_a

    #@2c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@2f
    goto :goto_a

    #@30
    :catchall_30
    move-exception v0

    #@31
    if-eqz v1, :cond_36

    #@33
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@36
    :cond_36
    throw v0
.end method

.method private lF()V
    .registers 2

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/v;->afl:Lcom/google/android/gms/tagmanager/v$a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/v$a;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_6

    #@5
    :goto_5
    return-void

    #@6
    :catch_6
    move-exception v0

    #@7
    goto :goto_5
.end method

.method static synthetic lG()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/v;->afj:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private x(J)V
    .registers 10

    #@0
    const-string v0, "Error opening database for deleteOlderThan."

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/v;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_9

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    :try_start_9
    const-string v1, "datalayer"

    #@b
    const-string v2, "expires <= ?"

    #@d
    const/4 v3, 0x1

    #@e
    new-array v3, v3, [Ljava/lang/String;

    #@10
    const/4 v4, 0x0

    #@11
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@14
    move-result-object v5

    #@15
    aput-object v5, v3, v4

    #@17
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@1a
    move-result v0

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string v2, "Deleted "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    const-string v1, " expired items"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_37} :catch_38

    #@37
    goto :goto_8

    #@38
    :catch_38
    move-exception v0

    #@39
    const-string v0, "Error deleting old entries."

    #@3b
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@3e
    goto :goto_8
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/DataLayer$c$a;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/v;->afk:Ljava/util/concurrent/Executor;

    #@2
    new-instance v1, Lcom/google/android/gms/tagmanager/v$2;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/v$2;-><init>(Lcom/google/android/gms/tagmanager/v;Lcom/google/android/gms/tagmanager/DataLayer$c$a;)V

    #@7
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@a
    return-void
.end method

.method public a(Ljava/util/List;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/DataLayer$a;",
            ">;J)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/v;->f(Ljava/util/List;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/v;->afk:Ljava/util/concurrent/Executor;

    #@6
    new-instance v2, Lcom/google/android/gms/tagmanager/v$1;

    #@8
    invoke-direct {v2, p0, v0, p2, p3}, Lcom/google/android/gms/tagmanager/v$1;-><init>(Lcom/google/android/gms/tagmanager/v;Ljava/util/List;J)V

    #@b
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@e
    return-void
.end method

.method public bP(Ljava/lang/String;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/v;->afk:Ljava/util/concurrent/Executor;

    #@2
    new-instance v1, Lcom/google/android/gms/tagmanager/v$3;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/v$3;-><init>(Lcom/google/android/gms/tagmanager/v;Ljava/lang/String;)V

    #@7
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    #@a
    return-void
.end method
