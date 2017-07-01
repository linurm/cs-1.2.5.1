.class public final Lcom/android/dx/io/instructions/AddressMap;
.super Ljava/lang/Object;


# instance fields
.field private final map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/dx/io/instructions/AddressMap;->map:Ljava/util/HashMap;

    #@a
    return-void
.end method


# virtual methods
.method public get(I)I
    .registers 4

    #@0
    iget-object v0, p0, Lcom/android/dx/io/instructions/AddressMap;->map:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Integer;

    #@c
    if-nez v0, :cond_10

    #@e
    const/4 v0, -0x1

    #@f
    :goto_f
    return v0

    #@10
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v0

    #@14
    goto :goto_f
.end method

.method public put(II)V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/android/dx/io/instructions/AddressMap;->map:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    return-void
.end method
