.class public final Lcom/google/android/gms/wallet/Cart$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/Cart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic aiN:Lcom/google/android/gms/wallet/Cart;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/Cart;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/Cart$Builder;->aiN:Lcom/google/android/gms/wallet/Cart;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/Cart;Lcom/google/android/gms/wallet/Cart$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/Cart$Builder;-><init>(Lcom/google/android/gms/wallet/Cart;)V

    #@3
    return-void
.end method


# virtual methods
.method public addLineItem(Lcom/google/android/gms/wallet/LineItem;)Lcom/google/android/gms/wallet/Cart$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/Cart$Builder;->aiN:Lcom/google/android/gms/wallet/Cart;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/wallet/Cart;->aiM:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@7
    return-object p0
.end method

.method public build()Lcom/google/android/gms/wallet/Cart;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/Cart$Builder;->aiN:Lcom/google/android/gms/wallet/Cart;

    #@2
    return-object v0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/Cart$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/Cart$Builder;->aiN:Lcom/google/android/gms/wallet/Cart;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/Cart;->aiL:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setLineItems(Ljava/util/List;)Lcom/google/android/gms/wallet/Cart$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/wallet/LineItem;",
            ">;)",
            "Lcom/google/android/gms/wallet/Cart$Builder;"
        }
    .end annotation

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/Cart$Builder;->aiN:Lcom/google/android/gms/wallet/Cart;

    #@2
    iget-object v0, v0, Lcom/google/android/gms/wallet/Cart;->aiM:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@7
    iget-object v0, p0, Lcom/google/android/gms/wallet/Cart$Builder;->aiN:Lcom/google/android/gms/wallet/Cart;

    #@9
    iget-object v0, v0, Lcom/google/android/gms/wallet/Cart;->aiM:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@e
    return-object p0
.end method

.method public setTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/Cart$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/Cart$Builder;->aiN:Lcom/google/android/gms/wallet/Cart;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/Cart;->aiK:Ljava/lang/String;

    #@4
    return-object p0
.end method
