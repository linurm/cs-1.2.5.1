.class public Lcom/apportable/ExpansionFileManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ExpansionFileManager$XAPKFile;
    }
.end annotation


# static fields
.field private static final EXP_PATH:Ljava/lang/String; = "/Android/obb/"

.field private static final MAIN_OBB_PREFIX:Ljava/lang/String; = "main."

.field private static final PATCH_OBB_PREFIX:Ljava/lang/String; = "patch."

.field private static TAG:Ljava/lang/String;

.field private static theExpansionFileManager:Lcom/apportable/ExpansionFileManager;


# instance fields
.field private mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

.field private mHasExpansionFiles:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "com.apportable.AssetManager"

    #@2
    sput-object v0, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@4
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    sput-object p0, Lcom/apportable/ExpansionFileManager;->theExpansionFileManager:Lcom/apportable/ExpansionFileManager;

    #@5
    sget-object v0, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v2, "App Expansion Files: main: version:"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {p0}, Lcom/apportable/ExpansionFileManager;->getMainVersion()I

    #@15
    move-result v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string v2, " size:"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p0}, Lcom/apportable/ExpansionFileManager;->getMainSize()I

    #@23
    move-result v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string v2, "."

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    invoke-virtual {p0}, Lcom/apportable/ExpansionFileManager;->getMainSize()I

    #@38
    move-result v0

    #@39
    if-lez v0, :cond_5f

    #@3b
    sget-object v0, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@3d
    const-string v1, "App has Expansion Files"

    #@3f
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    const/4 v0, 0x1

    #@43
    iput-boolean v0, p0, Lcom/apportable/ExpansionFileManager;->mHasExpansionFiles:Z

    #@45
    invoke-virtual {p0}, Lcom/apportable/ExpansionFileManager;->updateAPKExpansionFile()V

    #@48
    iget-object v0, p0, Lcom/apportable/ExpansionFileManager;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    #@4a
    if-nez v0, :cond_57

    #@4c
    sget-object v0, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@4e
    const-string v1, "Could not load expansion files, null"

    #@50
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    invoke-virtual {p0}, Lcom/apportable/ExpansionFileManager;->deleteOldObbFiles()V

    #@56
    :goto_56
    return-void

    #@57
    :cond_57
    sget-object v0, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@59
    const-string v1, "Loaded expansion files  OK"

    #@5b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    goto :goto_56

    #@5f
    :cond_5f
    sget-object v0, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@61
    const-string v1, "App does not have Expansion Files"

    #@63
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    const/4 v0, 0x0

    #@67
    iput-boolean v0, p0, Lcom/apportable/ExpansionFileManager;->mHasExpansionFiles:Z

    #@69
    goto :goto_56
.end method

.method public static getManager()Lcom/apportable/ExpansionFileManager;
    .registers 1

    #@0
    sget-object v0, Lcom/apportable/ExpansionFileManager;->theExpansionFileManager:Lcom/apportable/ExpansionFileManager;

    #@2
    if-nez v0, :cond_b

    #@4
    new-instance v0, Lcom/apportable/ExpansionFileManager;

    #@6
    invoke-direct {v0}, Lcom/apportable/ExpansionFileManager;-><init>()V

    #@9
    sput-object v0, Lcom/apportable/ExpansionFileManager;->theExpansionFileManager:Lcom/apportable/ExpansionFileManager;

    #@b
    :cond_b
    sget-object v0, Lcom/apportable/ExpansionFileManager;->theExpansionFileManager:Lcom/apportable/ExpansionFileManager;

    #@d
    return-object v0
.end method


# virtual methods
.method deleteOldObbFiles()V
    .registers 8

    #@0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    const-string v2, "mounted"

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_5a

    #@14
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    #@17
    move-result-object v1

    #@18
    new-instance v2, Ljava/io/File;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string v3, "/Android/obb/"

    #@29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@38
    sget-object v0, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string v3, "expPath: "

    #@41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v1

    #@51
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@54
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    #@57
    move-result-object v1

    #@58
    if-nez v1, :cond_5b

    #@5a
    :cond_5a
    return-void

    #@5b
    :cond_5b
    array-length v2, v1

    #@5c
    const/4 v0, 0x0

    #@5d
    :goto_5d
    if-ge v0, v2, :cond_5a

    #@5f
    aget-object v3, v1, v0

    #@61
    new-instance v4, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string v5, "patch."

    #@68
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {p0}, Lcom/apportable/ExpansionFileManager;->getPatchVersion()I

    #@6f
    move-result v5

    #@70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    new-instance v5, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string v6, "main."

    #@7f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    invoke-virtual {p0}, Lcom/apportable/ExpansionFileManager;->getMainVersion()I

    #@86
    move-result v6

    #@87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v5

    #@8b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    #@92
    move-result-object v6

    #@93
    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@96
    move-result v4

    #@97
    if-nez v4, :cond_e7

    #@99
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    #@9c
    move-result-object v4

    #@9d
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@a0
    move-result v4

    #@a1
    if-nez v4, :cond_e7

    #@a3
    sget-object v4, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@a5
    new-instance v5, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string v6, "deleting file: \'"

    #@ac
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v5

    #@b0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    #@b3
    move-result-object v6

    #@b4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v5

    #@b8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v5

    #@bc
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@bf
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    #@c2
    move-result v4

    #@c3
    if-eqz v4, :cond_eb

    #@c5
    sget-object v4, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@c7
    new-instance v5, Ljava/lang/StringBuilder;

    #@c9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@cc
    const-string v6, "File \'"

    #@ce
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v5

    #@d2
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    #@d5
    move-result-object v3

    #@d6
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v3

    #@da
    const-string v5, "\' was deleted"

    #@dc
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v3

    #@e0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v3

    #@e4
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e7
    :cond_e7
    :goto_e7
    add-int/lit8 v0, v0, 0x1

    #@e9
    goto/16 :goto_5d

    #@eb
    :cond_eb
    sget-object v4, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@ed
    new-instance v5, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    const-string v6, "File \'"

    #@f4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v5

    #@f8
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    #@fb
    move-result-object v3

    #@fc
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v3

    #@100
    const-string v5, "\' was not deleted"

    #@102
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v3

    #@106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v3

    #@10a
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@10d
    goto :goto_e7
.end method

.method expansionFilesDelivered()Z
    .registers 11

    #@0
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    sget-object v2, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@4
    const-string v3, ">expansionFilesDelivered"

    #@6
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    new-array v3, v1, [Lcom/apportable/ExpansionFileManager$XAPKFile;

    #@b
    new-instance v2, Lcom/apportable/ExpansionFileManager$XAPKFile;

    #@d
    invoke-virtual {p0}, Lcom/apportable/ExpansionFileManager;->getMainVersion()I

    #@10
    move-result v4

    #@11
    invoke-virtual {p0}, Lcom/apportable/ExpansionFileManager;->getMainSize()I

    #@14
    move-result v5

    #@15
    int-to-long v6, v5

    #@16
    invoke-direct {v2, v1, v4, v6, v7}, Lcom/apportable/ExpansionFileManager$XAPKFile;-><init>(ZIJ)V

    #@19
    aput-object v2, v3, v0

    #@1b
    array-length v4, v3

    #@1c
    move v2, v0

    #@1d
    :goto_1d
    if-ge v2, v4, :cond_44

    #@1f
    aget-object v5, v3, v2

    #@21
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@24
    move-result-object v6

    #@25
    iget-boolean v7, v5, Lcom/apportable/ExpansionFileManager$XAPKFile;->mIsMain:Z

    #@27
    iget v8, v5, Lcom/apportable/ExpansionFileManager$XAPKFile;->mFileVersion:I

    #@29
    invoke-static {v6, v7, v8}, Lcom/google/android/vending/expansion/downloader/Helpers;->getExpansionAPKFileName(Landroid/content/Context;ZI)Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@30
    move-result-object v7

    #@31
    iget-wide v8, v5, Lcom/apportable/ExpansionFileManager$XAPKFile;->mFileSize:J

    #@33
    invoke-static {v7, v6, v8, v9, v0}, Lcom/google/android/vending/expansion/downloader/Helpers;->doesFileExist(Landroid/content/Context;Ljava/lang/String;JZ)Z

    #@36
    move-result v5

    #@37
    if-nez v5, :cond_41

    #@39
    sget-object v1, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@3b
    const-string v2, "<expansionFilesDelivered false"

    #@3d
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    :goto_40
    return v0

    #@41
    :cond_41
    add-int/lit8 v2, v2, 0x1

    #@43
    goto :goto_1d

    #@44
    :cond_44
    sget-object v0, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@46
    const-string v2, "<expansionFilesDelivered true"

    #@48
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    move v0, v1

    #@4c
    goto :goto_40
.end method

.method getMainSize()I
    .registers 3

    #@0
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "apportable.expansion.main.size"

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method getMainVersion()I
    .registers 3

    #@0
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "apportable.expansion.main.version"

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method getPatchSize()I
    .registers 3

    #@0
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "apportable.expansion.patch.size"

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method getPatchVersion()I
    .registers 3

    #@0
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string v1, "apportable.expansion.patch.version"

    #@6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public hasExpansionFiles()Z
    .registers 2

    #@0
    iget-boolean v0, p0, Lcom/apportable/ExpansionFileManager;->mHasExpansionFiles:Z

    #@2
    return v0
.end method

.method public openAssetFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 7

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "assets/"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    sget-object v0, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v3, "openAssetFile: path:\'"

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string v3, "\'"

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    :try_start_31
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->getAssets()Landroid/content/res/AssetManager;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3c} :catch_3e

    #@3c
    move-result-object v0

    #@3d
    :cond_3d
    :goto_3d
    return-object v0

    #@3e
    :catch_3e
    move-exception v0

    #@3f
    iget-object v0, p0, Lcom/apportable/ExpansionFileManager;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    #@41
    invoke-virtual {v0, v1}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    #@44
    move-result-object v0

    #@45
    if-nez v0, :cond_3d

    #@47
    sget-object v2, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@49
    new-instance v3, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string v4, "openAssetFile: could not find any APK or Expansion File asset with path:\'"

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    const-string v3, "\'"

    #@5a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@65
    goto :goto_3d
.end method

.method public updateAPKExpansionFile()V
    .registers 4

    #@0
    :try_start_0
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/apportable/ExpansionFileManager;->getMainVersion()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0}, Lcom/apportable/ExpansionFileManager;->getPatchVersion()I

    #@b
    move-result v2

    #@c
    invoke-static {v0, v1, v2}, Lcom/android/vending/expansion/zipfile/APKExpansionSupport;->getAPKExpansionZipFile(Landroid/content/Context;II)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Lcom/apportable/ExpansionFileManager;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    #@12
    :goto_12
    return-void

    #@13
    :catch_13
    move-exception v0

    #@14
    sget-object v1, Lcom/apportable/ExpansionFileManager;->TAG:Ljava/lang/String;

    #@16
    const-string v2, "Could not load expansion files, exception"

    #@18
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    #@1e
    goto :goto_12
.end method
