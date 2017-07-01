.class Lcom/google/android/gms/tagmanager/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/aq;


# static fields
.field private static afu:Lcom/google/android/gms/tagmanager/y;

.field private static final tq:Ljava/lang/Object;


# instance fields
.field private aeJ:Lcom/google/android/gms/tagmanager/cf;

.field private afv:Ljava/lang/String;

.field private afw:Ljava/lang/String;

.field private afx:Lcom/google/android/gms/tagmanager/ar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/gms/tagmanager/y;->tq:Ljava/lang/Object;

    #@7
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/as;->P(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/as;

    #@3
    move-result-object v0

    #@4
    new-instance v1, Lcom/google/android/gms/tagmanager/cv;

    #@6
    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/cv;-><init>()V

    #@9
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/y;-><init>(Lcom/google/android/gms/tagmanager/ar;Lcom/google/android/gms/tagmanager/cf;)V

    #@c
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/ar;Lcom/google/android/gms/tagmanager/cf;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/y;->afx:Lcom/google/android/gms/tagmanager/ar;

    #@5
    iput-object p2, p0, Lcom/google/android/gms/tagmanager/y;->aeJ:Lcom/google/android/gms/tagmanager/cf;

    #@7
    return-void
.end method

.method public static N(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/aq;
    .registers 3

    #@0
    sget-object v1, Lcom/google/android/gms/tagmanager/y;->tq:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/tagmanager/y;->afu:Lcom/google/android/gms/tagmanager/y;

    #@5
    if-nez v0, :cond_e

    #@7
    new-instance v0, Lcom/google/android/gms/tagmanager/y;

    #@9
    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/y;-><init>(Landroid/content/Context;)V

    #@c
    sput-object v0, Lcom/google/android/gms/tagmanager/y;->afu:Lcom/google/android/gms/tagmanager/y;

    #@e
    :cond_e
    sget-object v0, Lcom/google/android/gms/tagmanager/y;->afu:Lcom/google/android/gms/tagmanager/y;

    #@10
    monitor-exit v1

    #@11
    return-object v0

    #@12
    :catchall_12
    move-exception v0

    #@13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    #@14
    throw v0
.end method


# virtual methods
.method public bR(Ljava/lang/String;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/y;->aeJ:Lcom/google/android/gms/tagmanager/cf;

    #@3
    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/cf;->do()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_f

    #@9
    const-string v1, "Too many urls sent too quickly with the TagManagerSender, rate limiting invoked."

    #@b
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V

    #@e
    :goto_e
    return v0

    #@f
    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/y;->afv:Ljava/lang/String;

    #@11
    if-eqz v1, :cond_58

    #@13
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/y;->afw:Ljava/lang/String;

    #@15
    if-eqz v1, :cond_58

    #@17
    :try_start_17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/y;->afv:Ljava/lang/String;

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string v2, "?"

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/y;->afw:Ljava/lang/String;

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string v2, "="

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    const-string v2, "UTF-8"

    #@36
    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object p1

    #@42
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string v2, "Sending wrapped url hit: "

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_58} :catch_5f

    #@58
    :cond_58
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/y;->afx:Lcom/google/android/gms/tagmanager/ar;

    #@5a
    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/ar;->bU(Ljava/lang/String;)V

    #@5d
    const/4 v0, 0x1

    #@5e
    goto :goto_e

    #@5f
    :catch_5f
    move-exception v1

    #@60
    const-string v2, "Error wrapping URL for testing."

    #@62
    invoke-static {v2, v1}, Lcom/google/android/gms/tagmanager/bh;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@65
    goto :goto_e
.end method
