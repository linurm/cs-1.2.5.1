.class Lcom/google/android/gms/tagmanager/cd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/cd$a;
    }
.end annotation


# static fields
.field private static agx:Lcom/google/android/gms/tagmanager/cd;


# instance fields
.field private volatile aet:Ljava/lang/String;

.field private volatile agA:Ljava/lang/String;

.field private volatile agy:Lcom/google/android/gms/tagmanager/cd$a;

.field private volatile agz:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/cd;->clear()V

    #@6
    return-void
.end method

.method private ca(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    #@0
    const-string v0, "&"

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    aget-object v0, v0, v1

    #@9
    const-string v1, "="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    const/4 v1, 0x1

    #@10
    aget-object v0, v0, v1

    #@12
    return-object v0
.end method

.method private j(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    #@0
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    const-string v1, "&gtm_debug=x"

    #@6
    const-string v2, ""

    #@8
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method static md()Lcom/google/android/gms/tagmanager/cd;
    .registers 2

    #@0
    const-class v0, Lcom/google/android/gms/tagmanager/cd;

    #@2
    monitor-enter v0

    #@3
    :try_start_3
    sget-object v0, Lcom/google/android/gms/tagmanager/cd;->agx:Lcom/google/android/gms/tagmanager/cd;

    #@5
    if-nez v0, :cond_e

    #@7
    new-instance v0, Lcom/google/android/gms/tagmanager/cd;

    #@9
    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/cd;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/gms/tagmanager/cd;->agx:Lcom/google/android/gms/tagmanager/cd;

    #@e
    :cond_e
    sget-object v0, Lcom/google/android/gms/tagmanager/cd;->agx:Lcom/google/android/gms/tagmanager/cd;

    #@10
    const-class v1, Lcom/google/android/gms/tagmanager/cd;

    #@12
    monitor-exit v1

    #@13
    return-object v0

    #@14
    :catchall_14
    move-exception v0

    #@15
    const-class v1, Lcom/google/android/gms/tagmanager/cd;

    #@17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_14

    #@18
    throw v0
.end method


# virtual methods
.method clear()V
    .registers 3

    #@0
    const/4 v1, 0x0

    #@1
    sget-object v0, Lcom/google/android/gms/tagmanager/cd$a;->agB:Lcom/google/android/gms/tagmanager/cd$a;

    #@3
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->agy:Lcom/google/android/gms/tagmanager/cd$a;

    #@5
    iput-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->agz:Ljava/lang/String;

    #@7
    iput-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->aet:Ljava/lang/String;

    #@9
    iput-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->agA:Ljava/lang/String;

    #@b
    return-void
.end method

.method getContainerId()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->aet:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method i(Landroid/net/Uri;)Z
    .registers 6

    #@0
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    monitor-enter p0

    #@3
    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    const-string v3, "UTF-8"

    #@9
    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_c} :catch_6a
    .catchall {:try_start_3 .. :try_end_c} :catchall_72

    #@c
    move-result-object v2

    #@d
    :try_start_d
    const-string v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_75

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string v3, "Container preview url: "

    #@1c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@2b
    const-string v1, ".*?&gtm_debug=x$"

    #@2d
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_6d

    #@33
    sget-object v1, Lcom/google/android/gms/tagmanager/cd$a;->agD:Lcom/google/android/gms/tagmanager/cd$a;

    #@35
    iput-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->agy:Lcom/google/android/gms/tagmanager/cd$a;

    #@37
    :goto_37
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/cd;->j(Landroid/net/Uri;)Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    iput-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->agA:Ljava/lang/String;

    #@3d
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->agy:Lcom/google/android/gms/tagmanager/cd$a;

    #@3f
    sget-object v2, Lcom/google/android/gms/tagmanager/cd$a;->agC:Lcom/google/android/gms/tagmanager/cd$a;

    #@41
    if-eq v1, v2, :cond_49

    #@43
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->agy:Lcom/google/android/gms/tagmanager/cd$a;

    #@45
    sget-object v2, Lcom/google/android/gms/tagmanager/cd$a;->agD:Lcom/google/android/gms/tagmanager/cd$a;

    #@47
    if-ne v1, v2, :cond_60

    #@49
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string v2, "/r?"

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cd;->agA:Ljava/lang/String;

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    iput-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->agz:Ljava/lang/String;

    #@60
    :cond_60
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->agA:Ljava/lang/String;

    #@62
    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/cd;->ca(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    iput-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->aet:Ljava/lang/String;
    :try_end_68
    .catchall {:try_start_d .. :try_end_68} :catchall_72

    #@68
    :goto_68
    monitor-exit p0

    #@69
    return v0

    #@6a
    :catch_6a
    move-exception v0

    #@6b
    move v0, v1

    #@6c
    goto :goto_68

    #@6d
    :cond_6d
    :try_start_6d
    sget-object v1, Lcom/google/android/gms/tagmanager/cd$a;->agC:Lcom/google/android/gms/tagmanager/cd$a;

    #@6f
    iput-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->agy:Lcom/google/android/gms/tagmanager/cd$a;
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_72

    #@71
    goto :goto_37

    #@72
    :catchall_72
    move-exception v0

    #@73
    monitor-exit p0

    #@74
    throw v0

    #@75
    :cond_75
    :try_start_75
    const-string v3, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

    #@77
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@7a
    move-result v3

    #@7b
    if-eqz v3, :cond_af

    #@7d
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    #@80
    move-result-object v2

    #@81
    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/cd;->ca(Ljava/lang/String;)Ljava/lang/String;

    #@84
    move-result-object v2

    #@85
    iget-object v3, p0, Lcom/google/android/gms/tagmanager/cd;->aet:Ljava/lang/String;

    #@87
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8a
    move-result v2

    #@8b
    if-eqz v2, :cond_ad

    #@8d
    new-instance v1, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    const-string v2, "Exit preview mode for container: "

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cd;->aet:Ljava/lang/String;

    #@9a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v1

    #@a2
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/bh;->C(Ljava/lang/String;)V

    #@a5
    sget-object v1, Lcom/google/android/gms/tagmanager/cd$a;->agB:Lcom/google/android/gms/tagmanager/cd$a;

    #@a7
    iput-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->agy:Lcom/google/android/gms/tagmanager/cd$a;

    #@a9
    const/4 v1, 0x0

    #@aa
    iput-object v1, p0, Lcom/google/android/gms/tagmanager/cd;->agz:Ljava/lang/String;

    #@ac
    goto :goto_68

    #@ad
    :cond_ad
    move v0, v1

    #@ae
    goto :goto_68

    #@af
    :cond_af
    new-instance v0, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string v3, "Invalid preview uri: "

    #@b6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v0

    #@ba
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v0

    #@be
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v0

    #@c2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->D(Ljava/lang/String;)V
    :try_end_c5
    .catchall {:try_start_75 .. :try_end_c5} :catchall_72

    #@c5
    move v0, v1

    #@c6
    goto :goto_68
.end method

.method me()Lcom/google/android/gms/tagmanager/cd$a;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->agy:Lcom/google/android/gms/tagmanager/cd$a;

    #@2
    return-object v0
.end method

.method mf()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cd;->agz:Ljava/lang/String;

    #@2
    return-object v0
.end method
