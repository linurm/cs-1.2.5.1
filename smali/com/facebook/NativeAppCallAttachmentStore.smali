.class public final Lcom/facebook/NativeAppCallAttachmentStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment;
    }
.end annotation


# static fields
.field static final ATTACHMENTS_DIR_NAME:Ljava/lang/String; = "com.facebook.NativeAppCallAttachmentStore.files"

.field private static final TAG:Ljava/lang/String;

.field private static attachmentsDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-class v0, Lcom/facebook/NativeAppCallAttachmentStore;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/facebook/NativeAppCallAttachmentStore;->TAG:Ljava/lang/String;

    #@8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private addAttachments(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    invoke-interface {p3}, Ljava/util/Map;->size()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    :cond_6
    return-void

    #@7
    :cond_7
    sget-object v0, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    #@9
    if-nez v0, :cond_e

    #@b
    invoke-virtual {p0, p1}, Lcom/facebook/NativeAppCallAttachmentStore;->cleanupAllAttachments(Landroid/content/Context;)V

    #@e
    :cond_e
    invoke-virtual {p0, p1}, Lcom/facebook/NativeAppCallAttachmentStore;->ensureAttachmentsDirectoryExists(Landroid/content/Context;)Ljava/io/File;

    #@11
    new-instance v2, Ljava/util/ArrayList;

    #@13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@16
    :try_start_16
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v3

    #@1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_6

    #@24
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/util/Map$Entry;

    #@2a
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Ljava/lang/String;

    #@30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    const/4 v4, 0x1

    #@35
    invoke-virtual {p0, p2, v1, v4}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;

    #@38
    move-result-object v1

    #@39
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3c
    invoke-interface {p4, v0, v1}, Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment;->processAttachment(Ljava/lang/Object;Ljava/io/File;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_3f} :catch_40

    #@3f
    goto :goto_1e

    #@40
    :catch_40
    move-exception v0

    #@41
    move-object v1, v0

    #@42
    sget-object v0, Lcom/facebook/NativeAppCallAttachmentStore;->TAG:Ljava/lang/String;

    #@44
    new-instance v3, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string v4, "Got unexpected exception:"

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5d
    move-result-object v2

    #@5e
    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@61
    move-result v0

    #@62
    if-eqz v0, :cond_70

    #@64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@67
    move-result-object v0

    #@68
    check-cast v0, Ljava/io/File;

    #@6a
    :try_start_6a
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    #@6d
    goto :goto_5e

    #@6e
    :catch_6e
    move-exception v0

    #@6f
    goto :goto_5e

    #@70
    :cond_70
    new-instance v0, Lcom/facebook/FacebookException;

    #@72
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    #@75
    throw v0
.end method

.method static getAttachmentsDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    #@0
    const-class v0, Lcom/facebook/NativeAppCallAttachmentStore;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    #@5
    if-nez v0, :cond_14

    #@7
    new-instance v0, Ljava/io/File;

    #@9
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    #@c
    move-result-object v1

    #@d
    const-string v2, "com.facebook.NativeAppCallAttachmentStore.files"

    #@f
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@12
    sput-object v0, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    #@14
    :cond_14
    sget-object v0, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    #@16
    const-class v1, Lcom/facebook/NativeAppCallAttachmentStore;

    #@18
    monitor-exit v1

    #@19
    return-object v0

    #@1a
    :catchall_1a
    move-exception v0

    #@1b
    const-class v1, Lcom/facebook/NativeAppCallAttachmentStore;

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method


# virtual methods
.method public addAttachmentFilesForCall(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "context"

    #@2
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "callId"

    #@7
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@d
    move-result-object v0

    #@e
    const-string v1, "imageAttachmentFiles"

    #@10
    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->containsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    #@13
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@16
    move-result-object v0

    #@17
    const-string v1, "imageAttachmentFiles"

    #@19
    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->containsNoNullOrEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    #@1c
    new-instance v0, Lcom/facebook/NativeAppCallAttachmentStore$2;

    #@1e
    invoke-direct {v0, p0}, Lcom/facebook/NativeAppCallAttachmentStore$2;-><init>(Lcom/facebook/NativeAppCallAttachmentStore;)V

    #@21
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/NativeAppCallAttachmentStore;->addAttachments(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment;)V

    #@24
    return-void
.end method

.method public addAttachmentsForCall(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    #@0
    const-string v0, "context"

    #@2
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    const-string v0, "callId"

    #@7
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@a
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@d
    move-result-object v0

    #@e
    const-string v1, "imageAttachments"

    #@10
    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->containsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    #@13
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@16
    move-result-object v0

    #@17
    const-string v1, "imageAttachments"

    #@19
    invoke-static {v0, v1}, Lcom/facebook/internal/Validate;->containsNoNullOrEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    #@1c
    new-instance v0, Lcom/facebook/NativeAppCallAttachmentStore$1;

    #@1e
    invoke-direct {v0, p0}, Lcom/facebook/NativeAppCallAttachmentStore$1;-><init>(Lcom/facebook/NativeAppCallAttachmentStore;)V

    #@21
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/NativeAppCallAttachmentStore;->addAttachments(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment;)V

    #@24
    return-void
.end method

.method cleanupAllAttachments(Landroid/content/Context;)V
    .registers 3

    #@0
    invoke-static {p1}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentsDirectory(Landroid/content/Context;)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    #@7
    return-void
.end method

.method public cleanupAttachmentsForCall(Landroid/content/Context;Ljava/util/UUID;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p2, v0}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    #@8
    return-void
.end method

.method ensureAttachmentsDirectoryExists(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    #@0
    invoke-static {p1}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentsDirectory(Landroid/content/Context;)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@7
    return-object v0
.end method

.method getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p3}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;

    #@4
    move-result-object v2

    #@5
    if-nez v2, :cond_8

    #@7
    :goto_7
    return-object v0

    #@8
    :cond_8
    :try_start_8
    new-instance v1, Ljava/io/File;

    #@a
    const-string v3, "UTF-8"

    #@c
    invoke-static {p2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_13} :catch_15

    #@13
    move-object v0, v1

    #@14
    goto :goto_7

    #@15
    :catch_15
    move-exception v1

    #@16
    goto :goto_7
.end method

.method getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;
    .registers 6

    #@0
    sget-object v0, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    :cond_5
    :goto_5
    return-object v0

    #@6
    :cond_6
    new-instance v0, Ljava/io/File;

    #@8
    sget-object v1, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    #@a
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@11
    if-eqz p2, :cond_5

    #@13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_5

    #@19
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@1c
    goto :goto_5
.end method

.method public openAttachment(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    if-nez p1, :cond_e

    #@8
    :cond_8
    new-instance v0, Ljava/io/FileNotFoundException;

    #@a
    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    #@d
    throw v0

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    :try_start_f
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_14

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    :catch_14
    move-exception v0

    #@15
    new-instance v0, Ljava/io/FileNotFoundException;

    #@17
    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    #@1a
    throw v0
.end method
