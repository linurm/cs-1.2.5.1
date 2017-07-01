.class public Lcom/google/android/gms/internal/mb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/ma",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final amY:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final amZ:Z

.field protected final tag:I

.field protected final type:I


# direct methods
.method private constructor <init>(ILjava/lang/Class;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;IZ)V"
        }
    .end annotation

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/google/android/gms/internal/mb;->type:I

    #@5
    iput-object p2, p0, Lcom/google/android/gms/internal/mb;->amY:Ljava/lang/Class;

    #@7
    iput p3, p0, Lcom/google/android/gms/internal/mb;->tag:I

    #@9
    iput-boolean p4, p0, Lcom/google/android/gms/internal/mb;->amZ:Z

    #@b
    return-void
.end method

.method public static a(ILjava/lang/Class;I)Lcom/google/android/gms/internal/mb;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/google/android/gms/internal/ma",
            "<TM;>;T:",
            "Lcom/google/android/gms/internal/me;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;I)",
            "Lcom/google/android/gms/internal/mb",
            "<TM;TT;>;"
        }
    .end annotation

    #@0
    new-instance v0, Lcom/google/android/gms/internal/mb;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/mb;-><init>(ILjava/lang/Class;IZ)V

    #@6
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/mg;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mg;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    iget-object v0, p1, Lcom/google/android/gms/internal/mg;->anc:[B

    #@2
    invoke-static {v0}, Lcom/google/android/gms/internal/ly;->p([B)Lcom/google/android/gms/internal/ly;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mb;->u(Lcom/google/android/gms/internal/ly;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    return-void
.end method

.method protected eM(I)Z
    .registers 3

    #@0
    iget v0, p0, Lcom/google/android/gms/internal/mb;->tag:I

    #@2
    if-ne p1, v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    :goto_5
    return v0

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    goto :goto_5
.end method

.method final i(Ljava/util/List;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/mg;",
            ">;)TT;"
        }
    .end annotation

    #@0
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    if-nez p1, :cond_6

    #@4
    move-object v0, v3

    #@5
    :cond_5
    :goto_5
    return-object v0

    #@6
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mb;->amZ:Z

    #@8
    if-eqz v0, :cond_54

    #@a
    new-instance v4, Ljava/util/ArrayList;

    #@c
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@f
    move v1, v2

    #@10
    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@13
    move-result v0

    #@14
    if-ge v1, v0, :cond_30

    #@16
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/google/android/gms/internal/mg;

    #@1c
    iget v5, v0, Lcom/google/android/gms/internal/mg;->tag:I

    #@1e
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/mb;->eM(I)Z

    #@21
    move-result v5

    #@22
    if-eqz v5, :cond_2c

    #@24
    iget-object v5, v0, Lcom/google/android/gms/internal/mg;->anc:[B

    #@26
    array-length v5, v5

    #@27
    if-eqz v5, :cond_2c

    #@29
    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/internal/mb;->a(Lcom/google/android/gms/internal/mg;Ljava/util/List;)V

    #@2c
    :cond_2c
    add-int/lit8 v0, v1, 0x1

    #@2e
    move v1, v0

    #@2f
    goto :goto_10

    #@30
    :cond_30
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@33
    move-result v1

    #@34
    if-nez v1, :cond_38

    #@36
    move-object v0, v3

    #@37
    goto :goto_5

    #@38
    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/mb;->amY:Ljava/lang/Class;

    #@3a
    iget-object v3, p0, Lcom/google/android/gms/internal/mb;->amY:Ljava/lang/Class;

    #@3c
    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@3f
    move-result-object v3

    #@40
    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    move-result-object v0

    #@48
    :goto_48
    if-ge v2, v1, :cond_5

    #@4a
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4d
    move-result-object v3

    #@4e
    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    #@51
    add-int/lit8 v2, v2, 0x1

    #@53
    goto :goto_48

    #@54
    :cond_54
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@57
    move-result v0

    #@58
    add-int/lit8 v0, v0, -0x1

    #@5a
    move-object v1, v3

    #@5b
    move v2, v0

    #@5c
    :goto_5c
    if-nez v1, :cond_78

    #@5e
    if-ltz v2, :cond_78

    #@60
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@63
    move-result-object v0

    #@64
    check-cast v0, Lcom/google/android/gms/internal/mg;

    #@66
    iget v4, v0, Lcom/google/android/gms/internal/mg;->tag:I

    #@68
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/mb;->eM(I)Z

    #@6b
    move-result v4

    #@6c
    if-eqz v4, :cond_8e

    #@6e
    iget-object v4, v0, Lcom/google/android/gms/internal/mg;->anc:[B

    #@70
    array-length v4, v4

    #@71
    if-eqz v4, :cond_8e

    #@73
    :goto_73
    add-int/lit8 v1, v2, -0x1

    #@75
    move v2, v1

    #@76
    move-object v1, v0

    #@77
    goto :goto_5c

    #@78
    :cond_78
    if-nez v1, :cond_7c

    #@7a
    move-object v0, v3

    #@7b
    goto :goto_5

    #@7c
    :cond_7c
    iget-object v0, p0, Lcom/google/android/gms/internal/mb;->amY:Ljava/lang/Class;

    #@7e
    iget-object v1, v1, Lcom/google/android/gms/internal/mg;->anc:[B

    #@80
    invoke-static {v1}, Lcom/google/android/gms/internal/ly;->p([B)Lcom/google/android/gms/internal/ly;

    #@83
    move-result-object v1

    #@84
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/mb;->u(Lcom/google/android/gms/internal/ly;)Ljava/lang/Object;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@8b
    move-result-object v0

    #@8c
    goto/16 :goto_5

    #@8e
    :cond_8e
    move-object v0, v1

    #@8f
    goto :goto_73
.end method

.method protected u(Lcom/google/android/gms/internal/ly;)Ljava/lang/Object;
    .registers 7

    #@0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mb;->amZ:Z

    #@2
    if-eqz v0, :cond_45

    #@4
    iget-object v0, p0, Lcom/google/android/gms/internal/mb;->amY:Ljava/lang/Class;

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    move-object v1, v0

    #@b
    :goto_b
    :try_start_b
    iget v0, p0, Lcom/google/android/gms/internal/mb;->type:I

    #@d
    packed-switch v0, :pswitch_data_86

    #@10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string v3, "Unknown type "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    iget v3, p0, Lcom/google/android/gms/internal/mb;->type:I

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0
    :try_end_2b
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_2b} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_2b} :catch_63
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2b} :catch_7d

    #@2b
    :catch_2b
    move-exception v0

    #@2c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2e
    new-instance v3, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string v4, "Error creating instance of class "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@44
    throw v2

    #@45
    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/mb;->amY:Ljava/lang/Class;

    #@47
    move-object v1, v0

    #@48
    goto :goto_b

    #@49
    :pswitch_49
    :try_start_49
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Lcom/google/android/gms/internal/me;

    #@4f
    iget v2, p0, Lcom/google/android/gms/internal/mb;->tag:I

    #@51
    invoke-static {v2}, Lcom/google/android/gms/internal/mh;->eO(I)I

    #@54
    move-result v2

    #@55
    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;I)V

    #@58
    :goto_58
    return-object v0

    #@59
    :pswitch_59
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@5c
    move-result-object v0

    #@5d
    check-cast v0, Lcom/google/android/gms/internal/me;

    #@5f
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/me;)V
    :try_end_62
    .catch Ljava/lang/InstantiationException; {:try_start_49 .. :try_end_62} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_49 .. :try_end_62} :catch_63
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_62} :catch_7d

    #@62
    goto :goto_58

    #@63
    :catch_63
    move-exception v0

    #@64
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@66
    new-instance v3, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string v4, "Error creating instance of class "

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v3

    #@71
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@78
    move-result-object v1

    #@79
    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7c
    throw v2

    #@7d
    :catch_7d
    move-exception v0

    #@7e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@80
    const-string v2, "Error reading extension field"

    #@82
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@85
    throw v1

    #@86
    :pswitch_data_86
    .packed-switch 0xa
        :pswitch_49
        :pswitch_59
    .end packed-switch
.end method
