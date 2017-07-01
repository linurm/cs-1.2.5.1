.class Lcom/google/android/gms/tagmanager/cg;
.super Lcom/google/android/gms/tagmanager/aj;


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final agH:Ljava/lang/String;

.field private static final agI:Ljava/lang/String;

.field private static final agJ:Ljava/lang/String;

.field private static final agK:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->ae:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/cg;->ID:Ljava/lang/String;

    #@8
    sget-object v0, Lcom/google/android/gms/internal/b;->bi:Lcom/google/android/gms/internal/b;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/gms/tagmanager/cg;->agH:Ljava/lang/String;

    #@10
    sget-object v0, Lcom/google/android/gms/internal/b;->bj:Lcom/google/android/gms/internal/b;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/google/android/gms/tagmanager/cg;->agI:Ljava/lang/String;

    #@18
    sget-object v0, Lcom/google/android/gms/internal/b;->cF:Lcom/google/android/gms/internal/b;

    #@1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/google/android/gms/tagmanager/cg;->agJ:Ljava/lang/String;

    #@20
    sget-object v0, Lcom/google/android/gms/internal/b;->cz:Lcom/google/android/gms/internal/b;

    #@22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    sput-object v0, Lcom/google/android/gms/tagmanager/cg;->agK:Ljava/lang/String;

    #@28
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/cg;->ID:Ljava/lang/String;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    sget-object v3, Lcom/google/android/gms/tagmanager/cg;->agH:Ljava/lang/String;

    #@8
    aput-object v3, v1, v2

    #@a
    const/4 v2, 0x1

    #@b
    sget-object v3, Lcom/google/android/gms/tagmanager/cg;->agI:Ljava/lang/String;

    #@d
    aput-object v3, v1, v2

    #@f
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    #@12
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
    sget-object v0, Lcom/google/android/gms/tagmanager/cg;->agH:Ljava/lang/String;

    #@2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@8
    sget-object v1, Lcom/google/android/gms/tagmanager/cg;->agI:Ljava/lang/String;

    #@a
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/google/android/gms/internal/d$a;

    #@10
    if-eqz v0, :cond_20

    #@12
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@15
    move-result-object v2

    #@16
    if-eq v0, v2, :cond_20

    #@18
    if-eqz v1, :cond_20

    #@1a
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@1d
    move-result-object v2

    #@1e
    if-ne v1, v2, :cond_25

    #@20
    :cond_20
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@23
    move-result-object v0

    #@24
    :goto_24
    return-object v0

    #@25
    :cond_25
    const/16 v3, 0x40

    #@27
    sget-object v2, Lcom/google/android/gms/tagmanager/cg;->agJ:Ljava/lang/String;

    #@29
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Lcom/google/android/gms/internal/d$a;

    #@2f
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/dh;->n(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Boolean;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_3c

    #@39
    const/16 v2, 0x42

    #@3b
    move v3, v2

    #@3c
    :cond_3c
    sget-object v2, Lcom/google/android/gms/tagmanager/cg;->agK:Ljava/lang/String;

    #@3e
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Lcom/google/android/gms/internal/d$a;

    #@44
    if-eqz v2, :cond_60

    #@46
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/dh;->l(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Long;

    #@49
    move-result-object v2

    #@4a
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->mY()Ljava/lang/Long;

    #@4d
    move-result-object v4

    #@4e
    if-ne v2, v4, :cond_55

    #@50
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@53
    move-result-object v0

    #@54
    goto :goto_24

    #@55
    :cond_55
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    #@58
    move-result v2

    #@59
    if-gez v2, :cond_61

    #@5b
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@5e
    move-result-object v0

    #@5f
    goto :goto_24

    #@60
    :cond_60
    const/4 v2, 0x1

    #@61
    :cond_61
    :try_start_61
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@68
    move-result-object v1

    #@69
    const/4 v0, 0x0

    #@6a
    invoke-static {v1, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@71
    move-result-object v1

    #@72
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    #@75
    move-result v3

    #@76
    if-eqz v3, :cond_82

    #@78
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    #@7b
    move-result v3

    #@7c
    if-lt v3, v2, :cond_82

    #@7e
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@81
    move-result-object v0

    #@82
    :cond_82
    if-nez v0, :cond_89

    #@84
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@87
    move-result-object v0

    #@88
    goto :goto_24

    #@89
    :cond_89
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;
    :try_end_8c
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_61 .. :try_end_8c} :catch_8e

    #@8c
    move-result-object v0

    #@8d
    goto :goto_24

    #@8e
    :catch_8e
    move-exception v0

    #@8f
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@92
    move-result-object v0

    #@93
    goto :goto_24
.end method
