.class Lcom/google/android/gms/tagmanager/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/at;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/ca$a;,
        Lcom/google/android/gms/tagmanager/ca$b;
    }
.end annotation


# static fields
.field private static final wP:Ljava/lang/String;


# instance fields
.field private aef:Lcom/google/android/gms/internal/ij;

.field private final agq:Lcom/google/android/gms/tagmanager/ca$b;

.field private volatile agr:Lcom/google/android/gms/tagmanager/ab;

.field private final ags:Lcom/google/android/gms/tagmanager/au;

.field private final mContext:Landroid/content/Context;

.field private final wS:Ljava/lang/String;

.field private wU:J

.field private final wV:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL,\'%s\' INTEGER NOT NULL);"

    #@2
    const/4 v1, 0x5

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    const-string v3, "gtm_hits"

    #@8
    aput-object v3, v1, v2

    #@a
    const/4 v2, 0x1

    #@b
    const-string v3, "hit_id"

    #@d
    aput-object v3, v1, v2

    #@f
    const/4 v2, 0x2

    #@10
    const-string v3, "hit_time"

    #@12
    aput-object v3, v1, v2

    #@14
    const/4 v2, 0x3

    #@15
    const-string v3, "hit_url"

    #@17
    aput-object v3, v1, v2

    #@19
    const/4 v2, 0x4

    #@1a
    const-string v3, "hit_first_send_time"

    #@1c
    aput-object v3, v1, v2

    #@1e
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Lcom/google/android/gms/tagmanager/ca;->wP:Ljava/lang/String;

    #@24
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/au;Landroid/content/Context;)V
    .registers 5

    #@0
    const-string v0, "gtm_urls.db"

    #@2
    const/16 v1, 0x7d0

    #@4
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/tagmanager/ca;-><init>(Lcom/google/android/gms/tagmanager/au;Landroid/content/Context;Ljava/lang/String;I)V

    #@7
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/au;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->mContext:Landroid/content/Context;

    #@9
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/ca;->wS:Ljava/lang/String;

    #@b
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ca;->ags:Lcom/google/android/gms/tagmanager/au;

    #@d
    invoke-static {}, Lcom/google/android/gms/internal/il;->gb()Lcom/google/android/gms/internal/ij;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->aef:Lcom/google/android/gms/internal/ij;

    #@13
    new-instance v0, Lcom/google/android/gms/tagmanager/ca$b;

    #@15
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ca;->mContext:Landroid/content/Context;

    #@17
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ca;->wS:Ljava/lang/String;

    #@19
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/tagmanager/ca$b;-><init>(Lcom/google/android/gms/tagmanager/ca;Landroid/content/Context;Ljava/lang/String;)V

    #@1c
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->agq:Lcom/google/android/gms/tagmanager/ca$b;

    #@1e
    new-instance v0, Lcom/google/android/gms/tagmanager/da;

    #@20
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    #@22
    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    #@25
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ca;->mContext:Landroid/content/Context;

    #@27
    new-instance v3, Lcom/google/android/gms/tagmanager/ca$a;

    #@29
    invoke-direct {v3, p0}, Lcom/google/android/gms/tagmanager/ca$a;-><init>(Lcom/google/android/gms/tagmanager/ca;)V

    #@2c
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/da;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;Lcom/google/android/gms/tagmanager/da$a;)V

    #@2f
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->agr:Lcom/google/android/gms/tagmanager/ab;

    #@31
    const-wide/16 v0, 0x0

    #@33
    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/ca;->wU:J

    #@35
    iput p4, p0, Lcom/google/android/gms/tagmanager/ca;->wV:I

    #@37
    return-void
.end method

.method private S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->agq:Lcom/google/android/gms/tagmanager/ca$b;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ca$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
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

.method static synthetic a(Lcom/google/android/gms/tagmanager/ca;)Lcom/google/android/gms/internal/ij;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->aef:Lcom/google/android/gms/internal/ij;

    #@2
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/ca;J)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/ca;->y(J)V

    #@3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/tagmanager/ca;JJ)V
    .registers 6

    #@0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/ca;->c(JJ)V

    #@3
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/tagmanager/ca;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->wS:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/tagmanager/ca;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method private c(JJ)V
    .registers 12

    #@0
    const-string v0, "Error opening database for getNumStoredHits."

    #@2
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ca;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_9

    #@8
    :goto_8
    return-void

    #@9
    :cond_9
    new-instance v1, Landroid/content/ContentValues;

    #@b
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@e
    const-string v2, "hit_first_send_time"

    #@10
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@17
    :try_start_17
    const-string v2, "gtm_hits"

    #@19
    const-string v3, "hit_id=?"

    #@1b
    const/4 v4, 0x1

    #@1c
    new-array v4, v4, [Ljava/lang/String;

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    aput-object v6, v4, v5

    #@25
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_28} :catch_29

    #@28
    goto :goto_8

    #@29
    :catch_29
    move-exception v0

    #@2a
    new-instance v0, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string v1, "Error setting HIT_FIRST_DISPATCH_TIME for hitId: "

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@40
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/ca;->y(J)V

    #@43
    goto :goto_8
.end method

.method private dr()V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ca;->dt()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lcom/google/android/gms/tagmanager/ca;->wV:I

    #@6
    sub-int/2addr v0, v1

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    if-lez v0, :cond_3b

    #@b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ca;->A(I)Ljava/util/List;

    #@e
    move-result-object v0

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string v2, "Store full, deleting "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@1d
    move-result v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string v2, " hits to make room."

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@2f
    const/4 v1, 0x0

    #@30
    new-array v1, v1, [Ljava/lang/String;

    #@32
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@35
    move-result-object v0

    #@36
    check-cast v0, [Ljava/lang/String;

    #@38
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ca;->a([Ljava/lang/String;)V

    #@3b
    :cond_3b
    return-void
.end method

.method private g(JLjava/lang/String;)V
    .registers 9

    #@0
    const/4 v4, 0x0

    #@1
    const-string v0, "Error opening database for putHit"

    #@3
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ca;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@6
    move-result-object v0

    #@7
    if-nez v0, :cond_a

    #@9
    :goto_9
    return-void

    #@a
    :cond_a
    new-instance v1, Landroid/content/ContentValues;

    #@c
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    #@f
    const-string v2, "hit_time"

    #@11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@18
    const-string v2, "hit_url"

    #@1a
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    const-string v2, "hit_first_send_time"

    #@1f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@26
    :try_start_26
    const-string v2, "gtm_hits"

    #@28
    const/4 v3, 0x0

    #@29
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@2c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->ags:Lcom/google/android/gms/tagmanager/au;

    #@2e
    const/4 v1, 0x0

    #@2f
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/au;->s(Z)V
    :try_end_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_32} :catch_33

    #@32
    goto :goto_9

    #@33
    :catch_33
    move-exception v0

    #@34
    const-string v0, "Error storing hit"

    #@36
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@39
    goto :goto_9
.end method

.method static synthetic mc()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/ca;->wP:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private y(J)V
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    aput-object v2, v0, v1

    #@a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ca;->a([Ljava/lang/String;)V

    #@d
    return-void
.end method


# virtual methods
.method A(I)Ljava/util/List;
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
    const-string v0, "Invalid maxHits specified. Skipping"

    #@a
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@d
    :cond_d
    :goto_d
    return-object v10

    #@e
    :cond_e
    const-string v0, "Error opening database for peekHitIds."

    #@10
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ca;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

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
    const-string v4, "hit_id"

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
    const-string v1, "gtm_hits"

    #@2a
    const/4 v2, 0x1

    #@2b
    new-array v2, v2, [Ljava/lang/String;

    #@2d
    const/4 v3, 0x0

    #@2e
    const-string v4, "hit_id"

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
    const-string v3, "Error in peekHits fetching hitIds: "

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

.method public B(I)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/ap;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v15, 0x1

    #@1
    const/4 v14, 0x0

    #@2
    const/4 v13, 0x0

    #@3
    new-instance v11, Ljava/util/ArrayList;

    #@5
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@8
    const-string v2, "Error opening database for peekHits"

    #@a
    move-object/from16 v0, p0

    #@c
    invoke-direct {v0, v2}, Lcom/google/android/gms/tagmanager/ca;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@f
    move-result-object v2

    #@10
    if-nez v2, :cond_14

    #@12
    move-object v2, v11

    #@13
    :cond_13
    :goto_13
    return-object v2

    #@14
    :cond_14
    :try_start_14
    const-string v3, "%s ASC"

    #@16
    const/4 v4, 0x1

    #@17
    new-array v4, v4, [Ljava/lang/Object;

    #@19
    const/4 v5, 0x0

    #@1a
    const-string v6, "hit_id"

    #@1c
    aput-object v6, v4, v5

    #@1e
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v9

    #@22
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@25
    move-result-object v10

    #@26
    const-string v3, "gtm_hits"

    #@28
    const/4 v4, 0x3

    #@29
    new-array v4, v4, [Ljava/lang/String;

    #@2b
    const/4 v5, 0x0

    #@2c
    const-string v6, "hit_id"

    #@2e
    aput-object v6, v4, v5

    #@30
    const/4 v5, 0x1

    #@31
    const-string v6, "hit_time"

    #@33
    aput-object v6, v4, v5

    #@35
    const/4 v5, 0x2

    #@36
    const-string v6, "hit_first_send_time"

    #@38
    aput-object v6, v4, v5

    #@3a
    const/4 v5, 0x0

    #@3b
    const/4 v6, 0x0

    #@3c
    const/4 v7, 0x0

    #@3d
    const/4 v8, 0x0

    #@3e
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_41} :catch_c9
    .catchall {:try_start_14 .. :try_end_41} :catchall_17f

    #@41
    move-result-object v13

    #@42
    :try_start_42
    new-instance v12, Ljava/util/ArrayList;

    #@44
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_47
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_42 .. :try_end_47} :catch_168
    .catchall {:try_start_42 .. :try_end_47} :catchall_177

    #@47
    :try_start_47
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_6a

    #@4d
    :cond_4d
    new-instance v3, Lcom/google/android/gms/tagmanager/ap;

    #@4f
    const/4 v4, 0x0

    #@50
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    #@53
    move-result-wide v4

    #@54
    const/4 v6, 0x1

    #@55
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    #@58
    move-result-wide v6

    #@59
    const/4 v8, 0x2

    #@5a
    invoke-interface {v13, v8}, Landroid/database/Cursor;->getLong(I)J

    #@5d
    move-result-wide v8

    #@5e
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/tagmanager/ap;-><init>(JJJ)V

    #@61
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@64
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_47 .. :try_end_67} :catch_16d
    .catchall {:try_start_47 .. :try_end_67} :catchall_177

    #@67
    move-result v3

    #@68
    if-nez v3, :cond_4d

    #@6a
    :cond_6a
    if-eqz v13, :cond_6f

    #@6c
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@6f
    :cond_6f
    :try_start_6f
    const-string v3, "%s ASC"

    #@71
    const/4 v4, 0x1

    #@72
    new-array v4, v4, [Ljava/lang/Object;

    #@74
    const/4 v5, 0x0

    #@75
    const-string v6, "hit_id"

    #@77
    aput-object v6, v4, v5

    #@79
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7c
    move-result-object v9

    #@7d
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@80
    move-result-object v10

    #@81
    const-string v3, "gtm_hits"

    #@83
    const/4 v4, 0x2

    #@84
    new-array v4, v4, [Ljava/lang/String;

    #@86
    const/4 v5, 0x0

    #@87
    const-string v6, "hit_id"

    #@89
    aput-object v6, v4, v5

    #@8b
    const/4 v5, 0x1

    #@8c
    const-string v6, "hit_url"

    #@8e
    aput-object v6, v4, v5

    #@90
    const/4 v5, 0x0

    #@91
    const/4 v6, 0x0

    #@92
    const/4 v7, 0x0

    #@93
    const/4 v8, 0x0

    #@94
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_97
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6f .. :try_end_97} :catch_165
    .catchall {:try_start_6f .. :try_end_97} :catchall_17c

    #@97
    move-result-object v3

    #@98
    :try_start_98
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    #@9b
    move-result v2

    #@9c
    if-eqz v2, :cond_c1

    #@9e
    move v4, v14

    #@9f
    :goto_9f
    move-object v0, v3

    #@a0
    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    #@a2
    move-object v2, v0

    #@a3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    #@a6
    move-result-object v2

    #@a7
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    #@aa
    move-result v2

    #@ab
    if-lez v2, :cond_f4

    #@ad
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b0
    move-result-object v2

    #@b1
    check-cast v2, Lcom/google/android/gms/tagmanager/ap;

    #@b3
    const/4 v5, 0x1

    #@b4
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@b7
    move-result-object v5

    #@b8
    invoke-virtual {v2, v5}, Lcom/google/android/gms/tagmanager/ap;->R(Ljava/lang/String;)V

    #@bb
    :goto_bb
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_be
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_98 .. :try_end_be} :catch_112
    .catchall {:try_start_98 .. :try_end_be} :catchall_17a

    #@be
    move-result v2

    #@bf
    if-nez v2, :cond_172

    #@c1
    :cond_c1
    if-eqz v3, :cond_c6

    #@c3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    #@c6
    :cond_c6
    move-object v2, v12

    #@c7
    goto/16 :goto_13

    #@c9
    :catch_c9
    move-exception v2

    #@ca
    move-object v3, v2

    #@cb
    move-object v2, v11

    #@cc
    :goto_cc
    :try_start_cc
    new-instance v4, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string v5, "Error in peekHits fetching hitIds: "

    #@d3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v4

    #@d7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    #@da
    move-result-object v3

    #@db
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v3

    #@df
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v3

    #@e3
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V
    :try_end_e6
    .catchall {:try_start_cc .. :try_end_e6} :catchall_ed

    #@e6
    if-eqz v13, :cond_13

    #@e8
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@eb
    goto/16 :goto_13

    #@ed
    :catchall_ed
    move-exception v2

    #@ee
    :goto_ee
    if-eqz v13, :cond_f3

    #@f0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@f3
    :cond_f3
    throw v2

    #@f4
    :cond_f4
    :try_start_f4
    const-string v5, "HitString for hitId %d too large.  Hit will be deleted."

    #@f6
    const/4 v2, 0x1

    #@f7
    new-array v6, v2, [Ljava/lang/Object;

    #@f9
    const/4 v7, 0x0

    #@fa
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@fd
    move-result-object v2

    #@fe
    check-cast v2, Lcom/google/android/gms/tagmanager/ap;

    #@100
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/ap;->dl()J

    #@103
    move-result-wide v8

    #@104
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@107
    move-result-object v2

    #@108
    aput-object v2, v6, v7

    #@10a
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@10d
    move-result-object v2

    #@10e
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V
    :try_end_111
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f4 .. :try_end_111} :catch_112
    .catchall {:try_start_f4 .. :try_end_111} :catchall_17a

    #@111
    goto :goto_bb

    #@112
    :catch_112
    move-exception v2

    #@113
    move-object v4, v3

    #@114
    :goto_114
    :try_start_114
    new-instance v3, Ljava/lang/StringBuilder;

    #@116
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@119
    const-string v5, "Error in peekHits fetching hit url: "

    #@11b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v3

    #@11f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    #@122
    move-result-object v2

    #@123
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v2

    #@127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12a
    move-result-object v2

    #@12b
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@12e
    new-instance v3, Ljava/util/ArrayList;

    #@130
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@133
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@136
    move-result-object v6

    #@137
    move v5, v14

    #@138
    :goto_138
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@13b
    move-result v2

    #@13c
    if-eqz v2, :cond_150

    #@13e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@141
    move-result-object v2

    #@142
    check-cast v2, Lcom/google/android/gms/tagmanager/ap;

    #@144
    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/ap;->lO()Ljava/lang/String;

    #@147
    move-result-object v7

    #@148
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_14b
    .catchall {:try_start_114 .. :try_end_14b} :catchall_15d

    #@14b
    move-result v7

    #@14c
    if-eqz v7, :cond_159

    #@14e
    if-eqz v5, :cond_158

    #@150
    :cond_150
    if-eqz v4, :cond_155

    #@152
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    #@155
    :cond_155
    move-object v2, v3

    #@156
    goto/16 :goto_13

    #@158
    :cond_158
    move v5, v15

    #@159
    :cond_159
    :try_start_159
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15c
    .catchall {:try_start_159 .. :try_end_15c} :catchall_15d

    #@15c
    goto :goto_138

    #@15d
    :catchall_15d
    move-exception v2

    #@15e
    :goto_15e
    move-object v3, v4

    #@15f
    :goto_15f
    if-eqz v3, :cond_164

    #@161
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    #@164
    :cond_164
    throw v2

    #@165
    :catch_165
    move-exception v2

    #@166
    move-object v4, v13

    #@167
    goto :goto_114

    #@168
    :catch_168
    move-exception v2

    #@169
    move-object v3, v2

    #@16a
    move-object v2, v11

    #@16b
    goto/16 :goto_cc

    #@16d
    :catch_16d
    move-exception v2

    #@16e
    move-object v3, v2

    #@16f
    move-object v2, v12

    #@170
    goto/16 :goto_cc

    #@172
    :cond_172
    add-int/lit8 v2, v4, 0x1

    #@174
    move v4, v2

    #@175
    goto/16 :goto_9f

    #@177
    :catchall_177
    move-exception v2

    #@178
    goto/16 :goto_ee

    #@17a
    :catchall_17a
    move-exception v2

    #@17b
    goto :goto_15f

    #@17c
    :catchall_17c
    move-exception v2

    #@17d
    move-object v4, v13

    #@17e
    goto :goto_15e

    #@17f
    :catchall_17f
    move-exception v2

    #@180
    goto/16 :goto_ee
.end method

.method a([Ljava/lang/String;)V
    .registers 10

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    if-eqz p1, :cond_7

    #@4
    array-length v2, p1

    #@5
    if-nez v2, :cond_8

    #@7
    :cond_7
    :goto_7
    return-void

    #@8
    :cond_8
    const-string v2, "Error opening database for deleteHits."

    #@a
    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/ca;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@d
    move-result-object v2

    #@e
    if-eqz v2, :cond_7

    #@10
    const-string v3, "HIT_ID in (%s)"

    #@12
    new-array v4, v1, [Ljava/lang/Object;

    #@14
    const-string v5, ","

    #@16
    array-length v6, p1

    #@17
    const-string v7, "?"

    #@19
    invoke-static {v6, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    #@1c
    move-result-object v6

    #@1d
    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    aput-object v5, v4, v0

    #@23
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    :try_start_27
    const-string v4, "gtm_hits"

    #@29
    invoke-virtual {v2, v4, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@2c
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ca;->ags:Lcom/google/android/gms/tagmanager/au;

    #@2e
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ca;->dt()I

    #@31
    move-result v3

    #@32
    if-nez v3, :cond_35

    #@34
    move v0, v1

    #@35
    :cond_35
    invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/au;->s(Z)V
    :try_end_38
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_38} :catch_39

    #@38
    goto :goto_7

    #@39
    :catch_39
    move-exception v0

    #@3a
    const-string v0, "Error deleting hits"

    #@3c
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@3f
    goto :goto_7
.end method

.method public cq()V
    .registers 3

    #@0
    const-string v0, "GTM Dispatch running..."

    #@2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->agr:Lcom/google/android/gms/tagmanager/ab;

    #@7
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ab;->cC()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_e

    #@d
    :cond_d
    :goto_d
    return-void

    #@e
    :cond_e
    const/16 v0, 0x28

    #@10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/ca;->B(I)Ljava/util/List;

    #@13
    move-result-object v0

    #@14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_26

    #@1a
    const-string v0, "...nothing to dispatch"

    #@1c
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@1f
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->ags:Lcom/google/android/gms/tagmanager/au;

    #@21
    const/4 v1, 0x1

    #@22
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/au;->s(Z)V

    #@25
    goto :goto_d

    #@26
    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/ca;->agr:Lcom/google/android/gms/tagmanager/ab;

    #@28
    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/ab;->g(Ljava/util/List;)V

    #@2b
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ca;->mb()I

    #@2e
    move-result v0

    #@2f
    if-lez v0, :cond_d

    #@31
    invoke-static {}, Lcom/google/android/gms/tagmanager/cx;->mQ()Lcom/google/android/gms/tagmanager/cx;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cx;->cq()V

    #@38
    goto :goto_d
.end method

.method ds()I
    .registers 11

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ca;->aef:Lcom/google/android/gms/internal/ij;

    #@4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ij;->currentTimeMillis()J

    #@7
    move-result-wide v4

    #@8
    iget-wide v6, p0, Lcom/google/android/gms/tagmanager/ca;->wU:J

    #@a
    const-wide/32 v8, 0x5265c00

    #@d
    add-long/2addr v6, v8

    #@e
    cmp-long v0, v4, v6

    #@10
    if-gtz v0, :cond_14

    #@12
    :cond_12
    move v0, v1

    #@13
    :goto_13
    return v0

    #@14
    :cond_14
    iput-wide v4, p0, Lcom/google/android/gms/tagmanager/ca;->wU:J

    #@16
    const-string v0, "Error opening database for deleteStaleHits."

    #@18
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ca;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_12

    #@1e
    const-string v3, "gtm_hits"

    #@20
    const-string v4, "HIT_TIME < ?"

    #@22
    new-array v5, v2, [Ljava/lang/String;

    #@24
    iget-object v6, p0, Lcom/google/android/gms/tagmanager/ca;->aef:Lcom/google/android/gms/internal/ij;

    #@26
    invoke-interface {v6}, Lcom/google/android/gms/internal/ij;->currentTimeMillis()J

    #@29
    move-result-wide v6

    #@2a
    const-wide v8, 0x9a7ec800L

    #@2f
    sub-long/2addr v6, v8

    #@30
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    aput-object v6, v5, v1

    #@36
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@39
    move-result v0

    #@3a
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/ca;->ags:Lcom/google/android/gms/tagmanager/au;

    #@3c
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ca;->dt()I

    #@3f
    move-result v4

    #@40
    if-nez v4, :cond_43

    #@42
    move v1, v2

    #@43
    :cond_43
    invoke-interface {v3, v1}, Lcom/google/android/gms/tagmanager/au;->s(Z)V

    #@46
    goto :goto_13
.end method

.method dt()I
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    const-string v2, "Error opening database for getNumStoredHits."

    #@4
    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/ca;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

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
    const-string v3, "SELECT COUNT(*) from gtm_hits"

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
    const-string v2, "Error getting numStoredHits"

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

.method public f(JLjava/lang/String;)V
    .registers 5

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/ca;->ds()I

    #@3
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/ca;->dr()V

    #@6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/ca;->g(JLjava/lang/String;)V

    #@9
    return-void
.end method

.method mb()I
    .registers 11

    #@0
    const/4 v8, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    const-string v0, "Error opening database for getNumStoredHits."

    #@4
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/ca;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_c

    #@a
    move v0, v8

    #@b
    :cond_b
    :goto_b
    return v0

    #@c
    :cond_c
    :try_start_c
    const-string v1, "gtm_hits"

    #@e
    const/4 v2, 0x2

    #@f
    new-array v2, v2, [Ljava/lang/String;

    #@11
    const/4 v3, 0x0

    #@12
    const-string v4, "hit_id"

    #@14
    aput-object v4, v2, v3

    #@16
    const/4 v3, 0x1

    #@17
    const-string v4, "hit_first_send_time"

    #@19
    aput-object v4, v2, v3

    #@1b
    const-string v3, "hit_first_send_time=0"

    #@1d
    const/4 v4, 0x0

    #@1e
    const/4 v5, 0x0

    #@1f
    const/4 v6, 0x0

    #@20
    const/4 v7, 0x0

    #@21
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_24} :catch_2f
    .catchall {:try_start_c .. :try_end_24} :catchall_3d

    #@24
    move-result-object v1

    #@25
    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_28} :catch_47
    .catchall {:try_start_25 .. :try_end_28} :catchall_49

    #@28
    move-result v0

    #@29
    if-eqz v1, :cond_b

    #@2b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@2e
    goto :goto_b

    #@2f
    :catch_2f
    move-exception v0

    #@30
    move-object v1, v9

    #@31
    :goto_31
    :try_start_31
    const-string v0, "Error getting num untried hits"

    #@33
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_4b

    #@36
    if-eqz v1, :cond_45

    #@38
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@3b
    move v0, v8

    #@3c
    goto :goto_b

    #@3d
    :catchall_3d
    move-exception v0

    #@3e
    move-object v1, v9

    #@3f
    :goto_3f
    if-eqz v1, :cond_44

    #@41
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    #@44
    :cond_44
    throw v0

    #@45
    :cond_45
    move v0, v8

    #@46
    goto :goto_b

    #@47
    :catch_47
    move-exception v0

    #@48
    goto :goto_31

    #@49
    :catchall_49
    move-exception v0

    #@4a
    goto :goto_3f

    #@4b
    :catchall_4b
    move-exception v0

    #@4c
    goto :goto_3f
.end method
