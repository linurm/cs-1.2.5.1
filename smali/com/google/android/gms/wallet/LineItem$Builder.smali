.class public final Lcom/google/android/gms/wallet/LineItem$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/LineItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic ajh:Lcom/google/android/gms/wallet/LineItem;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/LineItem;)V
    .registers 2

    #@0
    iput-object p1, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->ajh:Lcom/google/android/gms/wallet/LineItem;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/LineItem;Lcom/google/android/gms/wallet/LineItem$1;)V
    .registers 3

    #@0
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/LineItem$Builder;-><init>(Lcom/google/android/gms/wallet/LineItem;)V

    #@3
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/wallet/LineItem;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->ajh:Lcom/google/android/gms/wallet/LineItem;

    #@2
    return-object v0
.end method

.method public setCurrencyCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->ajh:Lcom/google/android/gms/wallet/LineItem;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->aiL:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->ajh:Lcom/google/android/gms/wallet/LineItem;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->description:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setQuantity(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->ajh:Lcom/google/android/gms/wallet/LineItem;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->aje:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setRole(I)Lcom/google/android/gms/wallet/LineItem$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->ajh:Lcom/google/android/gms/wallet/LineItem;

    #@2
    iput p1, v0, Lcom/google/android/gms/wallet/LineItem;->ajg:I

    #@4
    return-object p0
.end method

.method public setTotalPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->ajh:Lcom/google/android/gms/wallet/LineItem;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->aiK:Ljava/lang/String;

    #@4
    return-object p0
.end method

.method public setUnitPrice(Ljava/lang/String;)Lcom/google/android/gms/wallet/LineItem$Builder;
    .registers 3

    #@0
    iget-object v0, p0, Lcom/google/android/gms/wallet/LineItem$Builder;->ajh:Lcom/google/android/gms/wallet/LineItem;

    #@2
    iput-object p1, v0, Lcom/google/android/gms/wallet/LineItem;->ajf:Ljava/lang/String;

    #@4
    return-object p0
.end method
