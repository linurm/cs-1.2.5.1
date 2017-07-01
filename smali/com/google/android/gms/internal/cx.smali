.class public Lcom/google/android/gms/internal/cx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cx$a;
    }
.end annotation


# static fields
.field private static final ls:Ljava/lang/Object;

.field private static final pr:Ljava/lang/String;

.field private static pt:Lcom/google/android/gms/internal/cx;


# instance fields
.field private final ps:Lcom/google/android/gms/internal/cx$a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)"

    #@2
    const/4 v1, 0x5

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    const-string v3, "InAppPurchase"

    #@8
    aput-object v3, v1, v2

    #@a
    const/4 v2, 0x1

    #@b
    const-string v3, "purchase_id"

    #@d
    aput-object v3, v1, v2

    #@f
    const/4 v2, 0x2

    #@10
    const-string v3, "product_id"

    #@12
    aput-object v3, v1, v2

    #@14
    const/4 v2, 0x3

    #@15
    const-string v3, "developer_payload"

    #@17
    aput-object v3, v1, v2

    #@19
    const/4 v2, 0x4

    #@1a
    const-string v3, "record_time"

    #@1c
    aput-object v3, v1, v2

    #@1e
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Lcom/google/android/gms/internal/cx;->pr:Ljava/lang/String;

    #@24
    new-instance v0, Ljava/lang/Object;

    #@26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@29
    sput-object v0, Lcom/google/android/gms/internal/cx;->ls:Ljava/lang/Object;

    #@2b
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Lcom/google/android/gms/internal/cx$a;

    #@5
    const-string v1, "google_inapp_purchase.db"

    #@7
    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/cx$a;-><init>(Lcom/google/android/gms/internal/cx;Landroid/content/Context;Ljava/lang/String;)V

    #@a
    iput-object v0, p0, Lcom/google/android/gms/internal/cx;->ps:Lcom/google/android/gms/internal/cx$a;

    #@c
    return-void
.end method

.method static synthetic bl()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/cx;->pr:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public static k(Landroid/content/Context;)Lcom/google/android/gms/internal/cx;
    .registers 3

    #@0
    sget-object v1, Lcom/google/android/gms/internal/cx;->ls:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/cx;->pt:Lcom/google/android/gms/internal/cx;

    #@5
    if-nez v0, :cond_e

    #@7
    new-instance v0, Lcom/google/android/gms/internal/cx;

    #@9
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cx;-><init>(Landroid/content/Context;)V

    #@c
    sput-object v0, Lcom/google/android/gms/internal/cx;->pt:Lcom/google/android/gms/internal/cx;

    #@e
    :cond_e
    sget-object v0, Lcom/google/android/gms/internal/cx;->pt:Lcom/google/android/gms/internal/cx;

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    :catchall_12
    move-exception v0

    #@13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    #@14
    throw v0
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/google/android/gms/internal/cv;
    .registers 7

    #@0
    if-nez p1, :cond_4

    #@2
    const/4 v0, 0x0

    #@3
    :goto_3
    return-object v0

    #@4
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/cv;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    #@a
    move-result-wide v2

    #@b
    const/4 v1, 0x1

    #@c
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const/4 v4, 0x2

    #@11
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/google/android/gms/internal/cv;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    #@18
    goto :goto_3
.end method

.method public a(Lcom/google/android/gms/internal/cv;)V
    .registers 10

    #@0
    if-nez p1, :cond_3

    #@2
    :goto_2
    return-void

    #@3
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/cx;->ls:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_11

    #@c
    monitor-exit v1

    #@d
    goto :goto_2

    #@e
    :catchall_e
    move-exception v0

    #@f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    #@10
    throw v0

    #@11
    :cond_11
    :try_start_11
    const-string v2, "InAppPurchase"

    #@13
    const-string v3, "%s = %d"

    #@15
    const/4 v4, 0x2

    #@16
    new-array v4, v4, [Ljava/lang/Object;

    #@18
    const/4 v5, 0x0

    #@19
    const-string v6, "purchase_id"

    #@1b
    aput-object v6, v4, v5

    #@1d
    const/4 v5, 0x1

    #@1e
    iget-wide v6, p1, Lcom/google/android/gms/internal/cv;->pl:J

    #@20
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@23
    move-result-object v6

    #@24
    aput-object v6, v4, v5

    #@26
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    const/4 v4, 0x0

    #@2b
    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_e

    #@2f
    goto :goto_2
.end method

.method public b(Lcom/google/android/gms/internal/cv;)V
    .registers 8

    #@0
    if-nez p1, :cond_3

    #@2
    :goto_2
    return-void

    #@3
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/cx;->ls:Ljava/lang/Object;

    #@5
    monitor-enter v1

    #@6
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@9
    move-result-object v0

    #@a
    if-nez v0, :cond_11

    #@c
    monitor-exit v1

    #@d
    goto :goto_2

    #@e
    :catchall_e
    move-exception v0

    #@f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    #@10
    throw v0

    #@11
    :cond_11
    :try_start_11
    new-instance v2, Landroid/content/ContentValues;

    #@13
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #@16
    const-string v3, "product_id"

    #@18
    iget-object v4, p1, Lcom/google/android/gms/internal/cv;->pn:Ljava/lang/String;

    #@1a
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    const-string v3, "developer_payload"

    #@1f
    iget-object v4, p1, Lcom/google/android/gms/internal/cv;->pm:Ljava/lang/String;

    #@21
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@24
    const-string v3, "record_time"

    #@26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@29
    move-result-wide v4

    #@2a
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@31
    const-string v3, "InAppPurchase"

    #@33
    const/4 v4, 0x0

    #@34
    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@37
    move-result-wide v2

    #@38
    iput-wide v2, p1, Lcom/google/android/gms/internal/cv;->pl:J

    #@3a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cx;->getRecordCount()I

    #@3d
    move-result v0

    #@3e
    int-to-long v2, v0

    #@3f
    const-wide/16 v4, 0x4e20

    #@41
    cmp-long v0, v2, v4

    #@43
    if-lez v0, :cond_48

    #@45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cx;->bk()V

    #@48
    :cond_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_11 .. :try_end_49} :catchall_e

    #@49
    goto :goto_2
.end method

.method public bk()V
    .registers 12

    #@0
    const/4 v9, 0x0

    #@1
    sget-object v10, Lcom/google/android/gms/internal/cx;->ls:Ljava/lang/Object;

    #@3
    monitor-enter v10

    #@4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_c

    #@a
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_31

    #@b
    :goto_b
    return-void

    #@c
    :cond_c
    :try_start_c
    const-string v1, "InAppPurchase"

    #@e
    const/4 v2, 0x0

    #@f
    const/4 v3, 0x0

    #@10
    const/4 v4, 0x0

    #@11
    const/4 v5, 0x0

    #@12
    const/4 v6, 0x0

    #@13
    const-string v7, "record_time ASC"

    #@15
    const-string v8, "1"

    #@17
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_1a} :catch_34
    .catchall {:try_start_c .. :try_end_1a} :catchall_60

    #@1a
    move-result-object v1

    #@1b
    if-eqz v1, :cond_2a

    #@1d
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_2a

    #@23
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cx;->a(Landroid/database/Cursor;)Lcom/google/android/gms/internal/cv;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cx;->a(Lcom/google/android/gms/internal/cv;)V
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_2a} :catch_5e
    .catchall {:try_start_1d .. :try_end_2a} :catchall_56

    #@2a
    :cond_2a
    if-eqz v1, :cond_2f

    #@2c
    :try_start_2c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@2f
    :cond_2f
    :goto_2f
    monitor-exit v10

    #@30
    goto :goto_b

    #@31
    :catchall_31
    move-exception v0

    #@32
    monitor-exit v10
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_31

    #@33
    throw v0

    #@34
    :catch_34
    move-exception v0

    #@35
    move-object v1, v9

    #@36
    :goto_36
    :try_start_36
    new-instance v2, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string v3, "Error remove oldest record"

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_56

    #@50
    if-eqz v1, :cond_2f

    #@52
    :try_start_52
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@55
    goto :goto_2f

    #@56
    :catchall_56
    move-exception v0

    #@57
    move-object v9, v1

    #@58
    :goto_58
    if-eqz v9, :cond_5d

    #@5a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@5d
    :cond_5d
    throw v0
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_31

    #@5e
    :catch_5e
    move-exception v0

    #@5f
    goto :goto_36

    #@60
    :catchall_60
    move-exception v0

    #@61
    goto :goto_58
.end method

.method public d(J)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/cv;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v9, 0x0

    #@1
    sget-object v10, Lcom/google/android/gms/internal/cx;->ls:Ljava/lang/Object;

    #@3
    monitor-enter v10

    #@4
    :try_start_4
    new-instance v11, Ljava/util/LinkedList;

    #@6
    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    #@9
    const-wide/16 v0, 0x0

    #@b
    cmp-long v0, p1, v0

    #@d
    if-gtz v0, :cond_11

    #@f
    monitor-exit v10

    #@10
    :goto_10
    return-object v11

    #@11
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@14
    move-result-object v0

    #@15
    if-nez v0, :cond_1c

    #@17
    monitor-exit v10

    #@18
    goto :goto_10

    #@19
    :catchall_19
    move-exception v0

    #@1a
    monitor-exit v10
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    #@1b
    throw v0

    #@1c
    :cond_1c
    :try_start_1c
    const-string v1, "InAppPurchase"

    #@1e
    const/4 v2, 0x0

    #@1f
    const/4 v3, 0x0

    #@20
    const/4 v4, 0x0

    #@21
    const/4 v5, 0x0

    #@22
    const/4 v6, 0x0

    #@23
    const-string v7, "record_time ASC"

    #@25
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@28
    move-result-object v8

    #@29
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_2c} :catch_47
    .catchall {:try_start_1c .. :try_end_2c} :catchall_73

    #@2c
    move-result-object v1

    #@2d
    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_40

    #@33
    :cond_33
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cx;->a(Landroid/database/Cursor;)Lcom/google/android/gms/internal/cv;

    #@36
    move-result-object v0

    #@37
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3a
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_3d} :catch_71
    .catchall {:try_start_2d .. :try_end_3d} :catchall_69

    #@3d
    move-result v0

    #@3e
    if-nez v0, :cond_33

    #@40
    :cond_40
    if-eqz v1, :cond_45

    #@42
    :try_start_42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@45
    :cond_45
    :goto_45
    monitor-exit v10
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_19

    #@46
    goto :goto_10

    #@47
    :catch_47
    move-exception v0

    #@48
    move-object v1, v9

    #@49
    :goto_49
    :try_start_49
    new-instance v2, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string v3, "Error extracing purchase info: "

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_49 .. :try_end_63} :catchall_69

    #@63
    if-eqz v1, :cond_45

    #@65
    :try_start_65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@68
    goto :goto_45

    #@69
    :catchall_69
    move-exception v0

    #@6a
    move-object v9, v1

    #@6b
    :goto_6b
    if-eqz v9, :cond_70

    #@6d
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    #@70
    :cond_70
    throw v0
    :try_end_71
    .catchall {:try_start_65 .. :try_end_71} :catchall_19

    #@71
    :catch_71
    move-exception v0

    #@72
    goto :goto_49

    #@73
    :catchall_73
    move-exception v0

    #@74
    goto :goto_6b
.end method

.method public getRecordCount()I
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    sget-object v3, Lcom/google/android/gms/internal/cx;->ls:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cx;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    #@8
    move-result-object v1

    #@9
    if-nez v1, :cond_d

    #@b
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_26

    #@c
    :goto_c
    return v0

    #@d
    :cond_d
    :try_start_d
    const-string v4, "select count(*) from InAppPurchase"

    #@f
    const/4 v5, 0x0

    #@10
    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    #@13
    move-result-object v2

    #@14
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_29

    #@1a
    const/4 v1, 0x0

    #@1b
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_1e} :catch_30
    .catchall {:try_start_d .. :try_end_1e} :catchall_51

    #@1e
    move-result v0

    #@1f
    if-eqz v2, :cond_24

    #@21
    :try_start_21
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    #@24
    :cond_24
    monitor-exit v3

    #@25
    goto :goto_c

    #@26
    :catchall_26
    move-exception v0

    #@27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_26

    #@28
    throw v0

    #@29
    :cond_29
    if-eqz v2, :cond_2e

    #@2b
    :try_start_2b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    #@2e
    :cond_2e
    :goto_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_26

    #@2f
    goto :goto_c

    #@30
    :catch_30
    move-exception v1

    #@31
    :try_start_31
    new-instance v4, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string v5, "Error getting record count"

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-static {v1}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_51

    #@4b
    if-eqz v2, :cond_2e

    #@4d
    :try_start_4d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    #@50
    goto :goto_2e

    #@51
    :catchall_51
    move-exception v0

    #@52
    if-eqz v2, :cond_57

    #@54
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    #@57
    :cond_57
    throw v0
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_26
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cx;->ps:Lcom/google/android/gms/internal/cx$a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
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
    const-string v0, "Error opening writable conversion tracking database"

    #@a
    invoke-static {v0}, Lcom/google/android/gms/internal/eu;->D(Ljava/lang/String;)V

    #@d
    const/4 v0, 0x0

    #@e
    goto :goto_6
.end method
