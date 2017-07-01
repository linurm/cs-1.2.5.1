.class public Lcom/google/android/gms/plus/internal/i;
.super Ljava/lang/Object;


# instance fields
.field private abV:[Ljava/lang/String;

.field private abW:Ljava/lang/String;

.field private abX:Ljava/lang/String;

.field private abY:Ljava/lang/String;

.field private aca:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

.field private final acb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private acc:[Ljava/lang/String;

.field private yQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/i;->acb:Ljava/util/ArrayList;

    #@a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/i;->abX:Ljava/lang/String;

    #@10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/i;->abW:Ljava/lang/String;

    #@16
    new-instance v0, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@18
    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;-><init>()V

    #@1b
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/i;->aca:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@1d
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/i;->acb:Ljava/util/ArrayList;

    #@1f
    const-string v1, "https://www.googleapis.com/auth/plus.login"

    #@21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    return-void
.end method


# virtual methods
.method public bz(Ljava/lang/String;)Lcom/google/android/gms/plus/internal/i;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/internal/i;->yQ:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public varargs e([Ljava/lang/String;)Lcom/google/android/gms/plus/internal/i;
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/i;->acb:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/i;->acb:Ljava/util/ArrayList;

    #@7
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@e
    return-object p0
.end method

.method public varargs f([Ljava/lang/String;)Lcom/google/android/gms/plus/internal/i;
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/plus/internal/i;->acc:[Ljava/lang/String;

    #@2
    return-object p0
.end method

.method public ki()Lcom/google/android/gms/plus/internal/i;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/i;->acb:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    return-object p0
.end method

.method public kj()Lcom/google/android/gms/plus/internal/h;
    .registers 10

    #@0
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/i;->yQ:Ljava/lang/String;

    #@2
    if-nez v0, :cond_8

    #@4
    const-string v0, "<<default account>>"

    #@6
    iput-object v0, p0, Lcom/google/android/gms/plus/internal/i;->yQ:Ljava/lang/String;

    #@8
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/plus/internal/i;->acb:Ljava/util/ArrayList;

    #@a
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/i;->acb:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v1

    #@10
    new-array v1, v1, [Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, [Ljava/lang/String;

    #@18
    new-instance v0, Lcom/google/android/gms/plus/internal/h;

    #@1a
    iget-object v1, p0, Lcom/google/android/gms/plus/internal/i;->yQ:Ljava/lang/String;

    #@1c
    iget-object v3, p0, Lcom/google/android/gms/plus/internal/i;->acc:[Ljava/lang/String;

    #@1e
    iget-object v4, p0, Lcom/google/android/gms/plus/internal/i;->abV:[Ljava/lang/String;

    #@20
    iget-object v5, p0, Lcom/google/android/gms/plus/internal/i;->abW:Ljava/lang/String;

    #@22
    iget-object v6, p0, Lcom/google/android/gms/plus/internal/i;->abX:Ljava/lang/String;

    #@24
    iget-object v7, p0, Lcom/google/android/gms/plus/internal/i;->abY:Ljava/lang/String;

    #@26
    iget-object v8, p0, Lcom/google/android/gms/plus/internal/i;->aca:Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    #@28
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/plus/internal/h;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V

    #@2b
    return-object v0
.end method
