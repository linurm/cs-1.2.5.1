.class public Lcom/apportable/iab/IabException;
.super Ljava/lang/Exception;


# instance fields
.field mResult:Lcom/apportable/iab/IabResult;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    #@0
    new-instance v0, Lcom/apportable/iab/IabResult;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@5
    invoke-direct {p0, v0}, Lcom/apportable/iab/IabException;-><init>(Lcom/apportable/iab/IabResult;)V

    #@8
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    #@0
    new-instance v0, Lcom/apportable/iab/IabResult;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/apportable/iab/IabResult;-><init>(ILjava/lang/String;)V

    #@5
    invoke-direct {p0, v0, p3}, Lcom/apportable/iab/IabException;-><init>(Lcom/apportable/iab/IabResult;Ljava/lang/Exception;)V

    #@8
    return-void
.end method

.method public constructor <init>(Lcom/apportable/iab/IabResult;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/apportable/iab/IabException;-><init>(Lcom/apportable/iab/IabResult;Ljava/lang/Exception;)V

    #@4
    return-void
.end method

.method public constructor <init>(Lcom/apportable/iab/IabResult;Ljava/lang/Exception;)V
    .registers 4

    #@0
    invoke-virtual {p1}, Lcom/apportable/iab/IabResult;->getMessage()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7
    iput-object p1, p0, Lcom/apportable/iab/IabException;->mResult:Lcom/apportable/iab/IabResult;

    #@9
    return-void
.end method


# virtual methods
.method public getResult()Lcom/apportable/iab/IabResult;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/IabException;->mResult:Lcom/apportable/iab/IabResult;

    #@2
    return-object v0
.end method
