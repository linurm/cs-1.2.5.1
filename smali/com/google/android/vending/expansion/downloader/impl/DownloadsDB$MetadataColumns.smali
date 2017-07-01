.class public Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$MetadataColumns;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetadataColumns"
.end annotation


# static fields
.field public static final APKVERSION:Ljava/lang/String; = "APKVERSION"

.field public static final DOWNLOAD_STATUS:Ljava/lang/String; = "DOWNLOADSTATUS"

.field public static final FLAGS:Ljava/lang/String; = "DOWNLOADFLAGS"

.field public static final SCHEMA:[[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "MetadataColumns"

.field public static final _ID:Ljava/lang/String; = "MetadataColumns._id"


# direct methods
.method static constructor <clinit>()V
    .registers 6

    #@0
    const/4 v3, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v0, 0x4

    #@4
    new-array v0, v0, [[Ljava/lang/String;

    #@6
    new-array v1, v3, [Ljava/lang/String;

    #@8
    const-string v2, "_id"

    #@a
    aput-object v2, v1, v4

    #@c
    const-string v2, "INTEGER PRIMARY KEY"

    #@e
    aput-object v2, v1, v5

    #@10
    aput-object v1, v0, v4

    #@12
    new-array v1, v3, [Ljava/lang/String;

    #@14
    const-string v2, "APKVERSION"

    #@16
    aput-object v2, v1, v4

    #@18
    const-string v2, "INTEGER"

    #@1a
    aput-object v2, v1, v5

    #@1c
    aput-object v1, v0, v5

    #@1e
    new-array v1, v3, [Ljava/lang/String;

    #@20
    const-string v2, "DOWNLOADSTATUS"

    #@22
    aput-object v2, v1, v4

    #@24
    const-string v2, "INTEGER"

    #@26
    aput-object v2, v1, v5

    #@28
    aput-object v1, v0, v3

    #@2a
    const/4 v1, 0x3

    #@2b
    new-array v2, v3, [Ljava/lang/String;

    #@2d
    const-string v3, "DOWNLOADFLAGS"

    #@2f
    aput-object v3, v2, v4

    #@31
    const-string v3, "INTEGER"

    #@33
    aput-object v3, v2, v5

    #@35
    aput-object v2, v0, v1

    #@37
    sput-object v0, Lcom/google/android/vending/expansion/downloader/impl/DownloadsDB$MetadataColumns;->SCHEMA:[[Ljava/lang/String;

    #@39
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
