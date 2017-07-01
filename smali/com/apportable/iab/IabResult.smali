.class public Lcom/apportable/iab/IabResult;
.super Ljava/lang/Object;


# instance fields
.field mMessage:Ljava/lang/String;

.field mResponse:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput p1, p0, Lcom/apportable/iab/IabResult;->mResponse:I

    #@5
    if-eqz p2, :cond_11

    #@7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@e
    move-result v0

    #@f
    if-nez v0, :cond_18

    #@11
    :cond_11
    invoke-static {p1}, Lcom/apportable/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/apportable/iab/IabResult;->mMessage:Ljava/lang/String;

    #@17
    :goto_17
    return-void

    #@18
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    const-string v1, " (response: "

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-static {p1}, Lcom/apportable/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    const-string v1, ")"

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Lcom/apportable/iab/IabResult;->mMessage:Ljava/lang/String;

    #@3b
    goto :goto_17
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/apportable/iab/IabResult;->mMessage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResponse()I
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/iab/IabResult;->mResponse:I

    #@2
    return v0
.end method

.method public isFailure()Z
    .registers 2

    #@0
    invoke-virtual {p0}, Lcom/apportable/iab/IabResult;->isSuccess()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x1

    #@7
    :goto_7
    return v0

    #@8
    :cond_8
    const/4 v0, 0x0

    #@9
    goto :goto_7
.end method

.method public isSuccess()Z
    .registers 2

    #@0
    iget v0, p0, Lcom/apportable/iab/IabResult;->mResponse:I

    #@2
    if-nez v0, :cond_6

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

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string v1, "IabResult: "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0}, Lcom/apportable/iab/IabResult;->getMessage()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method
