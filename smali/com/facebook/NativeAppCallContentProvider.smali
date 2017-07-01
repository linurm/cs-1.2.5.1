.class public Lcom/facebook/NativeAppCallContentProvider;
.super Landroid/content/ContentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_URL_BASE:Ljava/lang/String; = "content://com.facebook.app.NativeAppCallContentProvider"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final dataSource:Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/NativeAppCallContentProvider;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/NativeAppCallContentProvider;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    #@0
    new-instance v0, Lcom/facebook/NativeAppCallAttachmentStore;

    #@2
    invoke-direct {v0}, Lcom/facebook/NativeAppCallAttachmentStore;-><init>()V

    #@5
    invoke-direct {p0, v0}, Lcom/facebook/NativeAppCallContentProvider;-><init>(Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;)V

    #@8
    return-void
.end method

.method constructor <init>(Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;)V
    .registers 2

    #@0
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    #@3
    iput-object p1, p0, Lcom/facebook/NativeAppCallContentProvider;->dataSource:Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;

    #@5
    return-void
.end method

.method public static getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    #@0
    const-string v0, "%s%s/%s/%s"

    #@2
    const/4 v1, 0x4

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    const-string v3, "content://com.facebook.app.NativeAppCallContentProvider"

    #@8
    aput-object v3, v1, v2

    #@a
    const/4 v2, 0x1

    #@b
    aput-object p0, v1, v2

    #@d
    const/4 v2, 0x2

    #@e
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    aput-object v3, v1, v2

    #@14
    const/4 v2, 0x3

    #@15
    aput-object p2, v1, v2

    #@17
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    invoke-virtual {p0, p1}, Lcom/facebook/NativeAppCallContentProvider;->parseCallIdAndAttachmentName(Landroid/net/Uri;)Landroid/util/Pair;

    #@3
    move-result-object v1

    #@4
    if-nez v1, :cond_c

    #@6
    new-instance v0, Ljava/io/FileNotFoundException;

    #@8
    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    #@b
    throw v0

    #@c
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/facebook/NativeAppCallContentProvider;->dataSource:Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;

    #@e
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@10
    check-cast v0, Ljava/util/UUID;

    #@12
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@14
    check-cast v1, Ljava/lang/String;

    #@16
    invoke-interface {v2, v0, v1}, Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;->openAttachment(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;

    #@19
    move-result-object v0

    #@1a
    const/high16 v1, 0x10000000

    #@1c
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1f} :catch_21

    #@1f
    move-result-object v0

    #@20
    return-object v0

    #@21
    :catch_21
    move-exception v0

    #@22
    sget-object v1, Lcom/facebook/NativeAppCallContentProvider;->TAG:Ljava/lang/String;

    #@24
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string v3, "Got unexpected exception:"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    throw v0
.end method

.method parseCallIdAndAttachmentName(Landroid/net/Uri;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v2, 0x1

    #@1
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    const/4 v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    const-string v1, "/"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_1f

    #@f
    move-result-object v0

    #@10
    const/4 v1, 0x0

    #@11
    aget-object v1, v0, v1

    #@13
    aget-object v2, v0, v2

    #@15
    :try_start_15
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    #@18
    move-result-object v1

    #@19
    new-instance v0, Landroid/util/Pair;

    #@1b
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1e} :catch_1f

    #@1e
    :goto_1e
    return-object v0

    #@1f
    :catch_1f
    move-exception v0

    #@20
    const/4 v0, 0x0

    #@21
    goto :goto_1e
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    #@0
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method
