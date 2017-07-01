.class Lcom/google/android/gms/tagmanager/az;
.super Lcom/google/android/gms/tagmanager/aj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/az$a;
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final afU:Ljava/lang/String;

.field private static final afV:Ljava/lang/String;

.field private static final afW:Ljava/lang/String;

.field private static final afy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    sget-object v0, Lcom/google/android/gms/internal/a;->ac:Lcom/google/android/gms/internal/a;

    #@2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/google/android/gms/tagmanager/az;->ID:Ljava/lang/String;

    #@8
    sget-object v0, Lcom/google/android/gms/internal/b;->bi:Lcom/google/android/gms/internal/b;

    #@a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    sput-object v0, Lcom/google/android/gms/tagmanager/az;->afy:Ljava/lang/String;

    #@10
    sget-object v0, Lcom/google/android/gms/internal/b;->cL:Lcom/google/android/gms/internal/b;

    #@12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    sput-object v0, Lcom/google/android/gms/tagmanager/az;->afU:Ljava/lang/String;

    #@18
    sget-object v0, Lcom/google/android/gms/internal/b;->cO:Lcom/google/android/gms/internal/b;

    #@1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    sput-object v0, Lcom/google/android/gms/tagmanager/az;->afV:Ljava/lang/String;

    #@20
    sget-object v0, Lcom/google/android/gms/internal/b;->co:Lcom/google/android/gms/internal/b;

    #@22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/b;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    sput-object v0, Lcom/google/android/gms/tagmanager/az;->afW:Ljava/lang/String;

    #@28
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/az;->ID:Ljava/lang/String;

    #@2
    const/4 v1, 0x1

    #@3
    new-array v1, v1, [Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    sget-object v3, Lcom/google/android/gms/tagmanager/az;->afy:Ljava/lang/String;

    #@8
    aput-object v3, v1, v2

    #@a
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    #@d
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/google/android/gms/tagmanager/az$a;Ljava/util/Set;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/az$a;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    sget-object v0, Lcom/google/android/gms/tagmanager/az$1;->afX:[I

    #@2
    invoke-virtual {p2}, Lcom/google/android/gms/tagmanager/az$a;->ordinal()I

    #@5
    move-result v1

    #@6
    aget v0, v0, v1

    #@8
    packed-switch v0, :pswitch_data_50

    #@b
    :goto_b
    return-object p1

    #@c
    :pswitch_c
    :try_start_c
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/dk;->cv(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_f} :catch_11

    #@f
    move-result-object p1

    #@10
    goto :goto_b

    #@11
    :catch_11
    move-exception v0

    #@12
    const-string v1, "Joiner: unsupported encoding"

    #@14
    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/bh;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@17
    goto :goto_b

    #@18
    :pswitch_18
    const-string v0, "\\"

    #@1a
    const-string v1, "\\\\"

    #@1c
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v2

    #@24
    move-object v1, v0

    #@25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_4e

    #@2b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    check-cast v0, Ljava/lang/Character;

    #@31
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    new-instance v3, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string v4, "\\"

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@4b
    move-result-object v0

    #@4c
    move-object v1, v0

    #@4d
    goto :goto_25

    #@4e
    :cond_4e
    move-object p1, v1

    #@4f
    goto :goto_b

    #@50
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_c
        :pswitch_18
    .end packed-switch
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/az$a;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tagmanager/az$a;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    #@0
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/tagmanager/az;->a(Ljava/lang/String;Lcom/google/android/gms/tagmanager/az$a;Ljava/util/Set;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    return-void
.end method

.method private a(Ljava/util/Set;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-ge v0, v1, :cond_15

    #@7
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    #@a
    move-result v1

    #@b
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@e
    move-result-object v1

    #@f
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_1

    #@15
    :cond_15
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
    .registers 12
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
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    sget-object v0, Lcom/google/android/gms/tagmanager/az;->afy:Ljava/lang/String;

    #@4
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Lcom/google/android/gms/internal/d$a;

    #@a
    if-nez v0, :cond_11

    #@c
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@f
    move-result-object v0

    #@10
    :goto_10
    return-object v0

    #@11
    :cond_11
    sget-object v1, Lcom/google/android/gms/tagmanager/az;->afU:Ljava/lang/String;

    #@13
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Lcom/google/android/gms/internal/d$a;

    #@19
    if-eqz v1, :cond_64

    #@1b
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    move-object v2, v1

    #@20
    :goto_20
    sget-object v1, Lcom/google/android/gms/tagmanager/az;->afV:Ljava/lang/String;

    #@22
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    check-cast v1, Lcom/google/android/gms/internal/d$a;

    #@28
    if-eqz v1, :cond_68

    #@2a
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    move-object v3, v1

    #@2f
    :goto_2f
    sget-object v4, Lcom/google/android/gms/tagmanager/az$a;->afY:Lcom/google/android/gms/tagmanager/az$a;

    #@31
    sget-object v1, Lcom/google/android/gms/tagmanager/az;->afW:Ljava/lang/String;

    #@33
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Lcom/google/android/gms/internal/d$a;

    #@39
    if-eqz v1, :cond_e7

    #@3b
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    const-string v4, "url"

    #@41
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_6c

    #@47
    sget-object v1, Lcom/google/android/gms/tagmanager/az$a;->afZ:Lcom/google/android/gms/tagmanager/az$a;

    #@49
    move-object v4, v5

    #@4a
    :goto_4a
    new-instance v7, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    iget v5, v0, Lcom/google/android/gms/internal/d$a;->type:I

    #@51
    packed-switch v5, :pswitch_data_ec

    #@54
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    invoke-direct {p0, v7, v0, v1, v4}, Lcom/google/android/gms/tagmanager/az;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/az$a;Ljava/util/Set;)V

    #@5b
    :cond_5b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dh;->r(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    #@62
    move-result-object v0

    #@63
    goto :goto_10

    #@64
    :cond_64
    const-string v1, ""

    #@66
    move-object v2, v1

    #@67
    goto :goto_20

    #@68
    :cond_68
    const-string v1, "="

    #@6a
    move-object v3, v1

    #@6b
    goto :goto_2f

    #@6c
    :cond_6c
    const-string v4, "backslash"

    #@6e
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v4

    #@72
    if-eqz v4, :cond_8b

    #@74
    sget-object v1, Lcom/google/android/gms/tagmanager/az$a;->aga:Lcom/google/android/gms/tagmanager/az$a;

    #@76
    new-instance v4, Ljava/util/HashSet;

    #@78
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    #@7b
    invoke-direct {p0, v4, v2}, Lcom/google/android/gms/tagmanager/az;->a(Ljava/util/Set;Ljava/lang/String;)V

    #@7e
    invoke-direct {p0, v4, v3}, Lcom/google/android/gms/tagmanager/az;->a(Ljava/util/Set;Ljava/lang/String;)V

    #@81
    const/16 v5, 0x5c

    #@83
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@86
    move-result-object v5

    #@87
    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@8a
    goto :goto_4a

    #@8b
    :cond_8b
    new-instance v0, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string v2, "Joiner: unsupported escape type: "

    #@92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v0

    #@9e
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->A(Ljava/lang/String;)V

    #@a1
    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->nd()Lcom/google/android/gms/internal/d$a;

    #@a4
    move-result-object v0

    #@a5
    goto/16 :goto_10

    #@a7
    :pswitch_a7
    const/4 v3, 0x1

    #@a8
    iget-object v5, v0, Lcom/google/android/gms/internal/d$a;->fO:[Lcom/google/android/gms/internal/d$a;

    #@aa
    array-length v8, v5

    #@ab
    move v0, v6

    #@ac
    :goto_ac
    if-ge v0, v8, :cond_5b

    #@ae
    aget-object v9, v5, v0

    #@b0
    if-nez v3, :cond_b5

    #@b2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    :cond_b5
    invoke-static {v9}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@b8
    move-result-object v3

    #@b9
    invoke-direct {p0, v7, v3, v1, v4}, Lcom/google/android/gms/tagmanager/az;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/az$a;Ljava/util/Set;)V

    #@bc
    add-int/lit8 v0, v0, 0x1

    #@be
    move v3, v6

    #@bf
    goto :goto_ac

    #@c0
    :pswitch_c0
    move v5, v6

    #@c1
    :goto_c1
    iget-object v6, v0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    #@c3
    array-length v6, v6

    #@c4
    if-ge v5, v6, :cond_5b

    #@c6
    if-lez v5, :cond_cb

    #@c8
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    :cond_cb
    iget-object v6, v0, Lcom/google/android/gms/internal/d$a;->fP:[Lcom/google/android/gms/internal/d$a;

    #@cd
    aget-object v6, v6, v5

    #@cf
    invoke-static {v6}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@d2
    move-result-object v6

    #@d3
    iget-object v8, v0, Lcom/google/android/gms/internal/d$a;->fQ:[Lcom/google/android/gms/internal/d$a;

    #@d5
    aget-object v8, v8, v5

    #@d7
    invoke-static {v8}, Lcom/google/android/gms/tagmanager/dh;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;

    #@da
    move-result-object v8

    #@db
    invoke-direct {p0, v7, v6, v1, v4}, Lcom/google/android/gms/tagmanager/az;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/az$a;Ljava/util/Set;)V

    #@de
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {p0, v7, v8, v1, v4}, Lcom/google/android/gms/tagmanager/az;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/google/android/gms/tagmanager/az$a;Ljava/util/Set;)V

    #@e4
    add-int/lit8 v5, v5, 0x1

    #@e6
    goto :goto_c1

    #@e7
    :cond_e7
    move-object v1, v4

    #@e8
    move-object v4, v5

    #@e9
    goto/16 :goto_4a

    #@eb
    nop

    #@ec
    :pswitch_data_ec
    .packed-switch 0x2
        :pswitch_a7
        :pswitch_c0
    .end packed-switch
.end method
