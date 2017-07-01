.class public Lcom/google/android/gms/common/data/DataHolder$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/data/DataHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final EG:[Ljava/lang/String;

.field private final EP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final EQ:Ljava/lang/String;

.field private final ER:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ES:Z

.field private ET:Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    invoke-static {p1}, Lcom/google/android/gms/internal/hm;->f(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [Ljava/lang/String;

    #@9
    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->EG:[Ljava/lang/String;

    #@b
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->EP:Ljava/util/ArrayList;

    #@12
    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder$a;->EQ:Ljava/lang/String;

    #@14
    new-instance v0, Ljava/util/HashMap;

    #@16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@19
    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->ER:Ljava/util/HashMap;

    #@1b
    const/4 v0, 0x0

    #@1c
    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->ES:Z

    #@1e
    const/4 v0, 0x0

    #@1f
    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->ET:Ljava/lang/String;

    #@21
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder$1;)V
    .registers 4

    #@0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder$a;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/data/DataHolder$a;)[Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->EG:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/data/DataHolder$a;)Ljava/util/ArrayList;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$a;->EP:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method
