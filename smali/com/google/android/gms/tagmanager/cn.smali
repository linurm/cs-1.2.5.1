.class Lcom/google/android/gms/tagmanager/cn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile aeP:Ljava/lang/String;

.field private final aet:Ljava/lang/String;

.field private final agL:Lcom/google/android/gms/tagmanager/bm;

.field private final agM:Ljava/lang/String;

.field private agN:Lcom/google/android/gms/tagmanager/bg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/bg",
            "<",
            "Lcom/google/android/gms/internal/c$j;",
            ">;"
        }
    .end annotation
.end field

.field private volatile agO:Lcom/google/android/gms/tagmanager/r;

.field private volatile agP:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/bm;Lcom/google/android/gms/tagmanager/r;)V
    .registers 7

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cn;->mContext:Landroid/content/Context;

    #@5
    iput-object p3, p0, Lcom/google/android/gms/tagmanager/cn;->agL:Lcom/google/android/gms/tagmanager/bm;

    #@7
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/cn;->aet:Ljava/lang/String;

    #@9
    iput-object p4, p0, Lcom/google/android/gms/tagmanager/cn;->agO:Lcom/google/android/gms/tagmanager/r;

    #@b
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string v1, "/r?id="

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agM:Ljava/lang/String;

    #@20
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agM:Ljava/lang/String;

    #@22
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->aeP:Ljava/lang/String;

    #@24
    const/4 v0, 0x0

    #@25
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agP:Ljava/lang/String;

    #@27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;)V
    .registers 5

    #@0
    new-instance v0, Lcom/google/android/gms/tagmanager/bm;

    #@2
    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/bm;-><init>()V

    #@5
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/tagmanager/cn;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/bm;Lcom/google/android/gms/tagmanager/r;)V

    #@8
    return-void
.end method

.method private mg()Z
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->mContext:Landroid/content/Context;

    #@2
    const-string v1, "connectivity"

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/net/ConnectivityManager;

    #@a
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@d
    move-result-object v0

    #@e
    if-eqz v0, :cond_16

    #@10
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_1d

    #@16
    :cond_16
    const-string v0, "...no network connectivity"

    #@18
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@1b
    const/4 v0, 0x0

    #@1c
    :goto_1c
    return v0

    #@1d
    :cond_1d
    const/4 v0, 0x1

    #@1e
    goto :goto_1c
.end method

.method private mh()V
    .registers 6

    #@0
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cn;->mg()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_e

    #@6
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@8
    sget-object v1, Lcom/google/android/gms/tagmanager/bg$a;->agg:Lcom/google/android/gms/tagmanager/bg$a;

    #@a
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/bg;->a(Lcom/google/android/gms/tagmanager/bg$a;)V

    #@d
    :goto_d
    return-void

    #@e
    :cond_e
    const-string v0, "Start loading resource from network ..."

    #@10
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@13
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cn;->mi()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agL:Lcom/google/android/gms/tagmanager/bm;

    #@19
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/bm;->lR()Lcom/google/android/gms/tagmanager/bl;

    #@1c
    move-result-object v2

    #@1d
    :try_start_1d
    invoke-interface {v2, v1}, Lcom/google/android/gms/tagmanager/bl;->bV(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_20} :catch_76
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_ab
    .catchall {:try_start_1d .. :try_end_20} :catchall_10d

    #@20
    move-result-object v0

    #@21
    :try_start_21
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    #@23
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@26
    invoke-static {v0, v3}, Lcom/google/android/gms/tagmanager/cq;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    #@29
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@2c
    move-result-object v0

    #@2d
    invoke-static {v0}, Lcom/google/android/gms/internal/c$j;->b([B)Lcom/google/android/gms/internal/c$j;

    #@30
    move-result-object v0

    #@31
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string v4, "Successfully loaded supplemented resource: "

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@47
    iget-object v3, v0, Lcom/google/android/gms/internal/c$j;->fK:Lcom/google/android/gms/internal/c$f;

    #@49
    if-nez v3, :cond_68

    #@4b
    iget-object v3, v0, Lcom/google/android/gms/internal/c$j;->fJ:[Lcom/google/android/gms/internal/c$i;

    #@4d
    array-length v3, v3

    #@4e
    if-nez v3, :cond_68

    #@50
    new-instance v3, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    const-string v4, "No change for container: "

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    iget-object v4, p0, Lcom/google/android/gms/tagmanager/cn;->aet:Ljava/lang/String;

    #@5d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@68
    :cond_68
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/cn;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@6a
    invoke-interface {v3, v0}, Lcom/google/android/gms/tagmanager/bg;->i(Ljava/lang/Object;)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_6d} :catch_dc
    .catchall {:try_start_21 .. :try_end_6d} :catchall_10d

    #@6d
    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/bl;->close()V

    #@70
    const-string v0, "Load resource from network finished."

    #@72
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@75
    goto :goto_d

    #@76
    :catch_76
    move-exception v0

    #@77
    :try_start_77
    new-instance v0, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string v3, "No data is retrieved from the given url: "

    #@7e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    const-string v1, ". Make sure container_id: "

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v0

    #@8c
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->aet:Ljava/lang/String;

    #@8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    const-string v1, " is correct."

    #@94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v0

    #@98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v0

    #@9c
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@9f
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@a1
    sget-object v1, Lcom/google/android/gms/tagmanager/bg$a;->agi:Lcom/google/android/gms/tagmanager/bg$a;

    #@a3
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/bg;->a(Lcom/google/android/gms/tagmanager/bg$a;)V
    :try_end_a6
    .catchall {:try_start_77 .. :try_end_a6} :catchall_10d

    #@a6
    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/bl;->close()V

    #@a9
    goto/16 :goto_d

    #@ab
    :catch_ab
    move-exception v0

    #@ac
    :try_start_ac
    new-instance v3, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string v4, "Error when loading resources from url: "

    #@b3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v3

    #@b7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v1

    #@bb
    const-string v3, " "

    #@bd
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v1

    #@c1
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@c4
    move-result-object v3

    #@c5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v1

    #@c9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v1

    #@cd
    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/bh;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@d2
    sget-object v1, Lcom/google/android/gms/tagmanager/bg$a;->agh:Lcom/google/android/gms/tagmanager/bg$a;

    #@d4
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/bg;->a(Lcom/google/android/gms/tagmanager/bg$a;)V
    :try_end_d7
    .catchall {:try_start_ac .. :try_end_d7} :catchall_10d

    #@d7
    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/bl;->close()V

    #@da
    goto/16 :goto_d

    #@dc
    :catch_dc
    move-exception v0

    #@dd
    :try_start_dd
    new-instance v3, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    const-string v4, "Error when parsing downloaded resources from url: "

    #@e4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v3

    #@e8
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v1

    #@ec
    const-string v3, " "

    #@ee
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v1

    #@f2
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@f5
    move-result-object v3

    #@f6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v1

    #@fa
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v1

    #@fe
    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/bh;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@101
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@103
    sget-object v1, Lcom/google/android/gms/tagmanager/bg$a;->agi:Lcom/google/android/gms/tagmanager/bg$a;

    #@105
    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/bg;->a(Lcom/google/android/gms/tagmanager/bg$a;)V
    :try_end_108
    .catchall {:try_start_dd .. :try_end_108} :catchall_10d

    #@108
    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/bl;->close()V

    #@10b
    goto/16 :goto_d

    #@10d
    :catchall_10d
    move-exception v0

    #@10e
    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/bl;->close()V

    #@111
    throw v0
.end method


# virtual methods
.method a(Lcom/google/android/gms/tagmanager/bg;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/bg",
            "<",
            "Lcom/google/android/gms/internal/c$j;",
            ">;)V"
        }
    .end annotation

    #@0
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cn;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@2
    return-void
.end method

.method bM(Ljava/lang/String;)V
    .registers 4

    #@0
    if-nez p1, :cond_7

    #@2
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agM:Ljava/lang/String;

    #@4
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->aeP:Ljava/lang/String;

    #@6
    :goto_6
    return-void

    #@7
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string v1, "Setting CTFE URL path: "

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->z(Ljava/lang/String;)V

    #@1d
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cn;->aeP:Ljava/lang/String;

    #@1f
    goto :goto_6
.end method

.method cb(Ljava/lang/String;)V
    .registers 4

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "Setting previous container version: "

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
    move-result-object v0

    #@13
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->z(Ljava/lang/String;)V

    #@16
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cn;->agP:Ljava/lang/String;

    #@18
    return-void
.end method

.method mi()Ljava/lang/String;
    .registers 4

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->agO:Lcom/google/android/gms/tagmanager/r;

    #@7
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/r;->lx()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->aeP:Ljava/lang/String;

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string v1, "&v=a65833898"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->agP:Ljava/lang/String;

    #@21
    if-eqz v1, :cond_4a

    #@23
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->agP:Ljava/lang/String;

    #@25
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    const-string v2, ""

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_4a

    #@31
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    const-string v1, "&pv="

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cn;->agP:Ljava/lang/String;

    #@42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    :cond_4a
    invoke-static {}, Lcom/google/android/gms/tagmanager/cd;->md()Lcom/google/android/gms/tagmanager/cd;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/cd;->me()Lcom/google/android/gms/tagmanager/cd$a;

    #@51
    move-result-object v1

    #@52
    sget-object v2, Lcom/google/android/gms/tagmanager/cd$a;->agD:Lcom/google/android/gms/tagmanager/cd$a;

    #@54
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tagmanager/cd$a;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_6d

    #@5a
    new-instance v1, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v0

    #@63
    const-string v1, "&gtm_debug=x"

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    :cond_6d
    return-object v0
.end method

.method public run()V
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agN:Lcom/google/android/gms/tagmanager/bg;

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
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cn;->agN:Lcom/google/android/gms/tagmanager/bg;

    #@e
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/bg;->lv()V

    #@11
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/cn;->mh()V

    #@14
    return-void
.end method
