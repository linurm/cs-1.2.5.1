.class Lcom/apportable/LibraryManager$LibraryInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/LibraryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LibraryInfo"
.end annotation


# instance fields
.field public apkEntry:Ljava/util/zip/ZipEntry;

.field public fileName:Ljava/lang/String;

.field public isCompressed:Z

.field public isStandard:Z

.field public needsExtraction:Z

.field public outPath:Ljava/io/File;

.field public patchPath:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/apportable/LibraryManager$1;)V
    .registers 2

    #@0
    invoke-direct {p0}, Lcom/apportable/LibraryManager$LibraryInfo;-><init>()V

    #@3
    return-void
.end method
