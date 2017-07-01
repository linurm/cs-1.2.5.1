.class public Lcom/facebook/android/FacebookError;
.super Ljava/lang/RuntimeException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mErrorCode:I

.field private mErrorType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/facebook/android/FacebookError;->mErrorCode:I

    #@6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/facebook/android/FacebookError;->mErrorCode:I

    #@6
    iput-object p2, p0, Lcom/facebook/android/FacebookError;->mErrorType:Ljava/lang/String;

    #@8
    iput p3, p0, Lcom/facebook/android/FacebookError;->mErrorCode:I

    #@a
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget v0, p0, Lcom/facebook/android/FacebookError;->mErrorCode:I

    #@2
    return v0
.end method

.method public getErrorType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    iget-object v0, p0, Lcom/facebook/android/FacebookError;->mErrorType:Ljava/lang/String;

    #@2
    return-object v0
.end method
