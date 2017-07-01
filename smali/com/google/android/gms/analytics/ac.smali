.class Lcom/google/android/gms/analytics/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/ac$a;
    }
.end annotation


# static fields
.field private static final wP:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final uc:Lcom/google/android/gms/analytics/e;

.field private uu:Lcom/google/android/gms/analytics/i;

.field private final wQ:Lcom/google/android/gms/analytics/ac$a;

.field private volatile wR:Lcom/google/android/gms/analytics/n;

.field private final wS:Ljava/lang/String;

.field private wT:Lcom/google/android/gms/analytics/ab;

.field private wU:J

.field private final wV:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    #@0
    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' TEXT NOT NULL, \'%s\' INTEGER);"

    #@2
    const/4 v1, 0x6

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    const-string v3, "hits2"

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
    const-string v3, "hit_string"

    #@1c
    aput-object v3, v1, v2

    #@1e
    const/4 v2, 0x5

    #@1f
    const-string v3, "hit_app_id"

    #@21
    aput-object v3, v1, v2

    #@23
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    sput-object v0, Lcom/google/android/gms/analytics/ac;->wP:Ljava/lang/String;

    #@29
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/e;Landroid/content/Context;)V
    .registers 5

    #@0
    const-string v0, "google_analytics_v4.db"

    #@2
    const/16 v1, 0x7d0

    #@4
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/analytics/ac;-><init>(Lcom/google/android/gms/analytics/e;Landroid/content/Context;Ljava/lang/String;I)V

    #@7
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/analytics/e;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/gms/analytics/ac;->mContext:Landroid/content/Context;

    #@9
    iput-object p3, p0, Lcom/google/android/gms/analytics/ac;->wS:Ljava/lang/String;

    #@b
    iput-object p1, p0, Lcom/google/android/gms/analytics/ac;->uc:Lcom/google/android/gms/analytics/e;

    #@d
    new-instance v0, Lcom/google/android/gms/analytics/ac$1;

    #@f
    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/ac$1;-><init>(Lcom/google/android/gms/analytics/ac;)V

    #@12
    iput-object v0, p0, Lcom/google/android/gms/analytics/ac;->uu:Lcom/google/android/gms/analytics/i;

    #@14
    new-instance v0, Lcom/google/android/gms/analytics/ac$a;

    #@16
    iget-object v1, p0, Lcom/google/android/gms/analytics/ac;->mContext:Landroid/content/Context;

    #@18
    iget-object v2, p0, Lcom/google/android/gms/analytics/ac;->wS:Ljava/lang/String;

    #@1a
    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/analytics/ac$a;-><init>(Lcom/google/android/gms/analytics/ac;Landroid/content/Context;Ljava/lang/String;)V

    #@1d
    iput-object v0, p0, Lcom/google/android/gms/analytics/ac;->wQ:Lcom/google/android/gms/analytics/ac$a;

    #@1f
    new-instance v0, Lcom/google/android/gms/analytics/ah;

    #@21
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    #@23
    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    #@26
    iget-object v2, p0, Lcom/google/android/gms/analytics/ac;->mContext:Landroid/content/Context;

    #@28
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/ah;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;)V

    #@2b
    iput-object v0, p0, Lcom/google/android/gms/analytics/ac;->wR:Lcom/google/android/gms/analytics/n;

    #@2d
    const-wide/16 v0, 0x0

    #@2f
    iput-wide v0, p0, Lcom/google/android/gms/analytics/ac;->wU:J

    #@31
    iput p4, p0, Lcom/google/android/gms/analytics/ac;->wV:I

    #@33
    return-void
.end method

.method private S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    #@0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->wQ:Lcom/google/android/gms/analytics/ac$a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ac$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
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
    invoke-static {p1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@b
    const/4 v0, 0x0

    #@c
    goto :goto_6
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/ac;)Lcom/google/android/gms/analytics/i;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->uu:Lcom/google/android/gms/analytics/i;

    #@2
    return-object v0
.end method

.method private a(Ljava/util/Map;JLjava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    const-wide/16 v2, 0x0

    #@2
    const-string v0, "Error opening database for putHit"

    #@4
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/ac;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@7
    move-result-object v4

    #@8
    if-nez v4, :cond_b

    #@a
    :goto_a
    return-void

    #@b
    :cond_b
    new-instance v5, Landroid/content/ContentValues;

    #@d
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    #@10
    const-string v0, "hit_string"

    #@12
    invoke-static {p1}, Lcom/google/android/gms/analytics/ac;->v(Ljava/util/Map;)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    const-string v0, "hit_time"

    #@1b
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@22
    const-string v0, "AppUID"

    #@24
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_6b

    #@2a
    :try_start_2a
    const-string v0, "AppUID"

    #@2c
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Ljava/lang/String;

    #@32
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_35} :catch_4f

    #@35
    move-result-wide v0

    #@36
    :goto_36
    const-string v2, "hit_app_id"

    #@38
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@3f
    if-nez p4, :cond_43

    #@41
    const-string p4, "http://www.google-analytics.com/collect"

    #@43
    :cond_43
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@46
    move-result v0

    #@47
    if-nez v0, :cond_52

    #@49
    const-string v0, "Empty path: not sending hit"

    #@4b
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@4e
    goto :goto_a

    #@4f
    :catch_4f
    move-exception v0

    #@50
    move-wide v0, v2

    #@51
    goto :goto_36

    #@52
    :cond_52
    const-string v0, "hit_url"

    #@54
    invoke-virtual {v5, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@57
    :try_start_57
    const-string v0, "hits2"

    #@59
    const/4 v1, 0x0

    #@5a
    invoke-virtual {v4, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    #@5d
    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->uc:Lcom/google/android/gms/analytics/e;

    #@5f
    const/4 v1, 0x0

    #@60
    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/e;->s(Z)V
    :try_end_63
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_57 .. :try_end_63} :catch_64

    #@63
    goto :goto_a

    #@64
    :catch_64
    move-exception v0

    #@65
    const-string v0, "Error storing hit"

    #@67
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@6a
    goto :goto_a

    #@6b
    :cond_6b
    move-wide v0, v2

    #@6c
    goto :goto_36
.end method

.method private a(Ljava/util/Map;Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/fd;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "&_v"

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    if-eqz p2, :cond_2c

    #@9
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_2c

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/google/android/gms/internal/fd;

    #@19
    const-string v3, "appendVersion"

    #@1b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fd;->getId()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_d

    #@25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/fd;->getValue()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    :cond_2c
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/ac;)Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->wS:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/ac;)Landroid/content/Context;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method private dr()V
    .registers 4

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ac;->dt()I

    #@3
    move-result v0

    #@4
    iget v1, p0, Lcom/google/android/gms/analytics/ac;->wV:I

    #@6
    sub-int/2addr v0, v1

    #@7
    add-int/lit8 v0, v0, 0x1

    #@9
    if-lez v0, :cond_3b

    #@b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/ac;->A(I)Ljava/util/List;

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
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

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
    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/ac;->a([Ljava/lang/String;)V

    #@3b
    :cond_3b
    return-void
.end method

.method static synthetic du()Ljava/lang/String;
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/analytics/ac;->wP:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static v(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@c
    move-result-object v0

    #@d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v3

    #@11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_4c

    #@17
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/util/Map$Entry;

    #@1d
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Ljava/lang/String;

    #@28
    invoke-static {v1}, Lcom/google/android/gms/analytics/y;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    const-string v4, "="

    #@32
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Ljava/lang/String;

    #@3c
    invoke-static {v0}, Lcom/google/android/gms/analytics/y;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4b
    goto :goto_11

    #@4c
    :cond_4c
    const-string v0, "&"

    #@4e
    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    return-object v0
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
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@d
    :cond_d
    :goto_d
    return-object v10

    #@e
    :cond_e
    const-string v0, "Error opening database for peekHitIds."

    #@10
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/ac;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

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
    const-string v1, "hits2"

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
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
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
            "Lcom/google/android/gms/analytics/x;",
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
    invoke-direct {v0, v2}, Lcom/google/android/gms/analytics/ac;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

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
    const-string v3, "hits2"

    #@28
    const/4 v4, 0x2

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
    const/4 v5, 0x0

    #@36
    const/4 v6, 0x0

    #@37
    const/4 v7, 0x0

    #@38
    const/4 v8, 0x0

    #@39
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_3c} :catch_d3
    .catchall {:try_start_14 .. :try_end_3c} :catchall_189

    #@3c
    move-result-object v13

    #@3d
    :try_start_3d
    new-instance v12, Ljava/util/ArrayList;

    #@3f
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3d .. :try_end_42} :catch_172
    .catchall {:try_start_3d .. :try_end_42} :catchall_181

    #@42
    :try_start_42
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    #@45
    move-result v3

    #@46
    if-eqz v3, :cond_61

    #@48
    :cond_48
    new-instance v4, Lcom/google/android/gms/analytics/x;

    #@4a
    const/4 v5, 0x0

    #@4b
    const/4 v3, 0x0

    #@4c
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    #@4f
    move-result-wide v6

    #@50
    const/4 v3, 0x1

    #@51
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    #@54
    move-result-wide v8

    #@55
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/analytics/x;-><init>(Ljava/lang/String;JJ)V

    #@58
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5b
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_42 .. :try_end_5e} :catch_177
    .catchall {:try_start_42 .. :try_end_5e} :catchall_181

    #@5e
    move-result v3

    #@5f
    if-nez v3, :cond_48

    #@61
    :cond_61
    if-eqz v13, :cond_66

    #@63
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@66
    :cond_66
    :try_start_66
    const-string v3, "%s ASC"

    #@68
    const/4 v4, 0x1

    #@69
    new-array v4, v4, [Ljava/lang/Object;

    #@6b
    const/4 v5, 0x0

    #@6c
    const-string v6, "hit_id"

    #@6e
    aput-object v6, v4, v5

    #@70
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@73
    move-result-object v9

    #@74
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@77
    move-result-object v10

    #@78
    const-string v3, "hits2"

    #@7a
    const/4 v4, 0x3

    #@7b
    new-array v4, v4, [Ljava/lang/String;

    #@7d
    const/4 v5, 0x0

    #@7e
    const-string v6, "hit_id"

    #@80
    aput-object v6, v4, v5

    #@82
    const/4 v5, 0x1

    #@83
    const-string v6, "hit_string"

    #@85
    aput-object v6, v4, v5

    #@87
    const/4 v5, 0x2

    #@88
    const-string v6, "hit_url"

    #@8a
    aput-object v6, v4, v5

    #@8c
    const/4 v5, 0x0

    #@8d
    const/4 v6, 0x0

    #@8e
    const/4 v7, 0x0

    #@8f
    const/4 v8, 0x0

    #@90
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_93
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_66 .. :try_end_93} :catch_16f
    .catchall {:try_start_66 .. :try_end_93} :catchall_186

    #@93
    move-result-object v3

    #@94
    :try_start_94
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    #@97
    move-result v2

    #@98
    if-eqz v2, :cond_cb

    #@9a
    move v4, v14

    #@9b
    :goto_9b
    move-object v0, v3

    #@9c
    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    #@9e
    move-object v2, v0

    #@9f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    #@a2
    move-result-object v2

    #@a3
    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    #@a6
    move-result v2

    #@a7
    if-lez v2, :cond_fe

    #@a9
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@ac
    move-result-object v2

    #@ad
    check-cast v2, Lcom/google/android/gms/analytics/x;

    #@af
    const/4 v5, 0x1

    #@b0
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@b3
    move-result-object v5

    #@b4
    invoke-virtual {v2, v5}, Lcom/google/android/gms/analytics/x;->Q(Ljava/lang/String;)V

    #@b7
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@ba
    move-result-object v2

    #@bb
    check-cast v2, Lcom/google/android/gms/analytics/x;

    #@bd
    const/4 v5, 0x2

    #@be
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@c1
    move-result-object v5

    #@c2
    invoke-virtual {v2, v5}, Lcom/google/android/gms/analytics/x;->R(Ljava/lang/String;)V

    #@c5
    :goto_c5
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_94 .. :try_end_c8} :catch_11c
    .catchall {:try_start_94 .. :try_end_c8} :catchall_184

    #@c8
    move-result v2

    #@c9
    if-nez v2, :cond_17c

    #@cb
    :cond_cb
    if-eqz v3, :cond_d0

    #@cd
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    #@d0
    :cond_d0
    move-object v2, v12

    #@d1
    goto/16 :goto_13

    #@d3
    :catch_d3
    move-exception v2

    #@d4
    move-object v3, v2

    #@d5
    move-object v2, v11

    #@d6
    :goto_d6
    :try_start_d6
    new-instance v4, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string v5, "Error in peekHits fetching hitIds: "

    #@dd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v4

    #@e1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    #@e4
    move-result-object v3

    #@e5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v3

    #@e9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v3

    #@ed
    invoke-static {v3}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
    :try_end_f0
    .catchall {:try_start_d6 .. :try_end_f0} :catchall_f7

    #@f0
    if-eqz v13, :cond_13

    #@f2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@f5
    goto/16 :goto_13

    #@f7
    :catchall_f7
    move-exception v2

    #@f8
    :goto_f8
    if-eqz v13, :cond_fd

    #@fa
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    #@fd
    :cond_fd
    throw v2

    #@fe
    :cond_fe
    :try_start_fe
    const-string v5, "HitString for hitId %d too large.  Hit will be deleted."

    #@100
    const/4 v2, 0x1

    #@101
    new-array v6, v2, [Ljava/lang/Object;

    #@103
    const/4 v7, 0x0

    #@104
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@107
    move-result-object v2

    #@108
    check-cast v2, Lcom/google/android/gms/analytics/x;

    #@10a
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/x;->dl()J

    #@10d
    move-result-wide v8

    #@10e
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@111
    move-result-object v2

    #@112
    aput-object v2, v6, v7

    #@114
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@117
    move-result-object v2

    #@118
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
    :try_end_11b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_fe .. :try_end_11b} :catch_11c
    .catchall {:try_start_fe .. :try_end_11b} :catchall_184

    #@11b
    goto :goto_c5

    #@11c
    :catch_11c
    move-exception v2

    #@11d
    move-object v4, v3

    #@11e
    :goto_11e
    :try_start_11e
    new-instance v3, Ljava/lang/StringBuilder;

    #@120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string v5, "Error in peekHits fetching hitString: "

    #@125
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v3

    #@129
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    #@12c
    move-result-object v2

    #@12d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@130
    move-result-object v2

    #@131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@134
    move-result-object v2

    #@135
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@138
    new-instance v3, Ljava/util/ArrayList;

    #@13a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@13d
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@140
    move-result-object v6

    #@141
    move v5, v14

    #@142
    :goto_142
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@145
    move-result v2

    #@146
    if-eqz v2, :cond_15a

    #@148
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14b
    move-result-object v2

    #@14c
    check-cast v2, Lcom/google/android/gms/analytics/x;

    #@14e
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/x;->dk()Ljava/lang/String;

    #@151
    move-result-object v7

    #@152
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_155
    .catchall {:try_start_11e .. :try_end_155} :catchall_167

    #@155
    move-result v7

    #@156
    if-eqz v7, :cond_163

    #@158
    if-eqz v5, :cond_162

    #@15a
    :cond_15a
    if-eqz v4, :cond_15f

    #@15c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    #@15f
    :cond_15f
    move-object v2, v3

    #@160
    goto/16 :goto_13

    #@162
    :cond_162
    move v5, v15

    #@163
    :cond_163
    :try_start_163
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_166
    .catchall {:try_start_163 .. :try_end_166} :catchall_167

    #@166
    goto :goto_142

    #@167
    :catchall_167
    move-exception v2

    #@168
    :goto_168
    move-object v3, v4

    #@169
    :goto_169
    if-eqz v3, :cond_16e

    #@16b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    #@16e
    :cond_16e
    throw v2

    #@16f
    :catch_16f
    move-exception v2

    #@170
    move-object v4, v13

    #@171
    goto :goto_11e

    #@172
    :catch_172
    move-exception v2

    #@173
    move-object v3, v2

    #@174
    move-object v2, v11

    #@175
    goto/16 :goto_d6

    #@177
    :catch_177
    move-exception v2

    #@178
    move-object v3, v2

    #@179
    move-object v2, v12

    #@17a
    goto/16 :goto_d6

    #@17c
    :cond_17c
    add-int/lit8 v2, v4, 0x1

    #@17e
    move v4, v2

    #@17f
    goto/16 :goto_9b

    #@181
    :catchall_181
    move-exception v2

    #@182
    goto/16 :goto_f8

    #@184
    :catchall_184
    move-exception v2

    #@185
    goto :goto_169

    #@186
    :catchall_186
    move-exception v2

    #@187
    move-object v4, v13

    #@188
    goto :goto_168

    #@189
    :catchall_189
    move-exception v2

    #@18a
    goto/16 :goto_f8
.end method

.method public a(Ljava/util/Map;JLjava/lang/String;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/internal/fd;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ac;->ds()I

    #@3
    invoke-direct {p0}, Lcom/google/android/gms/analytics/ac;->dr()V

    #@6
    invoke-direct {p0, p1, p5}, Lcom/google/android/gms/analytics/ac;->a(Ljava/util/Map;Ljava/util/Collection;)V

    #@9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/analytics/ac;->a(Ljava/util/Map;JLjava/lang/String;)V

    #@c
    return-void
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
    if-nez v2, :cond_d

    #@7
    :cond_7
    const-string v0, "Empty hitIds passed to deleteHits."

    #@9
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@c
    :cond_c
    :goto_c
    return-void

    #@d
    :cond_d
    const-string v2, "Error opening database for deleteHits."

    #@f
    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/ac;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@12
    move-result-object v2

    #@13
    if-eqz v2, :cond_c

    #@15
    const-string v3, "HIT_ID in (%s)"

    #@17
    new-array v4, v1, [Ljava/lang/Object;

    #@19
    const-string v5, ","

    #@1b
    array-length v6, p1

    #@1c
    const-string v7, "?"

    #@1e
    invoke-static {v6, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    #@21
    move-result-object v6

    #@22
    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    aput-object v5, v4, v0

    #@28
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    :try_start_2c
    const-string v4, "hits2"

    #@2e
    invoke-virtual {v2, v4, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@31
    iget-object v2, p0, Lcom/google/android/gms/analytics/ac;->uc:Lcom/google/android/gms/analytics/e;

    #@33
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ac;->dt()I

    #@36
    move-result v3

    #@37
    if-nez v3, :cond_3a

    #@39
    move v0, v1

    #@3a
    :cond_3a
    invoke-interface {v2, v0}, Lcom/google/android/gms/analytics/e;->s(Z)V
    :try_end_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_3d} :catch_3e

    #@3d
    goto :goto_c

    #@3e
    :catch_3e
    move-exception v0

    #@3f
    new-instance v0, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string v1, "Error deleting hits "

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v0

    #@52
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@55
    goto :goto_c
.end method

.method b(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/analytics/x;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    if-eqz p1, :cond_8

    #@2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_e

    #@8
    :cond_8
    const-string v0, "Empty/Null collection passed to deleteHits."

    #@a
    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@11
    move-result v0

    #@12
    new-array v2, v0, [Ljava/lang/String;

    #@14
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v3

    #@18
    const/4 v0, 0x0

    #@19
    move v1, v0

    #@1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_34

    #@20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/google/android/gms/analytics/x;

    #@26
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/x;->dl()J

    #@29
    move-result-wide v4

    #@2a
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    aput-object v0, v2, v1

    #@30
    add-int/lit8 v0, v1, 0x1

    #@32
    move v1, v0

    #@33
    goto :goto_1a

    #@34
    :cond_34
    invoke-virtual {p0, v2}, Lcom/google/android/gms/analytics/ac;->a([Ljava/lang/String;)V

    #@37
    goto :goto_d
.end method

.method public cq()V
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    const-string v2, "Dispatch running..."

    #@4
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@7
    iget-object v2, p0, Lcom/google/android/gms/analytics/ac;->wR:Lcom/google/android/gms/analytics/n;

    #@9
    invoke-interface {v2}, Lcom/google/android/gms/analytics/n;->cC()Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_10

    #@f
    :goto_f
    return-void

    #@10
    :cond_10
    const/16 v2, 0x28

    #@12
    invoke-virtual {p0, v2}, Lcom/google/android/gms/analytics/ac;->B(I)Ljava/util/List;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_27

    #@1c
    const-string v1, "...nothing to dispatch"

    #@1e
    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@21
    iget-object v1, p0, Lcom/google/android/gms/analytics/ac;->uc:Lcom/google/android/gms/analytics/e;

    #@23
    invoke-interface {v1, v0}, Lcom/google/android/gms/analytics/e;->s(Z)V

    #@26
    goto :goto_f

    #@27
    :cond_27
    iget-object v3, p0, Lcom/google/android/gms/analytics/ac;->wT:Lcom/google/android/gms/analytics/ab;

    #@29
    if-nez v3, :cond_34

    #@2b
    new-instance v3, Lcom/google/android/gms/analytics/ab;

    #@2d
    const-string v4, "_t=dispatch&_v=ma4.0.2"

    #@2f
    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/analytics/ab;-><init>(Ljava/lang/String;Z)V

    #@32
    iput-object v3, p0, Lcom/google/android/gms/analytics/ac;->wT:Lcom/google/android/gms/analytics/ab;

    #@34
    :cond_34
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ac;->dt()I

    #@37
    move-result v3

    #@38
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@3b
    move-result v4

    #@3c
    if-gt v3, v4, :cond_96

    #@3e
    :goto_3e
    iget-object v3, p0, Lcom/google/android/gms/analytics/ac;->wR:Lcom/google/android/gms/analytics/n;

    #@40
    iget-object v4, p0, Lcom/google/android/gms/analytics/ac;->wT:Lcom/google/android/gms/analytics/ab;

    #@42
    invoke-interface {v3, v2, v4, v0}, Lcom/google/android/gms/analytics/n;->a(Ljava/util/List;Lcom/google/android/gms/analytics/ab;Z)I

    #@45
    move-result v0

    #@46
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string v4, "sent "

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    const-string v4, " of "

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@5e
    move-result v4

    #@5f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v3

    #@63
    const-string v4, " hits"

    #@65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v3

    #@69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v3

    #@6d
    invoke-static {v3}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    #@70
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@73
    move-result v3

    #@74
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    #@77
    move-result v3

    #@78
    invoke-interface {v2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/ac;->b(Ljava/util/Collection;)V

    #@7f
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@82
    move-result v1

    #@83
    if-ne v0, v1, :cond_98

    #@85
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ac;->dt()I

    #@88
    move-result v0

    #@89
    if-lez v0, :cond_98

    #@8b
    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->mContext:Landroid/content/Context;

    #@8d
    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    #@90
    move-result-object v0

    #@91
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    #@94
    goto/16 :goto_f

    #@96
    :cond_96
    move v0, v1

    #@97
    goto :goto_3e

    #@98
    :cond_98
    const/4 v0, 0x0

    #@99
    iput-object v0, p0, Lcom/google/android/gms/analytics/ac;->wT:Lcom/google/android/gms/analytics/ab;

    #@9b
    goto/16 :goto_f
.end method

.method public cr()Lcom/google/android/gms/analytics/n;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->wR:Lcom/google/android/gms/analytics/n;

    #@2
    return-object v0
.end method

.method ds()I
    .registers 11

    #@0
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    iget-object v0, p0, Lcom/google/android/gms/analytics/ac;->uu:Lcom/google/android/gms/analytics/i;

    #@4
    invoke-interface {v0}, Lcom/google/android/gms/analytics/i;->currentTimeMillis()J

    #@7
    move-result-wide v4

    #@8
    iget-wide v6, p0, Lcom/google/android/gms/analytics/ac;->wU:J

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
    iput-wide v4, p0, Lcom/google/android/gms/analytics/ac;->wU:J

    #@16
    const-string v0, "Error opening database for deleteStaleHits."

    #@18
    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/ac;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_12

    #@1e
    const-string v3, "hits2"

    #@20
    const-string v4, "HIT_TIME < ?"

    #@22
    new-array v5, v2, [Ljava/lang/String;

    #@24
    iget-object v6, p0, Lcom/google/android/gms/analytics/ac;->uu:Lcom/google/android/gms/analytics/i;

    #@26
    invoke-interface {v6}, Lcom/google/android/gms/analytics/i;->currentTimeMillis()J

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
    iget-object v3, p0, Lcom/google/android/gms/analytics/ac;->uc:Lcom/google/android/gms/analytics/e;

    #@3c
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ac;->dt()I

    #@3f
    move-result v4

    #@40
    if-nez v4, :cond_43

    #@42
    move v1, v2

    #@43
    :cond_43
    invoke-interface {v3, v1}, Lcom/google/android/gms/analytics/e;->s(Z)V

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
    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/ac;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

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
    const-string v3, "SELECT COUNT(*) from hits2"

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
    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V
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

.method public l(J)V
    .registers 10

    #@0
    const/4 v6, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    const-string v2, "Error opening database for clearHits"

    #@5
    invoke-direct {p0, v2}, Lcom/google/android/gms/analytics/ac;->S(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    #@8
    move-result-object v2

    #@9
    if-eqz v2, :cond_22

    #@b
    const-wide/16 v4, 0x0

    #@d
    cmp-long v3, p1, v4

    #@f
    if-nez v3, :cond_23

    #@11
    const-string v3, "hits2"

    #@13
    invoke-virtual {v2, v3, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@16
    :goto_16
    iget-object v2, p0, Lcom/google/android/gms/analytics/ac;->uc:Lcom/google/android/gms/analytics/e;

    #@18
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/ac;->dt()I

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_1f

    #@1e
    move v0, v1

    #@1f
    :cond_1f
    invoke-interface {v2, v0}, Lcom/google/android/gms/analytics/e;->s(Z)V

    #@22
    :cond_22
    return-void

    #@23
    :cond_23
    const-string v3, "hits2"

    #@25
    const-string v4, "hit_app_id = ?"

    #@27
    new-array v5, v1, [Ljava/lang/String;

    #@29
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    #@30
    move-result-object v6

    #@31
    aput-object v6, v5, v0

    #@33
    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    #@36
    goto :goto_16
.end method
