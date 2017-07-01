.class Lcom/google/android/gms/tagmanager/ac;
.super Lcom/google/android/gms/tagmanager/aj;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final afA:Ljava/lang/String;

.field private static final afB:Ljava/lang/String;

.field private static final afy:Ljava/lang/String;

.field private static final afz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->Y:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/ac;->ID:Ljava/lang/String;

    #@8
    sget-object v0, Lcom/google/android/gms/internal/b;->bi:Lcom/google/android/gms/internal/b;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/gms/tagmanager/ac;->afy:Ljava/lang/String;

    #@10
    sget-object v0, Lcom/google/android/gms/internal/b;->di:Lcom/google/android/gms/internal/b;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/google/android/gms/tagmanager/ac;->afz:Ljava/lang/String;

    #@18
    sget-object v0, Lcom/google/android/gms/internal/b;->cH:Lcom/google/android/gms/internal/b;

    #@1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/google/android/gms/tagmanager/ac;->afA:Ljava/lang/String;

    #@20
    sget-object v0, Lcom/google/android/gms/internal/b;->dq:Lcom/google/android/gms/internal/b;

    #@22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    sput-object v0, Lcom/google/android/gms/tagmanager/ac;->afB:Ljava/lang/String;

    #@28
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/ac;->ID:Ljava/lang/String;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    sget-object v3, Lcom/google/android/gms/tagmanager/ac;->afy:Ljava/lang/String;

    #@8
    aput-object v3, v1, v2

    #@a
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    #@d
    return-void
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
    .registers 7
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
    sget-object v0, Lcom/google/android/gms/tagmanager/ac;->afy:Ljava/lang/String;

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
    move-result-object v4

    #@19
    sget-object v0, Lcom/google/android/gms/tagmanager/ac;->afA:Ljava/lang/String;

    #@1b
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v0

    #@1f
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@21
    if-nez v0, :cond_66

    #@23
    const-string v0, "text"

    #@25
    move-object v1, v0

    #@26
    :goto_26
    sget-object v0, Lcom/google/android/gms/tagmanager/ac;->afB:Ljava/lang/String;

    #@28
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@2e
    if-nez v0, :cond_6c

    #@30
    const-string v0, "base16"

    #@32
    move-object v2, v0

    #@33
    :goto_33
    sget-object v0, Lcom/google/android/gms/tagmanager/ac;->afz:Ljava/lang/String;

    #@35
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@3b
    if-eqz v0, :cond_fb

    #@3d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->n(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Boolean;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_fb

    #@47
    const/4 v0, 0x3

    #@48
    move v3, v0

    #@49
    :goto_49
    :try_start_49
    const-string v0, "text"

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v0

    #@4f
    if-eqz v0, :cond_72

    #@51
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
    :try_end_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_54} :catch_b7

    #@54
    move-result-object v0

    #@55
    :goto_55
    const-string v1, "base16"

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_c3

    #@5d
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/j;->d([B)Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    :goto_61
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@64
    move-result-object v0

    #@65
    goto :goto_14

    #@66
    :cond_66
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@69
    move-result-object v0

    #@6a
    move-object v1, v0

    #@6b
    goto :goto_26

    #@6c
    :cond_6c
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    move-object v2, v0

    #@71
    goto :goto_33

    #@72
    :cond_72
    :try_start_72
    const-string v0, "base16"

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v0

    #@78
    if-eqz v0, :cond_7f

    #@7a
    invoke-static {v4}, Lcom/google/android/gms/tagmanager/j;->bE(Ljava/lang/String;)[B

    #@7d
    move-result-object v0

    #@7e
    goto :goto_55

    #@7f
    :cond_7f
    const-string v0, "base64"

    #@81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@84
    move-result v0

    #@85
    if-eqz v0, :cond_8c

    #@87
    invoke-static {v4, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@8a
    move-result-object v0

    #@8b
    goto :goto_55

    #@8c
    :cond_8c
    const-string v0, "base64url"

    #@8e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@91
    move-result v0

    #@92
    if-eqz v0, :cond_9b

    #@94
    or-int/lit8 v0, v3, 0x8

    #@96
    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    #@99
    move-result-object v0

    #@9a
    goto :goto_55

    #@9b
    :cond_9b
    new-instance v0, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string v2, "Encode: unknown input format: "

    #@a2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v0

    #@a6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v0

    #@aa
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v0

    #@ae
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@b1
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;
    :try_end_b4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_72 .. :try_end_b4} :catch_b7

    #@b4
    move-result-object v0

    #@b5
    goto/16 :goto_14

    #@b7
    :catch_b7
    move-exception v0

    #@b8
    const-string v0, "Encode: invalid input:"

    #@ba
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@bd
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@c0
    move-result-object v0

    #@c1
    goto/16 :goto_14

    #@c3
    :cond_c3
    const-string v1, "base64"

    #@c5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c8
    move-result v1

    #@c9
    if-eqz v1, :cond_d0

    #@cb
    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@ce
    move-result-object v0

    #@cf
    goto :goto_61

    #@d0
    :cond_d0
    const-string v1, "base64url"

    #@d2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d5
    move-result v1

    #@d6
    if-eqz v1, :cond_df

    #@d8
    or-int/lit8 v1, v3, 0x8

    #@da
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    #@dd
    move-result-object v0

    #@de
    goto :goto_61

    #@df
    :cond_df
    new-instance v0, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string v1, "Encode: unknown output format: "

    #@e6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v0

    #@ea
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v0

    #@ee
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v0

    #@f2
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@f5
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@f8
    move-result-object v0

    #@f9
    goto/16 :goto_14

    #@fb
    :cond_fb
    const/4 v0, 0x2

    #@fc
    move v3, v0

    #@fd
    goto/16 :goto_49
.end method
