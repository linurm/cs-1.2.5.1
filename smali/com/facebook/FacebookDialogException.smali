.class public Lcom/facebook/FacebookDialogException;
.super Lcom/facebook/FacebookException;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private errorCode:I

.field private failingUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    #@0
    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    #@3
    iput p2, p0, Lcom/facebook/FacebookDialogException;->errorCode:I

    #@5
    iput-object p3, p0, Lcom/facebook/FacebookDialogException;->failingUrl:Ljava/lang/String;

    #@7
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    #@0
    iget v0, p0, Lcom/facebook/FacebookDialogException;->errorCode:I

    #@2
    return v0
.end method

.method public getFailingUrl()Ljava/lang/String;
    .registers 2

    #@0
    iget-object v0, p0, Lcom/facebook/FacebookDialogException;->failingUrl:Ljava/lang/String;

    #@2
    return-object v0
.end method
