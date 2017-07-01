.class Lcom/google/android/gms/tagmanager/cp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/o$f;


# instance fields
.field private final aet:Ljava/lang/String;

.field private agN:Lcom/google/android/gms/tagmanager/bg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/bg",
            "<",
            "Lcom/google/android/gms/internal/le$a;",
            ">;"
        }
    .end annotation
.end field

.field private final agU:Ljava/util/concurrent/ExecutorService;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cp;->mContext:Landroid/content/Context;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/cp;->aet:Ljava/lang/String;

    #@7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->agU:Ljava/util/concurrent/ExecutorService;

    #@d
    return-void
.end method

.method private a(Ljava/io/ByteArrayOutputStream;)Lcom/google/android/gms/tagmanager/cq$c;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    const-string v1, "UTF-8"

    #@3
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/ba;->bY(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/cq$c;
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_a} :catch_c
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_a} :catch_13

    #@a
    move-result-object v0

    #@b
    :goto_b
    return-object v0

    #@c
    :catch_c
    move-exception v1

    #@d
    const-string v1, "Tried to convert binary resource to string for JSON parsing; not UTF-8 format"

    #@f
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->z(Ljava/lang/String;)V

    #@12
    goto :goto_b

    #@13
    :catch_13
    move-exception v1

    #@14
    const-string v1, "Resource is a UTF-8 encoded string but doesn\'t contain a JSON container"

    #@16
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@19
    goto :goto_b
.end method

.method private k([B)Lcom/google/android/gms/tagmanager/cq$c;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/c$f;->a([B)Lcom/google/android/gms/internal/c$f;

    #@4
    move-result-object v1

    #@5
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/cq;->b(Lcom/google/android/gms/internal/c$f;)Lcom/google/android/gms/tagmanager/cq$c;
    :try_end_8
    .catch Lcom/google/android/gms/internal/md; {:try_start_1 .. :try_end_8} :catch_a
    .catch Lcom/google/android/gms/tagmanager/cq$g; {:try_start_1 .. :try_end_8} :catch_11

    #@8
    move-result-object v0

    #@9
    :goto_9
    return-object v0

    #@a
    :catch_a
    move-exception v1

    #@b
    const-string v1, "Resource doesn\'t contain a binary container"

    #@d
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@10
    goto :goto_9

    #@11
    :catch_11
    move-exception v1

    #@12
    const-string v1, "Resource doesn\'t contain a binary container"

    #@14
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@17
    goto :goto_9
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/bg;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/bg",
            "<",
            "Lcom/google/android/gms/internal/le$a;",
            ">;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cp;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@2
    return-void
.end method

.method public b(Lcom/google/android/gms/internal/le$a;)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->agU:Ljava/util/concurrent/ExecutorService;

    #@2
    new-instance v1, Lcom/google/android/gms/tagmanager/cp$2;

    #@4
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/cp$2;-><init>(Lcom/google/android/gms/tagmanager/cp;Lcom/google/android/gms/internal/le$a;)V

    #@7
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@a
    return-void
.end method

.method c(Lcom/google/android/gms/internal/le$a;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cp;->mm()Ljava/io/File;

    #@4
    move-result-object v1

    #@5
    :try_start_5
    new-instance v2, Ljava/io/FileOutputStream;

    #@7
    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_16

    #@a
    :try_start_a
    invoke-static {p1}, Lcom/google/android/gms/internal/me;->d(Lcom/google/android/gms/internal/me;)[B

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_24
    .catchall {:try_start_a .. :try_end_11} :catchall_38

    #@11
    const/4 v0, 0x1

    #@12
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_1d

    #@15
    :goto_15
    return v0

    #@16
    :catch_16
    move-exception v1

    #@17
    const-string v1, "Error opening resource file for writing"

    #@19
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@1c
    goto :goto_15

    #@1d
    :catch_1d
    move-exception v1

    #@1e
    const-string v1, "error closing stream for writing resource to disk"

    #@20
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@23
    goto :goto_15

    #@24
    :catch_24
    move-exception v3

    #@25
    :try_start_25
    const-string v3, "Error writing resource to disk. Removing resource from disk."

    #@27
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@2a
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_38

    #@2d
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    #@30
    goto :goto_15

    #@31
    :catch_31
    move-exception v1

    #@32
    const-string v1, "error closing stream for writing resource to disk"

    #@34
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@37
    goto :goto_15

    #@38
    :catchall_38
    move-exception v0

    #@39
    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    #@3c
    :goto_3c
    throw v0

    #@3d
    :catch_3d
    move-exception v1

    #@3e
    const-string v1, "error closing stream for writing resource to disk"

    #@40
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@43
    goto :goto_3c
.end method

.method public dn(I)Lcom/google/android/gms/tagmanager/cq$c;
    .registers 5

    #@0
    const/4 v1, 0x0

    #@1
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string v2, "Atttempting to load container from resource ID "

    #@8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@17
    :try_start_17
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->mContext:Landroid/content/Context;

    #@19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@20
    move-result-object v0

    #@21
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@23
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@26
    invoke-static {v0, v2}, Lcom/google/android/gms/tagmanager/cq;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@29
    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/cp;->a(Ljava/io/ByteArrayOutputStream;)Lcom/google/android/gms/tagmanager/cq$c;

    #@2c
    move-result-object v0

    #@2d
    if-eqz v0, :cond_30

    #@2f
    :goto_2f
    return-object v0

    #@30
    :cond_30
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@33
    move-result-object v0

    #@34
    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/cp;->k([B)Lcom/google/android/gms/tagmanager/cq$c;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_37} :catch_39
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_37} :catch_52

    #@37
    move-result-object v0

    #@38
    goto :goto_2f

    #@39
    :catch_39
    move-exception v0

    #@3a
    new-instance v0, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string v2, "Error reading default container resource with ID "

    #@41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@50
    move-object v0, v1

    #@51
    goto :goto_2f

    #@52
    :catch_52
    move-exception v0

    #@53
    const-string v0, "No default container resource found."

    #@55
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@58
    move-object v0, v1

    #@59
    goto :goto_2f
.end method

.method public lw()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->agU:Ljava/util/concurrent/ExecutorService;

    #@2
    new-instance v1, Lcom/google/android/gms/tagmanager/cp$1;

    #@4
    invoke-direct {v1, p0}, Lcom/google/android/gms/tagmanager/cp$1;-><init>(Lcom/google/android/gms/tagmanager/cp;)V

    #@7
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@a
    return-void
.end method

.method ml()V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@2
    if-nez v0, :cond_c

    #@4
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string v1, "callback must be set before execute"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@e
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/bg;->lv()V

    #@11
    const-string v0, "Start loading resource from disk ..."

    #@13
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@16
    invoke-static {}, Lcom/google/android/gms/tagmanager/cd;->md()Lcom/google/android/gms/tagmanager/cd;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cd;->me()Lcom/google/android/gms/tagmanager/cd$a;

    #@1d
    move-result-object v0

    #@1e
    sget-object v1, Lcom/google/android/gms/tagmanager/cd$a;->agC:Lcom/google/android/gms/tagmanager/cd$a;

    #@20
    if-eq v0, v1, :cond_2e

    #@22
    invoke-static {}, Lcom/google/android/gms/tagmanager/cd;->md()Lcom/google/android/gms/tagmanager/cd;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cd;->me()Lcom/google/android/gms/tagmanager/cd$a;

    #@29
    move-result-object v0

    #@2a
    sget-object v1, Lcom/google/android/gms/tagmanager/cd$a;->agD:Lcom/google/android/gms/tagmanager/cd$a;

    #@2c
    if-ne v0, v1, :cond_46

    #@2e
    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->aet:Ljava/lang/String;

    #@30
    invoke-static {}, Lcom/google/android/gms/tagmanager/cd;->md()Lcom/google/android/gms/tagmanager/cd;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cd;->getContainerId()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v0

    #@3c
    if-eqz v0, :cond_46

    #@3e
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@40
    sget-object v1, Lcom/google/android/gms/tagmanager/bg$a;->agg:Lcom/google/android/gms/tagmanager/bg$a;

    #@42
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/bg;->a(Lcom/google/android/gms/tagmanager/bg$a;)V

    #@45
    :goto_45
    return-void

    #@46
    :cond_46
    :try_start_46
    new-instance v1, Ljava/io/FileInputStream;

    #@48
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cp;->mm()Ljava/io/File;

    #@4b
    move-result-object v0

    #@4c
    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_4f} :catch_6d

    #@4f
    :try_start_4f
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@51
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@54
    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/cq;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@57
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cp;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@59
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@5c
    move-result-object v0

    #@5d
    invoke-static {v0}, Lcom/google/android/gms/internal/le$a;->l([B)Lcom/google/android/gms/internal/le$a;

    #@60
    move-result-object v0

    #@61
    invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/bg;->i(Ljava/lang/Object;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_64} :catch_82
    .catchall {:try_start_4f .. :try_end_64} :catchall_9a

    #@64
    :try_start_64
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_7b

    #@67
    :goto_67
    const-string v0, "Load resource from disk finished."

    #@69
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@6c
    goto :goto_45

    #@6d
    :catch_6d
    move-exception v0

    #@6e
    const-string v0, "resource not on disk"

    #@70
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->z(Ljava/lang/String;)V

    #@73
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@75
    sget-object v1, Lcom/google/android/gms/tagmanager/bg$a;->agg:Lcom/google/android/gms/tagmanager/bg$a;

    #@77
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/bg;->a(Lcom/google/android/gms/tagmanager/bg$a;)V

    #@7a
    goto :goto_45

    #@7b
    :catch_7b
    move-exception v0

    #@7c
    const-string v0, "error closing stream for reading resource from disk"

    #@7e
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@81
    goto :goto_67

    #@82
    :catch_82
    move-exception v0

    #@83
    :try_start_83
    const-string v0, "error reading resource from disk"

    #@85
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@88
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@8a
    sget-object v2, Lcom/google/android/gms/tagmanager/bg$a;->agh:Lcom/google/android/gms/tagmanager/bg$a;

    #@8c
    invoke-interface {v0, v2}, Lcom/google/android/gms/tagmanager/bg;->a(Lcom/google/android/gms/tagmanager/bg$a;)V
    :try_end_8f
    .catchall {:try_start_83 .. :try_end_8f} :catchall_9a

    #@8f
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    #@92
    goto :goto_67

    #@93
    :catch_93
    move-exception v0

    #@94
    const-string v0, "error closing stream for reading resource from disk"

    #@96
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@99
    goto :goto_67

    #@9a
    :catchall_9a
    move-exception v0

    #@9b
    :try_start_9b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    #@9e
    :goto_9e
    throw v0

    #@9f
    :catch_9f
    move-exception v1

    #@a0
    const-string v1, "error closing stream for reading resource from disk"

    #@a2
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@a5
    goto :goto_9e
.end method

.method mm()Ljava/io/File;
    .registers 6

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "resource_"

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cp;->aet:Ljava/lang/String;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    new-instance v1, Ljava/io/File;

    #@17
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cp;->mContext:Landroid/content/Context;

    #@19
    const-string v3, "google_tagmanager"

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@23
    return-object v1
.end method

.method public release()V
    .registers 2

    #@0
    monitor-enter p0

    #@1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cp;->agU:Ljava/util/concurrent/ExecutorService;

    #@3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    #@6
    monitor-exit p0

    #@7
    return-void

    #@8
    :catchall_8
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method
