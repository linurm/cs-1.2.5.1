.class public final Lcom/google/dexmaker/DexMaker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/dexmaker/DexMaker$FieldDeclaration;,
        Lcom/google/dexmaker/DexMaker$MethodDeclaration;,
        Lcom/google/dexmaker/DexMaker$TypeDeclaration;
    }
.end annotation


# instance fields
.field private final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/dexmaker/TypeId",
            "<*>;",
            "Lcom/google/dexmaker/DexMaker$TypeDeclaration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/dexmaker/DexMaker;->types:Ljava/util/Map;

    #@a
    return-void
.end method

.method private getTypeDeclaration(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/DexMaker$TypeDeclaration;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)",
            "Lcom/google/dexmaker/DexMaker$TypeDeclaration;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/dexmaker/DexMaker;->types:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;

    #@8
    if-nez v0, :cond_14

    #@a
    new-instance v0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;

    #@c
    invoke-direct {v0, p1}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;-><init>(Lcom/google/dexmaker/TypeId;)V

    #@f
    iget-object v1, p0, Lcom/google/dexmaker/DexMaker;->types:Ljava/util/Map;

    #@11
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    :cond_14
    return-object v0
.end method


# virtual methods
.method public declare(Lcom/google/dexmaker/MethodId;I)Lcom/google/dexmaker/Code;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/MethodId",
            "<**>;I)",
            "Lcom/google/dexmaker/Code;"
        }
    .end annotation

    #@0
    iget-object v0, p1, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@2
    invoke-direct {p0, v0}, Lcom/google/dexmaker/DexMaker;->getTypeDeclaration(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/DexMaker$TypeDeclaration;

    #@5
    move-result-object v0

    #@6
    # getter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->methods:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$500(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Ljava/util/Map;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_29

    #@10
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "already declared: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    :cond_29
    and-int/lit16 v1, p2, -0x140

    #@2b
    if-eqz v1, :cond_4a

    #@2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string v2, "Unexpected flag: "

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0

    #@4a
    :cond_4a
    and-int/lit8 v1, p2, 0x20

    #@4c
    if-eqz v1, :cond_54

    #@4e
    and-int/lit8 v1, p2, -0x21

    #@50
    const/high16 v2, 0x20000

    #@52
    or-int p2, v1, v2

    #@54
    :cond_54
    invoke-virtual {p1}, Lcom/google/dexmaker/MethodId;->isConstructor()Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_5d

    #@5a
    const/high16 v1, 0x10000

    #@5c
    or-int/2addr p2, v1

    #@5d
    :cond_5d
    new-instance v1, Lcom/google/dexmaker/DexMaker$MethodDeclaration;

    #@5f
    invoke-direct {v1, p1, p2}, Lcom/google/dexmaker/DexMaker$MethodDeclaration;-><init>(Lcom/google/dexmaker/MethodId;I)V

    #@62
    # getter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->methods:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$500(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Ljava/util/Map;

    #@65
    move-result-object v0

    #@66
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    # getter for: Lcom/google/dexmaker/DexMaker$MethodDeclaration;->code:Lcom/google/dexmaker/Code;
    invoke-static {v1}, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->access$600(Lcom/google/dexmaker/DexMaker$MethodDeclaration;)Lcom/google/dexmaker/Code;

    #@6c
    move-result-object v0

    #@6d
    return-object v0
.end method

.method public declare(Lcom/google/dexmaker/FieldId;ILjava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/FieldId",
            "<**>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    iget-object v0, p1, Lcom/google/dexmaker/FieldId;->declaringType:Lcom/google/dexmaker/TypeId;

    #@2
    invoke-direct {p0, v0}, Lcom/google/dexmaker/DexMaker;->getTypeDeclaration(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/DexMaker$TypeDeclaration;

    #@5
    move-result-object v0

    #@6
    # getter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->fields:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$700(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Ljava/util/Map;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_29

    #@10
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v2, "already declared: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    :cond_29
    and-int/lit16 v1, p2, -0xe0

    #@2b
    if-eqz v1, :cond_4a

    #@2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string v2, "Unexpected flag: "

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v0

    #@4a
    :cond_4a
    and-int/lit8 v1, p2, 0x8

    #@4c
    if-nez v1, :cond_58

    #@4e
    if-eqz p3, :cond_58

    #@50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@52
    const-string v1, "staticValue is non-null, but field is not static"

    #@54
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@57
    throw v0

    #@58
    :cond_58
    new-instance v1, Lcom/google/dexmaker/DexMaker$FieldDeclaration;

    #@5a
    invoke-direct {v1, p1, p2, p3}, Lcom/google/dexmaker/DexMaker$FieldDeclaration;-><init>(Lcom/google/dexmaker/FieldId;ILjava/lang/Object;)V

    #@5d
    # getter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->fields:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$700(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Ljava/util/Map;

    #@60
    move-result-object v0

    #@61
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@64
    return-void
.end method

.method public varargs declare(Lcom/google/dexmaker/TypeId;Ljava/lang/String;ILcom/google/dexmaker/TypeId;[Lcom/google/dexmaker/TypeId;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<*>;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/dexmaker/TypeId",
            "<*>;[",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p1}, Lcom/google/dexmaker/DexMaker;->getTypeDeclaration(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/DexMaker$TypeDeclaration;

    #@3
    move-result-object v0

    #@4
    and-int/lit16 v1, p3, -0x412

    #@6
    if-eqz v1, :cond_25

    #@8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string v2, "Unexpected flag: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    :cond_25
    # getter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->declared:Z
    invoke-static {v0}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$000(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_44

    #@2b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2d
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string v2, "already declared: "

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    :cond_44
    const/4 v1, 0x1

    #@45
    # setter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->declared:Z
    invoke-static {v0, v1}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$002(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Z)Z

    #@48
    # setter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->flags:I
    invoke-static {v0, p3}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$102(Lcom/google/dexmaker/DexMaker$TypeDeclaration;I)I

    #@4b
    # setter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->supertype:Lcom/google/dexmaker/TypeId;
    invoke-static {v0, p4}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$202(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/TypeId;

    #@4e
    # setter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->sourceFile:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$302(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Ljava/lang/String;)Ljava/lang/String;

    #@51
    new-instance v1, Lcom/google/dexmaker/TypeList;

    #@53
    invoke-direct {v1, p5}, Lcom/google/dexmaker/TypeList;-><init>([Lcom/google/dexmaker/TypeId;)V

    #@56
    # setter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->interfaces:Lcom/google/dexmaker/TypeList;
    invoke-static {v0, v1}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$402(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Lcom/google/dexmaker/TypeList;)Lcom/google/dexmaker/TypeList;

    #@59
    return-void
.end method

.method public generate()[B
    .registers 4

    #@0
    new-instance v0, Lcom/android/dx/dex/DexOptions;

    #@2
    invoke-direct {v0}, Lcom/android/dx/dex/DexOptions;-><init>()V

    #@5
    const/16 v1, 0xd

    #@7
    iput v1, v0, Lcom/android/dx/dex/DexOptions;->targetApiLevel:I

    #@9
    new-instance v1, Lcom/android/dx/dex/file/DexFile;

    #@b
    invoke-direct {v1, v0}, Lcom/android/dx/dex/file/DexFile;-><init>(Lcom/android/dx/dex/DexOptions;)V

    #@e
    iget-object v0, p0, Lcom/google/dexmaker/DexMaker;->types:Ljava/util/Map;

    #@10
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@13
    move-result-object v0

    #@14
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@17
    move-result-object v2

    #@18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_2c

    #@1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;

    #@24
    invoke-virtual {v0}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->toClassDefItem()Lcom/android/dx/dex/file/ClassDefItem;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v1, v0}, Lcom/android/dx/dex/file/DexFile;->add(Lcom/android/dx/dex/file/ClassDefItem;)V

    #@2b
    goto :goto_18

    #@2c
    :cond_2c
    const/4 v0, 0x0

    #@2d
    const/4 v2, 0x0

    #@2e
    :try_start_2e
    invoke-virtual {v1, v0, v2}, Lcom/android/dx/dex/file/DexFile;->toDex(Ljava/io/Writer;Z)[B
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_33

    #@31
    move-result-object v0

    #@32
    return-object v0

    #@33
    :catch_33
    move-exception v0

    #@34
    new-instance v1, Ljava/lang/RuntimeException;

    #@36
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@39
    throw v1
.end method

.method public generateAndLoad(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    if-nez p2, :cond_f

    #@2
    const-string v0, "dexmaker.dexcache"

    #@4
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    if-eqz v0, :cond_7b

    #@a
    new-instance p2, Ljava/io/File;

    #@c
    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@f
    :cond_f
    invoke-virtual {p0}, Lcom/google/dexmaker/DexMaker;->generate()[B

    #@12
    move-result-object v0

    #@13
    const-string v1, "Generated"

    #@15
    const-string v2, ".jar"

    #@17
    invoke-static {v1, v2, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    #@1e
    new-instance v2, Ljava/util/jar/JarOutputStream;

    #@20
    new-instance v3, Ljava/io/FileOutputStream;

    #@22
    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    #@25
    invoke-direct {v2, v3}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@28
    new-instance v3, Ljava/util/jar/JarEntry;

    #@2a
    const-string v4, "classes.dex"

    #@2c
    invoke-direct {v3, v4}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    #@2f
    invoke-virtual {v2, v3}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    #@32
    invoke-virtual {v2, v0}, Ljava/util/jar/JarOutputStream;->write([B)V

    #@35
    invoke-virtual {v2}, Ljava/util/jar/JarOutputStream;->closeEntry()V

    #@38
    invoke-virtual {v2}, Ljava/util/jar/JarOutputStream;->close()V

    #@3b
    :try_start_3b
    const-string v0, "dalvik.system.DexClassLoader"

    #@3d
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@40
    move-result-object v0

    #@41
    const/4 v2, 0x4

    #@42
    new-array v2, v2, [Ljava/lang/Class;

    #@44
    const/4 v3, 0x0

    #@45
    const-class v4, Ljava/lang/String;

    #@47
    aput-object v4, v2, v3

    #@49
    const/4 v3, 0x1

    #@4a
    const-class v4, Ljava/lang/String;

    #@4c
    aput-object v4, v2, v3

    #@4e
    const/4 v3, 0x2

    #@4f
    const-class v4, Ljava/lang/String;

    #@51
    aput-object v4, v2, v3

    #@53
    const/4 v3, 0x3

    #@54
    const-class v4, Ljava/lang/ClassLoader;

    #@56
    aput-object v4, v2, v3

    #@58
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@5b
    move-result-object v0

    #@5c
    const/4 v2, 0x4

    #@5d
    new-array v2, v2, [Ljava/lang/Object;

    #@5f
    const/4 v3, 0x0

    #@60
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    aput-object v1, v2, v3

    #@66
    const/4 v1, 0x1

    #@67
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    aput-object v3, v2, v1

    #@6d
    const/4 v1, 0x2

    #@6e
    const/4 v3, 0x0

    #@6f
    aput-object v3, v2, v1

    #@71
    const/4 v1, 0x3

    #@72
    aput-object p1, v2, v1

    #@74
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    move-result-object v0

    #@78
    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_7a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_7a} :catch_8e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3b .. :try_end_7a} :catch_97
    .catch Ljava/lang/InstantiationException; {:try_start_3b .. :try_end_7a} :catch_a2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3b .. :try_end_7a} :catch_a9
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_7a} :catch_b0

    #@7a
    return-object v0

    #@7b
    :cond_7b
    new-instance v0, Lcom/google/dexmaker/AppDataDirGuesser;

    #@7d
    invoke-direct {v0}, Lcom/google/dexmaker/AppDataDirGuesser;-><init>()V

    #@80
    invoke-virtual {v0}, Lcom/google/dexmaker/AppDataDirGuesser;->guess()Ljava/io/File;

    #@83
    move-result-object p2

    #@84
    if-nez p2, :cond_f

    #@86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@88
    const-string v1, "dexcache == null (and no default could be found; consider setting the \'dexmaker.dexcache\' system property)"

    #@8a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8d
    throw v0

    #@8e
    :catch_8e
    move-exception v0

    #@8f
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@91
    const-string v2, "load() requires a Dalvik VM"

    #@93
    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@96
    throw v1

    #@97
    :catch_97
    move-exception v0

    #@98
    new-instance v1, Ljava/lang/RuntimeException;

    #@9a
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@9d
    move-result-object v0

    #@9e
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@a1
    throw v1

    #@a2
    :catch_a2
    move-exception v0

    #@a3
    new-instance v0, Ljava/lang/AssertionError;

    #@a5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@a8
    throw v0

    #@a9
    :catch_a9
    move-exception v0

    #@aa
    new-instance v0, Ljava/lang/AssertionError;

    #@ac
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@af
    throw v0

    #@b0
    :catch_b0
    move-exception v0

    #@b1
    new-instance v0, Ljava/lang/AssertionError;

    #@b3
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@b6
    throw v0
.end method
