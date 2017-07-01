.class Lcom/google/android/gms/tagmanager/ao;
.super Lcom/google/android/gms/tagmanager/aj;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final afA:Ljava/lang/String;

.field private static final afE:Ljava/lang/String;

.field private static final afy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->aa:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/ao;->ID:Ljava/lang/String;

    #@8
    sget-object v0, Lcom/google/android/gms/internal/b;->bi:Lcom/google/android/gms/internal/b;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/gms/tagmanager/ao;->afy:Ljava/lang/String;

    #@10
    sget-object v0, Lcom/google/android/gms/internal/b;->aZ:Lcom/google/android/gms/internal/b;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/google/android/gms/tagmanager/ao;->afE:Ljava/lang/String;

    #@18
    sget-object v0, Lcom/google/android/gms/internal/b;->cH:Lcom/google/android/gms/internal/b;

    #@1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/google/android/gms/tagmanager/ao;->afA:Ljava/lang/String;

    #@20
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/ao;->ID:Ljava/lang/String;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    sget-object v3, Lcom/google/android/gms/tagmanager/ao;->afy:Ljava/lang/String;

    #@8
    aput-object v3, v1, v2

    #@a
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    #@d
    return-void
.end method

.method private c(Ljava/lang/String;[B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    #@7
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method


# virtual methods
.method public lh()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public w(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)",
            "Lcom/google/android/gms/internal/d$a;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/ao;->afy:Ljava/lang/String;

    #@2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@8
    if-eqz v0, :cond_10

    #@a
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@d
    move-result-object v1

    #@e
    if-ne v0, v1, :cond_15

    #@10
    :cond_10
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@13
    move-result-object v0

    #@14
    :goto_14
    return-object v0

    #@15
    :cond_15
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    sget-object v0, Lcom/google/android/gms/tagmanager/ao;->afE:Ljava/lang/String;

    #@1b
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@21
    if-nez v0, :cond_4b

    #@23
    const-string v0, "MD5"

    #@25
    move-object v1, v0

    #@26
    :goto_26
    sget-object v0, Lcom/google/android/gms/tagmanager/ao;->afA:Ljava/lang/String;

    #@28
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@2e
    if-nez v0, :cond_51

    #@30
    const-string v0, "text"

    #@32
    :goto_32
    const-string v3, "text"

    #@34
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_56

    #@3a
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    #@3d
    move-result-object v0

    #@3e
    :goto_3e
    :try_start_3e
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/tagmanager/ao;->c(Ljava/lang/String;[B)[B

    #@41
    move-result-object v0

    #@42
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/j;->d([B)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
    :try_end_49
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3e .. :try_end_49} :catch_7e

    #@49
    move-result-object v0

    #@4a
    goto :goto_14

    #@4b
    :cond_4b
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    move-object v1, v0

    #@50
    goto :goto_26

    #@51
    :cond_51
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    goto :goto_32

    #@56
    :cond_56
    const-string v3, "base16"

    #@58
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v3

    #@5c
    if-eqz v3, :cond_63

    #@5e
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/j;->bE(Ljava/lang/String;)[B

    #@61
    move-result-object v0

    #@62
    goto :goto_3e

    #@63
    :cond_63
    new-instance v1, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string v2, "Hash: unknown input format: "

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@79
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@7c
    move-result-object v0

    #@7d
    goto :goto_14

    #@7e
    :catch_7e
    move-exception v0

    #@7f
    new-instance v0, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string v2, "Hash: unknown algorithm: "

    #@86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v0

    #@8e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v0

    #@92
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@95
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@98
    move-result-object v0

    #@99
    goto/16 :goto_14
.end method
