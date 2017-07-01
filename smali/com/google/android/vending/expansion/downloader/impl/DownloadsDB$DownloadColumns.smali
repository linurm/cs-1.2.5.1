.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadColumns;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadColumns"
.end annotation


# static fields
.field public static final CONTROL:Ljava/lang/String; = "CONTROL"

.field public static final CURRENTBYTES:Ljava/lang/String; = "CURRENTBYTES"

.field public static final ETAG:Ljava/lang/String; = "ETAG"

.field public static final FILENAME:Ljava/lang/String; = "FN"

.field public static final INDEX:Ljava/lang/String; = "FILEIDX"

.field public static final LASTMOD:Ljava/lang/String; = "LASTMOD"

.field public static final NUM_FAILED:Ljava/lang/String; = "FAILCOUNT"

.field public static final REDIRECT_COUNT:Ljava/lang/String; = "REDIRECTCOUNT"

.field public static final RETRY_AFTER:Ljava/lang/String; = "RETRYAFTER"

.field public static final SCHEMA:[[Ljava/lang/String;

.field public static final STATUS:Ljava/lang/String; = "STATUS"

.field public static final TABLE_NAME:Ljava/lang/String; = "DownloadColumns"

.field public static final TOTALBYTES:Ljava/lang/String; = "TOTALBYTES"

.field public static final URI:Ljava/lang/String; = "URI"

.field public static final _ID:Ljava/lang/String; = "DownloadColumns._id"


# direct methods
.method static constructor <clinit>()V
    .registers 7

    #@0
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    const/16 v0, 0xd

    #@5
    new-array v0, v0, [[Ljava/lang/String;

    #@7
    new-array v1, v6, [Ljava/lang/String;

    #@9
    const-string v2, "_id"

    #@b
    aput-object v2, v1, v4

    #@d
    const-string v2, "INTEGER PRIMARY KEY"

    #@f
    aput-object v2, v1, v5

    #@11
    aput-object v1, v0, v4

    #@13
    new-array v1, v6, [Ljava/lang/String;

    #@15
    const-string v2, "FILEIDX"

    #@17
    aput-object v2, v1, v4

    #@19
    const-string v2, "INTEGER UNIQUE"

    #@1b
    aput-object v2, v1, v5

    #@1d
    aput-object v1, v0, v5

    #@1f
    new-array v1, v6, [Ljava/lang/String;

    #@21
    const-string v2, "URI"

    #@23
    aput-object v2, v1, v4

    #@25
    const-string v2, "TEXT"

    #@27
    aput-object v2, v1, v5

    #@29
    aput-object v1, v0, v6

    #@2b
    const/4 v1, 0x3

    #@2c
    new-array v2, v6, [Ljava/lang/String;

    #@2e
    const-string v3, "FN"

    #@30
    aput-object v3, v2, v4

    #@32
    const-string v3, "TEXT UNIQUE"

    #@34
    aput-object v3, v2, v5

    #@36
    aput-object v2, v0, v1

    #@38
    const/4 v1, 0x4

    #@39
    new-array v2, v6, [Ljava/lang/String;

    #@3b
    const-string v3, "ETAG"

    #@3d
    aput-object v3, v2, v4

    #@3f
    const-string v3, "TEXT"

    #@41
    aput-object v3, v2, v5

    #@43
    aput-object v2, v0, v1

    #@45
    const/4 v1, 0x5

    #@46
    new-array v2, v6, [Ljava/lang/String;

    #@48
    const-string v3, "TOTALBYTES"

    #@4a
    aput-object v3, v2, v4

    #@4c
    const-string v3, "INTEGER"

    #@4e
    aput-object v3, v2, v5

    #@50
    aput-object v2, v0, v1

    #@52
    const/4 v1, 0x6

    #@53
    new-array v2, v6, [Ljava/lang/String;

    #@55
    const-string v3, "CURRENTBYTES"

    #@57
    aput-object v3, v2, v4

    #@59
    const-string v3, "INTEGER"

    #@5b
    aput-object v3, v2, v5

    #@5d
    aput-object v2, v0, v1

    #@5f
    const/4 v1, 0x7

    #@60
    new-array v2, v6, [Ljava/lang/String;

    #@62
    const-string v3, "LASTMOD"

    #@64
    aput-object v3, v2, v4

    #@66
    const-string v3, "INTEGER"

    #@68
    aput-object v3, v2, v5

    #@6a
    aput-object v2, v0, v1

    #@6c
    const/16 v1, 0x8

    #@6e
    new-array v2, v6, [Ljava/lang/String;

    #@70
    const-string v3, "STATUS"

    #@72
    aput-object v3, v2, v4

    #@74
    const-string v3, "INTEGER"

    #@76
    aput-object v3, v2, v5

    #@78
    aput-object v2, v0, v1

    #@7a
    const/16 v1, 0x9

    #@7c
    new-array v2, v6, [Ljava/lang/String;

    #@7e
    const-string v3, "CONTROL"

    #@80
    aput-object v3, v2, v4

    #@82
    const-string v3, "INTEGER"

    #@84
    aput-object v3, v2, v5

    #@86
    aput-object v2, v0, v1

    #@88
    const/16 v1, 0xa

    #@8a
    new-array v2, v6, [Ljava/lang/String;

    #@8c
    const-string v3, "FAILCOUNT"

    #@8e
    aput-object v3, v2, v4

    #@90
    const-string v3, "INTEGER"

    #@92
    aput-object v3, v2, v5

    #@94
    aput-object v2, v0, v1

    #@96
    const/16 v1, 0xb

    #@98
    new-array v2, v6, [Ljava/lang/String;

    #@9a
    const-string v3, "RETRYAFTER"

    #@9c
    aput-object v3, v2, v4

    #@9e
    const-string v3, "INTEGER"

    #@a0
    aput-object v3, v2, v5

    #@a2
    aput-object v2, v0, v1

    #@a4
    const/16 v1, 0xc

    #@a6
    new-array v2, v6, [Ljava/lang/String;

    #@a8
    const-string v3, "REDIRECTCOUNT"

    #@aa
    aput-object v3, v2, v4

    #@ac
    const-string v3, "INTEGER"

    #@ae
    aput-object v3, v2, v5

    #@b0
    aput-object v2, v0, v1

    #@b2
    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$DownloadColumns;->SCHEMA:[[Ljava/lang/String;

    #@b4
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
